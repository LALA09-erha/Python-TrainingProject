a= int(input('batas kiri daerah= '))
b= int(input('batas kanan daerah= '))
n= int(input('jumlah pias yang dibuat= '))
h=((b-a)/n)
print('lebar setiap pias adalah= ',h)
f=[]
for i in range(0,n+1,1):
    y=int(input(f'f({i})= '))
    f.append(y)

print('menghitung luas daerah')
print(40*'=')
print('nomer sisi pias batas pias panjang pias')
print(40*'=')

x=[]
for j in range(0,n+1,1):
    x.append(h*j)
    print('%5d %8.2f %8.2f\n'%(j+1,x[j],f[j]))
print(40*'=')

z=0
for k in range(n-1):
    z=z+2*f[k+1]
luas=h/2*(f[0]+z+f[n])
print('luas daerah tersebut adalah= ', luas)

fa=(f[1]-f[0])/(x[1]-x[0])
fb=(f[n]-f[n-1])/(x[n]-x[n-1])
galat=(h*h/12)*(fb-fa)
print('besarnya kesalahan= -',galat)

