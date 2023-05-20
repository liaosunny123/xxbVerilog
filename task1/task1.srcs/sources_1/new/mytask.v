`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:01:56
// Design Name: 
// Module Name: mytask
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

module mytask(
    input clk,
    input rstn,
    input [15:0]sw_i,
    output [15:0]led_o
    );
 
wire t1,t2;

nand nand1(t1,sw_i[2:2],sw_i[1:1]);
nand nand2(t2,sw_i[3:3],sw_i[1:1]);
nand(led_o[15],t1,t2);

endmodule
