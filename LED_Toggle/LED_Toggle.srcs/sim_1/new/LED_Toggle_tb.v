`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/27 00:10:34
// Design Name: 
// Module Name: LED_Toggle_tb
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


module LED_Toggle_tb();
    reg CLK;
    reg rst_n;
    wire [3:0] LED;

    Toggle_top top_tb(
        .CLK(CLK),
        .rst_n(rst_n),
        .LED(LED)
    );


    initial CLK = 1;
    always #10 CLK = ~CLK; 
    initial begin

        rst_n = 0;
        #200;
        rst_n = 1;
        #2000_000_000;

        $stop;
    end


endmodule
