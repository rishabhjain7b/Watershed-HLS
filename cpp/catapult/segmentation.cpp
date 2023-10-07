

#include <iostream>
#include <fstream>
#include <cmath>
#include <ac_shared.h>
#include <ac_channel.h>
#include <mc_scverify.h>

#define _HLS_ 

	const int ROWS = 8;
	const int COLS = 8;

using namespace std;
//using namespace ac_math;

typedef uint8_t pixel_T;

struct RGB {
    pixel_T r;
    pixel_T g;
    pixel_T b;
};

template <int rows, int cols>
struct chRGB {
    RGB d[rows][cols];
};

template <int rows, int cols>
struct chImg {
    pixel_T d[rows][cols];
};

#ifdef _HLS_
#pragma hls_design ccore
#endif
pixel_T my_sqrt(pixel_T num) {
    pixel_T x = num;
    pixel_T y = 1.0;
    pixel_T epsilon = 0.000001;  // Set the error tolerance
    
    while (x - y > epsilon) {
        x = (x + y) / 2;
        y = num / x;
    }
    
    return x;
}

#ifdef _HLS_
#pragma hls_design ccore
#endif
int my_abs(int num) {
    if (num < 0) {
        return -num;
    }
    return num;
}

#ifdef _HLS_
#pragma hls_design ccore
#endif
pixel_T my_pow(pixel_T base, int exponent) {
    pixel_T result = 1.0;
    bool is_negative = exponent < 0;
    exponent = my_abs(exponent);
    while (exponent > 0) {
        if (exponent % 2 == 1) {
            result *= base;
        }
        base *= base;
        exponent /= 2;
    }
    return is_negative ? (1/result) : result;
}



// Function to convert rgb image to grayscale image
#ifdef _HLS_
#pragma hls_design block
#endif
template <int width, int height>
void CCS_BLOCK(RGBtoGray)(ac_channel<chRGB<height, width> >& inputCh, 
                          ac_channel<chRGB<height, width> >& inputCopyCh,
                          ac_channel<chImg<height, width> >& outputCh1,
                          ac_channel<chImg<height, width> >& outputCh2) {
    
    chRGB<height, width> input = inputCh.read();
    chRGB<height, width> inputCopy;
    chImg<height, width> output;

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            // Extract the RGB components of the pixel
            pixel_T r = input.d[i][j].r;
            pixel_T g = input.d[i][j].g;
            pixel_T b = input.d[i][j].b;

            // Compute the grayscale value using the formula: gray = 0.299*R + 0.587*G + 0.114*B
            pixel_T gray_val = pixel_T(2 * r + 5 * g + 1 * b);

            inputCopy.d[i][j].r = r;
            inputCopy.d[i][j].g = g;
            inputCopy.d[i][j].b = b;

            // Set the pixel value in the grayscale image
            output.d[i][j] = gray_val;
        }
    }

    inputCopyCh.write(inputCopy);
    outputCh1.write(output);
    outputCh2.write(output);
}

// Function to perform binary thresholding using Otsu's method
#ifdef _HLS_
#pragma hls_design block
#endif
template <int width, int height>
void CCS_BLOCK(thresholdOtsu)(ac_channel<chImg<height, width> >& srcCh,
                              ac_channel<chImg<height, width> >& dstCh) {
        
        chImg<height, width> src = srcCh.read();
        chImg<height, width> dst;
		
        // Compute histogram
		int histogram[256] = {0};

		for (int i = 0; i < height; i++) {
				for (int j = 0; j < width; j++) {
						histogram[src.d[i][j]]++;
				}
		}

		// Compute probability and cumulative distribution function
		pixel_T p[256] = {0};
		pixel_T cdf[256] = {0};
		pixel_T sum = 0;
		for(int i = 0; i < 256; i++) {
				p[i] = (pixel_T)histogram[i] / (height * width);
				sum += p[i];
				cdf[i] = sum;
		}

		// Compute mean and variance for all possible threshold values
		pixel_T mean[256] = {0};
		pixel_T variance[256] = {0};
		pixel_T total_mean = 0;
		for(int i = 0; i < 256; i++) {
				for(int j = 0; j <= i; j++) {
						mean[i] += j * p[j];
				}

				variance[i] = my_pow(total_mean - cdf[i] * 255, 2) / (cdf[i] * (1 - cdf[i]) * my_pow(255, 2));
		}

		// Find threshold with maximum between-class variance
		int threshold = 0;
		pixel_T max_variance = 0;
		for(int i = 0; i < 256; i++) {
				if(variance[i] > max_variance) {
						max_variance = variance[i];
						threshold = i;
				}
		}

		// Threshold image using computed threshold value
		for (int i = 0; i < height; i++) {
				for (int j = 0; j < width; j++) {
						dst.d[i][j] = (src.d[i][j] > threshold) ? 255 : 0;
				}
		}

        dstCh.write(dst);
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols, int kernel_type=0, int kernel_size=3, int iterations=2>
void CCS_BLOCK(morphologyEx)(ac_channel<chImg<rows, cols> >& srcCh,
                              ac_channel<chImg<rows, cols> >& dstCh1, 
                              ac_channel<chImg<rows, cols> >& dstCh2) {
    
    int kernel[kernel_size][kernel_size];
    int offset = kernel_size / 2;

    // Define kernel based on the kernel type
    if (kernel_type == 0) { // MORPH_RECT
        for (int i = 0; i < kernel_size; i++) {
            for (int j = 0; j < kernel_size; j++) {
                kernel[i][j] = 1;
            }
        }
    } else if (kernel_type == 1) { // MORPH_CROSS
        for (int i = 0; i < kernel_size; i++) {
            for (int j = 0; j < kernel_size; j++) {
                if (i == offset || j == offset) {
                    kernel[i][j] = 1;
                } else {
                    kernel[i][j] = 0;
                }
            }
        }
    } else { // MORPH_ELLIPSE
        for (int i = 0; i < kernel_size; i++) {
            for (int j = 0; j < kernel_size; j++) {
                if (((i-offset)*(i-offset))/(pixel_T)(offset*offset) + ((j-offset)*(j-offset))/(pixel_T)(offset*offset) <= 1.0) {
                    kernel[i][j] = 1;
                } else {
                    kernel[i][j] = 0;
                }
            }
        }
    }

        chImg<rows, cols> src = srcCh.read();
        chImg<rows, cols> dst;

    // Apply opening operation
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            int min_val = 255;
            for (int k = 0; k < kernel_size; k++) {
                for (int l = 0; l < kernel_size; l++) {
                    int x = i - kernel[k][offset];
                    int y = j - kernel[offset][l];
                    if (x >= 0 && x < rows && y >= 0 && y < cols) {
                        //if (src[x*cols + y] < min_val) 
                        if (src.d[x][y] < min_val) {
                            //min_val = src[x*cols + y];
                            min_val = src.d[x][y];
                        }
                    }
                }
            }
            dst.d[i][j] = min_val;
        }
    }

    // Apply erosion or dilation operation for the given number of iterations
    pixel_T temp[rows][cols];
    for (int iter = 0; iter < iterations; iter++) {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                int max_val = 0;
                for (int k = 0; k < kernel_size; k++) {
                    for (int l = 0; l < kernel_size; l++) {
                    //    int x = i - offset + k;
                    //    int y = j - offset + l;
                    int x = i - kernel[k][offset];
                    int y = j - kernel[offset][l];
                        if (x >= 0 && x < rows && y >= 0 && y < cols) {
                            if (dst.d[x][y] > max_val) {
                                max_val = dst.d[x][y];
                            }
                        }
                    }
                }
                temp[i][j] = max_val;
            }
        }

        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
            	dst.d[i][j] = temp[i][j];
			}
        }	
    }
    dstCh1.write(dst);
    dstCh2.write(dst);
}

//#pragma hls_design block
#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols, int krows, int kcols, int iterations=2, int anchor_x=-1, int anchor_y=-1>
void CCS_BLOCK(dilate)( ac_channel<chImg<rows, cols> >& srcCh,
                        ac_channel<chImg<rows, cols> >& dstCh) {

    pixel_T tmp[rows][cols];
    pixel_T kernel[krows][kcols];
    chImg<rows, cols> src = srcCh.read();
    chImg<rows, cols> dst;

    for (int i = 0; i < krows; i++) {
        for (int j = 0; j < kcols; j++) {
            kernel[i][j] = 1;
        }
    }
    //memcpy(tmp, src, rows*cols * sizeof(int));
    for (int r = 0; r < rows; r++) {
        for (int c = 0; c < cols; c++) {
            tmp[r][c] = src.d[r][c];
        }
    }

    for (int i = 0; i < iterations; i++) {
        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                int max_val = 0;
                for (int kr = 0; kr < krows; kr++) {
                    for (int kc = 0; kc < kcols; kc++) {
                        int rr = r - anchor_y + kr;
                        int cc = c - anchor_x + kc;
                        if (rr >= 0 && rr < rows && cc >= 0 && cc < cols) {
                            int val = src.d[rr][cc] + kernel[kr][kc];
                            if (val > max_val) {
                                max_val = val;
                            }
                        }
                    }
                }
                tmp[r][c] = max_val;
            }
        }

        //memcpy(src, tmp, rows*cols * sizeof(int));
        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                dst.d[r][c] = tmp[r][c];
            }
        }
    }

    dstCh.write(dst);
}

// Function to calculate the Euclidean distance between two points
//#pragma hls_design ccore
#ifdef _HLS_
#pragma hls_design ccore
#endif
pixel_T euclideanDistance(int x1, int y1, int x2, int y2) {
    return my_sqrt(my_pow(x2 - x1, 2) + my_pow(y2 - y1, 2));
}

// Function to perform distance transformation using Euclidean distance
//#pragma hls_design block
#ifdef _HLS_
#pragma hls_design block
#endif
template <int height, int width>
void CCS_BLOCK(distanceTransform)(ac_channel<chImg<height, width> >& srcCh,
                                  ac_channel<chImg<height, width> >& dstCh1,
                                  ac_channel<chImg<height, width> >& dstCh2) {

        chImg<height, width> inputImage = srcCh.read();
        chImg<height, width> outputImage;
    // Initialize the output image with large values
    for (int i = 0; i < height; i++) {
    	for (int j = 0; j < width; j++) {
        	outputImage.d[i][j] = 0xFF;
		}
    }

    // Forward pass
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            if (inputImage.d[y][x] != 0) {
                outputImage.d[y][x] = 0;
            } else {
                if (x > 0 && outputImage.d[y][(x - 1)] + 1 < outputImage.d[y][x]) {
                    outputImage.d[y][x] = outputImage.d[y][(x - 1)] + 1;
                }
                if (y > 0 && outputImage.d[(y - 1)][x] + 1 < outputImage.d[y][x]) {
                    outputImage.d[y][x] = outputImage.d[(y - 1)][x] + 1;
                }
                if (x > 0 && y > 0 && outputImage.d[(y - 1)][(x - 1)] + euclideanDistance(x, y, x - 1, y - 1) < outputImage.d[y][x]) {
                    outputImage.d[y][x] = outputImage.d[(y - 1)][(x - 1)] + euclideanDistance(x, y, x - 1, y - 1);
                }
            }
        }
    }

    // Backward pass
    for (int y = height - 1; y >= 0; y--) {
        for (int x = width - 1; x >= 0; x--) {
            if (x < width - 1 && outputImage.d[y][(x + 1)] + 1 < outputImage.d[y][x]) {
                outputImage.d[y][x] = outputImage.d[y][(x + 1)] + 1;
            }
            if (y < height - 1 && outputImage.d[(y + 1)][x] + 1 < outputImage.d[y][x]) {
                outputImage.d[y][x] = outputImage.d[(y + 1)][x] + 1;
            }
            if (x < width - 1 && y < height - 1 && outputImage.d[(y + 1)][(x + 1)] + euclideanDistance(x, y, x + 1, y + 1) < outputImage.d[y][x]) {
                outputImage.d[y][x] = outputImage.d[(y + 1)][(x + 1)] + euclideanDistance(x, y, x + 1, y + 1);
            }
        }
    }
    dstCh1.write(outputImage);
    dstCh2.write(outputImage);
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void CCS_BLOCK(minMaxLoc)(ac_channel<chImg<rows, cols> >& srcCh, 
                          ac_channel<pixel_T>& minVal, 
                          ac_channel<pixel_T>& maxVal) {


    chImg<rows,cols> data = srcCh.read();

    pixel_T min = data.d[0][0];
    pixel_T max = data.d[0][0];

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            pixel_T val = data.d[i][j];
            if (val < min) {
                min = val;
            }
            if (val > max) {
                max = val;
            }
        }
    }

    minVal.write(min);
    maxVal.write(max);
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols, int factor>
void CCS_BLOCK(threshold)(ac_channel<chImg<rows, cols> >& srcCh,
                           ac_channel<chImg<rows, cols> >& dstCh1,
                           ac_channel<chImg<rows, cols> >& dstCh2,
                          ac_channel<pixel_T>& thresholdValueCh) {

    pixel_T thresholdValue = factor * thresholdValueCh.read();
        chImg<rows, cols> input = srcCh.read();
        chImg<rows, cols> output;

	for (int i = 0; i < rows; i++) {
	    for (int j = 0; j < cols; j++) {
	        pixel_T pixel = input.d[i][j];
	        if (pixel > thresholdValue) {
	            output.d[i][j] = 255;
	        } else {
	            output.d[i][j] = 0;
	        }
	    }
	}
    dstCh1.write(output);
    dstCh2.write(output);
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void CCS_BLOCK(subtractPixels)(ac_channel<chImg<rows, cols> >& srcCh1,
                               ac_channel<chImg<rows, cols> >& srcCh2,
                               ac_channel<chImg<rows, cols> >& dstCh){
        chImg<rows, cols> sure_bg = srcCh1.read();
        chImg<rows, cols> sure_fg = srcCh2.read();
        chImg<rows, cols> result;

    for(int i=0; i<rows; i++) {
        for (int j = 0; j < cols; j++) {
        	result.d[i][j] = sure_bg.d[i][j] - sure_fg.d[i][j];
		}
    }
    dstCh.write(result);
}


// Define a structure to store label equivalence
struct EquivLabel {
    int parent;
    int child;
};

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void CCS_BLOCK(connectedComponents)(ac_channel<chImg<rows, cols> >& srcCh,
                                    ac_channel<chImg<rows, cols> >& dstCh){

        chImg<rows, cols> image = srcCh.read();
        chImg<rows, cols> labels;
// Two-pass connected component analysis
    // Create an array to store label equivalence
    EquivLabel equivLabels[rows][cols];

    for (int i = 0; i < rows; i++) {
    	for (int j = 0; j < cols; j++) {
        	equivLabels[i][j].parent = i;
        	equivLabels[i][j].child = 0;
		}
    }

    // First pass
    int label = 1;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            int index = i * cols + j;
            if (image.d[i][j] != 0) {
                int left = (j > 0) ? labels.d[i][j - 1] : 0;
                int above = (i > 0) ? labels.d[i-1][j] : 0;
                if (left == 0 && above == 0) {
                    labels.d[i][j] = label;
                    equivLabels[i][label].parent = label;
                    label++;
                }
                else if (left != 0 && above == 0) {
                    labels.d[i][j] = left;
                }
                else if (left == 0 && above != 0) {
                    labels.d[i][j] = above;
                }
                else {
                    int rootLeft = left;
                    while (equivLabels[i][rootLeft].parent != rootLeft) {
                        rootLeft = equivLabels[i][rootLeft].parent;
                    }
                    int rootAbove = above;
                    while (equivLabels[i][rootAbove].parent != rootAbove) {
                        rootAbove = equivLabels[i][rootAbove].parent;
                    }
                    if (rootLeft != rootAbove) {
                        if (equivLabels[i][rootLeft].child < equivLabels[i][rootAbove].child) {
                            equivLabels[i][rootLeft].parent = rootAbove;
                        }
                        else if (equivLabels[i][rootLeft].child > equivLabels[i][rootAbove].child) {
                            equivLabels[i][rootAbove].parent = rootLeft;
                        }
                        else {
                            equivLabels[i][rootAbove].parent = rootLeft;
                            equivLabels[i][rootLeft].child++;
                        }
                    }
                    labels.d[i][j] = rootLeft;
                }
            }
        }
    }

    // Second pass
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            int index = i * cols + j;
            if (image.d[i][j] != 0) {
                int root = labels.d[i][j];
                while (equivLabels[i][root].parent != root) {
                    root = equivLabels[i][root].parent;
                }
                labels.d[i][j] = root;
            }
        }
    }
    dstCh.write(labels);
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void CCS_BLOCK(incrAndSet0)(ac_channel<chImg<rows, cols> >& srcCh1,
                           ac_channel<chImg<rows, cols> >& dstCh,
                           ac_channel<chImg<rows, cols> >& srcCh2){

        chImg<rows, cols> markers_i = srcCh1.read();
        chImg<rows, cols> unknown = srcCh2.read();
        chImg<rows, cols> markers_o;
	// Add 1 to all elements of markers
	for (int i = 0; i < rows; i++) {
	    for (int j = 0; j < cols; j++) {
	        markers_o.d[i][j] = markers_i.d[i][j] + 1;
	    }
	}
	
	for (int i = 0; i < rows; i++) {
	    for (int j = 0; j < cols; j++) {
	        if (unknown.d[i][j] == 255) {
	            markers_o.d[i][j] = 0;
	        }
	    }
	}
    dstCh.write(markers_o);
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void CCS_BLOCK(watershed_algorithm)(ac_channel<chImg<rows, cols> >& srcCh1,
                                    ac_channel<chImg<rows, cols> >& srcCh2,
                                    ac_channel<chImg<rows, cols> >& dstCh){ 

        chImg<rows, cols> image = srcCh1.read();
        chImg<rows, cols> markers_in = srcCh2.read();
        chImg<rows, cols> markers_out;

    // initialize variables
    const int infinity = rows * cols + 1;
    const int neighbours[8][2] = {{-1,-1}, {-1,0}, {-1,1}, {0,-1}, {0,1}, {1,-1}, {1,0}, {1,1}};
    int num_labels = 0;
    
    // initialize the queue with all markers as seeds
    int queue[rows * cols][2];
    int queue_start = 0, queue_end = 0;

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (markers_in.d[i][j] == 1) {
                queue[queue_end][0] = i;
                queue[queue_end][1] = j;
                queue_end++;
            }
        }
    }
    
    // initialize the distance map
    int dist[rows][cols];
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (markers_in.d[i][j] == 1) {
                dist[i][j] = 0;
            } else {
                dist[i][j] = infinity;
            }
        }
    }
    
    // run the watershed algorithm
    while (queue_start < queue_end) {
        // get the next pixel from the queue
        int i = queue[queue_start][0];
        int j = queue[queue_start][1];
        queue_start++;
        
        // label the pixel with the minimum neighbour label
        int min_label = infinity;
        for (int k = 0; k < 8; k++) {
            int ni = i + neighbours[k][0];
            int nj = j + neighbours[k][1];
            if (ni >= 0 && ni < rows && nj >= 0 && nj < cols) {
                if (markers_in.d[ni][nj] > 1 && markers_in.d[ni][nj] < min_label) {
                    min_label = markers_in.d[ni][nj];
                }
                if (markers_in.d[ni][nj] == 1 && image.d[ni][nj] == image.d[i][j] 
					&& dist[ni][nj] > dist[i][j] + 1) {
                    markers_out.d[ni][nj] = markers_in.d[i][j];
                    dist[ni][nj] = dist[i][j] + 1;
                    queue[queue_end][0] = ni;
                    queue[queue_end][1] = nj;
                    queue_end++;
                }
            }
        }
        
        // set the pixel label
        if (min_label < infinity) {
            markers_out.d[i][j] = min_label;
        } else {
            num_labels++;
            markers_out.d[i][j] = num_labels + 1;
        }
    }
    dstCh.write(markers_out);
}

// assuming you have a 3-channel image and a markers matrix of same size as image
// set all pixels in image that have -1 in markers to red
#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void CCS_BLOCK(makeBoundary)(ac_channel<chImg<rows, cols> >& srcCh1, 
                             ac_channel<chRGB<rows, cols> >& srcCh2, 
                             ac_channel<chRGB<rows, cols> >& dstImg)  {

    chRGB<rows, cols> image;
    chRGB<rows, cols> in = srcCh2.read();
    chImg<rows, cols> markers = srcCh1.read();

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            image.d[i][j].r = in.d[i][j].r;
            image.d[i][j].g = in.d[i][j].g;
            image.d[i][j].b = in.d[i][j].b;
        }
    }

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (markers.d[i][j] == 1) {
                image.d[i][j].r = 255;
                image.d[i][j].g = 0;
                image.d[i][j].b = 0;
            }
        }
    }
    dstImg.write(image);
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void CCS_BLOCK(image_segmentation)(ac_channel<chRGB<rows, cols> >& input_image, 
                                   ac_channel<chRGB<rows, cols> >& output_image)  {
	
	static ac_channel<chRGB<rows,cols> > inputCopyOutput;
	static ac_channel<chImg<rows,cols> > grayOutput1;
	static ac_channel<chImg<rows,cols> > grayOutput2;
	static ac_channel<chImg<rows,cols> > binaryThreshold;
	static ac_channel<chImg<rows,cols> > morphOpening1;
	static ac_channel<chImg<rows,cols> > morphOpening2;
	static ac_channel<chImg<rows,cols> > sureBackground;
	static ac_channel<chImg<rows,cols> > distanceTransformOutput1;
	static ac_channel<chImg<rows,cols> > distanceTransformOutput2;
	static ac_channel<pixel_T>           maxValDistanceTransform;
	static ac_channel<pixel_T>           minValDistanceTransform;
	static ac_channel<chImg<rows,cols> > sureForeground1;
	static ac_channel<chImg<rows,cols> > sureForeground2;
	static ac_channel<chImg<rows,cols> > differenceBF;
	static ac_channel<chImg<rows,cols> > markersGen;
	static ac_channel<chImg<rows,cols> > markersMod;
	static ac_channel<chImg<rows,cols> > watershedOutput;

    // Convert the image to grayscale
 	RGBtoGray<rows, cols>(input_image, inputCopyOutput, grayOutput1, grayOutput2);

    // Threshold the gradient magnitude to obtain binary markers
	thresholdOtsu<rows, cols>(grayOutput1, binaryThreshold); 

    // Perform morphological operations on the markers
	morphologyEx<rows, cols, 0, 3, 2>(binaryThreshold, morphOpening1, morphOpening2);

	// Generate a kernel
	//genKernel<3>(imKernel);

	// perform dilation
	dilate<rows, cols, 3, 3, 2, -1, -1>(morphOpening1, sureBackground);

    // Compute the distance transform of the markers
	distanceTransform<rows, cols>(morphOpening2, distanceTransformOutput1, distanceTransformOutput2);

	// Find max and min Pixel
	minMaxLoc<rows, cols>(distanceTransformOutput1, minValDistanceTransform, maxValDistanceTransform) ;

	// Compute threshold
	threshold<rows, cols, 5>(distanceTransformOutput2, sureForeground1, sureForeground2, maxValDistanceTransform);

	// Perform subtraction between the two images
	subtractPixels<rows, cols>(sureBackground, sureForeground1, differenceBF);

    // Find regional minima in the distance transform
	connectedComponents<rows, cols>(sureForeground2, markersGen);

    // Add 1 to all markers to distinguish regions from the background
	// Set the value of elements in markers where unknown is 255 to 0
	incrAndSet0<rows, cols>(markersGen, markersMod, differenceBF);
    
	// Apply watershed flooding
	watershed_algorithm<rows, cols>(grayOutput2, markersMod, watershedOutput);

    // Merge regions that are over-segmented based on gradient magnitude
	makeBoundary<rows, cols>(watershedOutput, inputCopyOutput, output_image);
}

#ifdef _HLS_
#pragma hls_design top
#endif
void CCS_BLOCK(imageProcessing) (ac_channel<chRGB<ROWS, COLS> >& inputImage, 
                                 ac_channel<chRGB<ROWS, COLS> >& finalOutputImage)  {
	image_segmentation<ROWS, COLS>(inputImage, finalOutputImage);
}


