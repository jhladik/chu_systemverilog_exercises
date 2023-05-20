`timescale 1ns/10ps

module dec2_tb;
    logic test_en;
    logic [1:0] test_a;
    logic [3:0] test_bcode;

    dec2 uut (
        .en(test_en),
        .a(test_a),
        .bcode(test_bcode)
    );

    initial begin
        test_en = 1'b0;
        test_a = 2'b00;
        #200;
        test_en = 1'b0;
        test_a = 2'b01;
        #200;
        test_en = 1'b0;
        test_a = 2'b10;
        #200;
        test_en = 1'b0;
        test_a = 2'b11;
        #200;
        test_en = 1'b1;
        test_a = 2'b00;
        #200;
        test_en = 1'b1;
        test_a = 2'b01;
        #200;
        test_en = 1'b1;
        test_a = 2'b10;
        #200;
        test_en = 1'b1;
        test_a = 2'b11;
        #200;
        $finish;
    end

    initial begin
        $dumpfile("dec2_tb.fst");
        $dumpvars(0, dec2_tb);
    end
    
endmodule