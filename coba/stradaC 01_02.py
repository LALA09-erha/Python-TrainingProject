def disp(x):
    for b in x :
        print("|\t",end=" ")
        for k in b :
            print(k,end="\t")
        print("|\t")


def createMatrix(baris,kolom):
    mat = []
    for b in range(baris):
        temp = []
        for k in range(kolom):
            val = int(input("Masukan angka [{},{}] : ".format(b+1,k+1)))
            temp.append(val)
        mat.append(temp)
    return(mat)

def multMat(f,g):
    if len(f[0]) == len(g) or len(f) == len(g[0]):
        temp = []
        for b in range(len(f)):
            wadah = []
            for i in range(len(g[0])):
                hasil = 0
                for k in range(len(f[0])):
                    hasil = hasil + f[b][k]*g[k][i]
                wadah.append(hasil)
            temp.append(wadah)
    return temp


baris = int(input("\nMasukan n baris : "))
kolom = int(input("\nMasukan n kolom : "))

print("\nMatriks1")
matriks1 = createMatrix(baris,kolom)
disp(matriks1)
print("\nMatriks2")
matriks2 = createMatrix(baris,kolom)
disp(matriks2)
print("\nHasil :\n ")
kali = multMat(matriks1,matriks2)
disp(kali)