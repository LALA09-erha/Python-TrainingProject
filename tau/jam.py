lala = True
while lala:
    a = int(input("masukkan jam: "))
    b = int(input("masukkan menit: "))
    c = int(input("masukkan detik: "))
    if a <= 24:
        if b <60:
            if c <60:
                if a >= 24:
                    a = a % 24
                    print("jam ",a,":",b,":",c)
                else:
                    if b >= 60:
                        p = b //60
                        b= b%60
                        a +=p
                        if a >= 24:
                            a = a % 24
                            print("jam ",a,":",b,":",c)
                    else:
                        print("jam ",a,":",b,":",c)
            else:
                ca = c //60
                c = c%60
                b += ca
                if a >= 24:
                    a = a % 24
                    print("jam ",a,":",b,":",c)
                else:
                    if b>=60:
                        p = b //60
                        b= b%60
                        a +=p
                        if a >= 24:
                            a = a % 24
                            print("jam ",a,":",b,":",c)
                    else:
                        print("jam ",a,":",b,":",c)
        else:
            if c <60:
                if a >= 24:
                    a = a % 24
                    print("jam ",a,":",b,":",c)
                else:
                    if b >= 60:
                        p = b //60
                        b= b%60
                        a +=p
                        if a >= 24:
                            a = a % 24
                            print("jam ",a,":",b,":",c)
                    else:
                        print("jam ",a,":",b,":",c)
            else:
                ca = c //60
                c = c%60
                b += ca
                if a >= 24:
                    a = a % 24
                    print("jam ",a,":",b,":",c)
                else:
                    if b >= 60:
                        p = b //60
                        b= b%60
                        a +=p
                        if a >= 24:
                            a = a % 24
                            print("jam ",a,":",b,":",c)
                    else:
                        print("jam ",a,":",b,":",c)



    else:
        print("angka lebih dari 24")













    d = input("lanjut?y/t: ")
    if d == "y":
        pass
    else:
        lala= False