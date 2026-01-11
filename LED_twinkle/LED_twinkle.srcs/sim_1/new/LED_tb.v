`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/25 01:41:03
// Design Name: 
// Module Name: LED_tb
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


module LED_tb();
    reg CLK;
    reg rst_n;
    wire LED;
LED_twinkle twinkle_test(
        .CLK(CLK),
        .rst_n(rst_n),
        .LED(LED)
    );
initial CLK = 1;
always #10 CLK=~CLK;

initial begin
    rst_n = 0;
    #201;
    rst_n=1;
    #2000000000;
    $stop;


end 

endmodule
