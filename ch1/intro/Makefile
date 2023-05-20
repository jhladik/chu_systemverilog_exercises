all:
	iverilog -Wall -g2009 -o eq2_tb eq1.sv eq2.sv eq2_tb.sv
	vvp eq2_tb -fst

clean:
	rm -f *.fst eq2_tb