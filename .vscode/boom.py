import pyautogui,time


lala = open ('lala', 'r')
time.sleep(5)
for i in lala :
    pyautogui.typewrite(lala)
    pyautogui.press("enter")
    time.sleep(5)
