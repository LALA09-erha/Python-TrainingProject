# def huruf_bergantian(inputstring):
#     temp, total  = [""],0
#     for i in (inputstring.upper()): 
#         if i != (temp[len(temp)-1]): temp.append(i) 
#         else: total +=1
#     return(total)
# print (huruf_bergantian("PPCPPC"))

# def cariPasangan(list_a,int_x):
#     list1,list2,list3= [],[],[]
#     for i in (sorted(list_a)):
#         if (int_x - i) in list_a and i not in list1 and i != int_x/2:
#             list1.extend([i, int_x - i])
#             list2.append(list1)
#     for i in range(len(list2)):
#         for k in range(0,len(list1),2):
#             if list2[i][k:k+2] not in list3:
#                 list3.append(list2[i][k:k+2])
#     return(list3)
# print(cariPasangan([1, 2, 3, 4, 5], 7))

# def subsetTerbesar(inputlist):
#     list,hasil= [],0
#     for i in range(len(inputlist)-1):
#         for k in range(len(inputlist)):
#             if i+1 !=k and i !=k and k>i :
#                 temp = inputlist[i]+inputlist[k]
#                 if hasil < temp:
#                     hasil = temp
#     for i in range(0,len(inputlist),2):
#         list.append(inputlist[i])
#     if hasil < sum(list):
#         hasil = sum(list)
#     return hasil
    

# print(subsetTerbesar([3, 5, -7, 8, 10]))
for i in range(5):
    print(i)