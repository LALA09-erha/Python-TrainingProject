matkul = "ipa"
score_theory = int(input("enter score theory = "))
score_practical = int(input("enter score practical = "))
if matkul == "ips" :
    if score_theory >= 70 and score_practical >= 70:
        print("Anda lulus keduanya")
        print("skor anda adalah : ",score_theory +
        score_practical)
    else:
        print("anda harus lulus keduanya")
        print("selamat mengulang tahun depan")
elif matkul == "ipa" :
    if score_theory >= 70 and score_practical >= 70:
        print("Anda lulus keduanya")
        print("skor anda adalah : ",score_theory +
        score_practical)
    else:
        print("anda harus lulus keduanya")
        print("selamat mengulang tahun depan")
else:
    print("matkul tidak dikenali.")