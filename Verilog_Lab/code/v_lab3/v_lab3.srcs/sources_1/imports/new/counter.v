`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/18 20:16:37
// Design Name: 
// Module Name: counter
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


module counter(clk_N,sw, out);
input clk_N;
input sw;
output reg [2:0] out;             // ����ֵ 
    always @(posedge clk_N)  begin  // ��ʱ�������ؼ�������1
        if(sw)
        out = out+1;
        else
        out = out-1;
    end                           
endmodule
