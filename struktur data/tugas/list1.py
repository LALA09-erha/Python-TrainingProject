b,p,q,e =[],[],[],[]
benar = True
print("perjumlahan dan pengurangan data dari 2 list angka")
while benar:
    a = float(input("masukkan data angka ke dalam list: "))
    b.append(a)
    c = input("input y to continue: ")
    if c=="y":
        pass
    else:
        print("list ke - 1 = ",b,"; rata rata list 1= ",(sum(b)/len(b)))
        print()
        while benar:
            a = float(input("masukkan data ke dalam list: "))
            e.append(a)
            c = input("input y to continue: ")
            if c=="y":
                pass
            else:
                benar = False
        print("list ke - 2 = ",e,"; rata rata list 2= ",(sum(e)/len(e)))
print()
if len(e) == len(b):
    for i in range(len(e)):
        g=b[i]+e[i]
        p.append(g)
        h=b[i]-e[i]
        q.append(h)
    print("perjumlahan list 1 + list 2:",p)
    print("pengurangan list 1 - list 2:",q)
else:
    print("WARNING!!!! panjang data tidak sama")
# b = []
# p = []
# q = []
# benar = True
# while benar:
#     a = float(input("masukkan data ke dalam list: "))
#     b.append(a)
#     c = input("input y to continue: ")
#     if c=="y":
#         pass
#     else:
#         print("list ke - 1 = ",b)
#         print()
#         e = []
#         while benar:
#             a = float(input("masukkan data ke dalam list: "))
#             e.append(a)
#             c = input("input y to continue: ")
#             if c=="y":
#                 pass
#             else:
#                 benar = False
#         print("list ke - 2 = ",e)
# print()
# if len(e) > len(b):
#     for i in range(len(b)):
#         if i < len(e) or len(b):
#             g=b[i]+e[i]
#         p.append(g)
#     print("perjumlahan list 1 + list 2:",p+e[i+1:])
# elif len(b) > len(e):
#     for i in range(len(e)):
#         if i < len(e) or len(b):
#             g=b[i]+e[i]
#         p.append(g)
#     print("perjumlahan list 1 + list 2:",p+b[i+1:])
# else:
#     for i in range(len(e)):
#         g=b[i]+e[i]
#         p.append(g)
#     print("perjumlahan list 1 + list 2:",p)
# print()
# if len(e) > len(b):
#     for i in range(len(b)):
#         if i < len(e) or len(b):
#             g=b[i]-e[i]
#         q.append(g)
#     print("pengurangan list 1 - list 2:",q+e[i+1:])
# elif len(b) > len(e):
#     for i in range(len(e)):
#         if i < len(e) or len(b):
#             g=b[i]-e[i]
#         q.append(g)
#     print("pengurangan list 1 - list 2:",q+b[i+1:])
# else:
#     for i in range(len(e)):
#         g=b[i]-e[i]
#         q.append(g)
#     print("pengurangan list 1 - list 2:",q)