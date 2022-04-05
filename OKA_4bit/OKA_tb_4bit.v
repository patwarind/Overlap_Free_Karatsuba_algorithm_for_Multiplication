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


module OKA_tb_4bit(

    );


reg [3:0] a;
reg [3:0] b;

wire [6:0] y;

   
   
OKA_4bit dut(a,b,y);
 
initial 
begin
#5;

a = 13; b = 10;
#10;

end 
 
    
endmodule

