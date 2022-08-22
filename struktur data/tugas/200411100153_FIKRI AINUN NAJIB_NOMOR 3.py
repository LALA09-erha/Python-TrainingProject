gaji = int(input("masukkan gaji(tulis lengkap): "))
status = input("sudah nikah atau belum?(sudah/belum)?  ")
pajak = input("sudah punya rumah atau belum?(sudah/belum)?  ")

if gaji >= 3000000:
    print("wajib mengikuti asuransi")
    if status == "sudah":
        print("bisa menabung")
        if pajak =="sudah":
            print("wajib membayar pajak rumah")
        else:
            print("tidak wajib")
    else:
        print("belum boleh menabung")
        if pajak =="sudah":
            print("wajib membayar pajak rumah")
        else:
            print("tidak wajib")
else:
    print("tidak wajib mengikuti asuransi")
    if status == "sudah":
        print("bisa menabung")
        if pajak =="sudah":
            print("wajib membayar pajak rumah")
        else:
            print("tidak wajib")
    else:
        print("belum boleh menabung")
        if pajak =="sudah":
            print("wajib membayar pajak rumah")
        else:
            print("tidak wajib")