import cv2
import numpy as np
import matplotlib.pyplot as plt

im = cv2.imread('C:\Users\Jamie\Desktop\plate.jpg',0)
height,width = im.shape
circle_img = np.zeros((height,width), np.uint8)



im = cv2.medianBlur(im,5)
cimg = cv2.cvtColor(im,cv2.COLOR_GRAY2BGR)

circles = cv2.HoughCircles(im,cv2.HOUGH_GRADIENT,1,500,param1=200,param2=50,minRadius=0,maxRadius=0)

circles = np.uint16(np.around(circles))
for i in circles[0,:]:
    # draw the outer circle
    cv2.circle(cimg,(i[0],i[1]),i[2],(0,255,0),2)
    cv2.circle(circle_img,(i[0],i[1]),i[2],1,thickness=-1)

masked_data = cv2.bitwise_and(im, im, mask=circle_img)
h,w = im.shape[:2]
mask = np.zeros((h,w),dtype='uint8')
rect = (i[0],i[1],170,500)
tmp1 = np.zeros((1, 13 * 5))
tmp2 = np.zeros((1, 13 * 5))

cv2.grabCut(im,mask,rect,tmp1,tmp2,10,mode=cv2.GC_INIT_WITH_MASK)

plt.figure()
plt.imshow(mask)
plt.colorbar()
plt.show()


cv2.imshow("masked", masked_data)
cv2.waitKey(0)
