def aturmat(x):
    for i in range(len(x)):
        print("|", end="")
        for y in range(len(x[0])):
            print("%4s"%str(x[i][y]), end="")
        print(" |")
    print(" ")
    
def createMat3D(x,y):
    baris=[]
    for i in range(x):
        kolom ,syarat= [],0
        while syarat <y:
            val = int(input(f"masukkan matriks[{i+1}][{syarat+1}] = "))
            kolom.append(val)
            syarat +=1
        baris.append(kolom)
    return(baris)

def perkalianMatriks(matrix,matrix1):
    temp = []
    for b in range(len(matrix)):
        wadah = []
        for i in range(len(matrix1[0])):
            hasil,k = 0,0
            while k < len(matrix[0]):
                hasil = hasil + matrix[b][k]*matrix1[k][i]
                k +=1
            wadah.append(hasil)
        temp.append(wadah)
    return(temp)
    
if __name__ == "__main__":
    #membuat dua buah matriks ordo 3x3
    matrix = createMat3D(3,3)
    print(3*"="+'matriks 1'+"="*3)
    aturmat(matrix)
    matrix1 = createMat3D(3,3)
    print(3*"="+'matriks 2'+"="*3)
    aturmat(matrix1)
    #mengkalikan dua buah matriks ordo 3x3
    kali = perkalianMatriks(matrix,matrix1)
    print(3*"="+'hasil kali'+"="*2)
    aturmat(kali)