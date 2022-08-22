
# Latihan - 2: ORDERED

def orderedSeqSearch(listData, data):
    ind = 0
    stop = False
    position = []
    while ind < len(listData) and not stop:
        if listData[ind] == data:
            position.append(ind)
            ind = ind+1

        else:
            if listData[ind] > data:
                stop = True
                ind = ind+1
            else:
                ind = ind+1

    if position == []:
        return ('Data tidak ada'), ind
    else:
        return position, ind


a = [1, 1, 5, 5, 5, 8, 9, 10, 12, 26]

[hasil, iterasi] = orderedSeqSearch(a, 12)
print(f'Posisi Data = {hasil} \nJumlah Iterasi = {iterasi}')
