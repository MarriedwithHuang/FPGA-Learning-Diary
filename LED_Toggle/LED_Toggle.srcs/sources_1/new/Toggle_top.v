`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/26 20:45:20
// Design Name: 
// Module Name: Toggle_top
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



module Toggle_top(
    rst_n,
    CLK,
    LED
);
    input rst_n;
    input CLK;
    output wire [3:0] LED;


LED_Toggle #(.MCNT(10000-1)) LED_Toggle_inst0(
    
    .CLK(CLK),
    .rst_n(rst_n),
    .LED(LED[0])
);
LED_Toggle #(.MCNT(20000-1)) LED_Toggle_inst1(
    
    .CLK(CLK),
    .rst_n(rst_n),
    .LED(LED[1])
);
LED_Toggle #(.MCNT(30000-1)) LED_Toggle_inst2(

    .CLK(CLK),
    .rst_n(rst_n),
    .LED(LED[2])
);
LED_Toggle #(.MCNT(40000-1)) LED_Toggle_inst3(

    .CLK(CLK),
    .rst_n(rst_n),
    .LED(LED[3])
);

// defparam LED_Toggle_inst0.MCNT = 10000-1;
// defparam LED_Toggle_inst1.MCNT = 20000-1;
// defparam LED_Toggle_inst2.MCNT = 30000-1;
// defparam LED_Toggle_inst3.MCNT = 40000-1;



endmodule
