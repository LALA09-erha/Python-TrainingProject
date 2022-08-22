a,b,c=[1,2,3,4],[],[]
def dis(n,awal,tujuan,bantuan):
    global a,b,c
    if awal =='A':
        if tujuan =='B':
            if n in a:
                b.insert(0,n)
                a.remove(n)
        else:
            if n in a:
                c.insert(0,n)
                a.remove(n)
    elif awal =='B':
        if tujuan =='A':
            if n in b:
                a.insert(0,n)
                b.remove(n)
        else:
            if n in b:
                c.insert(0,n)
                b.remove(n)
    else:
        if tujuan =='A':
            if n in c:
                a.insert(0,n)
                c.remove(n)
        else:
            if n in c:
                b.insert(0,n)
                c.remove(n)
    print('A:')
    if a ==[]:
        print('--')
    else:
        for i in (a):
            print('|',i,'|')
    print('B:')
    if b ==[]:
        print('--')
    else:
        for i in (b):
            print('|',i,'|')
    print('C:')
    if c ==[]:
        print('--')
    else:
        for i in (c):
            print('|',i,'|')

def towers(n,awal,bantuan,tujuan):
    if n==1:
        print("Piringan - 1 dari-", awal,"ke-",tujuan)
        dis(n,awal,tujuan,bantuan)
    else:
        towers(n-1,awal,tujuan,bantuan)
        print("Piringan -",n, "dari-",awal,"ke-", tujuan)
        dis(n,awal,tujuan,bantuan)
        towers(n-1,bantuan,awal,tujuan)
    

print('PEMINDAHAN 4 LEMPENGAN DARI A-C MENGGUNAKAN BANTUAN B')
dis(a,'A','B','C')
towers(4,'A','B','C')
