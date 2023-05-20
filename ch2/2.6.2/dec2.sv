module dec2 (
    input logic en,
    input logic [1:0] a,
    output logic [3:0] bcode
);

    /*

    en  a  | bcode
    -------+------
    0  - - | 0000
    1  0 0 | 0001
    1  0 1 | 0010
    1  1 0 | 0100
    1  1 1 | 1000
    
    */
    
    assign bcode[3] = en &  a[1] &  a[0];
    assign bcode[2] = en &  a[1] & ~a[0];
    assign bcode[1] = en & ~a[1] &  a[0];
    assign bcode[0] = en & ~a[1] & ~a[0];

endmodule