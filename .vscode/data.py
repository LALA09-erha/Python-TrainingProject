nama =[]
nilai=[]
a= int(input("berapa "))
for i in range (a):
    b = input("nama ")
    nama.append(b)
    c = float(input("nilai "))
    nilai.append(c)
benar= True
while benar:
    pilih = int(input("daftar nilai mahasiswa"))
    if pilih ==0:
        for i in range(0,a+1):
            print(i+1, nama[i],":",nilai[i])