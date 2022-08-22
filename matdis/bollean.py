a =True
while a:

    x = int(input("MASUKKAN X: "))
    y = int(input("MASUKKAN Y: "))
    z = int(input("MASUKKAN Z: "))

    if x == 1:
        x =True
    else:
        x = False

    if y == 1:
        y =True
    else:
        y = False

    if z == 1:
        z =True
    else:
        z = False
    
    hasil_1 = int(int((y) and ((not(x) or z) and (not(x) and not(y)))))
    hasil_2 = int(int((y) and ((not(x) or z) and (not(x) and not(y)))))

    print('Hasil de morgan: ',hasil_1)
    print('Hasil dualitas: ',hasil_2)

    cek = input("lagi?\ny/n")
    if cek=='y':
        pass
    else:
        a=False