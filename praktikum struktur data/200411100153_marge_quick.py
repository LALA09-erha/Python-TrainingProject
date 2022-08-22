from quick import *
iterasi,banding,geser = 0,0,0
def merge_sortA(a_list):
    global iterasi,banding,geser
    if len(a_list) > 1:
        mid = len(a_list) // 2
        left_half = a_list[:mid]
        right_half = a_list[mid:]
        merge_sortA(left_half)
        merge_sortA(right_half)
        i,j,k = 0,0,0
        while i < len(left_half) and j < len(right_half):
            if left_half[i] < right_half[j]:
                a_list[k] = left_half[i]
                i += 1
                geser +=1
            else:
                a_list[k] = right_half[j]
                j += 1
            k += 1
            banding +=1
        while i < len(left_half):
            a_list[k] = left_half[i]
            i += 1
            k += 1
        while j < len(right_half):
            a_list[k] = right_half[j]
            j += 1
            k += 1
    if len(a_list) >1:
        iterasi +=1
        print(f"iterasi ke - {iterasi}")
        print("Merging ", a_list)
    return geser,banding

def merge_sortD(a_list):
    global iterasi,banding,geser
    if len(a_list) > 1:
        mid = len(a_list) // 2
        left_half = a_list[:mid]
        right_half = a_list[mid:]
        merge_sortD(left_half)
        merge_sortD(right_half)
        i,j,k = 0,0,0
        while i < len(left_half) and j < len(right_half):
            if left_half[i] > right_half[j]:
                a_list[k] = left_half[i]
                i += 1
                geser +=1
            else:
                a_list[k] = right_half[j]
                j += 1
            k += 1
            banding +=1
        while i < len(left_half):
            a_list[k] = left_half[i]
            i += 1
            k += 1
        while j < len(right_half):
            a_list[k] = right_half[j]
            j += 1
            k += 1
    if len(a_list) >1:
        iterasi +=1
        print(f"iterasi ke - {iterasi}")
        print("Merging ", a_list)
    return geser,banding


array = [56,26,93,17,31,44]
while True:
    inpt = int(input("Pilih Metode Pengurutan:\n1.Merge Sort\n2.Quick Sort\nPilih: "))
    if inpt==1:
        inpt2 =int(input("Pengurutan Secara:\n1. Ascending\n2. Descending\nPilih: "))
        if inpt2 == 1:
            [total_geser,total_banding] = merge_sortA(array)
            print(f'\nBanyaknya Perbandingan - {total_banding}')
            print(f'Banyaknya Pergeseran - {total_geser}')
        elif inpt2 ==2:
            [total_geser,total_banding] = merge_sortD(array)
            print(f'\nBanyaknya Perbandingan - {total_banding}')
            print(f'Banyaknya Pergeseran - {total_geser}')
        else:
            print("Maaf Inputan Tidak Valid!")
    elif inpt ==2:
        inpt2 =int(input("Pengurutan Secara:\n1. Ascending\n2. Descending\nPilih: "))
        if inpt2 ==1:
            n = len(array)
            [banding,geser]=quick_sortA(array,0,n-1)
            print(f"\nHasil Akhir = {array}")
            print(f"Total Perbandingan : {banding}")
            print(f"Total Pergeseran : {geser}")
        elif inpt2 == 2:
            n = len(array)
            [banding,geser]=quick_sortD(array,0,n-1)
            print(f"\nHasil Akhir = {array}")
            print(f"Total Perbandingan : {banding}")
            print(f"Total Pergeseran : {geser}")
        else:
            print("Maaf Inputan Tidak Valid!")
    else:
        print("Maaf Inputan Tidak Valid!")

    akhir = int(input("\nPilih\n1.Lagi\n2.Keluar\nPilih: "))
    if akhir ==1:
        pass
    else:
        break