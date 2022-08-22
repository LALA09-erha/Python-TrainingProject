def rumus():
    print (" ")
    print ("daftar Bangun Datar:")
    print ("\n1.persegi \n2.persegi panjang \n3.segitiga \n4.jajar genjang \n5.lingkaran \n6.layang-layang \n7.Trapesium")
   

print ("*********")
print (" ")
rumus()

while 1:
 
    pilih = input("Masukan Huruf pilihan Kamu, kemudian tekan enter :")
    if pilih == "1":
        print ("\n")
        print ("ini rumus persegi")
        print ("~~~Luas = SISI * SISI~~~ ")
        S  = int(input("Masukkan Sisi Persegi tersebut ="))
        hasil1 = S*S
        print ("Luas Persegi tersebut =", hasil1, "Cm^2")
           
    elif pilih == "2":
        print ("\n")
        print ("ini rumus persegi panjang")
        print ("~~~Luas = P * L~~~")
        P = int(input("Masukkan panjang Persegi Panjang tersebut ="))
        L = int(input("Masukkan lebar Persegi Panjang tersebut ="))
        hasil2 = P * L
        print ("Luas Persegi tersebut =", hasil2, "Cm^2")
        

    elif pilih == "3":
        print ("\n")
        print ("ini rumus segitiga")
        print ("~~~Luas = 1/2 alas *tinggi~~~")
        a = int(input("Masukkan Alas Segitiga tersebut ="))
        t = int(input("Masukkan Tinggi Segitiga tersebut ="))
        hasil3 = 1/2 * a * t
        print ("Luas Segitiga tersebut =", hasil3, "Cm^2")

    elif pilih == "4":
        print ("\n")
        print ("ini rumus Jajar Genjang")
        print ("Luas = Alas * Tinggi")
        a = int(input("Masukkan Alas Segitiga tersebut ="))
        t = int(input("Masukkan Tinggi Segitiga tersebut ="))
        hasil4 = 1/2 * a * t
        print ("Luas Jajar Genjang tersebut =", hasil4, "Cm^2")
       
    elif pilih == "5":
        print ("\n")
        print ("ini rumus Lingkaran")
        print ("Luas = Phi * r**2")
        Phi = float(input("Masukkan Phi Lingkaran tersebut ="))
        r  = int(input("Masukkan jari-jari Lingkaran tersebut ="))
        hasil5 = Phi * r**2
        print ("Luas Lingkaran Tersebut =", hasil5, "Cm^2")
       
    elif pilih == "6":
        print ("\n")
        print ("ini rumus Layang-layang")
        print ("Luas = 1/2 * Diagonal1 * Diagonal2")
        D1 = int(input("Masukkan Diagonal1 layang-layang tersebut ="))
        D2 = int(input("Masukkan Diagonal2 Layang-layang tersebut ="))
        hasil6 = 1/2 * D1 * D2
        print ("Luas Jajar Genjang tersebut =", hasil6, "Cm^2")
    elif pilih == "7":
        print ("\n")
        print ("ini rumus Trapesium")
        print ("Luas = 1/2 * (S1+S2) * t")
        S1 = int(input("Masukkan Sisi1 Trapesium tersebut ="))
        S2 = int(input("Masukkan Sisi2 Trapesium tersebut ="))
        Tinggi = int(input("Masukkan Tinggi Trapesium tersebut ="))
        hasil7 = 1/2 * (S1+S2) * Tinggi
        print ("Luas Jajar Genjang tersebut =", hasil7, "Cm^2")
       
 
 
    else:
        print (" ")
        print ("Maaf bos, pilihan yang dimasukkan tidak terdaftar")
        print ("Ingin coba Lagi [y/n] ? ")
        print ("y = Kembali ke Menu Utama")
        print ("n = Tutup Program")
        coba = input()
        if coba == "Y":
            rumus()
        elif coba == "y":
            rumus()
        elif coba == "N":
            exit()
        elif coba == "n":
            exit()
        else:
            print ("Input Salah bos, Program akan segera tertutup")
            print (" ")
            print (" ")
            print (" ")
            print (" ")
            exit()