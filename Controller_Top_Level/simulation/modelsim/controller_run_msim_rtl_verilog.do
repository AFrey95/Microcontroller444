transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Controller_Top_Level {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Controller_Top_Level/controller.v}
vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Address_Decoder {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Address_Decoder/addr_decode.v}
vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Control_Unit {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Control_Unit/control.v}
vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/General_Register {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/General_Register/gen_reg.v}
vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/MUX_4_input {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/MUX_4_input/mux_4.v}
vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Program_Counter {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Program_Counter/pc_reg.v}
vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Register_File {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Register_File/REG_FILE.v}
vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/ALU {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/ALU/ALU.v}
vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Controller_Top_Level {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Controller_Top_Level/Main_Mem.v}

vlog -vlog01compat -work work +incdir+G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Controller_Top_Level {G:/class/ECE444_FA13/Lecture_Examples/Lecture_11/Controller_Top_Level/test_controller.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  test-controller

add wave *
view structure
view signals
run -all
