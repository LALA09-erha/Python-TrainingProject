# q,w,e=[],[],[]
# def createList(x):
#     for i  in range(x):
#         a = int(input(f"masukkan bilangan ke-{i}: "))
#         q.append(a)
#     q.sort()
#     return q
# def genap_ganjil():
#     for i in range(len(q)):
#         if q[i]%2==0:
#             w.append(q[i])
#         else:
#             e.append(q[i])
#     w.sort()
#     e.sort
#     return w
#     return e
# x = int(input('banyaknya bilangan: '))
# createList(x)
# print('bilangan = ',q)
# genap_ganjil()
# print('genap = ',w)
# print('ganjil = ',e)
data1 = [[4,2,3,1,0],[7,5,6,2,1],[0,0,8,7,6],
[9,1,10,2,7],[5,6,7,0,3]]
data2 = [[10,2,3,8,7,6],[5,1,2,10,9,11],[7,2,19,11,9,1],
[5,6,4,3,1,0],[10,12,1,5,6,2],[1,14,2,6,8,8]]

def dispMatrix(data):
    totalResult = ''
    for x in data:
        result = '| '
        for y in x:
            result += '%6d'%y
        result += ' |'
        totalResult += result +'\n'
    return totalResult

def scan_mult_matrix(data):
    scanner = [[1,0,-1],[0,1,0],[-1,0,1]]
    total_result = []

    rows = 0
    while rows <= len(data)-len(scanner):
        cols = 0
        result = []
        while cols <= len(data[0])-len(scanner[0]):
            total = 0
            for x in range(3):
                for y in range(3):
                    mult = data[x+rows][y+cols] * scanner[x][y]
                    total += mult
            result.append(total)
            cols += 1
        total_result.append(result)
        rows += 1
    return total_result

def scan_max_matrix(data):
    if len(data)%2 == 0 and len(data[0])%2 == 0:
        total_result = []
        rows = 0
        while rows < len(data):
            cols = 0
            result = []
            while cols < len(data[0]):
                max = 0
                for x in range(2):
                    for y in range(2):
                        total = data[x+rows][y+cols]
                        if max < total:
                            max = total
                result.append(max)
                cols += 2
            total_result.append(result)
            rows += 2
        return total_result
    else:
        return 'matrix tidak memenuhi'

print(dispMatrix(data1))
data1 = scan_mult_matrix(data1)
print(dispMatrix(data1))
print(dispMatrix(data2))
data2 = scan_max_matrix(data2) 
print(dispMatrix(data2))