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


module OKA_tb_32bit(

    );


reg [31:0] a;
reg [31:0] b;

wire [62:0] y;

   
   
OKA_32bit dut(a,b,y);
 
initial 
begin
#5;

a = 4128831000; b = 3997757000;
#10;

end 
 
    
endmodule

