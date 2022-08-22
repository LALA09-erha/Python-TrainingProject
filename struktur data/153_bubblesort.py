# def bubbleSort(listData):
#     print('Data yang akan diurutkan : ', listData)
#     count=0
#     for outIter in range(len(listData)-1,-1,-1):
#         count=count+1
#         print ('Iterasi ke-', count,':')
#         for i in range(outIter):
#             if listData[i]>listData[i+1]:
#                 listData[i],listData[i+1]=listData[i+1],listData[i]
#             print(listData)
#         if listData == reversed(sorted(listData)):
#             break
#     print('Data urut-',listData)

def bubbleSort(listData):
    print('Data yang akan diurutkan : ', listData)
    a,count,kondisi= len(listData)-1,0,True
    while kondisi:
        count = count+1
        if listData == sorted(listData):
            break
        else:
            print("Pointer Dari kanan ke kiri")
            for i in range(a,0,-1):
                if listData[i] < listData[i - 1]:
                    listData[i],listData[i-1]=  listData[i-1],listData[i]
                    print(f'is data[{i}] < data [{i-1}] ? True , Data: ',listData)
            a -=1
    print('Data urut-',listData)
a=[10,8,6,5,1]
bubbleSort(a)
# def bubbleSort(alist):
#     b = sorted(alist)
#     b = b[::-1]
#     for passnum in range(len(alist)-1,0,-1):
#         if alist ==b:
#             break
#         else:
#             print("dari kiri ke kanan")
#             for i in range(passnum):
#                 if alist[i]<alist[i+1]:
#                     temp = alist[i]
#                     alist[i] = alist[i+1]
#                     alist[i+1] = temp
#                     print(alist)
#             print("dari kanan ke kiri")
#             for i in range(len(alist)-1,0,-1):
#                 if alist[i]>alist[i-1]:
#                     temp = alist[i]
#                     alist[i] = alist[i-1]
#                     alist[i-1] = temp
#                     print(alist)
# a=[1,2,4,8,4,2]
# bubbleSort(a)

