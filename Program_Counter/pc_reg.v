//pc_reg.v
//program counter

module pc_reg(IN, OUT, ld, inc1, inc2, clk, rst);
	input [7:0] IN;
	input ld, inc1, inc2, clk, rst;
	output [7:0] OUT;
	
	reg [7:0] OUT;
	
	always @(posedge clk or negedge rst)
		if(!rst) OUT <= 8'h00;
		else if (ld) OUT <= IN;
		       else if (inc1) OUT <= OUT + 8'd 1;
		              else if (inc2) OUT <= OUT + 8'd 2;
			else OUT <= OUT;
endmodule
