import os
import speech_recognition as sr
from google_trans import Translator
import simpleaudio as sa

engine = sr.Recognizer()
mic = sr.Microphone()
hasil = ""
tempdestinasi = "C:/Dahlah/Python/Translate/Voice/voi1.wav"
tempdestinasi2 = "C:/Dahlah/Python/Translate/Voice/voi2.wav"

with mic as source:
    wave_obj = sa.WaveObject.from_wave_file(tempdestinasi)
    play_obj = wave_obj.play()
    play_obj.wait_done()
    # print("Silahkan mulai berbicara")
    rekaman = engine.listen(source)
    wave_obj2 = sa.WaveObject.from_wave_file(tempdestinasi2)
    play_obj2 = wave_obj2.play()
    play_obj2.wait_done()
    # print("Waktu habis")

    try:
        hasil = engine.recognize_google(rekaman, language="id-ID")
        print("ID : ", hasil)
    except engine.UnknownValueError:
        print("Maaf tidak dideteksi")
    except Exception as e:
        print(e)

trans = Translator()
translation = trans.translate(hasil)
print(f"({translation.src}) --> {translation.text} ({translation.dest})")
