angka = int(input("masukkan angka: "))
if angka > 1:
    if angka % 2 == 0:
        if angka == 2:
            print(angka,"prima")
        else:
            print(angka,"bukan prima")
    else:
        # setting pembagi = 3
        pembagi = 3
        
        # jika hasilnya 0 maka true, jika tidak maka false
        if angka % pembagi == 0:
            if angka == 3:
                print(angka,"prima")
            else:
                print(angka,"Bukan prima")
        else:
            
            # jika hasil lebih dari 0 maka true, masuk while
            while angka % pembagi > 0:
                pembagi = pembagi + 2
            if angka == pembagi:
                print(angka,"prima")
            else:
                print(angka,"bukan prima")
else:
    print(angka,"bukan prima")
