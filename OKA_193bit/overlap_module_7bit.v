module overlap_module_7bit(
    B2_in1,
    B2_in2,
    B2_in3,
    B2_in4,
    B2_out
    );


parameter n = 8;

input [n-2:0] B2_in1;
input [n-2:0] B2_in2;
input [n-2:0] B2_in3;
input [n-2:0] B2_in4;

output [2*n-2:0] B2_out;

assign B2_out[0] = B2_in1[0];

assign B2_out[2] = B2_in1[1]^B2_in4[0];

assign B2_out[4] = B2_in1[2]^B2_in4[1];

assign B2_out[6] = B2_in1[3]^B2_in4[2];

assign B2_out[1] = B2_in2[0]^B2_in3[0];

assign B2_out[3] = B2_in2[1]^B2_in3[1];

assign B2_out[5] = B2_in2[2]^B2_in3[2];

assign B2_out[7] = B2_in2[3]^B2_in3[3];

assign B2_out[9] = B2_in2[4]^B2_in3[4];

assign B2_out[11] = B2_in2[5]^B2_in3[5];

assign B2_out[13] = B2_in2[6]^B2_in3[6];

assign B2_out[8] = B2_in1[4]^B2_in4[3];

assign B2_out[10] = B2_in1[5]^B2_in4[4];

assign B2_out[12] = B2_in1[6]^B2_in4[5];

assign B2_out[14] = B2_in4[6];

endmodule