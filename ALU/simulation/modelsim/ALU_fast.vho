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

-- DATE "09/28/2012 08:53:34"

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

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	CNTL : IN std_logic_vector(2 DOWNTO 0);
	Y : OUT std_logic_vector(7 DOWNTO 0);
	zero : OUT std_logic;
	ovr : OUT std_logic;
	neg : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[1]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[3]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[4]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[6]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[7]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- zero	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovr	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CNTL[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CNTL[2]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CNTL[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CNTL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_ovr : std_logic;
SIGNAL ww_neg : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \ovr~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux0~combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \ovr~3_combout\ : std_logic;
SIGNAL \neg~2_combout\ : std_logic;
SIGNAL \CNTL~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_CNTL <= CNTL;
Y <= ww_Y;
zero <= ww_zero;
ovr <= ww_ovr;
neg <= ww_neg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X44_Y33_N16
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A~combout\(2) $ (\B~combout\(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A~combout\(2) & ((\B~combout\(2)) # (!\Add0~3\))) # (!\A~combout\(2) & (\B~combout\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X46_Y35_N6
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\B~combout\(7) & (\A~combout\(7) & (\B~combout\(6) $ (!\A~combout\(6))))) # (!\B~combout\(7) & (!\A~combout\(7) & (\B~combout\(6) $ (!\A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(7),
	datac => \B~combout\(6),
	datad => \A~combout\(6),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X46_Y33_N20
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux7~1_combout\ & (((\CNTL~combout\(1)) # (\A~combout\(1))))) # (!\Mux7~1_combout\ & (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \CNTL~combout\(1),
	datac => \A~combout\(1),
	datad => \Mux7~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X46_Y33_N12
\Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\CNTL~combout\(1)) # (\CNTL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNTL~combout\(1),
	datad => \CNTL~combout\(0),
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X44_Y33_N6
\ovr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovr~2_combout\ = (!\CNTL~combout\(2) & (\CNTL~combout\(0) & !\CNTL~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(2),
	datab => \CNTL~combout\(0),
	datad => \CNTL~combout\(1),
	combout => \ovr~2_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CNTL[1]~I\ : cycloneii_io
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
	padio => ww_CNTL(1),
	combout => \CNTL~combout\(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CNTL[2]~I\ : cycloneii_io
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
	padio => ww_CNTL(2),
	combout => \CNTL~combout\(2));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CNTL[0]~I\ : cycloneii_io
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
	padio => ww_CNTL(0),
	combout => \CNTL~combout\(0));

-- Location: LCCOMB_X46_Y33_N18
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\CNTL~combout\(2)) # ((\CNTL~combout\(1) & \CNTL~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNTL~combout\(1),
	datac => \CNTL~combout\(2),
	datad => \CNTL~combout\(0),
	combout => \Mux7~1_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X44_Y33_N12
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\A~combout\(0) & (\B~combout\(0) $ (VCC))) # (!\A~combout\(0) & (\B~combout\(0) & VCC))
-- \Add0~1\ = CARRY((\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X44_Y33_N8
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~1_combout\ & ((\CNTL~combout\(1)) # ((\A~combout\(0))))) # (!\Mux7~1_combout\ & (((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(1),
	datab => \Mux7~1_combout\,
	datac => \A~combout\(0),
	datad => \Add0~0_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X46_Y33_N24
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\CNTL~combout\(1) & !\CNTL~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNTL~combout\(1),
	datac => \CNTL~combout\(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X47_Y33_N26
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~1_combout\ & ((\Mux7~0_combout\) # ((!\CNTL~combout\(0) & !\Mux7~3_combout\)))) # (!\Mux7~1_combout\ & (\CNTL~combout\(0) & (\Mux7~3_combout\ & !\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(0),
	datab => \Mux7~3_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X46_Y35_N16
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\A~combout\(0) & ((GND) # (!\B~combout\(0)))) # (!\A~combout\(0) & (\B~combout\(0) $ (GND)))
-- \Add1~1\ = CARRY((\A~combout\(0)) # (!\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X46_Y34_N0
\Y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = (\B~combout\(0) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(0),
	datad => \A~combout\(0),
	combout => \Y~0_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X46_Y34_N4
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X46_Y34_N6
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\A~combout\(1) & ((!\LessThan0~1_cout\) # (!\B~combout\(1)))) # (!\A~combout\(1) & (!\B~combout\(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X46_Y34_N8
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\B~combout\(2) & ((!\LessThan0~3_cout\) # (!\A~combout\(2)))) # (!\B~combout\(2) & (!\A~combout\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X46_Y34_N10
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B~combout\(3) & (\A~combout\(3) & !\LessThan0~5_cout\)) # (!\B~combout\(3) & ((\A~combout\(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X46_Y34_N12
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\B~combout\(4) & ((!\LessThan0~7_cout\) # (!\A~combout\(4)))) # (!\B~combout\(4) & (!\A~combout\(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X46_Y34_N14
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\A~combout\(5) & ((!\LessThan0~9_cout\) # (!\B~combout\(5)))) # (!\A~combout\(5) & (!\B~combout\(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X46_Y34_N16
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\B~combout\(6) & ((!\LessThan0~11_cout\) # (!\A~combout\(6)))) # (!\B~combout\(6) & (!\A~combout\(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X46_Y34_N18
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\B~combout\(7) & ((\LessThan0~13_cout\) # (!\A~combout\(7)))) # (!\B~combout\(7) & (\LessThan0~13_cout\ & !\A~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datad => \A~combout\(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X46_Y35_N0
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\A~combout\(0) & (\B~combout\(0) & (\A~combout\(1) $ (!\B~combout\(1))))) # (!\A~combout\(0) & (!\B~combout\(0) & (\A~combout\(1) $ (!\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datac => \A~combout\(1),
	datad => \B~combout\(1),
	combout => \Equal1~0_combout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCCOMB_X46_Y35_N4
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\B~combout\(4) & (\A~combout\(4) & (\B~combout\(5) $ (!\A~combout\(5))))) # (!\B~combout\(4) & (!\A~combout\(4) & (\B~combout\(5) $ (!\A~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \B~combout\(5),
	datac => \A~combout\(5),
	datad => \A~combout\(4),
	combout => \Equal1~2_combout\);

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X46_Y35_N2
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\A~combout\(2) & (\B~combout\(2) & (\B~combout\(3) $ (!\A~combout\(3))))) # (!\A~combout\(2) & (!\B~combout\(2) & (\B~combout\(3) $ (!\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datac => \B~combout\(3),
	datad => \A~combout\(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X46_Y35_N8
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~0_combout\ & (\Equal1~2_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X47_Y33_N0
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~0_combout\ & ((\Mux7~1_combout\) # ((!\LessThan0~14_combout\ & !\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~0_combout\,
	datac => \LessThan0~14_combout\,
	datad => \Equal1~4_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X47_Y34_N0
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\ & (((\Y~0_combout\) # (!\Mux7~2_combout\)))) # (!\Mux7~4_combout\ & (\Add1~0_combout\ & ((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \Add1~0_combout\,
	datac => \Y~0_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X47_Y33_N12
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux7~0_combout\ & (((\Mux7~1_combout\)))) # (!\Mux7~0_combout\ & ((\Mux6~0_combout\ & (!\Mux7~1_combout\ & \CNTL~combout\(0))) # (!\Mux6~0_combout\ & (\Mux7~1_combout\ & !\CNTL~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \CNTL~combout\(0),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X46_Y35_N10
\Y~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = (\A~combout\(1) & \B~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datad => \B~combout\(1),
	combout => \Y~1_combout\);

-- Location: LCCOMB_X46_Y35_N18
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B~combout\(1) & ((\A~combout\(1) & (!\Add1~1\)) # (!\A~combout\(1) & ((\Add1~1\) # (GND))))) # (!\B~combout\(1) & ((\A~combout\(1) & (\Add1~1\ & VCC)) # (!\A~combout\(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B~combout\(1) & ((!\Add1~1\) # (!\A~combout\(1)))) # (!\B~combout\(1) & (!\A~combout\(1) & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X47_Y34_N18
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & ((\Y~1_combout\) # ((!\Mux7~2_combout\)))) # (!\Mux6~1_combout\ & (((\Add1~2_combout\ & \Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Y~1_combout\,
	datac => \Add1~2_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X46_Y34_N2
\Y~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = (\B~combout\(2) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datac => \A~combout\(2),
	combout => \Y~2_combout\);

-- Location: LCCOMB_X46_Y33_N14
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux7~1_combout\ & (((\CNTL~combout\(1)) # (\A~combout\(2))))) # (!\Mux7~1_combout\ & (\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \CNTL~combout\(1),
	datac => \A~combout\(2),
	datad => \Mux7~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X47_Y33_N14
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux7~0_combout\ & (((\Mux7~1_combout\)))) # (!\Mux7~0_combout\ & ((\CNTL~combout\(0) & (!\Mux7~1_combout\ & \Mux5~0_combout\)) # (!\CNTL~combout\(0) & (\Mux7~1_combout\ & !\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(0),
	datab => \Mux7~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X46_Y35_N20
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\A~combout\(2) $ (\B~combout\(2) $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\A~combout\(2) & ((!\Add1~3\) # (!\B~combout\(2)))) # (!\A~combout\(2) & (!\B~combout\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X47_Y34_N28
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & ((\Y~2_combout\) # ((!\Mux7~2_combout\)))) # (!\Mux5~1_combout\ & (((\Add1~4_combout\ & \Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~2_combout\,
	datab => \Mux5~1_combout\,
	datac => \Add1~4_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X46_Y34_N20
\Y~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = (\A~combout\(3) & \B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datad => \B~combout\(3),
	combout => \Y~3_combout\);

-- Location: LCCOMB_X44_Y33_N14
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B~combout\(1) & ((\A~combout\(1) & (\Add0~1\ & VCC)) # (!\A~combout\(1) & (!\Add0~1\)))) # (!\B~combout\(1) & ((\A~combout\(1) & (!\Add0~1\)) # (!\A~combout\(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\B~combout\(1) & (!\A~combout\(1) & !\Add0~1\)) # (!\B~combout\(1) & ((!\Add0~1\) # (!\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X44_Y33_N18
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A~combout\(3) & ((\B~combout\(3) & (\Add0~5\ & VCC)) # (!\B~combout\(3) & (!\Add0~5\)))) # (!\A~combout\(3) & ((\B~combout\(3) & (!\Add0~5\)) # (!\B~combout\(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\A~combout\(3) & (!\B~combout\(3) & !\Add0~5\)) # (!\A~combout\(3) & ((!\Add0~5\) # (!\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X46_Y33_N8
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux7~1_combout\ & ((\A~combout\(3)) # ((\CNTL~combout\(1))))) # (!\Mux7~1_combout\ & (((\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \CNTL~combout\(1),
	datac => \Add0~6_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X47_Y33_N24
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux7~0_combout\ & (((\Mux7~1_combout\)))) # (!\Mux7~0_combout\ & ((\CNTL~combout\(0) & (!\Mux7~1_combout\ & \Mux4~0_combout\)) # (!\CNTL~combout\(0) & (\Mux7~1_combout\ & !\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(0),
	datab => \Mux7~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X46_Y35_N22
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\B~combout\(3) & ((\A~combout\(3) & (!\Add1~5\)) # (!\A~combout\(3) & ((\Add1~5\) # (GND))))) # (!\B~combout\(3) & ((\A~combout\(3) & (\Add1~5\ & VCC)) # (!\A~combout\(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\B~combout\(3) & ((!\Add1~5\) # (!\A~combout\(3)))) # (!\B~combout\(3) & (!\A~combout\(3) & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X47_Y34_N6
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\ & ((\Y~3_combout\) # ((!\Mux7~2_combout\)))) # (!\Mux4~1_combout\ & (((\Add1~6_combout\ & \Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~3_combout\,
	datab => \Mux4~1_combout\,
	datac => \Add1~6_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux4~2_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X44_Y33_N20
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\A~combout\(4) $ (\B~combout\(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\A~combout\(4) & ((\B~combout\(4)) # (!\Add0~7\))) # (!\A~combout\(4) & (\B~combout\(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X46_Y33_N2
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux7~1_combout\ & ((\CNTL~combout\(1)) # ((\A~combout\(4))))) # (!\Mux7~1_combout\ & (((\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(1),
	datab => \Add0~8_combout\,
	datac => \A~combout\(4),
	datad => \Mux7~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X47_Y33_N10
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux7~0_combout\ & (((\Mux7~1_combout\)))) # (!\Mux7~0_combout\ & ((\CNTL~combout\(0) & (!\Mux7~1_combout\ & \Mux3~0_combout\)) # (!\CNTL~combout\(0) & (\Mux7~1_combout\ & !\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(0),
	datab => \Mux7~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X46_Y35_N24
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\B~combout\(4) $ (\A~combout\(4) $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\B~combout\(4) & (\A~combout\(4) & !\Add1~7\)) # (!\B~combout\(4) & ((\A~combout\(4)) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X46_Y34_N30
\Y~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = (\B~combout\(4) & \A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datad => \A~combout\(4),
	combout => \Y~4_combout\);

-- Location: LCCOMB_X47_Y34_N8
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & (((\Y~4_combout\) # (!\Mux7~2_combout\)))) # (!\Mux3~1_combout\ & (\Add1~8_combout\ & ((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Add1~8_combout\,
	datac => \Y~4_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X46_Y34_N24
\Y~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = (\B~combout\(5) & \A~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(5),
	datad => \A~combout\(5),
	combout => \Y~5_combout\);

-- Location: LCCOMB_X46_Y35_N26
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\A~combout\(5) & ((\B~combout\(5) & (!\Add1~9\)) # (!\B~combout\(5) & (\Add1~9\ & VCC)))) # (!\A~combout\(5) & ((\B~combout\(5) & ((\Add1~9\) # (GND))) # (!\B~combout\(5) & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\A~combout\(5) & (\B~combout\(5) & !\Add1~9\)) # (!\A~combout\(5) & ((\B~combout\(5)) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X44_Y33_N22
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A~combout\(5) & ((\B~combout\(5) & (\Add0~9\ & VCC)) # (!\B~combout\(5) & (!\Add0~9\)))) # (!\A~combout\(5) & ((\B~combout\(5) & (!\Add0~9\)) # (!\B~combout\(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\A~combout\(5) & (!\B~combout\(5) & !\Add0~9\)) # (!\A~combout\(5) & ((!\Add0~9\) # (!\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X44_Y33_N10
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux7~1_combout\ & ((\CNTL~combout\(1)) # ((\A~combout\(5))))) # (!\Mux7~1_combout\ & (((\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(1),
	datab => \Add0~10_combout\,
	datac => \A~combout\(5),
	datad => \Mux7~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X47_Y33_N20
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux7~0_combout\ & (((\Mux7~1_combout\)))) # (!\Mux7~0_combout\ & ((\CNTL~combout\(0) & (!\Mux7~1_combout\ & \Mux2~0_combout\)) # (!\CNTL~combout\(0) & (\Mux7~1_combout\ & !\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(0),
	datab => \Mux7~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X47_Y34_N2
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\ & ((\Y~5_combout\) # ((!\Mux7~2_combout\)))) # (!\Mux2~1_combout\ & (((\Add1~10_combout\ & \Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~5_combout\,
	datab => \Add1~10_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X44_Y33_N24
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\B~combout\(6) $ (\A~combout\(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\B~combout\(6) & ((\A~combout\(6)) # (!\Add0~11\))) # (!\B~combout\(6) & (\A~combout\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X44_Y33_N4
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux7~1_combout\ & ((\CNTL~combout\(1)) # ((\A~combout\(6))))) # (!\Mux7~1_combout\ & (((\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(1),
	datab => \Mux7~1_combout\,
	datac => \Add0~12_combout\,
	datad => \A~combout\(6),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X47_Y33_N8
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux7~0_combout\ & (((\Mux7~1_combout\)))) # (!\Mux7~0_combout\ & ((\CNTL~combout\(0) & (!\Mux7~1_combout\ & \Mux1~0_combout\)) # (!\CNTL~combout\(0) & (\Mux7~1_combout\ & !\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(0),
	datab => \Mux7~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCCOMB_X47_Y33_N30
\Y~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = (\B~combout\(6) & \A~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(6),
	datad => \A~combout\(6),
	combout => \Y~6_combout\);

-- Location: LCCOMB_X46_Y35_N28
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\A~combout\(6) $ (\B~combout\(6) $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\A~combout\(6) & ((!\Add1~11\) # (!\B~combout\(6)))) # (!\A~combout\(6) & (!\B~combout\(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X47_Y33_N18
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & ((\Y~6_combout\) # ((!\Mux7~2_combout\)))) # (!\Mux1~1_combout\ & (((\Add1~12_combout\ & \Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Y~6_combout\,
	datac => \Add1~12_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X46_Y34_N26
\Y~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = (\B~combout\(7) & \A~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datad => \A~combout\(7),
	combout => \Y~7_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCCOMB_X44_Y33_N26
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\A~combout\(7) & ((\B~combout\(7) & (\Add0~13\ & VCC)) # (!\B~combout\(7) & (!\Add0~13\)))) # (!\A~combout\(7) & ((\B~combout\(7) & (!\Add0~13\)) # (!\B~combout\(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\A~combout\(7) & (!\B~combout\(7) & !\Add0~13\)) # (!\A~combout\(7) & ((!\Add0~13\) # (!\B~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X47_Y33_N28
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\CNTL~combout\(1) & (!\CNTL~combout\(2))) # (!\CNTL~combout\(1) & (((!\A~combout\(7) & !\CNTL~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(2),
	datab => \A~combout\(7),
	datac => \CNTL~combout\(1),
	datad => \CNTL~combout\(0),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X47_Y33_N4
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux7~1_combout\ & (((\Mux0~3_combout\)))) # (!\Mux7~1_combout\ & (\CNTL~combout\(0) & (\Add0~14_combout\ & !\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(0),
	datab => \Add0~14_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X46_Y35_N30
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \B~combout\(7) $ (\A~combout\(7) $ (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X47_Y33_N6
Mux0 : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~combout\ = (\Mux0~2_combout\ & ((\Y~7_combout\) # ((!\Mux7~2_combout\)))) # (!\Mux0~2_combout\ & (((\Add1~14_combout\ & \Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~7_combout\,
	datab => \Mux0~2_combout\,
	datac => \Add1~14_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux0~combout\);

-- Location: LCCOMB_X46_Y35_N14
\Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\A~combout\(6) & (\A~combout\(4) & (\A~combout\(5) & \A~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \A~combout\(4),
	datac => \A~combout\(5),
	datad => \A~combout\(7),
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X46_Y35_N12
\Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\A~combout\(1) & (\A~combout\(2) & (\A~combout\(0) & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \A~combout\(0),
	datad => \A~combout\(3),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X46_Y33_N6
\Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (!\Mux7~6_combout\ & (((\Mux8~5_combout\ & \Mux8~4_combout\)) # (!\CNTL~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \CNTL~combout\(2),
	datac => \Mux8~5_combout\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X44_Y33_N0
\Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (!\Add0~4_combout\ & (!\Add0~2_combout\ & (!\Add0~8_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X44_Y33_N2
\Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (!\Add0~16_combout\ & (!\Add0~10_combout\ & (!\Add0~12_combout\ & !\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X44_Y33_N30
\Mux8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\ovr~2_combout\ & (\Mux8~7_combout\ & (!\Add0~0_combout\ & \Mux8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ovr~2_combout\,
	datab => \Mux8~7_combout\,
	datac => \Add0~0_combout\,
	datad => \Mux8~8_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X47_Y33_N16
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\CNTL~combout\(0) & (\Mux7~0_combout\ & (!\LessThan0~14_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(0),
	datab => \Mux7~0_combout\,
	datac => \LessThan0~14_combout\,
	datad => \Equal1~4_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X46_Y34_N22
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux7~0_combout\ & (\CNTL~combout\(0) & (!\Y~5_combout\ & !\Y~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \CNTL~combout\(0),
	datac => \Y~5_combout\,
	datad => \Y~4_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X46_Y34_N28
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\Y~1_combout\ & (!\Y~0_combout\ & (!\Y~3_combout\ & !\Y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~1_combout\,
	datab => \Y~0_combout\,
	datac => \Y~3_combout\,
	datad => \Y~2_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X47_Y33_N2
\Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (!\Y~7_combout\ & (!\Y~6_combout\ & (\Mux8~2_combout\ & \Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~7_combout\,
	datab => \Y~6_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X46_Y33_N16
\Mux8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~10_combout\ = (\Mux8~6_combout\) # ((\Mux8~9_combout\) # ((\Mux8~0_combout\) # (\Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux8~9_combout\,
	datac => \Mux8~0_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~10_combout\);

-- Location: LCCOMB_X44_Y33_N28
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X46_Y33_N26
\ovr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovr~3_combout\ = (\Add0~16_combout\ & (!\CNTL~combout\(1) & (!\CNTL~combout\(2) & \CNTL~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \CNTL~combout\(1),
	datac => \CNTL~combout\(2),
	datad => \CNTL~combout\(0),
	combout => \ovr~3_combout\);

-- Location: LCCOMB_X47_Y33_N22
\neg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \neg~2_combout\ = (!\CNTL~combout\(2) & (\CNTL~combout\(1) & (\LessThan0~14_combout\ & !\CNTL~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTL~combout\(2),
	datab => \CNTL~combout\(1),
	datac => \LessThan0~14_combout\,
	datad => \CNTL~combout\(0),
	combout => \neg~2_combout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[0]~I\ : cycloneii_io
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
	datain => \Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(0));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[1]~I\ : cycloneii_io
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
	datain => \Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(1));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[2]~I\ : cycloneii_io
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
	datain => \Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(2));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[3]~I\ : cycloneii_io
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
	datain => \Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(3));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[4]~I\ : cycloneii_io
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
	datain => \Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(4));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[5]~I\ : cycloneii_io
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
	datain => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(5));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[6]~I\ : cycloneii_io
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
	datain => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(6));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[7]~I\ : cycloneii_io
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
	datain => \Mux0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(7));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\zero~I\ : cycloneii_io
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
	datain => \Mux8~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_zero);

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovr~I\ : cycloneii_io
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
	datain => \ovr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovr);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg~I\ : cycloneii_io
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
	datain => \neg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_neg);
END structure;


