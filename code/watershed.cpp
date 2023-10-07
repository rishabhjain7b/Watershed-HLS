#include <opencv2/opencv.hpp>

int main() {
    // Load the input image
    cv::Mat image = cv::imread("coins.png");

    // Convert the image to grayscale
    cv::Mat gray;
    cv::cvtColor(image, gray, cv::COLOR_BGR2GRAY);

    // Apply Sobel operator to compute gradient magnitude
    //cv::Mat sobelx, sobely;
    //cv::Sobel(gray, sobelx, CV_64F, 1, 0, 5);
    //cv::Sobel(gray, sobely, CV_64F, 0, 1, 5);
    //cv::Mat gradient;
    //cv::magnitude(sobelx, sobely, gradient);

	// Convert the input image to an appropriate type
    cv::Mat img_gray;
    gray.convertTo(img_gray, CV_8UC1);
	
    // Threshold the gradient magnitude to obtain binary markers
    cv::Mat thresh; //(img_gray.size(), img_gray.type());;
    cv::threshold(img_gray, thresh, 0, 255, cv::THRESH_BINARY_INV + cv::THRESH_OTSU);

    // Perform morphological operations on the markers
    cv::Mat opening;
    cv::Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3));
    cv::morphologyEx(thresh, opening, cv::MORPH_OPEN, kernel, cv::Point(-1, -1), 2);

    cv::Mat sure_bg;
	cv::dilate(opening, sure_bg, kernel, cv::Point(-1,-1), 3, cv::BORDER_CONSTANT, cv::Scalar()); // perform dilation

    // Compute the distance transform of the markers
    cv::Mat distance_transform;
    cv::distanceTransform(opening, distance_transform, cv::DIST_L2, 5);
    cv::Mat sure_fg;
	double max_val;
	cv::minMaxLoc(distance_transform, NULL, &max_val);
    cv::threshold(distance_transform, sure_fg, 0.9 * max_val, 255, 0); //cv::THRESH_BINARY);

    // Convert sure_fg to 8-bit unsigned int
    sure_fg.convertTo(sure_fg, CV_8UC1);

	// Perform subtraction between the two images
    cv::Mat unknown;
    cv::subtract(sure_bg, sure_fg, unknown);

	cv::Mat markers;
    // Find regional minima in the distance transform
    cv::connectedComponents(sure_fg, markers);

    // Add 1 to all markers to distinguish regions from the background
    markers = markers + 1;

	// Set the value of elements in markers where unknown is 255 to 0
    markers.setTo(0, unknown == 255);

    // Apply watershed flooding
    cv::Mat image_copy = image.clone();
    cv::watershed(image_copy, markers);

    // Merge regions that are over-segmented based on gradient magnitude
    image.setTo(cv::Scalar(0, 0, 255), markers == -1);

    // Apply post-processing steps as needed
    // e.g., noise removal, boundary smoothing, region merging

    // Display the segmented image
    cv::imshow("Segmented Image", image);
    cv::waitKey(0);
    cv::destroyAllWindows();

    return 0;
}

