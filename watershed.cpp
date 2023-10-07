
#include <iostream>
#include "opencv2/imgcodecs.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include <vector>



void showImg(const std::string& windowName,const cv::Mat& img){
	cv::imshow(windowName,img);
}


void getBackground(const cv::Mat& source,cv::Mat& dst) {


	cv::dilate(source,dst,cv::Mat::ones(3,3,CV_8U)); //Kernel 3x3
} void getForeground(const cv::Mat& source,cv::Mat& dst) {

	cv::distanceTransform(source,dst,cv::DIST_L2,3,CV_32F);
	cv::normalize(dst, dst, 0, 1, cv::NORM_MINMAX);
}

void findMarker(const cv::Mat& sureBg,cv::Mat& markers,
							std::vector<std::vector<cv::Point>>& contours)
{
	cv::findContours(sureBg,contours,cv::RETR_EXTERNAL,
															cv::CHAIN_APPROX_SIMPLE);

	// Draw the foreground markers
	for (size_t i = 0,size = contours.size(); i < size; i++)
			drawContours(markers, contours, static_cast<int>(i),
								cv::Scalar(static_cast<int>(i)+1), -1);
}


void getRandomColor(std::vector<cv::Vec3b>& colors,size_t size)
{
	for (int i = 0; i < size ; ++i)
	{
			int b = cv::theRNG().uniform(0, 256);
			int g = cv::theRNG().uniform(0, 256);
			int r = cv::theRNG().uniform(0, 256);
			colors.emplace_back(cv::Vec3b((uchar)b, (uchar)g, (uchar)r));
	}
}


int main (int argc,char** argv) {
	if(argc < 2)
	{
		std::cerr << "Error\n";
		std::cerr << "Provide Input Image:\n<program> <inputimage>\n";
		return -1;
	}
	cv::Mat original_img = cv::imread(argv[1]);

	if(original_img.empty())
	{
		std::cerr << "Error\n";
		std::cerr << "Cannot Read Image\n";
		return -1;
	}

	cv::Mat shifted;
	cv::pyrMeanShiftFiltering(original_img,shifted,21,51);
	showImg("Mean Shifted",shifted);

	cv::Mat gray_img;
	cv::cvtColor(original_img,gray_img,cv::COLOR_BGR2GRAY);
	showImg("GrayIMg",gray_img);

	cv::Mat bin_img;
	cv::threshold(gray_img,bin_img,0,255,cv::THRESH_BINARY | cv::THRESH_OTSU);
	showImg("thres img",bin_img);

	cv::Mat sure_bg;
	getBackground(bin_img,sure_bg);
	showImg("Sure Background",sure_bg);

	cv::Mat sure_fg;
	getForeground(bin_img,sure_fg);
	showImg("Sure ForeGround",sure_fg);

	cv::Mat markers = cv::Mat::zeros(sure_bg.size(),CV_32S);
	std::vector<std::vector<cv::Point>> contours;
	findMarker(sure_bg,markers,contours);
	cv::circle(markers, cv::Point(5, 5), 3, cv::Scalar(255), -1); //Drawing Circle around the marker

	cv::watershed(original_img,markers);

	cv::Mat mark;
	markers.convertTo(mark, CV_8U);
	cv::bitwise_not(mark, mark); //Convert white to black and black to white
	showImg("MARKER",mark);


/* Highliting Markers in the image */

	std::vector<cv::Vec3b> colors;
	getRandomColor(colors,contours.size());

	// Create the result image
	cv::Mat dst = cv::Mat::zeros(markers.size(), CV_8UC3);
	// Fill labeled objects with random colors
	for (int i = 0; i < markers.rows; i++)
	{
			for (int j = 0; j < markers.cols; j++)
			{
					int index = markers.at<int>(i,j);
					if (index > 0 && index <= static_cast<int>(contours.size()))
							dst.at<cv::Vec3b>(i,j) = colors[index-1];
			}
	}

	showImg("Final Result",dst);

	cv::waitKey(0);
	return 0;
}
