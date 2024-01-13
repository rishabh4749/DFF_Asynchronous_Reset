`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 09:54:20
// Design Name: 
// Module Name: DFF_AsynRst
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


module DFF_AsynRst(
    input clk,
    input areset,
    input [7:0] d,
    output reg [7:0] q
    );
    always @ (posedge clk or posedge areset) begin
    if(areset)
    q<=0;
    else
    q<=d;
    end
endmodule
