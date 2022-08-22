a = int(input("masukkan a: "))
for i in range(1, a + 1, 1):
    if i == 1:
        x = 0
        z = x
    else:
        if i == 2:
            y = 1
            z = y
        else:
            z = x + y
            x = y
            y = z
print(z)

