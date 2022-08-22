from  tugas2 import *
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