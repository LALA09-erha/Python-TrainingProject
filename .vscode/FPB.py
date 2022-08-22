la=[]
ci =[]
ka= []
a= int(input("lala: "))
b = int(input("cia: "))
for i in range(1, a+1):
    if a % i==0:
        la.append(i)
for i in range(1, b+1):
    if b%i==0:
        ci.append(i)
for i in range(1, a+1 or b+1):
    if b%i==0 and a%i==0:
        ka.append(i)
print("bilangan",a, "memiliki",len(la),"faktor pembagi, yaitu: ")
print(la)
print("bilangan",b, "memiliki",len(ci),"faktor pembagi, yaitu: ")
print(ci)
print("bilangan",a ,"dan",b, "memiliki",len(ka),"faktor pembagi yang sama, yaitu: ")
print(ka)