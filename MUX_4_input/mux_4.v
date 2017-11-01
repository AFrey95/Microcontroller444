//mux_4.v
//4 input, 8-bit mux_

module mux_4(A, B, C, D, sel, Y);
	input [7:0] A, B, C, D;
	input [1:0] sel;
	output [7:0] Y;
	reg [7:0] Y;
	
	always @(sel or A or B or C or D)
		case (sel)
			2'b00: Y <= A;
			2'b01: Y <= B;
			2'b10: Y <= C;
			2'b11: Y <= D;
		endcase
endmodule
		