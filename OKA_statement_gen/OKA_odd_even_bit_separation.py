n = 132


file1 = open("OKA_odd_even_bit_separation_stat.txt","w")




file1.writelines("assign a_mod_1 = {")
for i in range(1, n+1):
    if (i%2==0):
        file1.writelines("a["+str(n-i)+"]")

        if (i==n):
            file1.writelines("};\n\n")
        else:
            file1.writelines(",")

file1.writelines("assign b_mod_1 = {")
for i in range(1, n+1):
    if (i%2==0):
        file1.writelines("b["+str(n-i)+"]")

        if (i==n):
            file1.writelines("};\n\n")
        else:
            file1.writelines(",")








file1.writelines("assign a_mod_2 = {")
for i in range(1, n+1):
    if (i%2!=0):
        file1.writelines("a["+str(n-i)+"]")
        
        if (i==n-1):
            file1.writelines("};\n\n")
        else:
            file1.writelines(",")

file1.writelines("assign b_mod_2 = {")
for i in range(1, n+1):
    if (i%2!=0):
        file1.writelines("b["+str(n-i)+"]")

        if (i==n-1):
            file1.writelines("};\n\n")
        else:
            file1.writelines(",")









file1.writelines("assign a_mod_3 = {")
for i in range(1, n+1):
    if (i%2==0):
        file1.writelines("a["+str(n-i)+"]")

        if (i==n):
            file1.writelines("}")
        else:
            file1.writelines(",")
file1.writelines("^{")
for i in range(1, n+1):
    if (i%2!=0):
        file1.writelines("a["+str(n-i)+"]")
        
        if (i==n-1):
            file1.writelines("};\n\n")
        else:
            file1.writelines(",")












file1.writelines("assign b_mod_3 = {")
for i in range(1, n+1):
    if (i%2==0):
        file1.writelines("b["+str(n-i)+"]")

        if (i==n):
            file1.writelines("}")
        else:
            file1.writelines(",")
file1.writelines("^{")
for i in range(1, n+1):
    if (i%2!=0):
        file1.writelines("b["+str(n-i)+"]")
        
        if (i==n-1):
            file1.writelines("};\n\n")
        else:
            file1.writelines(",")


file1.close()
