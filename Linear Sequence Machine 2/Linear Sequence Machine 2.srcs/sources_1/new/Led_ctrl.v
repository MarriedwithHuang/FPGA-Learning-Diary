`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/10 17:37:30
// Design Name: 
// Module Name: Led_ctrl
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


module Led_ctrl(
    LED,
    CLK,
    rst_n
    );
    output reg LED;
    input CLK;
    input rst_n;
    reg [26:0] counter;

    always@(posedge CLK)begin
        if(!rst_n)
            counter <= 0;
        else if(counter == 75_000_000)
            counter <= 0;
        else 
            counter <= counter + 1;
    end 


    always@(posedge CLK)begin
        if(!rst_n)
            LED <= 0;
        else if(counter == 5_000_000)
            LED <= !LED;
        else if(counter == 10_000_000)
            LED <= !LED;   
        else if(counter == 25_000_000)
            LED <= !LED;
        else if(counter == 75_000_000)
            LED <= !LED; 
    end

endmodule
