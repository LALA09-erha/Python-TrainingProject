nama = input("masukkan nama anda: ")
nim  = input("masukkan NIM anda: ")
UTS = float(input("masukkkan nilai UTS anda: "))
UAS = float(input("masukkan nilai UAS anda: "))
nilai = (UTS +UAS)/2
#sesi Penampilan :)
print("Nama Anda: ",nama)
print("NIM Anda: ",nim)
print("Nilai UTS Anda: ",UTS)
print("Nilai UAS Anda: ",UAS)
print("Nilai Rata - rata Anda: ",nilai)
if nilai >80 and nilai <=100:
    print("Kamu mendapatkan nilai A")
elif nilai >70 and nilai <=80:
    print("Kamu mendapatkan nilai B")
elif nilai >60 and nilai <=70:
    print("Kamu mendapatkan nilai C")
elif nilai >40 and nilai <=60:
    print("Kamu mendapatkan nilai D")
elif nilai >=0 and nilai <=40:
    print("Kamu mendapatkan nilai E")
else:
    print("maaf nilai tidak benar")
