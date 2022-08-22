from gtts import gTTS
import os
import pyttsx3
os.chdir(r"D:\DOCUMENTS\lala\00 - tamplate\tau")
f = open(r"halo.txt",encoding="utf8")
artikel =f.read()
filesaya = gTTS(text = "penasaran kelanjutannya?...Tonton video ini sampai habis hehehehehe", lang="id")
filesaya.save("dubbing1.mp3")
engine = pyttsx3.init("sapi5")
# voices = engine.getProperty("voices")
# engine.setProperty("rate",170)
# engine.setProperty("languages","id")
# for voice in voices:
#     print("Voice: %s" % voice.name)
#     print(" - ID: %s" % voice.id)
#     print(" - Languages: %s" % voice.languages)
#     print(" - Gender: %s" % voice.gender)
#     print(" - Age: %s" % voice.age)
#     print("\n")
# # engine.setProperty("voice",voices[0].id)
# # engine.say("halo")
# # engine.runAndWait()
