def countingSort(A, k):
    iterasi, geser, banding = 0, 0, 0
    C = []
    B = []
    for i in range(k+1):
        C.append(0)
    for j in range(len(A)):
        C[A[j]] = C[A[j]]+1
        B.append(0)

    for i in range(1, k+1):
        C[i] = C[i]+C[i-1]

    for j in range(len(A)-1, -1, -1):
        iterasi += 1
        print(f'\niterasi ke --- {iterasi}')
        B[C[A[j]]-1] = A[j]
        geser += 1
        print(B)
        C[A[j]] = C[A[j]]-1
        banding += 1
    return geser, banding


a_list = [9, 26, 93, 17, 31, 44]
[geser, banding] = countingSort(a_list, 93)
print(f'\nTotal geser = {geser}')
print(f'Total banding = {banding}')
