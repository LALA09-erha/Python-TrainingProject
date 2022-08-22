def aturmat(x):
    for i in range(len(x)):
        print("|", end="")
        for y in range(len(x[0])):
            print("%4s"%str(x[i][y]), end="")
        print(" |")
    print(" ")

def aturmat1(x):
    kolom = ''
    for i in range(len(x[0])):
        baris = "|"
        for y in range(len(x)):
            baris+='%4s'%x[y][i]
        baris +='|'
        kolom += baris +'\n'
    print(kolom)
    
def createMat3D(x,y):
    r = []
    hasil = []
    for i in range(len(x)):
        hasil2 = []
        for j in range(len(y)):
            if x[i] % y[j]==0  :
                hasil2.append(1)
            else:
                hasil2.append(0)
        r.append(hasil2)
    return((r))

dmain = []
rge = []
invers = []
for i in range(1,101):
    dmain.append(i)
for j in range(0,21,2):
    if j!=0:
        rge.append(j)
matrix = createMat3D(dmain,rge)
aturmat(matrix)
aturmat1(matrix)

print('DOMAIN : ',dmain)
print(" ")
print('RANGE : ',rge)
