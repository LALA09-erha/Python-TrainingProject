def stack():
    s=[]
    return (s)
def push(s,data):
    s.append(data)
def pop(s):
    data=s.pop()
    return(data)
def peek(s):
    return(s[len(s)-1])
def isEmpty(s):
    return (s==[])
def size(s):
    return(len(s))
    
def balikkata(kata):
    tumpukan= stack()
    temp = ""
    for i in kata:
        push(tumpukan,i)
    panjang = size(tumpukan)
    while panjang >0:
        seleksi = pop(tumpukan)
        temp += seleksi
        panjang -=1
    return(temp)


print(balikkata("stacks"))