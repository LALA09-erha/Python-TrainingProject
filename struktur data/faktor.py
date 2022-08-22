# def print_faktor(x):
#     list = []
#     for i in range(1, x+1):
#         if x % i == 0:
#             list.append(i)
#     print(f'faktor dari {x} adalah : ',list)
            
# # Input bilangan yang akan dicari faktornya
# num = int(input("Masukkan bilangan: "))
# print_faktor(num)

# def para(x,a,b):
#     if x >= a:
#         return 0
#     if a < x >=b:
#         hasil = float((x - a)/(b - a))
#         return hasil
#     if x > b:
#         return 1
#     # else:
#     #     print('hasil tidak terdeteksi')

# print(para(40,10,20))


class stack():
   def __init__ (self):
       self.items = []
   def isempty (self):
       return self.items == []
   def push (self,item):
       self.items.append(item)
   def pop (self):
       return self.items.pop()
   def peek (self):
       return self.items[len(self.items)-1]
   def size (self):
       return len(self.items)
   def cetak (self):
       for i in range (len(self.items)) :
           print (self.items[i])

def cektandahtml(masukanteks):
    s1 = stack() 
    s2 = stack()
    penampung1 = True
    penampung2 = True
    a=1
    teks1 = ''
    teks2 = ''
    indikator = 'berhenti'
    pemutus = 1
    z=2

    for i in range (len(masukanteks)) :
        if len(masukanteks) != (i+1) :
            if masukanteks[i+1] == '!' :
                pemutus = 0
        #untuk mengecek kurung buka atau tutup seimbang atau tidak.   
        if masukanteks[i] == '<' :
            if i != (len(masukanteks)-1) :
                if masukanteks[i+1] != '/' and masukanteks[i+1] != '!'  :
                    indikator = 'mulai'
                    s1.push('<')
                    a = 1
                    pemutus = 1 
                elif masukanteks[i+1] == '/' and masukanteks[i+1] != '!'  :
                    indikator = 'mulai'
                    a = 2
                    s1.push('<')
                    pemutus = 1 
            else :
                penampung1 = False
        elif masukanteks[i] == '>' and pemutus == 1 :
            if s1.isempty() :
                penampung1 = False
            else :
                s1.pop()
                indikator = 'berhenti'
        
        #untuk merekam teks dan membangingkan teks yang ada dalam kurung pembuka da penutup            
        if indikator == 'mulai' :
            if a == 1 :
                teks1 += masukanteks[i]
            elif a == 2 and masukanteks[i] != '/' :
                teks2 += masukanteks[i]
        else :
            if teks1 != '' and a == 1:
                s2.push(teks1)
            if teks2 != ''  and a == 2 :
                z = s2.pop()
                if z  != teks2 :
                    penampung2 = False
            if a == 1 :
                teks1 = ''
            if a == 2 :
                teks2 = ''
    
    if ((s1.isempty and s2.isempty()) and (penampung1 and penampung2))  :
       hasil = True  
    else :
       hasil = False

    return hasil
print (cektandahtml('''
<html>
<head>
<title>Page Title</title>
</head>
<body>

<>
<h1></h1>
<p>.</p>

</body>
</html>'''))