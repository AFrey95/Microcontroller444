//addr_decode.v
//address decoder for memory and I/O space

module addr_decode(IA, DA, sel, MA, I_O_A);
		input [7:0] IA, DA;
		input sel;
		output [7:0] MA, I_O_A;
		
		reg [7:0] MA, I_O_A;
		
		always @ (IA or DA or sel)
			begin MA <= 0; I_O_A <= 0;  //add these statements to stop latch inference
			if (sel == 1'b0) MA <= IA;  //zero selcets IA as source
			else case (DA)
				8'd 248: I_O_A <= 8'h 01;
				8'd 249: I_O_A <= 8'h 02;
				8'd 250: I_O_A <= 8'h 04;
				8'd 251: I_O_A <= 8'h 08;
				8'd 252: I_O_A <= 8'h 10;
				8'd 253: I_O_A <= 8'h 20;
				8'd 254: I_O_A <= 8'h 40;
				8'd 255: I_O_A <= 8'h 80;
				default: begin I_O_A <= 8'h 00; MA <= DA; end
			      endcase
			end		
endmodule					
