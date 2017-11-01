//gen_reg.v
//general register with parallel synchronous load.
//used for IR, MD, MA and status
module gen_reg (X, ld, clk, Y);
	input [7:0] X;
	input ld, clk;
	output [7:0] Y;
	reg [7:0] Y;
	
	always @(posedge clk)
		if (ld) Y <= X;
		else Y <= Y;
endmodule		