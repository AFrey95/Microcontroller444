//test_controller.v
//test_bench for our controller
`timescale 1ns/1ns

module test_controller();
  reg clk, rst;
  reg [7:0] IN;
  wire [7:0] OUT, PC_out, IR_out, MD_out, MEM_out;
  wire inst_err, state_err;
  wire [5:0] state;
  
  controller MUT(clk, rst, IN, OUT, inst_err, state_err, state, PC_out, IR_out, MD_out, MEM_out);
  
  initial #0 clk = 1'b0;
  always #50 clk = ~clk;
  initial begin #5 rst = 1'b0;#10 rst = 1'b1; end
  initial #10000 $stop;
  initial $monitor(clk, rst, state);
  initial $display(clk, rst, state);
  
 initial $readmemh("controller.hex", controller.Memory);
  /*$readmemh("filename",top.design.data_memory,'START_ADDRESS,
'END_ADDRESS);*/

endmodule  
