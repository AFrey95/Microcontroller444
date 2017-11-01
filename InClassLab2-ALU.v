module ALU(A, B, CNTL, Y, zero, ovr, neg);
	input [7:0] A, B;
	input [2:0] CNTL;
	output [7:0] Y;
	output zero, ovr, neg;
	parameter NOP = 3'b000, ADD = 3'b001, SUB = 3'b010, AND = 3'b011, NOT = 3'b100;
	reg [7:0] Y;
	reg zero, ovr, neg;
	
	always @(A or B or CNTL)
		case (CNTL)
			NOP: begin Y = 8'h 00; zero = 1'b1; neg = 1'b0; ovr = 1'b0; end
			ADD: begin {ovr, Y} = A + B; if ({ovr, Y} == 9'h 000) zero = 1'b1; else zero = 1'b0; end
			SUB: if (B > A) begin Y = 8'h00; neg = 1'b1; end
				  else if (A == B) begin Y = 8'h00; zero = 1'b1; neg = 1'b0; end
				  else begin Y = A - B; neg = 1'b0; zero = 1'b0; end	
			AND: begin Y = A & B; neg = 1'b0; if (|Y == 8'h00) zero = 1'b1; else zero = 1'b0; end
			NOT: begin Y = ~A; neg = 1'b0; if (|Y == 8'h00) zero = 1'b1; else zero = 1'b0; end
			default: begin Y = 8'h00; zero = 1'b0; ovr = 1'b0; neg = 1'b0; end
		endcase
endmodule
