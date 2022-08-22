def remainderFunction(data, num):
    return (data % num)


def createHashTable(num):
    temp = []
    for i in range(num):
        temp.append([None])
    return(temp)


def chaining(data, table):
    for i in range(len(data)):
        ind = remainderFunction(data[i], len(table))

        if table[ind] == [None]:
            table[ind].append(data[i])
            table[ind].pop(0)
        else:
            table[ind].append(data[i])
    return(table)


def searchHash(data, table):
    kondisi = False
    hashVal = remainderFunction(data, len(table))
    for i in range(len(table[hashVal])):
        if data == table[hashVal][i]:
            return "Data berada di slot ke -", hashVal, " dan indexs ke - ", i
    if kondisi != True:
        return False


b = [54, 26, 93, 17, 77, 31, 44, 55, 20]
hashTable = createHashTable(11)
hasil = chaining(b, hashTable)
print(hasil)
print(searchHash(20, hashTable))
