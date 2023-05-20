`timescale 1ns/10ps

module dec4_tb;
    logic test_en;
    logic [3:0] test_a;
    logic [15:0] test_bcode;

    dec4 uut (
        .en(test_en),
        .a(test_a),
        .bcode(test_bcode)
    );

    integer i, j;
    initial begin
        for (i = 0; i < 16; i++) begin
            test_en = 1'b0;
            test_a = 4'(i);
            #200;
        end
        for (i = 0; i < 16; i++) begin
            test_en = 1'b1;
            test_a = 4'(i);
            #200;
        end
        $finish;
    end

    initial begin
        $dumpfile("dec4_tb.fst");
        $dumpvars(0, dec4_tb);
    end
    
endmodule