
# def binarySearch(listData, data):
#     first, ite = 0, 0
#     last = len(listData) - 1
#     hasil = []
#     stop = True
#     while first <= last and stop:
#         mid = (first + last) // 2
#         if listData[mid] == data:
#             hasil.append(mid)
#             if len(hasil) == listData.count(data):
#                 stop = False
#             else:
#                 if ite % 2 == 0 and ite > 1:
#                     first = mid + 1
#                 else:
#                     last = mid - 1
#         else:
#             if data < listData[mid]:
#                 last = mid - 1
#             else:
#                 first = mid + 1
#         ite += 1

#     if hasil == []:
#         return "Data Tidak Ada", ite
#     else:
#         return hasil, ite


# a = [9, 12, 5, 3, 15, 19, 14]
# [hasil, iterasi] = binarySearch(a, 12)
# print("Posisi Data: ", hasil)
# print('Jumlah Iterasi: ', iterasi)
def binarySearch(listData, data):
    first = 0
    last = len(listData) - 1
    found = False

    while first <= last and not found:
        midpoint = (first + last) // 2
        if listData[midpoint] == data:
            found = True

        else:
            if data < listData[midpoint]:
                last = midpoint - 1
            else:
                first = midpoint + 1

    return found


a = [9, 12, 5, 3, 15, 19, 14]
print(binarySearch(a, 12))
