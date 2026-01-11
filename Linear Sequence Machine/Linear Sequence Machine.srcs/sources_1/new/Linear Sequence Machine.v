`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/29 11:35:54
// Design Name: 
// Module Name: Linear Sequence Machine
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


module Linear_Sequence_Machine(
    CLK,
    rst_n,
    LED
    );


    input CLK;
    input rst_n;
    output reg LED;

    reg [24:0] counter;


    always@(posedge CLK) begin
        if(!rst_n)
            counter <=0;
        else if(counter == 25000000)
            counter <=0;
        else
            counter <= counter +1;
    end



    always@(posedge CLK) begin
        if(!rst_n)
            LED <= 0;
        else if(counter == 5000000)
            LED <= 1;
        else if(counter == 25000000)
            LED <= 0;
    end


endmodule
