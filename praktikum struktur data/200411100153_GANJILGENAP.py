def ganjil_genap(list):
    urut = sorted(list)
    print(f'Data Sebelum Urut : {list}')
    if len(list)%2 ==0:
        while (list != urut):
            panjang1 = 1
            while (panjang1 < len(list)-1):
                for i in range(0,len(list),2):
                    if  i != len(list): 
                        if list[i] > list[i+1]: 
                            list[i],list[i+1] = list[i+1],list[i]
                panjang1 += 1
            print(f'GANJIL - GENAP SORT :\n{list}\n')
            panjang2 = 1
            while (panjang2 < len(list)-1):
                for l in range(1,len(list),2):
                    if l != len(list)-1:
                        if list[l] > list[l+1]:
                            list[l],list[l+1] = list[l+1],list[l]
                panjang2 += 1
            print(f'GANJIL - GENAP SORT :\n{list}\n')
    else:
        while (list != urut):
            panjang1 = 1
            while (panjang1 < len(list)-1):
                for i in range(0,len(list),2):
                    if  i != len(list)-1: 
                        if list[i] > list[i+1]: 
                            list[i],list[i+1] = list[i+1],list[i]
                panjang1 += 1
            print(f'GANJIL - GENAP SORT :\n{list}\n')
            panjang2 = 1
            while (panjang2 < len(list)-1):
                for l in range(1,len(list),2):
                    if l != len(list):
                        if list[l] > list[l+1]:
                            list[l],list[l+1] = list[l+1],list[l]
                panjang2 += 1
            print(f'GANJIL - GENAP SORT :\n{list}\n')
array = [13,12,10,31,8,7,5,11,2]
ganjil_genap(array)
