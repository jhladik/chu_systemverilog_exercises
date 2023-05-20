`timescale 1ns/10ps

module aeqb2_tb;
    logic [1:0] test_in0, test_in1;
    logic test_out;

    aeqb2 uut(
        .a(test_in0),
        .b(test_in1),
        .aeqb(test_out)
    );

    initial begin
        test_in0 = 2'b00;
        test_in1 = 2'b00;
        #200;
        test_in0 = 2'b00;
        test_in1 = 2'b01;
        #200;
        test_in0 = 2'b00;
        test_in1 = 2'b10;
        #200;
        test_in0 = 2'b00;
        test_in1 = 2'b11;
        #200;
        test_in0 = 2'b01;
        test_in1 = 2'b00;
        #200;
        test_in0 = 2'b01;
        test_in1 = 2'b01;
        #200;
        test_in0 = 2'b01;
        test_in1 = 2'b10;
        #200;
        test_in0 = 2'b01;
        test_in1 = 2'b11;
        #200;
        test_in0 = 2'b10;
        test_in1 = 2'b00;
        #200;
        test_in0 = 2'b10;
        test_in1 = 2'b01;
        #200;
        test_in0 = 2'b10;
        test_in1 = 2'b10;
        #200;
        test_in0 = 2'b10;
        test_in1 = 2'b11;
        #200;
        test_in0 = 2'b11;
        test_in1 = 2'b00;
        #200;
        test_in0 = 2'b11;
        test_in1 = 2'b01;
        #200;
        test_in0 = 2'b11;
        test_in1 = 2'b10;
        #200;
        test_in0 = 2'b11;
        test_in1 = 2'b11;
        #200;
        $finish;
    end

    initial begin
        $dumpfile("aeqb2_tb.fst");
        $dumpvars(0, aeqb2_tb);
    end
    
endmodule