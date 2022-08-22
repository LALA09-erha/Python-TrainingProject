from SparseMatrix153_ import * 

print("matrix-1")
matrix1= createSparseMatrix()
print(displayMatrix(matrix1))

print("matrix-2")
matrix2=createSparseMatrix()
print(displayMatrix(matrix2))

hasilKali= multSparseMatrix(matrix1,matrix2)
print('Hasil Perkalian:')
print(displayMatrix(hasilKali))