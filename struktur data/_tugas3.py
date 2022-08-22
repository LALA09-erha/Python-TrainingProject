def Stack():
    a=[]
    return a  
def push(a,data):
    a.append(data)  
def pop(a):
    data = a.pop()
    return data  
def peek(a):
    return a[len(a)-1]      
def isEmpty(a):
    return a == []  
def size(a):
    return len(a)
def dis(s):
    return(s)
def infixToPrefix(infixexpr):
    huruf = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    angka = "1234567890"
    dict = {}
    dict["*"],dict["/"],dict["+"],dict["-"]= 3,3,2,1
    a = Stack()
    profixlist = []
    tokenList = infixexpr
    hasil=''
    for token in tokenList:
        if "(" or  ")" or "{" or "}" or "[" or "]" in infixexpr:
            if token in "{[(":
                if token not in a and len(hasil)==0:
                    push(a,token)
                else:
                    while size(a) != 0:
                        pop(a)
                    if size(profixlist) >= 2:
                        temp1 = pop(profixlist)
                        hasil +=pop(profixlist)
                        profixlist.append(temp1)
                    else:
                        while size(profixlist) != 1:
                            pop(profixlist)
                    push(a,token)     
            elif token==")" or token == "}" or token =="]"  :
                if "(" or "{" or "[" in a :
                    if "("  not in a:
                        return("Kurung buka dan kurung tutup tidaklah cocok")
                    elif "{" not in a:
                        return("Kurung buka dan kurung tutup tidaklah cocok")
                    elif "[" not in a:
                        return("Kurung buka dan kurung tutup tidaklah cocok")

                    else:
                        while size(a) != 0:
                            pop(a)
                        for k in profixlist:
                            hasil += k
                        while size(profixlist) != 0:
                            pop(profixlist)
                else:
                    return("Kurung buka dan kurung tutup tidaklah cocok")
            elif token in "+-*/":
                profixlist.append(token)
            elif token in angka:
                hasil += token
            elif token in huruf:
                hasil += token
            else:
                print(token)
                return("jumlah kurung buka lebih banyak")
        else:
            if token in huruf or token in angka:
                profixlist.append(token)    
            else:
                while (not isEmpty(a)) and \
                   (dict[peek(a)] >= dict[token]):
                      profixlist.append(a.pop())
                push(a,token)
    while not isEmpty(a):
        profixlist.append(a.pop())
    for ka in profixlist:
        hasil = hasil +ka
    return "hasil prosfix dari " + infixexpr +" adalah: " + hasil


# input_data = input("Masukkan data: ")
# print(infixToPrefix(input_data))
print(infixToPrefix("1*2/4*(5-9)"))