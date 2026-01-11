`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/25 22:34:59
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
    LED,
    rst_n,
    CLK
    );
    reg [2:0] In;
    input rst_n;
    input CLK;
    output wire [7:0] LED;
    reg [24:0] counter;


    decoder My_LEDflow(
    
    .a(In[2]),
    .b(In[1]),
    .c(In[0]),

    .out(LED)


    );
    always@(posedge CLK) begin
        if(!rst_n)
            counter <= 0;
        else if(counter == 2500000-1)
            counter <= 0;
        else
            counter <= counter + 1;
    end
    
    always@(posedge CLK) begin
        if(!rst_n)
        In <= 3'b000;
        else if(counter == 2500000-1)
        In <= In - 1;
    end
endmodule
