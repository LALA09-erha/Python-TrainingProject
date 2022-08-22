def orderedSeqSearch(listData, data):
    ind = 0
    found = False
    stop = False
    position=[]
    while ind < len(listData) and not found and not stop:
        if listData[ind] == data:
            found = True
            position.append(ind)
        else:
            if listData[ind] > data:
                stop = True
            else:
                ind = ind+1
    
    if found:
        return ind
    else:
        return ('Data tidak ada')

a=[1,1,5,5,5,8,9,31,12,26]

ind=orderedSeqSearch(a,26)
print(ind)