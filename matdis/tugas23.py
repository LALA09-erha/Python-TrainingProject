p = True
ingkaran_p = False
q = True
ingkaran_q = False

inpt = input("analogi pernyataan (kalimat 1: p or ~p) (kalimat 2 : q or ~q) \nkalimat 1: ")
inpt2 = input("kalimat 2: ")
kondisi = True
while kondisi:
    user = int(input("MASUKKAN ANGKA YANG INGIN DI KETAHUI\n1.Konvers\n2.Invers\n3.Kontraposisi\n4.Exit\n\n"))
    if user ==1:
        if inpt=="p" and inpt2=='~q':
            knds = not(ingkaran_q) or p
        elif inpt=="p" and inpt2=='q':
            knds = not(q) or p
        elif inpt=="~p" and inpt2=='~q':
            knds = not(ingkaran_q) or ingkaran_p
        elif inpt=="~p" and inpt2=='q':
            knds = not(q) or ingkaran_p
        else:
            # print("input salah")
            break
        print("\nKonvers dari ",inpt,"=>",inpt2, "adalah ",inpt2,"=>",inpt,"hasilnya")
        print("")
    elif user==2:
        if inpt=="~p" and inpt2=='~q':
            knds = not(p) or q
        elif inpt=="p" and inpt2=='q':
            knds = not(ingkaran_p) or ingkaran_q
        elif inpt=="p" and inpt2=='~q':
            knds = not(ingkaran_p) or q
        elif inpt=="~p" and inpt2=='q':
            knds = not(p) or ingkaran_q
        else:
            # print("input salah")
            break
        print(f"\nInvers dari {inpt} => {inpt2} adalah ~({inpt}) => ~({inpt2}) hasilnya ")
        print("")
    elif user ==3:
        if inpt=="~p" and inpt2=='~q':
            knds = not(q) or p
        elif inpt=="p" and inpt2=='q':
            knds = not(ingkaran_q) or ingkaran_p
        elif inpt=="p" and inpt2=='~q':
            knds = not(q) or ingkaran_p
        elif inpt=="~p" and inpt2=='q':
            knds = not(ingkaran_q) or p
        else:
            # print("input salah")
            break
        print(f"\nKontraposisi dari {inpt} => {inpt2} adalah ~({inpt2}) => ~({inpt}) hasilnya")
        print("")
    else:
        kondisi = False