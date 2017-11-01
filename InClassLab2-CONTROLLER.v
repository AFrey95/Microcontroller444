/control.v
/* This is the control unit build from the prototype slides
*/
module control(clk, rst,  PC_ld, PC_inc1, PC_rst, FILE_sel, FILE_rst, FILE_write,
	DECODER_sel, IR_ld, IR_rst, STATUS_ld, STATUS_rst, ALU_cntl, IO_ld,
	IO_rst, MD_ld, MD_rst, MEM_write, src, dst, IR, STATUS);
		
	input clk, rst;
	input [1:0] src, dst;
	input [7:0] IR, STATUS;
	output PC_ld, PC_inc1, PC_rst, FILE_sel, FILE_rst, FILE_write, IR_ld, IR_rst, STATUS_ld, STATUS_rst, 			ALU_cntl, IO_ld, IO_rst, MD_ld, MD_rst, MEM_write;
	output [1:0] DECODER_sel;			
	reg PC_ld, PC_inc1, PC_rst, FILE_rst, FILE_write,  IR_ld, IR_rst, STATUS_ld, STATUS_rst, ALU_cntl,  		IO_rst, MD_ld, MD_rst, MEM_write, inst_err, state_err;
	reg [1:0] FILE_sel;
	reg [1:0] DECODER_sel;			
	reg [5:0] state, next_state;	
		//state labels
	parameter idle = 6'D0, S1 = 6'D1, S2 = 6'D2, S3 = 6'D3, S4 = 6'D4, S5 = 6'D5, S6=6'D6, S7 = 6'D7, S8 = 6'D8, 
			S9 = 6'D9, S10 = 6'D10, S11 = 6'D11, S12 = 6'D12, S13 = 6'D13, S14=6'D14, S15 = 6'D15,
			S16 = 6'D16, S17 = 6'D17, S18 = 6'D18, S19 = 6'D19, S20 = 6'D20, S21 = 6'D21, S22=6'D22, 			S23 = 6'D23, S24 = 6'D24, S25 = 6'D25, S26 = 6'D26, S27 = 6'D27, S28 = 6'D28, S29 = 6'D29, 			S30=6'D30, S31 = 6'D31,  S32 = 6'D32;
		wire [3:0] op_code, status, cc;
   assign IO_ld = MEM_write;
	assign op_code = IR[7:0];
	assign status = STATUS[3:0];
	assign cc = IR[3:0];
		//op_code mnemonics
	parameter NOP = 4'h0, ADD = 4'H1, SUB = 4'H2, AND = 4'H3, NOT = 4'H4, RD = 4'H8, WR = 4'H9, BR = 4'HA, 		BRC =4'HB;
		//state advance block
	always @(posedge clk or negedge rst)
		if(!rst) state = 0; else state = next_state;
				//control unit state machine
	always @(state, op_code, src, dst, status)
			//Put all pulse signal rest state values here if they are to last for one clock cycle
		begin
			PC_ld <= 0; PC_inc1<=0;  /*FILE_sel<=0; */ FILE_write<=0; DECODER_sel<=0; IR_ld<=0;
			STATUS_ld<=0;  MEM_write <= 0; 
			case (state)
				idle: next_state <= S1;
				S1: begin DECODER_sel <= 0; next_state <= S2; end  //states 1 - 3 fetch instruction and set up for next one
				S2: begin IR_ld <= 1'b1;next_state <= S3; end
				S3: begin PC_inc1 <= 1'b1; next_state <= S4; end
				S4: case (op_code)  //instruction decode
					NOP: next_state <= S1;
					ADD: next_state <= S5;
					SUB: next_state <= S9;
					AND: next_state <= S11;
					NOT: next_state <= S14;
					RD: next_state <= S17;
					WR: next_state <= S21;
					BR: next_state <= S25;
					BRC: next_state <= S28;
					default: begin inst_err <= 1; next_state <= idle; end
				 endcase
						 //ADD Instruction
			S5: begin FILE_sel <= 1'b1; next_state <= S6; end	//select the register file input from the ALU
			S6: begin FILE_write<= 1'b1; STATUS_ld <= 1'b1; next_state <= S7; end  //write File and load status register
			S7: begin FILE_sel <= 1'b0; next_state <= S1; end	//turn off  file select and go to S1
						 //SUB Instruction
			S8: begin FILE_sel <= 1'b1; next_state <= S9; end	//select the register file input from the ALU
			S9: begin FILE_write<= 1'b1; STATUS_ld <= 1'b1; next_state <= S10; end //write File and load status register
			S10: begin FILE_sel <= 1'b0; next_state <= S1; end 	//turn off  file select and go to S1
						 //AND Instruction
			S11: begin FILE_sel <= 1'b1; next_state <= S12; end 	//select the register file input from the ALU
			S12: begin FILE_write<= 1'b1; STATUS_ld <= 1'b1; next_state <= S13; end //write File and load status register
			S13: begin FILE_sel <= 1'b0; next_state <= S1; end 	//turn off  file select and go to S1								 //NOT Instruction
			S14: begin FILE_sel <= 1'b1; next_state <= S15; end	//select the register file input from the ALU
			S15: begin FILE_write<= 1'b1; STATUS_ld <= 1'b1; next_state <= S16; end //write File and load status register
			S16: begin FILE_sel <= 1'b0; next_state <= S1; end 	//turn off  file select and go to S1								
			//RD Instruction
			S17: begin MD_ld <= 1'b1; next_state <= S18; end //needed MD to buffer memory output
			S18: begin DECODER_sel <= 1; /* selects MD*/next_state <= S19; end
			S19: begin FILE_sel <= 1'b0; FILE_write <= 1; next_state <= S20; end
			S20: begin PC_inc1 <= 1'b1; next_state <= S1; end
					 //WR Instruction
			S21: begin MD_ld <= 1'b1; next_state <= S22; end	//needed MD to buffer memory output
			S22: begin DECODER_sel <= 1; /* selects MD*/next_state <= S23; end
			S23: begin DECODER_sel <= 2; /* selects File*/ MEM_write <= 1'b1; next_state <= S24;	end				S24: begin PC_inc1 <= 1'b1; next_state <= S1; end
					// BR Instruction
			S25: begin  MD_ld <= 1'b1; next_state <= S26; end	//needed MD to buffer memory output
			S26: begin DECODER_sel <= 1; /* selects MD*/next_state <= S27; end
			S27: begin PC_ld<=1'b1; next_state <= S1; end 	//need a data path connecting PC input to MEM
					//BRC Instruction
			S28: begin MD_ld <= 1'b1; next_state <= S29; end	//needed MD to buffer memory output
			S29: begin DECODER_sel <= 1; /* selects MD*/next_state <= S30; end
			S30: begin 
					if (|(IR[3:0] & STATUS[3:0])) PC_ld <= 1'b1;
					else PC_inc1 <= 1'b1; 
					next_state = S1; 
				  end
			default: begin state_err <= 1; next_state <= idle; end	
		endcase
	end	
endmodule			




