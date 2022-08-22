a = 1
num = int(input("Masukkan bilangan: "))
for i in range((num*2)):
    if a > 1:
        for i in range(2,a):
            if (a % i) == 0:
                pass
                # print(a, "bukan bilangan prima")
                # # print(i, "kali", a//i, "=", a)
                break
        else:
            print(a,"adalah bilangan prima")
    # else:
    #     print(a, "bukan bilangan prima")
    a = a+1