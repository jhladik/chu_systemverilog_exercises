module agtb4 (
    input logic [3:0] a,
    input logic [3:0] b,
    output logic agtb
);

    logic agtb_upper, aeqb_upper, agtb_lower;
    
    agtb2 inst_agtb2_upper(
        .a(a[3:2]),
        .b(b[3:2]),
        .agtb(agtb_upper)
    );

    aeqb2 inst_aeqb2_upper(
        .a(a[3:2]),
        .b(b[3:2]),
        .aeqb(aeqb_upper)
    );

    agtb2 inst_agtb2_lower(
        .a(a[1:0]),
        .b(b[1:0]),
        .agtb(agtb_lower)
    );

    assign agtb = agtb_upper | (aeqb_upper & agtb_lower);
    
endmodule