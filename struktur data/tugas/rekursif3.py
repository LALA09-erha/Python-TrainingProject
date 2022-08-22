#MENGHITUNG TRIANGULAR NUMBERS
def lala(n):
    if n==1:
        return(1)
    else:
        return (n + lala(n-1))
jumlah = lala(4)
print("hasil dari triangular Numbers= ",jumlah)

#MENGHITUNG PANGKAT
def caca(a,b):
    if b ==0:
        return 1
    else:
        return(a * caca(a,b-1))

x = int(input("masukkan angka: "))
y = int(input("masukkan angka: "))
pangkat = caca(x,y)
print("hasil dari",x,"pangkat",y,"=",pangkat)