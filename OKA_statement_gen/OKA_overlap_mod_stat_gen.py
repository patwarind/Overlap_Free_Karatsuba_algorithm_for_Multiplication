n = 132



file1 = open("OKA_overlap_mod_stat.txt","w")

even_index = []
odd_index = []

for i in range(0, 2*n-1):
    if i%2==0:
        even_index.append(i)
    else:
        odd_index.append(i)


output_index = []

for j in range(0, len(even_index)):
    output_index.append(even_index[j])
    if j==int(len(even_index)/2)-1:
        for k in range(0, len(odd_index)):
            output_index.append(odd_index[k])



input1_index = []
input2_index = []
input3_index = []
input4_index = []


for m in range(0, len(output_index)):
    if (output_index[m]%2==0):
        if int(output_index[m]/2)<(2*int(n/2)-1):
            input1_index.append(int(output_index[m]/2))
        else:
            input1_index.append(-1)
        input2_index.append(-1)
        input3_index.append(-1)
        if (int(output_index[m]/2)-1)<(2*int(n/2)-1):
            input4_index.append(int(output_index[m]/2)-1)
        else:
            input4_index.append(-1)
    else:
        input1_index.append(-1)
        if (int((output_index[m]-1)/2))<(2*int(n/2)-1):
            input2_index.append(int((output_index[m]-1)/2))
            input3_index.append(int((output_index[m]-1)/2))
        else:
            input2_index.append(-1)
            input3_index.append(-1)            
        input4_index.append(-1)

        
##print(output_index)
##print(input1_index)
##print(input2_index)
##print(input3_index)
##print(input4_index)

file1.writelines("module overlap_module_"+str(n)+"bit(\n\
    B2_in1,\n\
    B2_in2,\n\
    B2_in3,\n\
    B2_in4,\n\
    B2_out\n\
    );\n\
\n\
\n\
parameter n = "+str(n)+";\n\
\n\
input [n-2:0] B2_in1;\n\
input [n-2:0] B2_in2;\n\
input [n-2:0] B2_in3;\n\
input [n-2:0] B2_in4;\n\
\n\
output [2*n-2:0] B2_out;\n\n")


for p in range(0, len(output_index)):
    file1.writelines("assign B2_out["+str(output_index[p])+"] = ")

    if input1_index[p]>=0:
        if input4_index[p]>=0:
            file1.writelines("B2_in1["+str(input1_index[p])+"]")
        else:
            file1.writelines("B2_in1["+str(input1_index[p])+"];\n\n")


    if input2_index[p]>=0:
        file1.writelines("B2_in2["+str(input2_index[p])+"]")

    if input3_index[p]>=0:
        file1.writelines("^B2_in3["+str(input3_index[p])+"];\n\n")

    if input4_index[p]>=0:
        if input1_index[p]>=0:
            file1.writelines("^B2_in4["+str(input4_index[p])+"];\n\n")
        else:
            file1.writelines("B2_in4["+str(input4_index[p])+"];\n\n")


file1.writelines("endmodule")
file1.close()

