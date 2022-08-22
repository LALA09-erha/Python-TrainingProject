kelamin = (input("masukkan jenis kelamin(pria /wanita)= "))
umur = (input("masukkan umur anda: "))
if kelamin == 'pria':
	if umur >'20':
		print("pria boleh menikah")
	else:
		print("belum cukup umur")
elif kelamin == 'wanita':
	if umur >"18":
		print("boleh menikah")
	else:
		print("belum cukup umur")
else:
	print("jenis kelamin tidak terdaftar")