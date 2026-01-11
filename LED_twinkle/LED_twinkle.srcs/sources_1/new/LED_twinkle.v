`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/24 20:00:07
// Design Name: 
// Module Name: LED_twinkle
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


module LED_twinkle(
        CLK,
        rst_n,
        LED,
        //counter 不能写在这里，因为他只是内部时钟，不是端口
    );
    input CLK;
    input rst_n;
    output reg LED;
    reg [24:0] counter;
    always@(posedge CLK)
        if(!rst_n)
            counter <=0;
        else if(counter == 25000000-1)
            counter <=0;
        else 
            counter <= counter + 1;
    always@(posedge CLK)
        if(!rst_n)
            LED<=0;
        else if(counter == 25000000-1)
            LED<=!LED;

    

endmodule
