#var=[skor,ipk]
syarat = [1100,3.0]
jaka=[1100,3.5]
ida =[1000,3.5]
#penyeleksia
if jaka[0] > syarat[0] and jaka[1] >= syarat[1]:
    if ida[0] > syarat[0] and ida[1] >= syarat[1]: 
        print("LULUS SEMUA")
    else:
        print("jaka lolos")
elif ida[0] > syarat[0] and ida[1] >= syarat[1]:
    print("ida lolos")
else:
    print("MAAF TIDAK ADA YANG LULUS")
