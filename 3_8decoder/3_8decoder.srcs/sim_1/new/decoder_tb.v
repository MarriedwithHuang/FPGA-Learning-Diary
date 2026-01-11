`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/24 16:06:08
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();

    reg testa,testb,testc;
    wire [7:0] testout;
    decoder test_decoder(
        .a(testa),
        .b(testb),
        .c(testc),
        .out(testout)
    );

    initial begin
        testa = 0; testb = 0; testc = 0;   // 000
        #10;
        testa = 0; testb = 0; testc = 1;   // 001
        #10;
        testa = 0; testb = 1; testc = 0;   // 010
        #10;
        testa = 0; testb = 1; testc = 1;   // 011
        #10;
        testa = 1; testb = 0; testc = 0;   // 100
        #10;
        testa = 1; testb = 0; testc = 1;   // 101
        #10;
        testa = 1; testb = 1; testc = 0;   // 110
        #10;
        testa = 1; testb = 1; testc = 1;   // 111
        #10;
        $stop;
    end

endmodule
