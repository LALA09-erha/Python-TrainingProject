benar = True
while benar:
    a = input("masukkan kata yang dicari: ")
    t = 0
    b = ["if", "you","rerun","the","analysis","using","our","algoritms","and","our","data","you","will","not",'get','the','identical','result','as','provided','here','the','reason','is','an','inherent','stochastic','component','in','these','result','all','test','are','based','on',"surrogates","surrogates","are","random","signal"]
    if a in b:
        for i in b:
            if b[t]==a:
                print("data",a,"berada di index ke -",t)
            t = t+1
        print("jumlah data",a,"sebanyak= ",b.count(a))
    else:
        print("data tidak ditemukan")
    c = input("y untuk cari lagi: ")
    if c =="y":
        pass
    else:
        benar = False