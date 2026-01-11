`timescale 1ps/1ps


module mux2_tb();
    reg s0;
    reg s1;
    reg s2;
    wire test1_out;

    mux2 test1(
        .a(s0),
        .b(s1),
        .select(s2),
        .out(test1_out)
    );
    
    initial begin
        s0 = 0; s1 = 0; s2 = 0;
        #20;
        s0 = 1; s1 = 0; s2 = 0;
        #20;
        s0 = 0; s1 = 1; s2 = 0;
        #20;
        s0 = 1; s1 = 1; s2 = 0;
        #20;
        s0 = 0; s1 = 0; s2 = 1;
        #20;
        s0 = 1; s1 = 0; s2 = 1;
        #20;
        s0 = 0; s1 = 1; s2 = 1;
        #20;
        s0 = 1; s1 = 1; s2 = 1;
        #20;
    end



endmodule