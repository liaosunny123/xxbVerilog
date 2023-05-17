`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 09:58:33
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
    
assign led_o[14] = (sw_i[1] & ~sw_i[3]) | (~sw_i[3] & sw_i[4]) | (~sw_i[1] & sw_i[3] & sw_i[4]);

assign led_o[15] = (~sw_i[4] & ~sw_i[3]) | (~sw_i[3] & ~sw_i[1]) | (~sw_i[3] & sw_i[1] & sw_i[2]);

endmodule
