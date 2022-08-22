print("program 3")
benar = True
while benar:
	pilih=int(input("pilih angka:\n1.cek prima\n2.luas segitiga sama sisi\n3.luas lingkaran\n4.keluar\npilih: "))
	if pilih ==1:
		num = int(input("Masukkan bilangan: "))
		# bilangan prima harus lebih besar dari 1
		if num > 1:
		    for i in range(2,num):
		        if (num % i) == 0:
		            print(num, "bukan bilangan prima")
		            print(i, "kali", num//i, "=", num)
		            benar = False
		    else:
		        print(num,"adalah bilangan prima")
	
		# bila bilangan kurang atau sama dengan satu
		else:
		    print(num, "bukan bilangan prima")
	elif pilih == 2:
		print("rumus luas segitiga samas sisi:\n1/2*alas*tinggi")
		a = float(input("masukkan alas: "))
		t = float(input("masukkan tinggi: "))
		luas = 1/2*a*t
		print("luas segitiga sama sisi: ",luas)
	elif pilih ==3:
		print("rumus luas lingkaran\n phi*r**2")
		phi = 3.14
		r =float(input("masukkan jari-jari: "))
		luas= phi*r**2
		print("luas lingkaran: ", luas)
	elif pilih == 4:
		benar = False
	else:
		print("nomer tidak ada!")
	print("============")
	print("mau coba lagi? \n1.coba lagi\n2.keluar")
	cek = (input("masukkan angka: "))
	if cek == "1":
		print("oke")
	elif cek =="2":
		print("terima kasih")
		benar = False
