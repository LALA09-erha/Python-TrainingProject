# #ascending
# def selectionSort(listData):
#     print('Algoritma Selection Sort konvensional')
#     print('Data Awal=',listData)
#     for outIter in range(len(listData)-1):       
#         minIndex=outIter
#         for i in range(outIter+1,len(listData)):
#             if listData[i]<listData[minIndex]:
#                 minIndex=i
#         temp=listData[outIter]
#         listData[outIter]=listData[minIndex]
#         listData[minIndex]=temp
#         print('Iterasi ke-',outIter+1,':',listData)
#     print('Data Urut=',listData)


# a=[10,2,5,8,1,20,7,12,4]
# selectionSort(a)

##decending
# def selectionSort(listData):
#     print('Algoritma Selection Sort konvensional')
#     print('Data Awal=',listData)
#     for outIter in range(len(listData)-1):       
#         minIndex=outIter
#         for i in range(outIter+1,len(listData)):
#             if listData[i]>listData[minIndex]:
#                 minIndex=i
#         temp=listData[outIter]
#         listData[outIter]=listData[minIndex]
#         listData[minIndex]=temp
#         print('Iterasi ke-',outIter+1,':',listData)
#     print('Data Urut=',listData)


# a=[10,2,5,8,1,20,7,12,4]
# selectionSort(a)

# #desending 2 data sekaligus
# def selectionSort(listData):
#     print('Data Awal=',listData)
#     for outIter in range(len(listData)-1):       
#         minIndex=outIter
#         for i in range(outIter+1,len(listData)):
#             if listData[i]< listData[minIndex]:
#                 minIndex=i
#         temp=listData[outIter]
#         listData[outIter]=listData[minIndex]
#         listData[minIndex]=temp
#         print(listData)
#         minIndex = len(listData)-outIter-1
#         for i in range(minIndex,outIter,-1):
#             if listData[i] > listData[minIndex]:
#                 minIndex=i
#         temp=listData[len(listData) - outIter -1]
#         listData[len(listData) - outIter -1]=listData[minIndex]
#         listData[minIndex]=temp
#         print(listData)
#     print('Data Urut=',listData)
# a=[4,1,5,3,2,6]
# selectionSort(a)



