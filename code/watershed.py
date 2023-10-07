import cv2
import numpy as np

img = cv2.imread('./cocoaBeans.jpg')             
#bilateral image from bilateral filter part
cv2.imshow('input',img)

gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)    
#gray is rgb2gray conversion of img
cv2.imshow('grayscale',gray)

ret, thresh = cv2.threshold(gray,0,255,cv2.THRESH_BINARY_INV+cv2.THRESH_OTSU)   
#threshold considering factors threshold binary inversion + otsu binarization
cv2.imshow('Otsu',thresh)

# noise removal
kernel = np.ones((3,3),np.uint8)
opening = cv2.morphologyEx(thresh,cv2.MORPH_OPEN,kernel, iterations = 2)
cv2.imshow('Morph',opening)

# sure background area
sure_bg = cv2.dilate(opening,kernel,iterations=3)
cv2.imshow('Sure Bg',sure_bg)

# Finding sure foreground area
dist_transform = cv2.distanceTransform(opening,cv2.DIST_L2,5)
cv2.imshow('DT',dist_transform)
ret, sure_fg = cv2.threshold(dist_transform,0.5*dist_transform.max(),255,0)
sure_fg = np.uint8(sure_fg)
cv2.imshow('Sure Fg',sure_fg)

# Finding unknown region
unknown = cv2.subtract(sure_bg,sure_fg)
cv2.imshow('Subtract',unknown)
# Marker labelling
ret, markers = cv2.connectedComponents(sure_fg)

# Add one to all labels so that sure background is not 0, but 1
markers = markers+1

# Now, mark the region of unknown with zero
markers[unknown==255] = 0
markers = cv2.watershed(img,markers)


img[markers == -1] = [0,255,0]      
#giving background boundary red color

cv2.imshow('output',img)
cv2.waitKey(0)
# watershed on whole image completes here

