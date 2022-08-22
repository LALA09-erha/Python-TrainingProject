def stack(): #inisialisasi
    s=[]
    return(s)
def push(s,data): #menambah data
    s.append(data)
def pop(s): #remove data top of the stack
    data=s.pop()
    return(data)
def peek(s): #melihat posisi top of the stack
    return(s[len(s)-1])
def isEmpty(s): #mengecek stack kosong atau tidak
    return(s==[])
def size(s):
    return(len(s)) #menghitung data dalam stack
def parenthesesCheck(strMath): #pengecekan kurung
    kurung={')':'(','}':'{',']':'['} #dict dengan key kurung tutup dan value nya kurung buka
    buka=kurung.values()
    tutup=kurung.keys()
    temp=stack() 
    matched=True
    for ch in strMath: 
        if ch in buka:
            push(temp,ch)
        if ch in tutup: 
            if isEmpty(temp): 
                return ('Jumlah kurung tutup terlalu banyak!')
            else:
                tempKurung=pop(temp)
                if tempKurung==kurung[ch]: #jika value dari tempkurung sama dengan value dari key ch di dalam dict kurung
                    matched=matched and True
                else: 
                    matched=matched and False 
    if not(isEmpty(temp)):
        return ('Jumlah kurung buka terlalu banyak!')
    if matched== True : 
        operator = {'*':3,'/':3,'+':2,'-':2,'(':1,'[':1,'{':1}
        a = stack()
        buka,tutup = "({[",")}]" 
        hasillist = [] 
        dataList = strMath.split()
        hasil=''
        for i in dataList : 
            for k in i: 
                if k in "0123456789" and k not in "+-/*": 
                    hasillist.append(k)
                elif k in buka: 
                    push(a,k) 
                elif k in tutup: 
                    temp = pop(a) 
                    while  not isEmpty(a) : 
                        hasillist.append(temp) 
                        temp = pop(a)
                else : 
                    
                    while (not isEmpty(a)) and (operator[peek(a)] >= operator[k]): 
                        hasillist.append(pop(a))
                    push(a,k) 
        while not(isEmpty(a)) : 
            hasillist.append(pop(a)) 
        for i in hasillist: 
            hasil += i 
        return hasil 
    else: 
        return ('Kurung buka dan kurung tutup tidaklah cocok!')

def evaluatePost(postStr): #fungsi evaluatepost
    operandStack=stack() 
    operator='+-/*' 
    for i in postStr: 
        if i not in operator: 
            push(operandStack,i)
        else:
            #di balik karena stack sistemnya yang front jadi rear 
            oprnd2=pop(operandStack) 
            oprnd1=pop(operandStack)
            if i=='+': 
                result=float(oprnd1)+float(oprnd2)  
            elif i=='-': 
                result=float(oprnd1)-float(oprnd2) 
            elif i=='*': 
                result=float(oprnd1)*float(oprnd2) 
            else: 
                result=float(oprnd1)/float(oprnd2) 
            push(operandStack,result)
    return(pop(operandStack)) 

a = input("MASUKKAN: ")
data  = parenthesesCheck(a)
if data[0] in "0123456789": 
    print("infix: ", a , ";  postfix ; ",parenthesesCheck(a), "=",evaluatePost(data))
else: 
    print(data) 
