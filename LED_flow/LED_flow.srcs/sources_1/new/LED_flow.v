`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/25 10:50:56
// Design Name: 
// Module Name: LED_flow
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


module LED_flow(
    CLK,
    rst_n,
    LED
    );


    input CLK;
    input rst_n;
    output reg [7:0] LED;

    reg [24:0] counter;


    always@(posedge CLK) begin
        if(!rst_n)
        counter <= 0;
        else if(CLK == 25000000 - 1)
        counter <= 0;
        else
        counter = counter + 1;
    end

    always@(posedge CLK) begin
        if(!rst_n)
        LED <= 8'b00000001;
        else if(counter == 25000000-1)
        LED = {LED[6:0],LED[7]};
    end
endmodule
