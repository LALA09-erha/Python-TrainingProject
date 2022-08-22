def createSparseMatrix():
    data = {}
    baris = int(input("jumlah baris: "))
    kolom = int(input("jumlah kolom: "))
    data["baris"] = baris
    data["kolom"] = kolom
    input_data = int(input("jumlah data yang tidak nol ? "))
    if input_data <= (baris*kolom) and input_data > 0:
        i = 1
        while i <= input_data:
            print("data ke-", i)
            iBaris = int(input("Index Baris ke - "))
            iKolom = int(input("Index Kolom ke - "))
            if iBaris < baris and iKolom < kolom and iBaris >= 0 and iKolom >= 0:
                nilai = int(input(f"sparseMat[{iBaris},{iKolom}]= "))
                data[iBaris, iKolom] = nilai
                i += 1
            else:
                print("index baris atau kolom melebihi jumlah baris atau kolom")
    else:
        print("Jumlah Tidak memenuhi !!!")
    print(data)
    return data


def displayMatrix(data):
    jumlahBaris = data["baris"]
    jumlahKolom = data["kolom"]
    matStr = ''
    for i in range(jumlahBaris):
        temp = ''
        for j in range(jumlahKolom):
            if (i, j) in data:
                temp = temp+' '+str('%4d' % data[(i, j)])
            else:
                temp = temp+' '+str('%4d' % 0)

        temp = '%s' % '|'+temp+'%4s' % '|'
        matStr = matStr+temp+'\n'
    return (matStr)


def multSparseMatrix(data1, data2):
    baris1, kolom1 = data1["baris"], data1["kolom"]
    baris2, kolom2 = data2["baris"], data2["kolom"]
    hasilkali, mat1, mat2 = {}, {}, {}
    for i in range(baris1):
        for y in range(kolom1):
            if (i, y) in data1:
                mat1[(i, y)] = data1[(i, y)]
            else:
                mat1[(i, y)] = 0

    for i in range(baris2):
        for y in range(kolom2):
            if (i, y) in data2:
                mat2[(i, y)] = data2[(i, y)]
            else:
                mat2[(i, y)] = 0
    if kolom1 == baris2:
        hasilkali["baris"] = baris1
        hasilkali["kolom"] = kolom2
        for i in range(baris1):
            for k in range(kolom2):
                temp = 0
                for j in range(kolom1):
                    temp = temp+mat1[(i, j)]*mat2[(j, k)]
                hasilkali[(i, k)] = temp
        return hasilkali
    else:
        return print("ukuran tidak memenuhi syarat")


print("matrix-1")
matrix1 = createSparseMatrix()
print(displayMatrix(matrix1))

print("matrix-2")
matrix2 = createSparseMatrix()
print(displayMatrix(matrix2))

hasilKali = multSparseMatrix(matrix1, matrix2)
print('Hasil Perkalian:')
print(displayMatrix(hasilKali))
