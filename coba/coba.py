# import math
# b = int(input("angka "))
# c = b/5
# a = math.ceil(c)
# print(c)
# d = a *5
# print(d)
# e = b % 5
# print(e)
# if b >=40:
#     if e<3:
#         if e ==0:
#             print(d)
#         else:
#             print(d-5)
#     else:
#         print(d)
# else:
#     print(b)
# n=10
# while n:
#     n = n -1
#     if n % 2 !=0:
#         continue
#     print(n)


# a = [1,2]
# for i in a:
#     print(a)
#     continue
# p = float(input("lala"))
# q = p//3
# a =(q/p)
# b = a *3
# print(b)

# n = int(input("angka: "))
# a = 1
# while n > 0:
#     a = a*n
#     n = n-1
# print(a)

# p = int(input("kaka"))
# q = abs(p-15)
# a = p-1
# b = q-1
# a=a*3
# b=b*3
# a = a+12
# b = b+12
# a = a/3
# b=b/3
# a = a+5
# b=b+5
# a=a-p
# b=b-q
# print(a)
# print(b)
# print(p)
# print(q)

# print("MASUKKAN ANGKA")
# a = 0
# b = 1
# c = 0
# d = int(input())
# for e in range(1, d + 1, 1):
#     print(a)
#     c = a + b
#     a = b
#     b = c

# def print_faktor(x):
#     print("Faktor dari", x, "adalah:")
#     for i in range(1, x+1):
#         if x % i == 0:
#             print(i)
# # Input bilangan yang akan dicari faktornya
# num = int(input("Masukkan bilangan: "))
# num = int(input("Masukkan bilangan: "))
# print_faktor(num)


# def hitung_FPB(x, y):
#     if x > y:
#         smaller = y
#     else:
#         smaller = x
#     for i in range(1, smaller+1):
#         if((x % i == 0) and (y % i == 0)):
#             fpb = i
#             if x % i ==0:
#                 print("pembagi yang sama",x ,"dan",y, "=",i)
#     return fpb
# num1 = int(input("masukkan angka: "))
# num2 = int(input("masukkan angka: "))
# print("pembagi terbesar dari", num1,"dan", num2," =", hitung_FPB(num1, num2))


    
# a = int(input("masukkan angka: "))
# if a>0:
#     print(a, "adalah bilangan positif")
# elif a<0:
#     print(a,"adalah bilangan negatif")
# else:
#     print(a,"adalah bilangan 0")

# nilai = int(input("masukkan nilai anda: "))
# print("Nilai Anda: ",nilai)
# if nilai >80 and nilai <=100:
#     print("Kamu mendapatkan nilai A")
# elif nilai >75: 
#     print("Kamu mendapatkan nilai B+")
# elif nilai >70:
#     print("Kamu mendapatkan nilai B")
# elif nilai >65: 
#     print("Kamu mendapatkan nilai C+")
# elif nilai >60 :
#     print("Kamu mendapatkan nilai C")
# elif nilai >55 :
#     print("Kamu mendapatkan nilai D+")
# elif nilai >50 :
#     print("Kamu mendapatkan nilai D")
# elif nilai >=0 and nilai <=50:
#     print("Kamu mendapatkan nilai E")
# else:
#     print("maaf nilai tidak benar")
# v = 7
# #angka 1
# for i in range(1):
#   for x in range(v+1):
#     print(" ", end="")
#   print("")
#   for i in range (v-1):
#     for c in range(1):
#       print("*", end="")
#     for x in range(0, v-1):
#       print(" ", end="")
#     for z in range(0, 1):
#       print(" ", end="")
#     print("")
#   for i in range(1):
#     for x in range(v+1):
#       print(" ", end="")
#     print("")
# print("")
# #angka 3
# for i in range(1):
#   for c in range(v+1):
#     print("*", end="")
#   print("")
#   for i in range(v-4):
#     for m in range(1):
#       print(" ", end="")
#     for c in range(0, v-1):
#       print(" ", end="")
#     for z in range(0, 1):
#       print("*", end="")
#     print("")
#   for i in range(1):
#     for c in range(v+1):
#       print("*", end="")
#     print("")
#   for i in range(v-4):
#     for m in range(1):
#       print(" ", end="")
#     for c in range(0, v-1):
#       print(" ", end="")
#     for z in range(0, 1):
#       print("*", end="")
#     print("")
#   for i in range(1):
#     for m in range(v+1):
#       print("*", end="")
#     print("")
# print("")

# #angka 2

# for i in range(1):
#   for c in range(v+1):
#     print("*", end="")
#   print("")
#   for i in range(v-4):
#     for m in range(1):
#       print(" ", end="")
#     for c in range(0, v-1):
#       print(" ", end="")
#     for z in range(0, 1):
#       print("*", end="")
#     print("")
#   for i in range(1):
#     for m in range(1):
#       print("*", end="")
#     for c in range(0, v-1):
#       print("*", end="")
#     for z in range(0, 1):
#       print("*", end="")
#     print("")
#   for i in range(v-4):
#     for m in range(1):
#       print("*", end="")
#     for c in range(0, v-1):
#       print(" ", end="")
#     for z in range(0, 1):
#       print(" ", end="")
#     print("")
#   for i in range(1):
#     for m in range(v+1):
#       print("*", end="")
#     print("")
# print("")

# for i in len[2,4,5,6,]:
#   print(i)
# x = "wulan"
# while x:
#   print(x)
#   x = x[1:]
# a = 5
# while a <= 0 and a <3:
#   print("saya")
#   a  = a + 1

# a = int(input("masukkan besaran "))
# for i in range (a):
#   print(" "+""*(a-1)+"x")
# for i in range(a-3,a):
#   print("x",end="")
# print(" ")

# print(" ")
# for i in range (1):
#   for j in range(a): 
#     print("x",end="")
#   for k in range(a-3,a):
#     print("x")
#   for j in range(a-1,a): 
#     print(("x"*a)+"x")
#   for i in range(a-3,a-1):
#     print(" "+" "*(a-1)+"x")
#   for j in range(a+1): 
#     print("x",end="")
#   print(" ")

# for i in range (1):
#   for j in range(1): 
#     print("x"*(a+1))
#   for i in range(a-3,a-1):
#     print(" "+" "*(a-1)+"x")
#   for j in range(1): 
#     print("x"*(a+1))
#   for k in range(a-2,a):
#     print("x")
#   for j in range(1): 
#     print("x"*(a+1))
  
    ##ANGKA 3
# print(" ")
# for i in range(1):
#   for i in range(1):
#     print("x"*(a+1))
# for i in range(a-2,a):
#   for i in range(a-2,a):
#     print(" "+" "*(a-1)+"x")
#   for i in range(1):
#     print("x"*(a+1))
#ANGKA 0
# for i in range(1):
#   print("x"*a)
# for i in range(a*2):
#   print("x"+" "*(a-2)+"x")
# for i in range(1):
#   print("x"*a)

# # benar = True
# while benar:
#   print(" ")
#   a = 1
#   b = int(input("masukkan "))
#   print(" ")
#   while a<=b:
#     print("*"*(1*a))
#     a=a+1
#   c = input("mau mencoba lagi? (y/t)")
#   if c =="y":
#     continue
#   elif c == "t":
#     print("kamu keluar program, terima kasih")
#     benar = False
#   else:
#     print("pilihan tidak ada, otomatis keluar")
#     break
# print(" ")
# a = 1
# b = int(input("masukkan "))
# print(" ")
# while a<=b:
#   print("*"*(1*a))
#   a=a+1

# a = ""
# b =1
# x=int(input("masukkan "))
# while b <= x:
#   a= a+"*"*(b)
#   a = a+ "\n"
#   b=b+1
# print(a)
# a=int(input('masuk '))
# for i in range(1):
#   print("x"*a)
# for i in range(a):
#   print("x"+" "*(a-2)+"x")
# for i in range(1):
#   print("x"*a)
# for i in range(a):
#   print(" "*(a-1)+"x")
# for i in range(1):
#   print("x"*a)


# for i in range(1):
#   print("x"*a)
# for i in range(a):
#   print("x"+" "*(a-2)+"x")
# for i in range(1):
#   print("x"*a)
# for i in range(a):
#   print("x"+" "*(a-2)+"x")
# for i in range(1):
#   print("x"*a)
# for i in range(a):
#   print(" "*(a-1)+"x")

# a= input("masukkan hari: ")
# c = int(input("masukkan hari ke: "))
# # b ={1:"minggu",2:"senin",3:"selasa",4:"rabu",5:"kamis",6:"jum'at",7:"sabtu"}
# b= "minggu","senin","selasa","rabu","kamis","jum'at", "sabtu"
# for i in b:
#     b[a]= b[-1]
#     if b<=c:
#         print(b[c])
# mata_kuliah = [“pengantar teknologi informasi”,”algoritma dan dasar pemrograman”,”logika engineering (pengantar ilmu pengetahuan & teknologi)”,”matematika Teknik”,”bahasa inggris”,”bahasa Indonesia”]
# mata_kuliah = ["pengantar teknologi informasi","algoritma dan dasar pemrograman","logika engineering (pengantar ilmu pengetahuan & teknologi)","matematika Teknik","bahasa inggris","bahasa Indonesia"]
# a=1
# for i in mata_kuliah:
#     print(a,i)  
#     a+=1
# print(mata_kuliah.index("pengantar Teknologi informasi"))
# a = 22 / 7
# print(a)
# a = "lala"
# myList = [1,2,3,4,5,6,7,-4]
# print(myList.count(4))
# myList.append(a)
# print(myList)
# print(myList)
# def lala():
#     print("selamat malam")
# lala()

# def lala(x):
#     b = []
#     for i in range(x):
#         print("data ke -",i)
#         a = float(input("masukkan data"))
#         b.append(a)
#     print("list ke - 1 = ",b,"; rata rata list 1= ",(sum(b)/len(b)))
#     print()
# def papa(x):
#     e =[]
#     for i in range(x):
#         a = float(input("masukkan data ke dalam list: "))
#         e.append(a)   
#     print("list ke - 2 = ",e,"; rata rata list 2= ",(sum(e)/len(e)))
#     print()
# def jumlah(x):
#     b,e,p,q = [],[],[],[]
#     for i in range(x):
#         print("data ke -",i)
#         a = float(input("masukkan data: "))
#         b.append(a)
#     print("list ke - 1 = ",b,"; rata rata list 1= ",(sum(b)/len(b)))
#     print()
#     for i in range(x):
#         print("data ke -",i)
#         a = float(input("masukkan data ke dalam list: "))
#         e.append(a)   
#     print("list ke - 2 = ",e,"; rata rata list 2= ",(sum(e)/len(e)))
#     print()
#     if len(e) == len(b):
#         for i in range(len(e)):
#             g=b[i]+e[i]
#             p.append(g)
#             h=b[i]-e[i]
#             q.append(h)
#         print("perjumlahan list 1 + list 2:",p)
#         print("pengurangan list 1 - list 2:",q)
#     else:
#         print("WARNING!!!! panjang data tidak sama")
# x = int(input("masukkan berapa besaran: "))
# jumlah(x)

# def a(num, size):
#     g = "["
#     p = 0
#     for i in range(0, size - 1 + 1, 1):
#         if i == size - 1:
#             g = g + str(num[i])
#         else:
#             g = g + str(num[i]) + ","
#     g = g + "]"
    
#     return g

# def ka(num, size):
#     ja = 0
#     for i in range(0, size - 1 + 1, 1):
#         ja = ja + num[i]
#     ja = float(ja) / size
    
#     return ja

# def ma(num, size):
#     l = num[0]
#     for i in range(0, size - 1 + 1, 1):
#         if l < num[i]:
#             l = num[i]
    
#     return l

# # Main
# print("Masukkan ukuran data")
# size = int(input())
# num = [0] * (size)

# p = 0
# for i in range(0, size - 1 + 1, 1):
#     print("masukkan data ke" + str(i))
#     num[i] = int(input())
# print("data list:" + a(num, size))
# print("rata rata :" + str(ka(num, size)))
# print("nilai maximum: " + str(ma(num, size)))

#rekursif
# def rekursif(angka):
#     if angka>0:
#         print(angka)
#         angka -= 1
#         rekursif(angka)
#     else:
#         print(angka)
# rekursif(5)
# def fibonacci(n):
#    if n == 0 or n == 1:
#       return n
#    else:
#       return (fibonacci(n-1) + fibonacci(n-2))

# x = int(input("Masukan Batas Deret Bilangan Fibonacci : "))
# print("Deret Fibonacci")
# for i in range(x):
#    print(fibonacci(i),end=' ')




#rekursif 2
# def faktorial_recursive(n):
#     if n ==1:
#         return 1
#     else:
#         return n *faktorial_recursive(n-1)
# faktorial_recursive(5)
# pa = int(input("Masukkan angka: "))
# for i in range(0,pa+1):
#     k = i
#     for j in range(1,(i*i)+1):
#         if j%i == 0:
#             print(j,end=" ")
#         else:
#             pass
#     print()

# a = int(input("Masukkan bilangan yang ingin di periksa: "))
# if a > 1:
#     for i in range(2,a):
#         if (a % i) == 0:
#             print(a, "bukan bilangan prima")
#             print(i, "kali", a//i, "=", a)
#             break
#     else:
#         print(a,"adalah bilangan prima")
# else:
#     print(a, "bukan bilangan prima")
# m = int(input('number of rows, m = '))
# n = int(input('number of columns, n = '))
# matrix = []; columns = []
# # initialize the number of rows
# for i in range(0,m):
#   matrix += [0]
# # initialize the number of columns
# for j in range (0,n):
#   columns += [0]
# # initialize the matrix
# for i in range (0,m):
#   matrix[i] = columns
# for i in range (0,m):
#   for j in range (0,n):
#     print ('entry in row: ',i+1,' column: ',j+1)
#     matrix[i][j] = int(input())
# print (matrix)
# lala = True
# while lala:
#     a = int(input("masukkan jam: "))
#     b = int(input("masukkan menit: "))
#     c = int(input("masukkan detik: "))
#     if a <= 24:
#         if b >=60:
#             p = b//60
#             b = int(b%60)
#             a +=p
#             if c >=60:
#                 q = c//60
#                 c = int(c%60)
#                 b +=1
#                 if a >= 24:
#                     a = a % 24
#                     print("jam ",a,":",b-1,":",c-1)
#                 else:
#                     print("jam ",a,":",b-1,":",c-1)
#             else:
#                 print("jam ",a,":",b-1,":",c-1)
#         # elif b > 60:
#         else:
#             if c >=60:
#                 q = c//60
#                 c = int(c%60)
#                 b += q
#                 if a >= 24:
#                     a = a % 24
#                     print("jam ",a,":",b,":",c-1)
#                 else:
#                     print("jam ",a,":",b,":",c-1)
#             else:
#                  print("jam ",a,":",b,":",c-1)
#     else:
#                 print("jam tidak boleh dari 24")
        
#     d = input("lanjut?y/t: ")
#     if d == "y":
#         pass
#     else:
#         lala= False
    

# def faktorial(a):
#    if a == 1:
#       return (a)
#    else:
#       return (a*faktorial(a-1))

# print(faktorial(4))
# def faktorial1(dat1):
# 	num = 1
# 	for dat1 in range(1, dat1+ 1):
# 		num *= dat1
# 	print('Faktorial dari %d adalah %d'%(dat1,num))

# while True:
# 	data = int(input("MASUKKAN ANGKA: "))
# 	cak = input("mau pakai cara?:\n1.ITERATIF\n2.REKURSIF\npilih 1 atau 2: ")
# 	if cak == "1":
# 		faktorial1(data)
# 	elif cak=="2":
# 		print("faktorial dari",data, "adalah",faktorial(data))
# 	else:
# 		print("maaf input salah")
# 	cek = input("INGIN MENGULANG?(Y/N)")
# 	if cek =="Y":
# 		pass
# 	elif cek =="y":
# 		pass
# 	else:
# 		break

# uang = int(input('masukan jumlah uang: '))
# uang_pecahan = [100000, 50000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100]
# sisa = uang
# print('Input uang {},  Pecahan yang kita butuhkan yaitu: '.format(uang))
# for pecahan in uang_pecahan:
#     if sisa < pecahan:
#         continue
#     banyak_pecahan = int(sisa / pecahan)
#     sisa = sisa - ( pecahan * banyak_pecahan )
#     print('pecahan {} : {}'.format(pecahan, banyak_pecahan))

#program penghitung uang pecahan
# +++++KONVERSI ROMAWI KE ANGKA++++
# print("+++++KONVERSI ROMAWI KE ANGKA++++")
# romawi = (input('Masukkan Angka :'))
# data = {'I':1, 'V':5, 'X':10, 'L':50, 'C':100, 'D':500, 'M':1000}
# hasil = 0
# for i in range(len(romawi)):
#     if i == 0 or data[romawi[i]] <= data[romawi[i-1]]:
#         hasil += data[romawi[i]]
#     else:
#         hasil += data[romawi[i]] - 2 * data[romawi[i-1]]
# print(romawi.upper(), 'dikonversi ke angka asli menjadi =', hasil)
# print("="*20)
# # ++++++KONVERSI ANGKA KE ROMAWI+++++
# print( "++++++KONVERSI ANGKA KE ROMAWI+++++")
# a=int(input("masukkan angka ="))
# ribu=['','M','MM','MMM']
# ratus=['','C','CC','CCC','CD','D','DC','DCC','DCCC','CM']
# puluh=['','X','XX','XXX','XL','L','LX','LXX','LXXX','XC']
# satuan=['','I','II','III','IV','V','VI','VII','VIII','IX']
# rb=int(a/1000)
# rts=int((a/100)%10)
# plh=int((a%100)/10)
# st=int(a%10)
# print("Bilangan romawi =",ribu[rb]+ratus[rts]+puluh[plh]+satuan[st])


# Mat = {(0,3): 1, (2, 1): 2, (3, 3): 3}
# print(Mat)
# Mat[0,2]=4 #penambahan data baru
# print(Mat)
# #pengecekan data pada index (ind1,ind2), jika tidak terdapat data, maka return value=None, 
# #jika terdapat data maka return value=adalah data
# cek=Mat.get((0,1)) 
# print(cek)
# cek=Mat.get((2,1))
# print('(2,1)=',cek)
# cek=Mat.get((1,3))
# print('(1,3)=',cek)

# Python program for implementation of Bubble Sort 

# def bubbleSort(listData):
#     print('Data yang akan diurutkan : ', listData)
#     for outIter in range(len(listData)-1,-1,-1):
#         for i in range(outIter):
#             if listData[i]>listData[i+1]:
#                 # temp=listData[i]
#                 # listData[i]=listData[i+1]
#                 # listData[i+1]=temp
#                 listData[i],listData[i+1]=listData[i+1],listData[i]
#     print('Data urut-',listData)

# a=[12,0,5,1,11,20,4,2]
# bubbleSort(a)
# b=[12,11,5,1,0]
# print('--')
# bubbleSort(b)

