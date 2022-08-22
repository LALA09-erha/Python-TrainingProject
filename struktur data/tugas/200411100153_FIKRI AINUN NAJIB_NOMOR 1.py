print("===selanat datang di swalayan 'Maju Mundur'===")
baju = 100000
celana = 150000
sepatu = 250000
barang = input("ingin membeli apa(baju/celana/sepatu)? ")
if barang == "baju":
    kartu = input("apakah mempunyai kartu member?(ya/tidak) ")
    if kartu=="ya":
        discon = baju - (20/100*baju)
        print("harga baju: ", "Rp",discon)
    else:
        print("harga baju: ","Rp", baju)
elif barang == "celana":
    kartu = input("apakah mempunyai kartu member?(ya/tidak) ")
    if kartu=="ya":
        discon = celana - (20/100*celana)
        print("harga celana: ", "Rp",discon)
    else:
        print("harga celana: ","Rp", celana)
elif barang == "sepatu":
    kartu = input("apakah mempunyai kartu member?(ya/tidak) ")
    if kartu=="ya":
        discon = sepatu - (20/100*sepatu)
        print("harga sepatu: ", "Rp",discon)
    else:
        print("harga sepatu: ","Rp", sepatu)
else:
    print("Dagangan tidak tersedia") 