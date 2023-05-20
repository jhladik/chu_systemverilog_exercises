`timescale 1ns/10ps

module agtb4_tb;
    logic [3:0] test_in0, test_in1;
    logic test_out;

    agtb4 uut(
        .a(test_in0),
        .b(test_in1),
        .agtb(test_out)
    );

    integer i, j;
    initial begin
        for (i = 0; i < 16; i++) begin
            for (j = 0; j < 16; j++) begin
                test_in0 = 4'(i);
                test_in1 = 4'(j);
                #200;
            end
        end
        $finish;
    end

    initial begin
        $dumpfile("agtb4_tb.fst");
        $dumpvars(0, agtb4_tb);
    end
    
endmodule