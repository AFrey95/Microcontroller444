//controller.v
//A verilog file to serve as the integration file for each of the 
//component modules

module controller(clk, rst, IN, OUT, inst_err, state_err, state, PC_out, IR_out, MD_out, MEM_out, ledr_out);
	input clk, rst;
	input [7:0] IN;  //this is an input port 
	output [7:0] OUT, PC_out, IR_out, MD_out, MEM_out, ledr_out;  //this is an output port
	output inst_err, state_err;
	output [5:0] state;
	//Input/Output register systems not defined as yet
	//define the wires needed to interconnect the units
	wire PC_ld, PC_inc1, FILE_write, 	DECODER_sel, IR_ld,  STATUS_ld,
			IO_ld, MD_ld,  MEM_write, inst_err, state_err;
	wire [1:0] FILE_sel;
	wire [2:0] ALU_cntl;
	wire zero, ovr, neg;
	wire [7:0] ALU_IN_A, ALU_IN_B, ALU_out, IR_out, FILE_IN_X, IO_REG_out, PC_out, 
	           MD_out, STATUS_out, MEM_out, I_O_A, MEM_Address;
	wire [7:0]ALU_status;
	assign ALU_status = {5'b00000, zero, ovr, neg};
	
	//instantiate the modules needed per our block diagram
	
	control	control_unit(clk, rst,  PC_ld, PC_inc1, FILE_sel,  FILE_write,
					DECODER_sel, IR_ld,  STATUS_ld,  ALU_cntl, IO_ld,
					 MD_ld,  MEM_write, IR_out, STATUS_out, inst_err, state_err, state);
	ALU		alu_unit(ALU_IN_A, ALU_IN_B, ALU_cntl, ALU_out, zero, ovr, neg);
	gen_reg	IR(MEM_out, IR_ld, clk, IR_out);
	gen_reg	MD(MEM_out, MD_ld, clk, MD_out);
	pc_reg	PC(MD_out, PC_out, PC_ld, PC_inc1, 1'b0, clk, rst);
	REG_FILE	REG_file(FILE_IN_X, ALU_IN_A, ALU_IN_B, IR_out[1:0], IR_out[3:2], IR_out[1:0], FILE_write, clk, rst);
	mux_4		file_mux(MEM_out, ALU_out, IO_REG_out, 8'h00, FILE_sel, FILE_IN_X);
	addr_decode MA_addr(PC_out, MD_out, DECODER_sel, MEM_Address, I_O_A);
	gen_reg	STATUS_reg(ALU_status, STATUS_ld, clk, STATUS_out);
	Main_Mem Memory(	clk,	ALU_IN_A,	MEM_Address,	MEM_Address,	MEM_write,	MEM_out);
	//instantiate LED output
	//module led_0_7_out (I_O_A, clk, write, Data, ledr_out);
	led_0_7_out  led_out(I_O_A, clk, MEM_write, ALU_IN_A, ledr_out);
endmodule
	
