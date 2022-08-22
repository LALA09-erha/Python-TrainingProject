import pyttsx3
bot= pyttsx3.init()
voices = bot.getProperty('voices')
print(voices)
bot.setProperty('voice',voices[1].id)
bot.say("i love you")
bot.runAndWait()