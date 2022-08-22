def MergeSortAscending(list):
    global count
    global temp
    print('Memecah List', list)
    n = len(list)
    if n >= 2:
        mid = n//2
        left = list[:mid]
        right = list[mid:]
        MergeSortAscending(left)
        MergeSortAscending(right)
        i = 0
        j = 0
        k = 0
        while i < len(left) and j < len(right):
            if left[i] < right[j]:
                list[k] = left[i]
                i = i+1
            else:
                list[k] = right[j]
                j = j+1
            k = k+1
            temp += 1
        while i < len(left):
            list[k] = left[i]
            i = i+1
            k = k+1
            temp += 1
        while j < len(right):
            list[k] = right[j]
            j = j+1
            k = k+1
            temp += 1
        print('Menggabungkan List', list)
        count += 1
    return "sorted: {}\nBanyak pergeseran: {}\nBanyak perbandingan: {}".format(list, count, temp)


def MergeSortDescending(list):
    global count
    global temp
    print('Memecah List', list)
    n = len(list)
    if n >= 2:
        mid = n//2
        left = list[:mid]
        right = list[mid:]
        MergeSortDescending(left)
        MergeSortDescending(right)
        i = 0
        j = 0
        k = 0
        while i < len(left) and j < len(right):
            if left[i] > right[j]:
                list[k] = left[i]
                i = i+1
            else:
                list[k] = right[j]
                j = j+1
            k = k+1
            temp += 1
        while i < len(left):
            list[k] = left[i]
            i = i+1
            k = k+1
            temp += 1
        while j < len(right):

            list[k] = right[j]
            j = j+1
            k = k+1
            temp += 1
        print('Menggabungkan List', list)
        count += 1
    return "sorted: {}\nBanyak pergeseran: {}\nBanyak perbandingan: {}".format(list, count, temp)


def PartitionAscending(array, start, end):
    global geser
    global i
    pivot = array[start]
    low = start
    high = end

    while True:
        while low <= high and array[high] > pivot:
            high = high - 1
            i += 1
        while low <= high and array[low] < pivot:
            low = low + 1
            i += 1
        if low < high:
            array[low], array[high] = array[high], array[low]
            geser += 1
        else:
            return high


def Quick_Sort_Ascending(array, start, end):
    if start >= end:
        return
    p = PartitionAscending(array, start, end)
    print(array)
    Quick_Sort_Ascending(array, start, p-1)
    Quick_Sort_Ascending(array, p+1, end)


def PartitionDescending(array, start, end):
    global geser
    global i
    pivot = array[start]
    low = start
    high = end

    while True:
        while low <= high and array[high] < pivot:
            high = high - 1
            i += 1
        while low <= high and array[low] > pivot:
            low = low + 1
            i += 1
        if low < high:
            array[low], array[high] = array[high], array[low]
            geser += 1
        else:
            return high


def Quick_Sort_Descending(array, start, end):
    if start >= end:
        return
    p = PartitionDescending(array, start, end)
    print(array)
    Quick_Sort_Descending(array, start, p-1)
    Quick_Sort_Descending(array, p+1, end)


mulai = True
while mulai:
    count = 0
    temp = 0
    i = 0
    geser = 0
    list = [1, -2, 3, 5, 4, 22]
    print("\ndata: ", list)
    print("pilih metode: \n1. Merge Sort\n2. Quick Sort\n3. Out")
    p = int(input("input => "))
    if p == 1:
        pola = int(input("1. Ascending \n2. Descending => "))
        if pola == 1:
            print("\n")
            print(MergeSortAscending(list))
        elif pola == 2:
            print("\n")
            print(MergeSortDescending(list))
        else:
            print("\n")
            print("input ulang")
    elif p == 2:
        pola = int(input("1. Ascending \n2. Descending => "))
        if pola == 1:
            print("\n")
            Quick_Sort_Ascending(list, 0, len(list) - 1)
            print("Sorted:", list)
            print("Banyak perbandingan:", i)
            print("Banyak pergeseran:", geser)
        elif pola == 2:
            print("\n")
            Quick_Sort_Descending(list, 0, len(list)-1)
            print("Sorted:", list)
            print("Banyak perbandingan:", i)
            print("Banyak pergeseran:", geser)
        else:
            print("\n")
            print("input ulang")
    elif p == 3:
        mulai = False
    else:
        print("input ulang")
