def aturmat1(x):
    kolom = ''
    for i in range(len(x[0])):
        baris = "|"
        for y in range(len(x)):
            baris+='%4s'%x[y][i]
        baris +='|'
        kolom += baris +'\n'
    print(kolom)
    
def aturmat(x):
    for i in range(len(x)):
        print("|", end="")
        for y in range(len(x[0])):
            print("%4s"%str(x[i][y]), end="")
        print(" |")
    print(" ")


dmain = []
rge = []
invers = []
for i in range(1,101):
    dmain.append(i)
for j in range(0,21,2):
    if j!=0:
        rge.append(j)

for i in range (len(dmain)-1):
    for j in range(len(rge)-1):
        if dmain[i] % rge[j]==0:
            invers.append([dmain[i],rge[j]])

aturmat(invers)

# print(dmain)
# print(rge)
print(invers)