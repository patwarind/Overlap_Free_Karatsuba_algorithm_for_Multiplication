`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2022 03:49:05
// Design Name: 
// Module Name: OKA_4bit
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


module OKA_3bit(
    a,
    b,
    y
    );

parameter n = 3;
    
input [n-1:0] a;
input [n-1:0] b;

output [2*n-2:0] y;



wire [((n+1)/2)-1:0] a_mod_1;
wire [((n+1)/2)-1:0] b_mod_1;
wire [n-1:0] y_mod_1;


wire [((n+1)/2)-1:0] a_mod_2;
wire [((n+1)/2)-1:0] b_mod_2;
wire [n-1:0] y_mod_2;


wire [((n+1)/2)-1:0] a_mod_3;
wire [((n+1)/2)-1:0] b_mod_3;
wire [n-1:0] y_mod_3;


wire [n-1:0] B1_out1, B1_out2, B1_out3, B1_out4; 

wire [2*(n+1)-2:0] y_modify;

KA_2bit bit_mod_1 (.y(y_mod_1), .a(a_mod_1), .b(b_mod_1));
KA_2bit bit_mod_2 (.y(y_mod_2), .a(a_mod_2), .b(b_mod_2));
KA_2bit bit_mod_3 (.y(y_mod_3), .a(a_mod_3), .b(b_mod_3));



assign a_mod_1 = {a[2],a[0]};
assign b_mod_1 = {b[2],b[0]};

assign a_mod_2 = {1'b0,a[1]};
assign b_mod_2 = {1'b0,b[1]};

assign a_mod_3 = {a[2],a[0]}^{1'b0,a[1]};
assign b_mod_3 = {b[2],b[0]}^{1'b0,b[1]}; 



assign B1_out1 = y_mod_1;

assign B1_out2 = y_mod_1 ^ y_mod_2 ;

assign B1_out3 = y_mod_3;

assign B1_out4 = y_mod_2;


overlap_module_3bit ov_mod (
        .B2_in1(B1_out1),
        .B2_in2(B1_out2),
        .B2_in3(B1_out3),
        .B2_in4(B1_out4),
        .B2_out(y_modify)
        );

assign y = y_modify[2*n-2:0];

endmodule


