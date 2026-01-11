module mux2(
    a,
    b,
    select,
    out
);
    input a;
    input b;
    input select;
    output out;
    assign out = (select == 0)?a:b;
endmodule