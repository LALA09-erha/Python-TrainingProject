smaller = None
print("before : ", smaller)
for i in [15,51,31,25,62,1]:
    if smaller == None or i < smaller :
        smaller = i 
    print("Loop  :", i , smaller)
print("smaller : ", smaller)