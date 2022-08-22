def bubbleSort(listData):
    print('Data yang akan diurutkan : ', listData)
    a,count,kondisi= len(listData)-1,0,True
    while kondisi:
        count = count+1
        if listData == sorted(listData):
            break
            kondisi = False
        else:
            print ('Outer Loop #', count)
            for i in range(a,0,-1):
                if listData[i]>listData[i-1]:
                    listData[i],listData[i-1]=listData[i-1],listData[i]
                    print(f'is data[{i-1}] < data [{i}] ? True , Data: ',listData)
            a -=1
    print('Data urut-',listData)
a=[10,8,6,5,1]
bubbleSort(a)