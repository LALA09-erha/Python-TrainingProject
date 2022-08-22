iter  = 0
banding = 0
geser = 0
def partitionD(array, start, end):
    global iter,banding,geser
    pivot = array[start]
    left = start + 1
    right = end
    while True:
        while left <= right and array[left] >= pivot:
            left = left + 1
            banding +=1
        while left <= right and array[right] <= pivot:
            right = right - 1
            banding +=1
        if right<left:
            break
        else:
            array[left], array[right] = array[right], array[left]
            geser +=1
    array[start], array[right] = array[right], array[start]
    geser +=1
    iter +=1
    print(f'Iterasi ke - {iter}\n{array} Pivot -> {pivot}')
    return right

def partitionA(array, start, end):
    global iter,banding,geser
    pivot = array[start]
    low = start + 1
    high = end

    while True:
        while low <= high and array[high] >= pivot:
            high = high - 1
            banding +=1
        while low <= high and array[low] <= pivot:
            low = low + 1
            banding +=1
        if low <= high:
            array[low], array[high] = array[high], array[low]
            geser +=1
        else:
            break
    array[start], array[high] = array[high], array[start]
    geser +=1
    iter +=1
    print(f'Iterasi ke - {iter}\n{array} Pivot -> {pivot}')
    return high

def quick_sortA(array, start, end):
    if start < end:
        p = partitionA(array, start, end)
        quick_sortA(array, start, p-1)
        quick_sortA(array, p+1, end)
    return banding,geser
def quick_sortD(array, start, end):
    if start < end:
        p = partitionD(array, start, end)
        quick_sortD(array, start, p-1)
        quick_sortD(array, p+1, end)
    return banding,geser

# main
if __name__=="__main__":
    arr = [56,26,93,17,31,44]
    n = len(arr)
    [banding,geser]=quick_sortA(arr,0,n-1)
    print(f"\nHasil Akhir = {arr}")
    print(f"Total Perbandingan : {banding}")
    print(f"Total Pergeseran : {geser}")