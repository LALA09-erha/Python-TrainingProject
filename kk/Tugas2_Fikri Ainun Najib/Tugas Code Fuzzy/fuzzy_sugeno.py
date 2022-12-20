# fungsi keanggotaan
def fuzzifikasi_nilai(ipk):
    fuzzifikasinilai =  []
    if(ipk <=2.5):
        nilai_rendah = (2-ipk)/2
        if(nilai_rendah != 0 and nilai_rendah > 0):
            fuzzifikasinilai.append([0,nilai_rendah])
            if(ipk <= 1.5 or ipk > 3.5):
                pass
            elif(1.5 < ipk):
                nilai_sedang = (ipk-1.5)/2
                fuzzifikasinilai.append([1,nilai_sedang])
        else: 
            if(ipk <= 1.5 or ipk > 3.5):
                pass
            elif(1.5 < ipk):
                nilai_sedang = (ipk-1.5)/2
                fuzzifikasinilai.append([1,nilai_sedang])
    else:
        if(ipk >= 3.5):
            pass
            if(ipk <=4.0):
                nilai_tinggi = (ipk-3)/1
                fuzzifikasinilai.append([2,nilai_tinggi])
        elif ( 2.5 < ipk and ipk < 3.5 ):
            nilai_sedang = (3.5-ipk)/1
            fuzzifikasinilai.append([1,nilai_sedang])
            if(ipk <=4.0):
                nilai_tinggi = (ipk-3)/1
                fuzzifikasinilai.append([2,nilai_tinggi])
    return fuzzifikasinilai

def fuzzifikasi_pendapatan(pendapatan):
    fuzzifikasigaji = []
    if(pendapatan >2):
        if(pendapatan >=4 ):
            if(pendapatan < 14):
                gaji_cukup = (pendapatan-2)/4
                fuzzifikasigaji.append([1,gaji_cukup])
                if(pendapatan > 10):
                    gaji_tinggi = (pendapatan-10)/4
                    fuzzifikasigaji.append([2,gaji_tinggi])
            else:
                gaji_tinggi =(pendapatan-14)/4
                fuzzifikasigaji.append([2,gaji_tinggi])
        else:
            gaji_rendah =(4-pendapatan)/2 
            fuzzifikasigaji.append([0,gaji_rendah])
            if(pendapatan <=  4 ):
                gaji_cukup = (pendapatan-2)/4
                fuzzifikasigaji.append([1,gaji_cukup])

    else:
            gaji_rendah = (4-pendapatan)/2
            fuzzifikasigaji.append([0,gaji_rendah])

    return fuzzifikasigaji

# aturan fuzzy mamdani 
def aturan_mamdani(ipk,pendapatan):
    # eksekusi aturan fuzzy yang tidak bernilai nol
    aturan = []
    if(len(ipk)>len(pendapatan)):
        for i in range(len(pendapatan)):
            for x in range(len(ipk)):
                    if(ipk[x][0] ==0 and pendapatan[i][0] ==0):
                        aturan.append([0,min(ipk[x][1],pendapatan[i][1]),[0.1,0.2]])
                    if(ipk[x][0] ==1 and pendapatan[i][0] ==1):
                        aturan.append([1,min(ipk[x][1],pendapatan[i][1]),[0.2,0.2]])
                    if(ipk[x][0] ==2 and pendapatan[i][0] ==1):
                        aturan.append([2,min(ipk[x][1],pendapatan[i][1]),[0.4,0.2]])
                    if(ipk[x][0] ==2 and pendapatan[i][0] ==0):
                        aturan.append([3,min(ipk[x][1],pendapatan[i][1]),[0.5,0.3]])
    else:
        for i in range(len(ipk)):
            for x in range(len(pendapatan)):
                    if(ipk[i][0] ==0 and pendapatan[x][0] ==0):
                        aturan.append([0,min(ipk[i][1],pendapatan[x][1]),[0.1,0.2]])
                    if(ipk[i][0] ==1 and pendapatan[x][0] ==1):
                        aturan.append([1,min(ipk[i][1],pendapatan[x][1]),[0.2,0.2]])
                    if(ipk[i][0] ==2 and pendapatan[x][0] ==1):
                        aturan.append([2,min(ipk[i][1],pendapatan[x][1]),[0.4,0.2]])
                    if(ipk[i][0] ==2 and pendapatan[x][0] ==0):
                        aturan.append([3,min(ipk[i][1],pendapatan[x][1]),[0.5,0.3]])
    return aturan



# aggregasi dan defuzzifikas 
def defuzzifikasi(aturan,ipk,pendapatan):
    hasil = []
    for i in aturan:
        hasil.append((i[2][0]*ipk)+(i[2][1]*pendapatan))
    pembilang = 0
    penyebut = 0

    for i in range (len(hasil)):
        pembilang += hasil[i]*aturan[i][1]
        penyebut += aturan[i][1]
    
    return pembilang/penyebut


    

# main fungsi
def main():
    kondisi = True
    while(kondisi):
        input_ipk = float(input("Masukkan IPK Anda Range(0-4):"))
        if(input_ipk<0.0 or input_ipk > 4.0):
            print("IPK yang anda masukkan tidak valid")
        else: 
            kondisi = False
    
    while(kondisi==False):
        input_pendapatan = float(input("Masukkan Pendapatan Anda Range(0-20) Juta : "))
        if(input_pendapatan <0.0 or input_pendapatan > 20.0):
            print("Pendapatan yang anda Masukkan tidak valid")
        else:
            kondisi = True

    list_nilai = fuzzifikasi_nilai(input_ipk)
    list_gaji = fuzzifikasi_pendapatan(input_pendapatan)
    aturan = sorted(aturan_mamdani(list_nilai,list_gaji))
    print(defuzzifikasi(aturan,input_ipk,input_pendapatan))

# main program:
if __name__ == '__main__':
    main()