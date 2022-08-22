import pyautogui as pya # you need to pip install pyautogui
from time import sleep
import sys

print("Max Submission Image Sender: Press CTRL + C to Force Quit")
imagef = input('[>] Insert image link: ') # By example https://i.insider.com/5c59e77ceb3ce80d46564023?width=1100&format=jpeg&auto=webp < thats a shrek image link btw

maximages = 0

print('You have 15 seconds to put it in chat') # and here you have 15 seconds

sleep(15)

while True:
	pya.typewrite(imagef)
	pya.press("enter")
	sleep(1)
	print("Sent image")
	maximages += 1
	sleep(1)
	if maximages >= 5: # You can change to something else but you ofc dont want while true variable going rogue on your pc
		print('Stopped')
		sys.exit()
