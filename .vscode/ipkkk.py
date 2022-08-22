#ketentuan
ipk = 3.0
skor = 1100

#diketahui
jaka= "lulus ipk" if 3.5 >=  ipk else "tidak lulus ipk","lulus skor" if 1100 > skor else "tidak lulus skor"
print ("hasil jaka",jaka)

ida= "lulus ipk " if 3.0 >=  ipk else "tidak lulus ipk","lulus skor" if 1000 > skor else "tidak lulus skor"
print ("hasil ida",ida)

#penyeleksian 
if 'tidak lulus skor' in ida and 'tidak lulus skor' in jaka:
    print ("tidak lulus ada yang lulus")
elif 'tidak lulus ipk' in ida and 'tidak lulus ipk' in jaka:
    print ("tidak lulus ada yang lulus")
elif 'lulus ipk' and  'lulus skor' in ida:
    print("ida lulus")
elif 'lulus ipk' and  'lulus skor' in jaka:
    print("jaka lulus")
else:
    print("MUNGKIN SALAH")

