all:
	iverilog -Wall -g2009 -o agtb2_tb agtb2.sv agtb2_tb.sv
	vvp agtb2_tb -fst
	iverilog -Wall -g2009 -o aeqb2_tb aeqb2.sv aeqb2_tb.sv
	vvp aeqb2_tb -fst
	iverilog -Wall -g2009 -o agtb4_tb agtb4.sv agtb4_tb.sv aeqb2.sv agtb2.sv
	vvp agtb4_tb -fst

clean:
	rm -f *.fst agtb2_tb aeqb2_tb agtb4_tb