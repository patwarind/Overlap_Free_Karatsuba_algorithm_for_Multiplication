`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2022 16:10:25
// Design Name: 
// Module Name: OKA_tb_4bit
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


module OKA_tb_64bit(

    );


reg [63:0] a;
reg [63:0] b;

wire [126:0] y;

   
   
OKA_64bit dut(a,b,y);
 
initial 
begin
#5;

a = 64'b1111011000011000111101100001100011110110000110001111011000011000; 
b = 64'b1110111001001000111011100100100011101110010010001110111001001000;

#10;

end 
 
    
endmodule

