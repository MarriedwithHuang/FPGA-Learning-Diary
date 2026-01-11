`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/26 10:36:13
// Design Name: 
// Module Name: LED_Toggle
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


module LED_Toggle(
    CLK,
    rst_n,
    LED
    );


    parameter MCNT = 10000000-1;

    
    input CLK;
    input rst_n;
    output reg LED;
    reg [32:0] counter;

    always@(posedge CLK) begin
        if(!rst_n)
            counter <= 0;
        else if(counter == MCNT)
            counter <= 0;
        else
            counter <= counter + 1;
    end

    always@(posedge CLK) begin
        if(!rst_n)
            LED <= 0;
        else if(counter == MCNT)
            LED <= !LED;
    end
    initial begin
        $display("MCNT = %d", MCNT);
    end

endmodule
