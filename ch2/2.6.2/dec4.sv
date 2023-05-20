module dec4 (
    input logic en,
    input logic [3:0] a,
    output logic [15:0] bcode
);

    logic en0;
    logic [3:0] bcode0;
    dec2 inst_dec2_0 (
        .en(en0),
        .a(a[1:0]),
        .bcode(bcode0)
    );
    assign en0 = en & ~a[3] & ~a[2];

    logic en1;
    logic [3:0] bcode1;
    dec2 inst_dec2_1 (
        .en(en1),
        .a(a[1:0]),
        .bcode(bcode1)
    );
    assign en1 = en & ~a[3] & a[2];

    logic en2;
    logic [3:0] bcode2;
    dec2 inst_dec2_2 (
        .en(en2),
        .a(a[1:0]),
        .bcode(bcode2)
    );
    assign en2 = en & a[3] & ~a[2];

    logic en3;
    logic [3:0] bcode3;
    dec2 inst_dec2_3 (
        .en(en3),
        .a(a[1:0]),
        .bcode(bcode3)
    );
    assign en3 = en & a[3] & a[2];

    assign bcode[ 3: 0] = bcode0;
    assign bcode[ 7: 4] = bcode1;
    assign bcode[11: 8] = bcode2;
    assign bcode[15:12] = bcode3;

endmodule