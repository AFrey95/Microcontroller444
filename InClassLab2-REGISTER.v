module REG_FILE(X, A, B, XADDR, AADDR, BADDR, write, clk, rst);
	input [7:0] X;  //data input to register file
	input write, clk, rst;	//write signal
	input [1:0] XADDR, AADDR, BADDR; //address ports
	output [7:0] A, B;	//A and B read ports
	//declare the register file
	reg [7:0] file [0:3];
	reg [7:0] A, B;
	always @(posedge clk or negedge rst)
		if (!rst) begin
			file[2'b00] <= 8'h00;
			file[2'b01] <= 8'h00;
			file[2'b10] <= 8'h00;
			file[2'b11] <= 8'h00;
		            end
		else if (write)
			file[XADDR] <= X;
		       else begin	
			A <= file[AADDR]; 
			B <= file[BADDR];
		              end
	
endmodule
