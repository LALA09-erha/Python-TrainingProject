# Latihan - 1: UNORDERED
def seqSearch(data, listData):
    ind, hasil = 0, []
    while ind < len(listData):
        if listData[ind] == data:
            hasil.append(ind)
            ind = ind+1
        else:
            ind = ind+1
    if hasil == []:
        return('DATA TIDAK DI TEMUKAN'), ind
    else:
        return hasil, ind


a = [9, 12, 5, 3, 15, 19, 14]
[hasil, iterasi] = seqSearch(12, a)
print(f'Posisi Data = {hasil} \nJumlah Iterasi = {iterasi}')
