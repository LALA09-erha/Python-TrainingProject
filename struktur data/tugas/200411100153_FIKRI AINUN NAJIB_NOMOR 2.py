print("-"*5,"Rekruitmen Karyawan","-"*5)
TA = float(input("masukkan TA: "))
TK = float(input("masukkan TK: "))
TP = float(input("masukkan TP: "))
rata = (TA+TK+TP)/3
print(rata)
if rata >=75:
    if TA >TK and TA >TP:
        print("bagian administrasi")
    elif TK >TA and TK >TP:
        print("bagian produksi")
    else:
        print("bagian pemasaran")
else:
    print("anda tidak lulus")