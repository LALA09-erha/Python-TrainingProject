from prettytable import PrettyTable
B = int(True)
S = int(False)

tabelSiswa = PrettyTable([("[(p"),("=>"),("q)"),("^"),("(~q"),("V"),("r)]"),("<=>"),( "p=>r")])


tabelSiswa.add_row([B, not(B)or S , S,(not(B) or S) and (not(S) or B),not(S),not(S)or B, B , ((not(B) or S) and (not(S) or B)) is (not(B) or B), not(B) or B])
tabelSiswa.add_row([B, not(B)or S , S,(not(B) or S) and (not(S) or S),not(S),not(S)or S, S , ((not(B) or S) and (not(S) or S)) is (not(B) or S), not(B) or S])
tabelSiswa.add_row([S, not(S)or B , B,(not(S) or B) and (not(B) or B),not(B),not(B)or B, B , ((not(S) or B) and (not(B) or B)) is (not(S) or B), not(S) or B])
tabelSiswa.add_row([S, not(S)or B , B,(not(S) or B) and (not(B) or S),not(B),not(B)or S, S , ((not(S) or B) and (not(B) or S)) is (not(S) or S), not(S) or S])
B = int(True)
S = int(False)
print(tabelSiswa)
