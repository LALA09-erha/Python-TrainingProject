
def remainderFunction(data, num):
    return (data % num)


def createHashTable(num):
    temp = []
    for i in range(num):
        temp.append('none')
    return(temp)


def putData(data, table):
    for i in range(len(data)):
        ind = remainderFunction(data[i], len(table))
        table[ind] = data[i]
    return(table)


def searchHash(data, table):
    hashVal = remainderFunction(data, len(table))
    if data == table[hashVal]:
        return True
    else:
        return False


a = [5, 12, 14, 10, 11, 27, 8, 30]
hashTable = createHashTable(10)
hashTable = putData(a, hashTable)
print(hashTable)
