`timescale 1ns/10ps

module dec3_tb;
    logic test_en;
    logic [2:0] test_a;
    logic [7:0] test_bcode;

    dec3 uut (
        .en(test_en),
        .a(test_a),
        .bcode(test_bcode)
    );

    integer i, j;
    initial begin
        for (i = 0; i < 8; i++) begin
            test_en = 1'b0;
            test_a = 3'(i);
            #200;
        end
        for (i = 0; i < 8; i++) begin
            test_en = 1'b1;
            test_a = 3'(i);
            #200;
        end
        $finish;
    end

    initial begin
        $dumpfile("dec3_tb.fst");
        $dumpvars(0, dec3_tb);
    end
    
endmodule