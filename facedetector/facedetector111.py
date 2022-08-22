import numpy as np
import cv2 as cv
 
wajah=cv.CascadeClassifier('haarcascade_frontalface_default.xml')
cap = cv.VideoCapture(2)
img_gray = cv.cvtColor (cap,cv.COLOR_BGR2GRAY)
 
deteksi_wajah=wajah.detectMultiScale(img_gray,1.1,5)
font=cv.FONT_HERSHEY_SIMPLEX
jumlah=0
 
for(x,y,w,h) in deteksi_wajah:
    jumlah=jumlah+1
    cv.putText(cap,"Wajah",(x,y-10),font,0.75,(0,0,255),2,cv.LINE_AA)
    cv.rectangle(cap,(x,y),(x+w,y+h),(255,0,0),2)
    roi_gray=img_gray[y:y+h,x:x+w]
    roi_color=cap[y:y+h,x:x+w]
 
cv.putText(cap,"Jumlah wajah ada : "+str(jumlah)+ " buah",(10,30),font,1,(0,0,0),2,cv.LINE_AA)
cv.imshow('img',cap)
cv.waitKey(0)
cv.destroyAllWindows()
