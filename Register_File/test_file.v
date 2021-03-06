//test_file.v

`timescale 1 ns / 1 ns

module test_file();
  //nput [7:0] X;  //data input to register file
	//input write, clk, rst;	//write signal
	//input [1:0] XADDR, AADDR, BADDR; 
	
	
reg [7:0] X;
reg write, clk, rst;
reg [1:0] XADDR, AADDR, BADDR;

wire [7:0] A, B;

REG_FILE MUT (X, A, B, XADDR, AADDR, BADDR, write, clk, rst);

always #10 clk = ~clk;

initial begin clk = 0;  X = 0; write =0; rst = 1; #5 rst = 0; #15 rst = 1; XADDR = 0; AADDR = 0; BADDR = 0; end
initial repeat (10) begin #40 X = X +1;   XADDR = XADDR + 1;end
initial begin #25 write = 1;  #10 write = 0;
              #30 write = 1;  #10 write = 0;
              #30 write = 1;  #10 write = 0;
              #30 write = 1;  #10 write = 0;
              #30 write = 1;  #10 write = 0;
              #30 write = 1;  #10 write = 0;
              #30 write = 1;  #10 write = 0;
              #30 write = 1;  #10 write = 0;
              end
               
initial repeat (10) begin #50 AADDR = AADDR + 1; BADDR = BADDR + 1; end
initial begin
          $display( X, A, B, XADDR, AADDR, BADDR, write, clk, rst);
          #500 $stop;
        end
endmodule

