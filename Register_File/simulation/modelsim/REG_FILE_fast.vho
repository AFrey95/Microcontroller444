-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 178 05/31/2012 SJ Web Edition"

-- DATE "09/28/2012 08:58:04"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	REG_FILE IS
    PORT (
	X : IN std_logic_vector(7 DOWNTO 0);
	A : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	XADDR : IN std_logic_vector(1 DOWNTO 0);
	AADDR : IN std_logic_vector(1 DOWNTO 0);
	BADDR : IN std_logic_vector(1 DOWNTO 0);
	write : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic
	);
END REG_FILE;

-- Design Ports Information
-- A[0]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[2]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[3]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[4]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[5]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[7]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[1]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[2]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[3]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[4]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[5]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[6]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[7]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AADDR[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AADDR[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- write	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BADDR[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BADDR[0]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- XADDR[1]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- XADDR[0]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[4]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[5]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[6]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[7]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF REG_FILE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_XADDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_AADDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_BADDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_write : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \file[3][6]~regout\ : std_logic;
SIGNAL \file[3][6]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \write~combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \file[2][0]~regout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \file[0][0]~regout\ : std_logic;
SIGNAL \file[1][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \file[1][0]~regout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \B[0]~0_combout\ : std_logic;
SIGNAL \A[0]~reg0_regout\ : std_logic;
SIGNAL \file[1][1]~feeder_combout\ : std_logic;
SIGNAL \file[1][1]~regout\ : std_logic;
SIGNAL \file[0][1]~regout\ : std_logic;
SIGNAL \file[2][1]~regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \A[1]~reg0_regout\ : std_logic;
SIGNAL \file[0][2]~regout\ : std_logic;
SIGNAL \file[1][2]~feeder_combout\ : std_logic;
SIGNAL \file[1][2]~regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \file[3][2]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \file[3][2]~regout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \A[2]~reg0_regout\ : std_logic;
SIGNAL \file[1][3]~feeder_combout\ : std_logic;
SIGNAL \file[1][3]~regout\ : std_logic;
SIGNAL \file[2][3]~feeder_combout\ : std_logic;
SIGNAL \file[2][3]~regout\ : std_logic;
SIGNAL \file[0][3]~feeder_combout\ : std_logic;
SIGNAL \file[0][3]~regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \A[3]~reg0_regout\ : std_logic;
SIGNAL \file[3][4]~feeder_combout\ : std_logic;
SIGNAL \file[3][4]~regout\ : std_logic;
SIGNAL \file[2][4]~feeder_combout\ : std_logic;
SIGNAL \file[2][4]~regout\ : std_logic;
SIGNAL \file[0][4]~regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \A[4]~reg0_regout\ : std_logic;
SIGNAL \file[3][5]~regout\ : std_logic;
SIGNAL \file[1][5]~regout\ : std_logic;
SIGNAL \file[0][5]~regout\ : std_logic;
SIGNAL \file[2][5]~feeder_combout\ : std_logic;
SIGNAL \file[2][5]~regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \A[5]~reg0_regout\ : std_logic;
SIGNAL \file[2][6]~feeder_combout\ : std_logic;
SIGNAL \file[2][6]~regout\ : std_logic;
SIGNAL \file[1][6]~feeder_combout\ : std_logic;
SIGNAL \file[1][6]~regout\ : std_logic;
SIGNAL \file[0][6]~regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \A[6]~reg0_regout\ : std_logic;
SIGNAL \file[1][7]~feeder_combout\ : std_logic;
SIGNAL \file[1][7]~regout\ : std_logic;
SIGNAL \file[2][7]~regout\ : std_logic;
SIGNAL \file[0][7]~regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \A[7]~reg0_regout\ : std_logic;
SIGNAL \file[3][0]~feeder_combout\ : std_logic;
SIGNAL \file[3][0]~regout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \B[0]~reg0_regout\ : std_logic;
SIGNAL \file[3][1]~feeder_combout\ : std_logic;
SIGNAL \file[3][1]~regout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \B[1]~reg0_regout\ : std_logic;
SIGNAL \file[2][2]~regout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \B[2]~reg0_regout\ : std_logic;
SIGNAL \file[3][3]~feeder_combout\ : std_logic;
SIGNAL \file[3][3]~regout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \B[3]~reg0_regout\ : std_logic;
SIGNAL \file[1][4]~feeder_combout\ : std_logic;
SIGNAL \file[1][4]~regout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \B[4]~reg0_regout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \B[5]~reg0_regout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \B[6]~reg0_regout\ : std_logic;
SIGNAL \file[3][7]~feeder_combout\ : std_logic;
SIGNAL \file[3][7]~regout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \B[7]~reg0_regout\ : std_logic;
SIGNAL \XADDR~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \X~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BADDR~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \AADDR~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_rst~clkctrl_outclk\ : std_logic;

BEGIN

ww_X <= X;
A <= ww_A;
B <= ww_B;
ww_XADDR <= XADDR;
ww_AADDR <= AADDR;
ww_BADDR <= BADDR;
ww_write <= write;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~clkctrl_outclk\ <= NOT \rst~clkctrl_outclk\;

-- Location: LCFF_X58_Y35_N5
\file[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[3][6]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[3][6]~regout\);

-- Location: LCCOMB_X58_Y35_N4
\file[3][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[3][6]~feeder_combout\ = \X~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(6),
	combout => \file[3][6]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(0),
	combout => \X~combout\(0));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\write~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_write,
	combout => \write~combout\);

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\XADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_XADDR(1),
	combout => \XADDR~combout\(1));

-- Location: LCCOMB_X57_Y35_N24
\Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\XADDR~combout\(0) & (\write~combout\ & \XADDR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XADDR~combout\(0),
	datab => \write~combout\,
	datad => \XADDR~combout\(1),
	combout => \Decoder0~0_combout\);

-- Location: LCFF_X56_Y35_N31
\file[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(0),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[2][0]~regout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AADDR(0),
	combout => \AADDR~combout\(0));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\XADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_XADDR(0),
	combout => \XADDR~combout\(0));

-- Location: LCCOMB_X57_Y35_N4
\Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\write~combout\ & (!\XADDR~combout\(0) & !\XADDR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write~combout\,
	datac => \XADDR~combout\(0),
	datad => \XADDR~combout\(1),
	combout => \Decoder0~2_combout\);

-- Location: LCFF_X55_Y35_N21
\file[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(0),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[0][0]~regout\);

-- Location: LCCOMB_X54_Y35_N8
\file[1][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[1][0]~feeder_combout\ = \X~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(0),
	combout => \file[1][0]~feeder_combout\);

-- Location: LCCOMB_X57_Y35_N20
\Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\XADDR~combout\(0) & (\write~combout\ & !\XADDR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XADDR~combout\(0),
	datab => \write~combout\,
	datad => \XADDR~combout\(1),
	combout => \Decoder0~1_combout\);

-- Location: LCFF_X54_Y35_N9
\file[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[1][0]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[1][0]~regout\);

-- Location: LCCOMB_X55_Y35_N20
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\AADDR~combout\(1) & (\AADDR~combout\(0))) # (!\AADDR~combout\(1) & ((\AADDR~combout\(0) & ((\file[1][0]~regout\))) # (!\AADDR~combout\(0) & (\file[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AADDR~combout\(1),
	datab => \AADDR~combout\(0),
	datac => \file[0][0]~regout\,
	datad => \file[1][0]~regout\,
	combout => \Mux7~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AADDR(1),
	combout => \AADDR~combout\(1));

-- Location: LCCOMB_X55_Y35_N8
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\file[3][0]~regout\) # ((!\AADDR~combout\(1))))) # (!\Mux7~0_combout\ & (((\file[2][0]~regout\ & \AADDR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \file[3][0]~regout\,
	datab => \file[2][0]~regout\,
	datac => \Mux7~0_combout\,
	datad => \AADDR~combout\(1),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X57_Y35_N30
\B[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B[0]~0_combout\ = (!\write~combout\ & \rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write~combout\,
	datad => \rst~combout\,
	combout => \B[0]~0_combout\);

-- Location: LCFF_X55_Y35_N9
\A[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux7~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A[0]~reg0_regout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(1),
	combout => \X~combout\(1));

-- Location: LCCOMB_X54_Y35_N20
\file[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[1][1]~feeder_combout\ = \X~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(1),
	combout => \file[1][1]~feeder_combout\);

-- Location: LCFF_X54_Y35_N21
\file[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[1][1]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[1][1]~regout\);

-- Location: LCFF_X55_Y35_N15
\file[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(1),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[0][1]~regout\);

-- Location: LCFF_X56_Y35_N25
\file[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(1),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[2][1]~regout\);

-- Location: LCCOMB_X55_Y35_N0
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\AADDR~combout\(1) & ((\AADDR~combout\(0)) # ((\file[2][1]~regout\)))) # (!\AADDR~combout\(1) & (!\AADDR~combout\(0) & (\file[0][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AADDR~combout\(1),
	datab => \AADDR~combout\(0),
	datac => \file[0][1]~regout\,
	datad => \file[2][1]~regout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X55_Y35_N18
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\AADDR~combout\(0) & ((\Mux6~0_combout\ & (\file[3][1]~regout\)) # (!\Mux6~0_combout\ & ((\file[1][1]~regout\))))) # (!\AADDR~combout\(0) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \file[3][1]~regout\,
	datab => \AADDR~combout\(0),
	datac => \file[1][1]~regout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCFF_X55_Y35_N19
\A[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux6~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A[1]~reg0_regout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(2),
	combout => \X~combout\(2));

-- Location: LCFF_X55_Y35_N31
\file[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(2),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[0][2]~regout\);

-- Location: LCCOMB_X54_Y35_N28
\file[1][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[1][2]~feeder_combout\ = \X~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(2),
	combout => \file[1][2]~feeder_combout\);

-- Location: LCFF_X54_Y35_N29
\file[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[1][2]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[1][2]~regout\);

-- Location: LCCOMB_X55_Y35_N4
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\AADDR~combout\(1) & (((\AADDR~combout\(0))))) # (!\AADDR~combout\(1) & ((\AADDR~combout\(0) & ((\file[1][2]~regout\))) # (!\AADDR~combout\(0) & (\file[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AADDR~combout\(1),
	datab => \file[0][2]~regout\,
	datac => \AADDR~combout\(0),
	datad => \file[1][2]~regout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X54_Y35_N26
\file[3][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[3][2]~feeder_combout\ = \X~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(2),
	combout => \file[3][2]~feeder_combout\);

-- Location: LCCOMB_X57_Y35_N14
\Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\write~combout\ & (\XADDR~combout\(0) & \XADDR~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write~combout\,
	datac => \XADDR~combout\(0),
	datad => \XADDR~combout\(1),
	combout => \Decoder0~3_combout\);

-- Location: LCFF_X54_Y35_N27
\file[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[3][2]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[3][2]~regout\);

-- Location: LCCOMB_X55_Y35_N24
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\AADDR~combout\(1) & ((\Mux5~0_combout\ & ((\file[3][2]~regout\))) # (!\Mux5~0_combout\ & (\file[2][2]~regout\)))) # (!\AADDR~combout\(1) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \file[2][2]~regout\,
	datab => \AADDR~combout\(1),
	datac => \Mux5~0_combout\,
	datad => \file[3][2]~regout\,
	combout => \Mux5~1_combout\);

-- Location: LCFF_X55_Y35_N25
\A[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux5~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A[2]~reg0_regout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(3),
	combout => \X~combout\(3));

-- Location: LCCOMB_X54_Y35_N4
\file[1][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[1][3]~feeder_combout\ = \X~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(3),
	combout => \file[1][3]~feeder_combout\);

-- Location: LCFF_X54_Y35_N5
\file[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[1][3]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[1][3]~regout\);

-- Location: LCCOMB_X56_Y35_N4
\file[2][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[2][3]~feeder_combout\ = \X~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(3),
	combout => \file[2][3]~feeder_combout\);

-- Location: LCFF_X56_Y35_N5
\file[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[2][3]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[2][3]~regout\);

-- Location: LCCOMB_X55_Y35_N2
\file[0][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[0][3]~feeder_combout\ = \X~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(3),
	combout => \file[0][3]~feeder_combout\);

-- Location: LCFF_X55_Y35_N3
\file[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[0][3]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[0][3]~regout\);

-- Location: LCCOMB_X56_Y35_N22
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\AADDR~combout\(1) & ((\AADDR~combout\(0)) # ((\file[2][3]~regout\)))) # (!\AADDR~combout\(1) & (!\AADDR~combout\(0) & ((\file[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AADDR~combout\(1),
	datab => \AADDR~combout\(0),
	datac => \file[2][3]~regout\,
	datad => \file[0][3]~regout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X56_Y35_N16
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\AADDR~combout\(0) & ((\Mux4~0_combout\ & (\file[3][3]~regout\)) # (!\Mux4~0_combout\ & ((\file[1][3]~regout\))))) # (!\AADDR~combout\(0) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \file[3][3]~regout\,
	datab => \AADDR~combout\(0),
	datac => \file[1][3]~regout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCFF_X56_Y35_N17
\A[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux4~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A[3]~reg0_regout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(4),
	combout => \X~combout\(4));

-- Location: LCCOMB_X54_Y35_N24
\file[3][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[3][4]~feeder_combout\ = \X~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(4),
	combout => \file[3][4]~feeder_combout\);

-- Location: LCFF_X54_Y35_N25
\file[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[3][4]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[3][4]~regout\);

-- Location: LCCOMB_X56_Y35_N8
\file[2][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[2][4]~feeder_combout\ = \X~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(4),
	combout => \file[2][4]~feeder_combout\);

-- Location: LCFF_X56_Y35_N9
\file[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[2][4]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[2][4]~regout\);

-- Location: LCFF_X55_Y35_N29
\file[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(4),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[0][4]~regout\);

-- Location: LCCOMB_X54_Y35_N2
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\AADDR~combout\(0) & ((\file[1][4]~regout\) # ((\AADDR~combout\(1))))) # (!\AADDR~combout\(0) & (((!\AADDR~combout\(1) & \file[0][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \file[1][4]~regout\,
	datab => \AADDR~combout\(0),
	datac => \AADDR~combout\(1),
	datad => \file[0][4]~regout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X55_Y35_N10
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\AADDR~combout\(1) & ((\Mux3~0_combout\ & (\file[3][4]~regout\)) # (!\Mux3~0_combout\ & ((\file[2][4]~regout\))))) # (!\AADDR~combout\(1) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AADDR~combout\(1),
	datab => \file[3][4]~regout\,
	datac => \file[2][4]~regout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCFF_X55_Y35_N11
\A[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux3~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A[4]~reg0_regout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(5),
	combout => \X~combout\(5));

-- Location: LCFF_X58_Y35_N19
\file[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(5),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[3][5]~regout\);

-- Location: LCFF_X58_Y35_N13
\file[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(5),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[1][5]~regout\);

-- Location: LCFF_X57_Y35_N21
\file[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(5),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[0][5]~regout\);

-- Location: LCCOMB_X56_Y35_N14
\file[2][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[2][5]~feeder_combout\ = \X~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(5),
	combout => \file[2][5]~feeder_combout\);

-- Location: LCFF_X56_Y35_N15
\file[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[2][5]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[2][5]~regout\);

-- Location: LCCOMB_X57_Y35_N18
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\AADDR~combout\(1) & ((\AADDR~combout\(0)) # ((\file[2][5]~regout\)))) # (!\AADDR~combout\(1) & (!\AADDR~combout\(0) & (\file[0][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AADDR~combout\(1),
	datab => \AADDR~combout\(0),
	datac => \file[0][5]~regout\,
	datad => \file[2][5]~regout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X57_Y35_N12
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\AADDR~combout\(0) & ((\Mux2~0_combout\ & (\file[3][5]~regout\)) # (!\Mux2~0_combout\ & ((\file[1][5]~regout\))))) # (!\AADDR~combout\(0) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AADDR~combout\(0),
	datab => \file[3][5]~regout\,
	datac => \file[1][5]~regout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCFF_X57_Y35_N13
\A[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux2~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A[5]~reg0_regout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(6),
	combout => \X~combout\(6));

-- Location: LCCOMB_X56_Y35_N20
\file[2][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[2][6]~feeder_combout\ = \X~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(6),
	combout => \file[2][6]~feeder_combout\);

-- Location: LCFF_X56_Y35_N21
\file[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[2][6]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[2][6]~regout\);

-- Location: LCCOMB_X58_Y35_N20
\file[1][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[1][6]~feeder_combout\ = \X~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(6),
	combout => \file[1][6]~feeder_combout\);

-- Location: LCFF_X58_Y35_N21
\file[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[1][6]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[1][6]~regout\);

-- Location: LCFF_X57_Y35_N25
\file[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(6),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[0][6]~regout\);

-- Location: LCCOMB_X58_Y35_N30
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\AADDR~combout\(0) & ((\AADDR~combout\(1)) # ((\file[1][6]~regout\)))) # (!\AADDR~combout\(0) & (!\AADDR~combout\(1) & ((\file[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AADDR~combout\(0),
	datab => \AADDR~combout\(1),
	datac => \file[1][6]~regout\,
	datad => \file[0][6]~regout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X57_Y35_N10
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\AADDR~combout\(1) & ((\Mux1~0_combout\ & (\file[3][6]~regout\)) # (!\Mux1~0_combout\ & ((\file[2][6]~regout\))))) # (!\AADDR~combout\(1) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \file[3][6]~regout\,
	datab => \AADDR~combout\(1),
	datac => \file[2][6]~regout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCFF_X57_Y35_N11
\A[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux1~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A[6]~reg0_regout\);

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_X(7),
	combout => \X~combout\(7));

-- Location: LCCOMB_X58_Y35_N10
\file[1][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[1][7]~feeder_combout\ = \X~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(7),
	combout => \file[1][7]~feeder_combout\);

-- Location: LCFF_X58_Y35_N11
\file[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[1][7]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[1][7]~regout\);

-- Location: LCFF_X56_Y35_N3
\file[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(7),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[2][7]~regout\);

-- Location: LCFF_X57_Y35_N31
\file[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(7),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[0][7]~regout\);

-- Location: LCCOMB_X56_Y35_N12
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\AADDR~combout\(1) & ((\file[2][7]~regout\) # ((\AADDR~combout\(0))))) # (!\AADDR~combout\(1) & (((!\AADDR~combout\(0) & \file[0][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AADDR~combout\(1),
	datab => \file[2][7]~regout\,
	datac => \AADDR~combout\(0),
	datad => \file[0][7]~regout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X56_Y35_N18
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\AADDR~combout\(0) & ((\Mux0~0_combout\ & (\file[3][7]~regout\)) # (!\Mux0~0_combout\ & ((\file[1][7]~regout\))))) # (!\AADDR~combout\(0) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \file[3][7]~regout\,
	datab => \AADDR~combout\(0),
	datac => \file[1][7]~regout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCFF_X56_Y35_N19
\A[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux0~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A[7]~reg0_regout\);

-- Location: LCCOMB_X54_Y35_N22
\file[3][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[3][0]~feeder_combout\ = \X~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(0),
	combout => \file[3][0]~feeder_combout\);

-- Location: LCFF_X54_Y35_N23
\file[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[3][0]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[3][0]~regout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BADDR(1),
	combout => \BADDR~combout\(1));

-- Location: LCCOMB_X54_Y35_N14
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\BADDR~combout\(0) & ((\BADDR~combout\(1)) # ((\file[1][0]~regout\)))) # (!\BADDR~combout\(0) & (!\BADDR~combout\(1) & ((\file[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(0),
	datab => \BADDR~combout\(1),
	datac => \file[1][0]~regout\,
	datad => \file[0][0]~regout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X55_Y35_N12
\Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\BADDR~combout\(1) & ((\Mux15~0_combout\ & ((\file[3][0]~regout\))) # (!\Mux15~0_combout\ & (\file[2][0]~regout\)))) # (!\BADDR~combout\(1) & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(1),
	datab => \file[2][0]~regout\,
	datac => \file[3][0]~regout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCFF_X55_Y35_N13
\B[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux15~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[0]~reg0_regout\);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BADDR(0),
	combout => \BADDR~combout\(0));

-- Location: LCCOMB_X54_Y35_N10
\file[3][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[3][1]~feeder_combout\ = \X~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(1),
	combout => \file[3][1]~feeder_combout\);

-- Location: LCFF_X54_Y35_N11
\file[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[3][1]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[3][1]~regout\);

-- Location: LCCOMB_X56_Y35_N6
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\BADDR~combout\(1) & ((\BADDR~combout\(0)) # ((\file[2][1]~regout\)))) # (!\BADDR~combout\(1) & (!\BADDR~combout\(0) & ((\file[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(1),
	datab => \BADDR~combout\(0),
	datac => \file[2][1]~regout\,
	datad => \file[0][1]~regout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X56_Y35_N0
\Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\BADDR~combout\(0) & ((\Mux14~0_combout\ & ((\file[3][1]~regout\))) # (!\Mux14~0_combout\ & (\file[1][1]~regout\)))) # (!\BADDR~combout\(0) & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \file[1][1]~regout\,
	datab => \BADDR~combout\(0),
	datac => \file[3][1]~regout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCFF_X56_Y35_N1
\B[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux14~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[1]~reg0_regout\);

-- Location: LCFF_X56_Y35_N27
\file[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \X~combout\(2),
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[2][2]~regout\);

-- Location: LCCOMB_X54_Y35_N16
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\BADDR~combout\(0) & ((\file[1][2]~regout\) # ((\BADDR~combout\(1))))) # (!\BADDR~combout\(0) & (((!\BADDR~combout\(1) & \file[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(0),
	datab => \file[1][2]~regout\,
	datac => \BADDR~combout\(1),
	datad => \file[0][2]~regout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X55_Y35_N26
\Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\BADDR~combout\(1) & ((\Mux13~0_combout\ & (\file[3][2]~regout\)) # (!\Mux13~0_combout\ & ((\file[2][2]~regout\))))) # (!\BADDR~combout\(1) & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(1),
	datab => \file[3][2]~regout\,
	datac => \file[2][2]~regout\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCFF_X55_Y35_N27
\B[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux13~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[2]~reg0_regout\);

-- Location: LCCOMB_X54_Y35_N18
\file[3][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[3][3]~feeder_combout\ = \X~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(3),
	combout => \file[3][3]~feeder_combout\);

-- Location: LCFF_X54_Y35_N19
\file[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[3][3]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[3][3]~regout\);

-- Location: LCCOMB_X55_Y35_N6
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\BADDR~combout\(0) & (((\BADDR~combout\(1))))) # (!\BADDR~combout\(0) & ((\BADDR~combout\(1) & ((\file[2][3]~regout\))) # (!\BADDR~combout\(1) & (\file[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(0),
	datab => \file[0][3]~regout\,
	datac => \BADDR~combout\(1),
	datad => \file[2][3]~regout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X55_Y35_N16
\Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\BADDR~combout\(0) & ((\Mux12~0_combout\ & (\file[3][3]~regout\)) # (!\Mux12~0_combout\ & ((\file[1][3]~regout\))))) # (!\BADDR~combout\(0) & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(0),
	datab => \file[3][3]~regout\,
	datac => \file[1][3]~regout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCFF_X55_Y35_N17
\B[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux12~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[3]~reg0_regout\);

-- Location: LCCOMB_X54_Y35_N12
\file[1][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[1][4]~feeder_combout\ = \X~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(4),
	combout => \file[1][4]~feeder_combout\);

-- Location: LCFF_X54_Y35_N13
\file[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[1][4]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[1][4]~regout\);

-- Location: LCCOMB_X55_Y35_N28
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\BADDR~combout\(0) & ((\BADDR~combout\(1)) # ((\file[1][4]~regout\)))) # (!\BADDR~combout\(0) & (!\BADDR~combout\(1) & (\file[0][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(0),
	datab => \BADDR~combout\(1),
	datac => \file[0][4]~regout\,
	datad => \file[1][4]~regout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X55_Y35_N22
\Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\BADDR~combout\(1) & ((\Mux11~0_combout\ & (\file[3][4]~regout\)) # (!\Mux11~0_combout\ & ((\file[2][4]~regout\))))) # (!\BADDR~combout\(1) & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(1),
	datab => \file[3][4]~regout\,
	datac => \file[2][4]~regout\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCFF_X55_Y35_N23
\B[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux11~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[4]~reg0_regout\);

-- Location: LCCOMB_X57_Y35_N6
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\BADDR~combout\(1) & ((\BADDR~combout\(0)) # ((\file[2][5]~regout\)))) # (!\BADDR~combout\(1) & (!\BADDR~combout\(0) & (\file[0][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(1),
	datab => \BADDR~combout\(0),
	datac => \file[0][5]~regout\,
	datad => \file[2][5]~regout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X57_Y35_N28
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\BADDR~combout\(0) & ((\Mux10~0_combout\ & (\file[3][5]~regout\)) # (!\Mux10~0_combout\ & ((\file[1][5]~regout\))))) # (!\BADDR~combout\(0) & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(0),
	datab => \file[3][5]~regout\,
	datac => \file[1][5]~regout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCFF_X57_Y35_N29
\B[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux10~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[5]~reg0_regout\);

-- Location: LCCOMB_X57_Y35_N0
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\BADDR~combout\(1) & (\BADDR~combout\(0))) # (!\BADDR~combout\(1) & ((\BADDR~combout\(0) & ((\file[1][6]~regout\))) # (!\BADDR~combout\(0) & (\file[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(1),
	datab => \BADDR~combout\(0),
	datac => \file[0][6]~regout\,
	datad => \file[1][6]~regout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X57_Y35_N2
\Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\BADDR~combout\(1) & ((\Mux9~0_combout\ & (\file[3][6]~regout\)) # (!\Mux9~0_combout\ & ((\file[2][6]~regout\))))) # (!\BADDR~combout\(1) & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \file[3][6]~regout\,
	datab => \BADDR~combout\(1),
	datac => \file[2][6]~regout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCFF_X57_Y35_N3
\B[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux9~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[6]~reg0_regout\);

-- Location: LCCOMB_X58_Y35_N8
\file[3][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \file[3][7]~feeder_combout\ = \X~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \X~combout\(7),
	combout => \file[3][7]~feeder_combout\);

-- Location: LCFF_X58_Y35_N9
\file[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \file[3][7]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \file[3][7]~regout\);

-- Location: LCCOMB_X57_Y35_N26
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\BADDR~combout\(1) & ((\BADDR~combout\(0)) # ((\file[2][7]~regout\)))) # (!\BADDR~combout\(1) & (!\BADDR~combout\(0) & (\file[0][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(1),
	datab => \BADDR~combout\(0),
	datac => \file[0][7]~regout\,
	datad => \file[2][7]~regout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X57_Y35_N16
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\BADDR~combout\(0) & ((\Mux8~0_combout\ & (\file[3][7]~regout\)) # (!\Mux8~0_combout\ & ((\file[1][7]~regout\))))) # (!\BADDR~combout\(0) & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BADDR~combout\(0),
	datab => \file[3][7]~regout\,
	datac => \file[1][7]~regout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCFF_X57_Y35_N17
\B[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux8~1_combout\,
	ena => \B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[7]~reg0_regout\);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(0));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(1));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(2));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(3));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(4));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(5));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(6));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(7));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(0));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(1));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(2));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(3));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(4));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(5));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(6));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(7));
END structure;


