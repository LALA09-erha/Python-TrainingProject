# ## decending
# def insertionSort(listData):
    
#     for outIter in range(1,len(listData)):
#         print(listData)
#         key=listData[outIter]
#         ind = outIter -1
#         while (ind>=0 and listData[ind]<key):
#             listData[ind+1] =listData[ind]
#             ind=ind-1
#             print('inner=',listData)
#         listData[ind+1]=key
    
#     print('sortedData=',listData)    
# b=[10,2,5,8,1,20,2,2,4]
# insertionSort(b)

# ##assending index terakhir

# def insertionSort1(listData):
#     for outIter in range(len(listData)-2,-1,-1):
#         key=listData[outIter]
#         ind=outIter
#         while (ind < len(listData)-1 and listData[ind+1] < key):
#             listData[ind] = listData[ind+1]
#             ind =ind+1
#             print('inner=',listData[ind])
#         listData[ind]= key
    
#     print('sortedData=',listData)
# b=[10,2,5,8,1,20,2,2,4]
# insertionSort1(b)


# dessending index terakhir
def insertionSort1(listData):
    for outIter in range(len(listData)-2,0,-1):
        print('Data : ',listData)
        key=listData[outIter]
        ind=outIter
        print(f'Key, Data {outIter} : ',key)
        while (ind < len(listData)-1 and listData[ind+1] > key):
            listData[ind] = listData[ind+1]
            ind =ind+1
            print('inner sorting: ',listData)
        listData[ind]= key
    
    print('sortedData=',listData)
b=[3,1,12,5,1,2,0,8,4]
insertionSort1(b)


##lalalala
# def selection_sort(data):
#     iterasi = 0
#     block = data.copy()
#     block.sort()
#     print("Data : {}\n".format(data))
#     while data != block:
#         lock = data[iterasi] #Mengunci setiap index += 1
#         set_low = max(data) #reset ke nilai terbesar setiap iterasi
#         print("Iterasi ke-{}".format(iterasi+1))
#         for b in range(len(data)-1,iterasi,-1): #mencari data terkecil dari rear ke front
#             if data[b] <= set_low:
#                 set_low = data[b]
#         iterasi += 1   
#         #Deklarasi   
#         idx_lock = data.index(lock)
#         idx_low = data.index(set_low)
#         #Swapping
#         if lock > set_low:
#             temp = data[idx_lock]
#             data[idx_lock] = data[idx_low]
#             data[idx_low] = temp
#         #output
#         if lock % 2 == 0 and set_low % 2 == 1 :
#             print("Genap - Ganjil : {}\n".format(data))
#         else:
#             print("Ganjil - Genap : {}\n".format(data))
    
# array = [13,12,10,8,7,5,11,2]
# selection_sort(array)