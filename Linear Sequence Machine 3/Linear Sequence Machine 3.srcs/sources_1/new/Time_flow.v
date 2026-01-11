`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/01/10 22:18:04
// Design Name: 
// Module Name: Time_flow
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


module Time_flow(
    LED,
    CLK,
    rst_n,
    ctrl
    );

    input CLK;
    input rst_n;
    input [7:0] ctrl;
    output reg LED;
    reg [31:0] counter;
    parameter c_flag = 12500000;


    always@(posedge CLK or negedge rst_n)
        if(!rst_n)
            counter <= 0;
        else if(counter == 8*c_flag)
            counter <= 0;
        else
            counter <= counter + 1;

    always@(posedge CLK or negedge rst_n)
        if(!rst_n)
            LED <= ctrl[0];
        else if(counter == c_flag)
            LED <= ctrl[1];
        else if(counter == 2*c_flag)
            LED <= ctrl[2];
        else if(counter == 3*c_flag)
            LED <= ctrl[3];
        else if(counter == 4*c_flag)                
            LED <= ctrl[4];
        else if(counter == 5*c_flag)
            LED <= ctrl[5];
        else if(counter == 6*c_flag)
            LED <= ctrl[6];
        else if(counter == 7*c_flag)
            LED <= ctrl[7];
endmodule
