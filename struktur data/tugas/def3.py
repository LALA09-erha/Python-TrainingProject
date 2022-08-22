# def deretAritmatika(x,y,z):
#     pa = []
#     print('===deret aritmatika==')
#     sn = y*(2*x+(y-1)*z)/2
#     sni = sn + (2*x+(y-1)*z)
#     sni1 = x+(y-1)*z
#     for i in range(x,y*y,z):
#         pa.append(i)
#         # print(i)
#         if i ==sni1:
#             break
#     return pa
# def b(a,da):
#     s = 1
#     if da == s:
#         z = a[0]
#     else:
#         z = a[da - 1] + b (a , da - 1)
    
#     return z

# xx = int(input("masukkan suku awal: "))
# yy = int(input('masukkan suku ke- n: '))
# zz = int(input("masukkan beda atau selisih: "))
# pa = []
# print('===deret aritmatika==')
# sn = yy*(2*xx+(yy-1)*zz)/2
# sni = sn + (2*xx+(yy-1)*zz)
# sni1 = xx+(yy-1)*zz
# for i in range(xx,yy*yy,zz):
#     pa.append(i)
#     if i ==sni1:
#         break
# da = len(pa)
# print(da)
# lala = b(pa,da)4

# print("jumlah suku dalam deret aritmatika diatas:",jumlah)
# print(lala)
# x ={}
# x[1,2,3]=10
# x[5]= 17
# x [10,4]=12
# y =0
# for z in x.keys():
#     y+=x[z]
# print(y)

# def fungsi (x):
#     data =0 
#     for y in x:
#         data +=y
#     return data
# i =[3,4,7]
# print(fungsi(i))
# x = "kota"
# y = "surabaya"
# print(x+y)
# def fungsi(x):
    # if x ==1:
        # return 0
# 
    # else:
        # return fungsi(x-1)+x
# print(fungsi(4))
# a =[5,2,3]
# b =[4,1,5]
# print(a+b)

# x  = ["c", "o", " p"]
# x[0]='s'
# print(x)

# def fungsi(x):
#     y = []
#     for i in range(x):
#         y.append(i)
#     print(y)
# fungsi(5)

# # x = "cop"
# # x[0]="s"
# # print(x)
# # def fungsi(x):
# #     y = 0
# #     if x <=0 :
# #         return False
# #     else:
# #         for i in range(x):
# #             y +=x
# #         return y
# # print(fungsi(9))

# # def fungsi(x):
# #     y = []
# #     for
# def fungsi(x):
#     data = " "
#     for y in x:
#         data+= "%s"%y 
#     return data
# i = [3,4,7]
# print(fungsi(i))

def createMat3D(x,y):
    #matriks 1
    baris=[]
    for i in range(x):
        kolom = []
        for k in range(y):
            val = int(input(f"masukkan matriks[{i+1}][{k+1}] = "))
            kolom.append(val)
        baris.append(kolom)
    print("matriks 1 = ",baris)
    #matriks 2
    baris1 = []
    for i in range(x):
        kolom1 = []
        for k in range(y):
            tempat = int(input(f"masukkan matriks[{i+1}][{k+1}] = "))
            kolom1.append(tempat)
        baris1.append(kolom1)
    print("matriks 2 = ",baris1)
    #perkalian
    temp = []
    for b in range(len(baris)):
        wadah = []
        for i in range(len(baris1[0])):
            hasil = 0
            for k in range(len(baris[0])):
                hasil = hasil + baris[b][k]*baris1[k][i]
            wadah.append(hasil)
        temp.append(wadah)
    print("hasil kali matriks = ",temp)
    
    
createMat3D(3,3)