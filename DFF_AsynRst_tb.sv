`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 10:04:26
// Design Name: 
// Module Name: DFF_AsynRst_tb
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


module DFF_AsynRst_tb(

    );
    reg clk;
    reg [7:0] d;
    reg areset;
    wire [7:0] q;
    DFF_AsynRst dut(.clk(clk),.d(d),.q(q),.areset(areset));
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t d=%b areset=%b q=%b",$time,d,areset,q);
    #50 $finish;
    end
    initial
    begin
    clk<=0;
    #10;
    d<=8'b01010101;
    areset<=1'b0;
    #10;
    d<=8'b01010101;
    areset<=1'b1;
    #20;
    d<=8'b10101010;
    areset<=1'b0;
    end
endmodule
