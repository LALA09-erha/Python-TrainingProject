def countingSort(A, k):
    C = []
    B = []
    for i in range(k+1):
        C.append(0)

    for j in range(len(A)):
        C[A[j]] = C[A[j]]+1
        B.append(0)
    print("MENYIAPKAN TEMPAT")
    print("TEMPAT DATA : ", B)

    for i in range(1, k+1):
        C[i] = C[i]+C[i-1]

    print("MEMASUKKAN DATA KEDALAM TEMPAT")
    for j in range(len(A)-1, -1, -1):
        B[C[A[j]]-1] = A[j]
        C[A[j]] = C[A[j]]-1
        print("DATA : ", B)
    return(B)


a_list = [54, 26, 93, 17, 1, 31, 2, 55, 20, 93, 20, 3, 4, 5]
print("DATA TERURUT : ", countingSort(a_list, 93))
