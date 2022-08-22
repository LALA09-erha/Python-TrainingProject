import cv2
import sys
faceCascade = cv2.CascadeClassifier("haarcascade_frontalface_default.xml")
# eye_cascade = cv2.CascadeClassifier('haarcascade_eye.xml')
video_capture = cv2.VideoCapture()
while True:
    # Capture frame-by-frame
    retval, frame = video_capture.read()
    # Convert to grayscale
    gray =cv2.cvtColor (frame,cv2.COLOR_BGR2GRAY)
    # Detect features specified in Haar Cascade
    faces = faceCascade.detectMultiScale(gray,scaleFactor=1.1,minNeighbors=5,minSize=(35, 35))   
    # Draw a rectangle around recognized faces 
    font = cv2.FONT_HERSHEY_SIMPLEX
    for (x, y, w, h) in faces:
     cv2.rectangle(frame, (x, y), (x+w, y+h), (50, 50, 200), 2)
     cv2.putText(frame,"Wajah",(x,y-10),font,0.75,(0,0,255),2,cv2.LINE_AA)
     roi_gray = gray[y:y+h, x:x+w]
     roi_color = frame[y:y+h, x:x+w]
    
    # Display the resulting frame
    cv2.imshow('Video', frame)
    
    # Exit the camera view
    if cv2.waitKey(1) & 0xFF == ord('q'):
     sys.exit() 