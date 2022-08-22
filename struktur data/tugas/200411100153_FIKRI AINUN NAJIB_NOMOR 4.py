angka = int(input("masukkan angka: "))
c =  angka%5
if angka >=40:
    if c < 3:
        a =(angka//5)*5
        print("pembulatan: ",a)
    else:
        a =((angka//5)*5)+ 5
        print("pembulatan: ",a)
else:
    print("pembulatan:", angka)