def selection_sort(list):
    urut,count = sorted(list),0
    print(f'Data Sebelum di urut : {list}')
    while list != urut:
        print(f'Iterasi ke : {count+1}')
        data_1 = list[count]
        data_maks = max(list)
        for b in range(len(list)-1,count,-1): 
            if list[b] <= data_maks:
                data_maks = list[b]
        index_data1 = list.index(data_1)
        index_datamaks = list.index(data_maks)
        if data_1 > data_maks: 
            hasil = list[index_data1]
            list[index_data1] = list[index_datamaks]
            list[index_datamaks] = hasil
            print(f'Data Minimal : {list} ')
        else:
            print(f'Data Minimal : {list} ')
        if list != urut :
            data_min = min(list)
            data_2 = list[len(list)-(count+1)]
            for c in range(count,len(list)-(count+1),1): 
                if list[c] >= data_min:
                    data_min = list[c]
            index_data2 = list.index(data_2)
            index_datamin = list.index(data_min)
            if data_2 < data_min:
                list[index_data2],list[index_datamin] = list[index_datamin],list[index_data2]
                print(f'Data Maksimal: {list} \n')
            else:
                print(f'Data Maksimal: {list} \n')
        else:
                print(f'Data Maksimal: {list} \n')
        count += 1
    print(f'Data Setelah di urut : {list}')
array = [10,2,5,8,1,20,7,12,4]
selection_sort(array)