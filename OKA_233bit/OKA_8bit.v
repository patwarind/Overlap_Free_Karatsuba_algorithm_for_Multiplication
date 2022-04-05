`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2022 16:16:02
// Design Name: 
// Module Name: OKA_8bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module OKA_8bit(
    a,
    b,
    y
    );

parameter n = 8;
    
input [n-1:0] a;
input [n-1:0] b;

output [2*n-2:0] y;



wire [(n/2)-1:0] a_mod_1;
wire [(n/2)-1:0] b_mod_1;
wire [n-2:0] y_mod_1;


wire [(n/2)-1:0] a_mod_2;
wire [(n/2)-1:0] b_mod_2;
wire [n-2:0] y_mod_2;


wire [(n/2)-1:0] a_mod_3;
wire [(n/2)-1:0] b_mod_3;
wire [n-2:0] y_mod_3;


wire [n-2:0] B1_out1, B1_out2, B1_out3, B1_out4; 



OKA_4bit bit_mod_1 (.y(y_mod_1), .a(a_mod_1), .b(b_mod_1));
OKA_4bit bit_mod_2 (.y(y_mod_2), .a(a_mod_2), .b(b_mod_2));
OKA_4bit bit_mod_3 (.y(y_mod_3), .a(a_mod_3), .b(b_mod_3));



assign a_mod_1 = {a[6],a[4],a[2],a[0]};

assign b_mod_1 = {b[6],b[4],b[2],b[0]};

assign a_mod_2 = {a[7],a[5],a[3],a[1]};

assign b_mod_2 = {b[7],b[5],b[3],b[1]};

assign a_mod_3 = {a[6],a[4],a[2],a[0]}^{a[7],a[5],a[3],a[1]};

assign b_mod_3 = {b[6],b[4],b[2],b[0]}^{b[7],b[5],b[3],b[1]}; 



assign B1_out1 = y_mod_1;

assign B1_out2 = y_mod_1 ^ y_mod_2 ;

assign B1_out3 = y_mod_3;

assign B1_out4 = y_mod_2;


overlap_module_8bit ov_mod (
        .B2_in1(B1_out1),
        .B2_in2(B1_out2),
        .B2_in3(B1_out3),
        .B2_in4(B1_out4),
        .B2_out(y)
        );


endmodule