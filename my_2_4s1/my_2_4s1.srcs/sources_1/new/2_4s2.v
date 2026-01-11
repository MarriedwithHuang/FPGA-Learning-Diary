`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/23 15:08:16
// Design Name: 
// Module Name: 2_4s2
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


module my_2_4s1(
    a,b,
    s1,I1,Y1
    );
    input a,b;
    input s1;
    input   [3:0] I1;
    output Y1;

    assign Y1 = s1&(
        I1[0]&~a&~b|
        I1[1]&~a&b|
        I1[2]&a&~b|
        I1[3]&a&b
        );
endmodule