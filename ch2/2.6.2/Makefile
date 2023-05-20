all:
	iverilog -Wall -g2009 -o dec2_tb dec2.sv dec2_tb.sv
	vvp dec2_tb -fst
	iverilog -Wall -g2009 -o dec3_tb dec2.sv dec3.sv dec3_tb.sv
	vvp dec3_tb -fst
	iverilog -Wall -g2009 -o dec4_tb dec2.sv dec4.sv dec4_tb.sv
	vvp dec4_tb -fst

clean:
	rm -f *.fst dec2_tb dec3_tb dec4_tb