a = []
benar = True
while benar:
    b = input("masukkan data ke dalam list: ")
    a.append(b)
    if a.count(b)==2:
        print("Duplikasi Terdeteksi")
        print("data",b,"ada di index ke-",a.index(b))
        # a.remove(b)
        print("data",b,"duplikat sudah terhapus")
    else:
        pass
    c = input("input y to continue = ")
    if c=="y":
        pass
    else:
        print(list(dict.fromkeys(a)))
        # print("list anda",a)
        benar = False
