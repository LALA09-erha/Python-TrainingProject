tampil = ''
biner = 0
hexa = 0
pembalik = []
cetak = []
# # desimal ke biner
desimal = int (input('masukan angka desimal:'))
print ('')
while desimal != 0:
    hasil = desimal % 2
    cetak.insert(0, str(hasil))
    desimal = desimal//2 
    if desimal == 0:
        for i in range (len(cetak)): 
            tampil +=  cetak[i]
print ('hasilnya adalah : ', tampil)
print ('')

# biner ke desimal
bin = input('masukan biner :')
print ('')
for i in range (len(bin)):
    pembalik.insert(0, bin[i]) #membalikkan biner
for i in range (len(pembalik)):
    biner += int (pembalik[i])*(2**i)
print('hasilnya adalah : ',biner)
print ('')