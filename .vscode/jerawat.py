def a () :
    print ("Jerawat yang muncul di bagian dahi dan pelipis Anda umumnya berhubungan dengan alergi terhadap makanan tertentu, kelebihan konsumsi makanan cepat saji atau kalengan, alkohol dan lemak jenuh")
    str(input("======ketik angka 1 untuk penyembuhan : ======"))
    i = ("Untuk menyembuhkannya Anda bisa minum banyak air, mengubah pola makan Anda dengan makanan yang lebih sehat, dan kurangi konsumsi gula dalam makanan serta minuman yang Anda konsumsi.")
    print (i)
def b () :
    print("Jerawat yang muncul di pelipis saja biasanya berhubungan dengan masalah ginjal.")
    h = ("Untuk mengatasinya Anda bisa meminum banyak air. Lebih baik pilih air mineral dan jus buah alami.")
    str(input("======ketik angka 1 untuk penyembuhan : ======"))
    print(h)
def c () :
    print("Jika jerawat Anda muncul di antara mata ini merupakan tanda gangguan pada kesehatan liver dan sistem pencernaan.")
    str(input("======ketik angka 1 untuk penyembuhan : ======"))
    j = ("Untuk mengatasinya Anda bisa meminum banyak air. Lebih baik pilih air mineral dan jus buah alami.")
    print(j)
def d () :
    print("Jerawat Anda bermunculan di area dagu dan sepanjang garis rahang? Itu merupakan tanda dari gangguan hormon. Biasanya jerawat seperti ini muncul saat mendekati masa haid.")
    str(input("======ketik angka 1 untuk penyembuhan : ======"))
    k = ("Kurangi konsumsi makanan yang sulit dicerna oleh tubuh seperti gula sederhana, soda, kafein, dan alkohol. Perbanyak konsumsi serat dan air untuk membantu pencernaan.")
    print (k)
def e () :
    print("Jerawat di bagian dagu cuma berarti satu hal. Anda terlalu banyak mengonsumsi makanan berlemak dan gula.")
    str(input("======ketik angka 1 untuk penyembuhan : ======"))
    l = ("Anda terlalu banyak mengonsumsi makanan berlemak dan gula.")
    print(l)
def f () :
    print ("Jerawat di pipi merupakan tanda bahwa kesehatan paru-paru Anda terganggu. Kebiasaan merokok (atau menjadi perokok pasif), polusi udara, atau alergi debu bisa jadi penyebabnya.")
    str(input("======ketik angka 1 untuk penyembuhan : ======"))
    m = ("Untuk mengatasinya tentu saja Anda harus menghindari sumber polusi, asap rokok, dan biang alergi Anda.")
    print(m)
def g () :
    print ("Jika jerawat muncul di area hidung (bagian bawah dan di dalam lubang hidung) itu artinya Anda mengalami gangguan kesehatan jantung. ")
    str(input("======ketik angka 1 untuk penyembuhan : ======"))
    n = (" Konsumsi makanan yang baik untuk jantung seperti ikan, oatmeal, almond, alpukat, buah-buahan berry, dan bayam. Hindari juga makanan dengan lemak jenuh yang buruk untuk kesehatan jantung Anda.")
    print (n)
def menu():
    print("=====TIPS PENYEMBUHAN JERAWAT BERDASARKAN LETAK JERAWATNYA=====")
    print(" JENIS JENIS LETAK JERAWAT :\
    \n1. Area Dahi dan Pelipis \n2. Pelipis \n3. Area Mata \n4. Dagu dan Rahang \n5. Dagu \n6. Pipi \n7. Hidung ")
    o = int(input("PILIH OPSI 1 - 7 :"))
    if o == 1 :
        a ()
    elif o == 2 :
        b ()
    elif o == 3 :
        c ()
    elif o == 4 :
        d ()
    elif o == 5 :
        e () 
    elif o == 6 :
        f ()
    elif o == 7 :
        g ()
    else:
        def keluar():
                print ("Tidak ada di pilihan bos, coba lagi dari awal? [y/n]")
                print ("y = Menu Utama")
                print ("n = Tutup Program")
                coba = input()
                if coba == "N":
                    exit()
                elif coba == "n":
                    exit()
                elif coba == "Y":
                    menu()
                elif coba == "y":
                    menu()
                else :
                    print ("Salah input bos, Program akan segera tertutup")
                    print (" ")
                    print (" ")
                    print (" ")
                    print (" ")
                    print (" ")
                    print (" ")
                    print (" ")
                    print (" ")
                    exit()
print("================================================")
while 1:
    print ("\nPROGRAM PENYEMBUHAN JERAWAT,INGIN LIAT ATAU TIDAK.\npilih [y/n] ")
    print ("y = Liat program")
    print ("n = Tutup Program")
    coba = input()
    if coba == "N":
        exit()
    elif coba == "n":
        exit()
    elif coba == "Y":
        menu()
    elif coba == "y":
        menu()
    else :
        print ("Salah input bos, Program akan segera tertutup")
        print (" ")
        print (" ")
        print (" ")
        print (" ")
        print (" ")
        print (" ")
        print (" ")
        print (" ")
        exit()