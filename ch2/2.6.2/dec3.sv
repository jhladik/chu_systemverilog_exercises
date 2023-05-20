module dec3 (
    input logic en,
    input logic [2:0] a,
    output logic [7:0] bcode
);

    logic en_lower;
    logic [3:0] bcode_lower;
    dec2 inst_dec2_lower (
        .en(en_lower),
        .a(a[1:0]),
        .bcode(bcode_lower)
    );
    assign en_lower = en & ~a[2];

    logic en_upper;
    logic [3:0] bcode_upper;
    dec2 inst_dec2_upper (
        .en(en_upper),
        .a(a[1:0]),
        .bcode(bcode_upper)
    );
    assign en_upper = en & a[2];

    assign bcode[7:4] = bcode_upper;
    assign bcode[3:0] = bcode_lower;

endmodule