

#include <iostream>
#include <fstream>
#include <cmath>

//#define _HLS_ 

using namespace std;

typedef uint8_t pixel_T;

struct RGB {
    pixel_T r;
    pixel_T g;
    pixel_T b;
};

struct Gray {
    pixel_T value;
};

// Function to convert rgb image to grayscale image
#ifdef _HLS_
#pragma hls_design block
#endif
template <int width, int height>
void RGBtoGray(RGB input[height][width], pixel_T output[height][width]) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            // Extract the RGB components of the pixel
            pixel_T r = input[i][j].r;
            pixel_T g = input[i][j].g;
            pixel_T b = input[i][j].b;

            // Compute the grayscale value using the formula: gray = 0.299*R + 0.587*G + 0.114*B
            pixel_T gray_val = round(0.299 * r + 0.587 * g + 0.114 * b);

            // Set the pixel value in the grayscale image
            output[i][j] = gray_val;
        }
    }
}

// Function to perform binary thresholding using Otsu's method
#ifdef _HLS_
#pragma hls_design block
#endif
template <int width, int height>
void thresholdOtsu(pixel_T src[width][height], pixel_T dst[width][height]) 	{
		// Compute histogram
		int histogram[256] = {0};

		for (int i = 0; i < height; i++) {
				for (int j = 0; j < width; j++) {
						histogram[src[i][j]]++;
				}
		}

		// Compute probability and cumulative distribution function
		float p[256] = {0};
		float cdf[256] = {0};
		float sum = 0;
		for(int i = 0; i < 256; i++) {
				p[i] = (float)histogram[i] / (height * width);
				sum += p[i];
				cdf[i] = sum;
		}

		// Compute mean and variance for all possible threshold values
		float mean[256] = {0};
		float variance[256] = {0};
		float total_mean = 0;
		for(int i = 0; i < 256; i++) {
				for(int j = 0; j <= i; j++) {
						mean[i] += j * p[j];
				}
				variance[i] = pow(total_mean - cdf[i] * 255, 2) / (cdf[i] * (1 - cdf[i]) * pow(255, 2));
		}

		// Find threshold with maximum between-class variance
		int threshold = 0;
		float max_variance = 0;
		for(int i = 0; i < 256; i++) {
				if(variance[i] > max_variance) {
						max_variance = variance[i];
						threshold = i;
				}
		}

		// Threshold image using computed threshold value
		for (int i = 0; i < height; i++) {
				for (int j = 0; j < width; j++) {
						dst[i][j] = (src[i][j] > threshold) ? 255 : 0;
				}
		}
}

//#pragma hls_design ccore
#ifdef _HLS_
#pragma hls_design ccore
#endif
template <int kernel_size=3>
void genKernel(pixel_T struct_elem[kernel_size][kernel_size]) {
	for(int i=0; i<kernel_size; i++) {
	    for(int j=0; j<kernel_size; j++) {
	        struct_elem[i][j] = 1;
	    }
	}
}

//#pragma hls_design block
//#pragma hls_design block
#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols, int kernel_type=0, int kernel_size=3, int iterations=2>
void morphologyEx(pixel_T src[rows][cols], pixel_T dst[rows][cols]) {
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
                if (((i-offset)*(i-offset))/(float)(offset*offset) + ((j-offset)*(j-offset))/(float)(offset*offset) <= 1.0) {
                    kernel[i][j] = 1;
                } else {
                    kernel[i][j] = 0;
                }
            }
        }
    }

    // Apply opening operation
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            int min_val = 255;
            for (int k = 0; k < kernel_size; k++) {
                for (int l = 0; l < kernel_size; l++) {
                    int x = i - offset + k;
                    int y = j - offset + l;
                    if (x >= 0 && x < rows && y >= 0 && y < cols) {
                        //if (src[x*cols + y] < min_val) 
                        if (src[x][y] < min_val) {
                            //min_val = src[x*cols + y];
                            min_val = src[x][y];
                        }
                    }
                }
            }
            dst[i][j] = min_val;
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
                        int x = i - offset + k;
                        int y = j - offset + l;
                        if (x >= 0 && x < rows && y >= 0 && y < cols) {
                            if (dst[x][y] > max_val) {
                                max_val = dst[x][y];
                            }
                        }
                    }
                }
                temp[i][j] = max_val;
            }
        }

        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
            	dst[i][j] = temp[i][j];
			}
        }	
    }
}

//#pragma hls_design block
#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols, int krows, int kcols, int iterations=2>
void dilate(pixel_T src[rows][cols], pixel_T dst[rows][cols], pixel_T kernel[krows][kcols], int anchor_x, int anchor_y) {
    pixel_T tmp[rows][cols];
    
	//memcpy(tmp, src, rows*cols * sizeof(int));
    for (int r = 0; r < rows; r++) {
        for (int c = 0; c < cols; c++) {
			tmp[r][c] = src[r][c];
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
                            int val = src[rr][cc] + kernel[kr][kc];
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
				dst[r][c] = tmp[r][c];
			}
    	}
	}

    //memcpy(dst, src, rows*cols * sizeof(int));
}

// Function to calculate the Euclidean distance between two points
//#pragma hls_design ccore
#ifdef _HLS_
#pragma hls_design ccore
#endif
double euclideanDistance(int x1, int y1, int x2, int y2) {
    return std::sqrt(std::pow(x2 - x1, 2) + std::pow(y2 - y1, 2));
}

// Function to perform distance transformation using Euclidean distance
//#pragma hls_design block
#ifdef _HLS_
#pragma hls_design block
#endif
template <int height, int width>
void distanceTransform(pixel_T inputImage[height][width], 
						float outputImage[height][width]) {

    // Initialize the output image with large values
    for (int i = 0; i < height; i++) {
    	for (int j = 0; j < width; j++) {
        	outputImage[i][j] = 1000000;
		}
    }

    // Forward pass
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            if (inputImage[y][x] != 0) {
                outputImage[y][x] = 0;
            } else {
                if (x > 0 && outputImage[y][(x - 1)] + 1 < outputImage[y][x]) {
                    outputImage[y][x] = outputImage[y][(x - 1)] + 1;
                }
                if (y > 0 && outputImage[(y - 1)][x] + 1 < outputImage[y][x]) {
                    outputImage[y][x] = outputImage[(y - 1)][x] + 1;
                }
                if (x > 0 && y > 0 && outputImage[(y - 1)][(x - 1)] + euclideanDistance(x, y, x - 1, y - 1) < outputImage[y][x]) {
                    outputImage[y][x] = outputImage[(y - 1)][(x - 1)] + euclideanDistance(x, y, x - 1, y - 1);
                }
            }
        }
    }

    // Backward pass
    for (int y = height - 1; y >= 0; y--) {
        for (int x = width - 1; x >= 0; x--) {
            if (x < width - 1 && outputImage[y][(x + 1)] + 1 < outputImage[y][x]) {
                outputImage[y][x] = outputImage[y][(x + 1)] + 1;
            }
            if (y < height - 1 && outputImage[(y + 1)][x] + 1 < outputImage[y][x]) {
                outputImage[y][x] = outputImage[(y + 1)][x] + 1;
            }
            if (x < width - 1 && y < height - 1 && outputImage[(y + 1)][(x + 1)] + euclideanDistance(x, y, x + 1, y + 1) < outputImage[y][x]) {
                outputImage[y][x] = outputImage[(y + 1)][(x + 1)] + euclideanDistance(x, y, x + 1, y + 1);
            }
        }
    }
}

#ifdef _HLS_
#pragma hls_design ccore
#endif
template <int rows, int cols>
void minMaxLoc(float data[rows][cols], float& minVal, float& maxVal) {
    float min = data[0][0];
    float max = data[0][0];

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            float val = data[i][j];
            if (val < min) {
                min = val;
            }
            if (val > max) {
                max = val;
            }
        }
    }
    minVal = min;
    maxVal = max;
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void threshold(float input[rows][cols], pixel_T output[rows][cols], float thresholdValue) {
	for (int i = 0; i < rows; i++) {
	    for (int j = 0; j < cols; j++) {
	        pixel_T pixel = input[i][j];
	        if (pixel > thresholdValue) {
	            output[i][j] = 255;
	        } else {
	            output[i][j] = 0;
	        }
	    }
	}
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void subtractPixels(pixel_T sure_bg[rows][cols], pixel_T sure_fg[rows][cols], pixel_T result[rows][cols]) {
    for(int i=0; i<rows; i++) {
        for (int j = 0; j < cols; j++) {
        	result[i][j] = sure_bg[i][j] - sure_fg[i][j];
		}
    }
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
void connectedComponents(const pixel_T image[rows][cols], pixel_T labels[rows][cols]) {

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
            if (image[i][j] != 0) {
                int left = (j > 0) ? labels[i][j - 1] : 0;
                int above = (i > 0) ? labels[i-1][j] : 0;
                if (left == 0 && above == 0) {
                    labels[i][j] = label;
                    equivLabels[i][label].parent = label;
                    label++;
                }
                else if (left != 0 && above == 0) {
                    labels[i][j] = left;
                }
                else if (left == 0 && above != 0) {
                    labels[i][j] = above;
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
                    labels[i][j] = rootLeft;
                }
            }
        }
    }

    // Second pass
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            int index = i * cols + j;
            if (image[i][j] != 0) {
                int root = labels[i][j];
                while (equivLabels[i][root].parent != root) {
                    root = equivLabels[i][root].parent;
                }
                labels[i][j] = root;
            }
        }
    }
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void incrAndSet0(pixel_T markers_i[rows][cols],
				 pixel_T markers_o[rows][cols],
				 pixel_T unknown[rows][cols]) {

	// Add 1 to all elements of markers
	for (int i = 0; i < rows; i++) {
	    for (int j = 0; j < cols; j++) {
	        markers_o[i][j] = markers_i[i][j] + 1;
	    }
	}
	
	for (int i = 0; i < rows; i++) {
	    for (int j = 0; j < cols; j++) {
	        if (unknown[i][j] == 255) {
	            markers_o[i][j] = 0;
	        }
	    }
	}
}

#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void watershed_algorithm(pixel_T image[rows][cols], pixel_T markers[rows][cols]) {

    // initialize variables
    const int infinity = rows * cols + 1;
    const int neighbours[8][2] = {{-1,-1}, {-1,0}, {-1,1}, {0,-1}, {0,1}, {1,-1}, {1,0}, {1,1}};
    int num_labels = 0;
    
    // initialize the queue with all markers as seeds
    int queue[rows * cols][2];
    int queue_start = 0, queue_end = 0;

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            if (markers[i][j] == 1) {
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
            if (markers[i][j] == 1) {
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
                if (markers[ni][nj] > 1 && markers[ni][nj] < min_label) {
                    min_label = markers[ni][nj];
                }
                if (markers[ni][nj] == 1 && image[ni][nj] == image[i][j] 
					&& dist[ni][nj] > dist[i][j] + 1) {
                    markers[ni][nj] = markers[i][j];
                    dist[ni][nj] = dist[i][j] + 1;
                    queue[queue_end][0] = ni;
                    queue[queue_end][1] = nj;
                    queue_end++;
                }
            }
        }
        
        // set the pixel label
        if (min_label < infinity) {
            markers[i][j] = min_label;
        } else {
            num_labels++;
            markers[i][j] = num_labels + 1;
        }
    }
}

// assuming you have a 3-channel image and a markers matrix of same size as image
// set all pixels in image that have -1 in markers to red
#ifdef _HLS_
#pragma hls_design block
#endif
template <int rows, int cols>
void makeBoundary(pixel_T markers[rows][cols], RGB in[rows][cols], RGB image[rows][cols]) {
		for (int i = 0; i < rows; i++) {
				for (int j = 0; j < cols; j++) {
					image[i][j] = in[i][j];
				}
		}

		for (int i = 0; i < rows; i++) {
				for (int j = 0; j < cols; j++) {
						if (markers[i][j] == -1) {
							image[i][j].r = 255;
							image[i][j].g = 0;
							image[i][j].b = 0;
						}
				}
		}
}

#ifdef _HLS_
#pragma hls_design top
#endif
template <int rows, int cols>
void image_segmentation(RGB input_image[rows][cols], RGB output_image[rows][cols])  {
	
	static pixel_T grayOutput[rows][cols];
	static pixel_T binaryThreshold[rows][cols];
	static pixel_T morphOpening[rows][cols];
	static pixel_T imKernel[3][3];
	static pixel_T sureBackground[rows][cols];
	static float   distanceTransformOutput[rows][cols];
	static float   maxValDistanceTransform;
	static float   minValDistanceTransform;
	static pixel_T sureForeground[rows][cols];
	static pixel_T differenceBF[rows][cols];
	static pixel_T markersGen[rows][cols];
	static pixel_T markersMod[rows][cols];
	static pixel_T watershedOutput[rows][cols];

    // Convert the image to grayscale
 	RGBtoGray<rows, cols>(input_image, grayOutput);

    // Threshold the gradient magnitude to obtain binary markers
	thresholdOtsu<rows, cols>(grayOutput, binaryThreshold); 

    // Perform morphological operations on the markers
	morphologyEx<rows, cols, 0, 3, 2>(binaryThreshold, morphOpening);

	// Generate a kernel
	genKernel<3>(imKernel);

	// perform dilation
	dilate<rows, cols, 3, 3, 2>(morphOpening, sureBackground, imKernel, -1, -1);

    // Compute the distance transform of the markers
	distanceTransform<rows, cols>(morphOpening, distanceTransformOutput);

	// Find max and min Pixel
	minMaxLoc<rows, cols>(distanceTransformOutput, minValDistanceTransform, maxValDistanceTransform) ;

	// Compute threshold
	threshold<rows, cols>(distanceTransformOutput, sureForeground, 0.5*maxValDistanceTransform);

	// Perform subtraction between the two images
	subtractPixels<rows, cols>(sureBackground, sureForeground, differenceBF);

    // Find regional minima in the distance transform
	connectedComponents<rows, cols>(sureForeground, markersGen);

    // Add 1 to all markers to distinguish regions from the background
	// Set the value of elements in markers where unknown is 255 to 0
	incrAndSet0<rows, cols>(markersGen, markersMod, differenceBF);
    
	// Apply watershed flooding
	watershed_algorithm<rows, cols>(grayOutput, watershedOutput);

    // Merge regions that are over-segmented based on gradient magnitude
	makeBoundary<rows, cols>(watershedOutput, input_image, output_image);
}

void imageProcessing () {
	
	const int ROWS = 512;
	const int COLS = 512;
	
	RGB inputImage[ROWS][COLS];
	RGB finalOutputImage[ROWS][COLS];
	
	for (int i = 0; i < ROWS; i++) {
        for (int j = 0; j < COLS; j++) {
			inputImage[i][j].r = 255;
			inputImage[i][j].g = 0;
			inputImage[i][j].b = 255;
        }
    }

	image_segmentation<ROWS, COLS>(inputImage, finalOutputImage);
}


