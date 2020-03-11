-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "03/10/2020 21:57:24"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adam_dire_comparator IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	AgtBplusOne : OUT std_logic;
	AgteBplusOne : OUT std_logic;
	AltBplusOne : OUT std_logic;
	AlteBplusOne : OUT std_logic;
	AeqBplusOne : OUT std_logic;
	overflow : OUT std_logic
	);
END adam_dire_comparator;

-- Design Ports Information
-- AgtBplusOne	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AgteBplusOne	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBplusOne	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AlteBplusOne	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AeqBplusOne	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adam_dire_comparator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AgtBplusOne : std_logic;
SIGNAL ww_AgteBplusOne : std_logic;
SIGNAL ww_AltBplusOne : std_logic;
SIGNAL ww_AlteBplusOne : std_logic;
SIGNAL ww_AeqBplusOne : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \AgtBplusOne~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \AgtBplusOne~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \AgtBplusOne~2_combout\ : std_logic;
SIGNAL \AgteBplusOne~0_combout\ : std_logic;
SIGNAL \AltBplusOne~0_combout\ : std_logic;
SIGNAL \AlteBplusOne~0_combout\ : std_logic;
SIGNAL \AeqBplusOne~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_AgtBplusOne~1_combout\ : std_logic;
SIGNAL \ALT_INV_AgtBplusOne~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
AgtBplusOne <= ww_AgtBplusOne;
AgteBplusOne <= ww_AgteBplusOne;
AltBplusOne <= ww_AltBplusOne;
AlteBplusOne <= ww_AlteBplusOne;
AeqBplusOne <= ww_AeqBplusOne;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_AgtBplusOne~1_combout\ <= NOT \AgtBplusOne~1_combout\;
\ALT_INV_AgtBplusOne~0_combout\ <= NOT \AgtBplusOne~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;

-- Location: IOOBUF_X89_Y8_N5
\AgtBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AgtBplusOne~2_combout\,
	devoe => ww_devoe,
	o => ww_AgtBplusOne);

-- Location: IOOBUF_X89_Y6_N5
\AgteBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AgteBplusOne~0_combout\,
	devoe => ww_devoe,
	o => ww_AgteBplusOne);

-- Location: IOOBUF_X80_Y0_N2
\AltBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AltBplusOne~0_combout\,
	devoe => ww_devoe,
	o => ww_AltBplusOne);

-- Location: IOOBUF_X60_Y0_N2
\AlteBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AlteBplusOne~0_combout\,
	devoe => ww_devoe,
	o => ww_AlteBplusOne);

-- Location: IOOBUF_X80_Y0_N19
\AeqBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AeqBplusOne~0_combout\,
	devoe => ww_devoe,
	o => ww_AeqBplusOne);

-- Location: IOOBUF_X52_Y0_N2
\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_overflow);

-- Location: IOIBUF_X4_Y0_N1
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X27_Y2_N51
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\))) # (\B[0]~input_o\ & ((\B[1]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000110111011010101011011101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X27_Y2_N33
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LABCELL_X27_Y2_N36
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \A[2]~input_o\ & ( \Add0~0_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\ & \LessThan1~0_combout\)) # (\A[3]~input_o\))) # (\B[3]~input_o\ & (((\LessThan1~0_combout\ & \A[3]~input_o\)) # (\B[2]~input_o\))) ) ) ) # ( 
-- !\A[2]~input_o\ & ( \Add0~0_combout\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & ((!\B[2]~input_o\) # (\LessThan1~0_combout\)))) # (\B[3]~input_o\ & (\B[2]~input_o\ & ((\A[3]~input_o\) # (\LessThan1~0_combout\)))) ) ) ) # ( \A[2]~input_o\ & ( 
-- !\Add0~0_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\A[3]~input_o\) # (\LessThan1~0_combout\)))) # (\B[3]~input_o\ & (\A[3]~input_o\ & ((!\B[2]~input_o\) # (\LessThan1~0_combout\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\Add0~0_combout\ & ( 
-- (!\B[3]~input_o\ & (((!\B[2]~input_o\ & \LessThan1~0_combout\)) # (\A[3]~input_o\))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\LessThan1~0_combout\ & \A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101110100010101110111100000001100110110001100110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_LessThan1~0_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X27_Y2_N54
\AgtBplusOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AgtBplusOne~0_combout\ = ( \B[1]~input_o\ & ( \B[3]~input_o\ & ( (!\A[3]~input_o\) # ((!\A[2]~input_o\ & ((\B[0]~input_o\) # (\B[2]~input_o\))) # (\A[2]~input_o\ & (\B[2]~input_o\ & \B[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \B[3]~input_o\ & ( 
-- (!\A[3]~input_o\) # ((!\A[2]~input_o\ & \B[2]~input_o\)) ) ) ) # ( \B[1]~input_o\ & ( !\B[3]~input_o\ & ( (!\A[3]~input_o\ & ((!\A[2]~input_o\ & ((\B[0]~input_o\) # (\B[2]~input_o\))) # (\A[2]~input_o\ & (\B[2]~input_o\ & \B[0]~input_o\)))) ) ) ) # ( 
-- !\B[1]~input_o\ & ( !\B[3]~input_o\ & ( (!\A[2]~input_o\ & (\B[2]~input_o\ & !\A[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001010110000000011111111001000101111111100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \AgtBplusOne~0_combout\);

-- Location: LABCELL_X27_Y2_N0
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \B[1]~input_o\ & ( \B[3]~input_o\ & ( (!\A[2]~input_o\ & ((!\B[2]~input_o\ & (!\B[0]~input_o\ & \A[3]~input_o\)) # (\B[2]~input_o\ & (\B[0]~input_o\ & !\A[3]~input_o\)))) # (\A[2]~input_o\ & (\A[3]~input_o\ & (!\B[2]~input_o\ $ 
-- (!\B[0]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( \B[3]~input_o\ & ( (\A[3]~input_o\ & (!\A[2]~input_o\ $ (\B[2]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( !\B[3]~input_o\ & ( (!\A[2]~input_o\ & ((!\B[2]~input_o\ & (!\B[0]~input_o\ & !\A[3]~input_o\)) # 
-- (\B[2]~input_o\ & (\B[0]~input_o\ & \A[3]~input_o\)))) # (\A[2]~input_o\ & (!\A[3]~input_o\ & (!\B[2]~input_o\ $ (!\B[0]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\B[3]~input_o\ & ( (!\A[3]~input_o\ & (!\A[2]~input_o\ $ (\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100101000000001000000000100110010000001010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X27_Y2_N48
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (!\A[0]~input_o\ & \B[1]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\A[0]~input_o\) # (\B[1]~input_o\))) # (\B[0]~input_o\ & ((!\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101011011010110110101101101000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X27_Y2_N30
\AgtBplusOne~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AgtBplusOne~1_combout\ = ( \LessThan0~0_combout\ & ( (!\AgtBplusOne~0_combout\ & !\Equal1~0_combout\) ) ) # ( !\LessThan0~0_combout\ & ( !\AgtBplusOne~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AgtBplusOne~0_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \AgtBplusOne~1_combout\);

-- Location: LABCELL_X27_Y2_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \B[0]~input_o\ & ( (\B[1]~input_o\ & (\B[2]~input_o\ & \B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X27_Y2_N15
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) ) # ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & (!\A[1]~input_o\ $ (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101010100001010000000001010000001010101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X27_Y2_N42
\AgtBplusOne~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AgtBplusOne~2_combout\ = ( \Equal1~1_combout\ & ( (\LessThan1~1_combout\ & (\AgtBplusOne~1_combout\ & (!\Equal1~0_combout\ & !\Equal0~0_combout\))) ) ) # ( !\Equal1~1_combout\ & ( (\LessThan1~1_combout\ & (\AgtBplusOne~1_combout\ & !\Equal0~0_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_AgtBplusOne~1_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \AgtBplusOne~2_combout\);

-- Location: LABCELL_X27_Y2_N45
\AgteBplusOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AgteBplusOne~0_combout\ = ( !\Equal0~0_combout\ & ( (!\LessThan1~1_combout\ & (((\Equal1~1_combout\ & \Equal1~0_combout\)))) # (\LessThan1~1_combout\ & (((\Equal1~1_combout\ & \Equal1~0_combout\)) # (\AgtBplusOne~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_AgtBplusOne~1_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \AgteBplusOne~0_combout\);

-- Location: LABCELL_X27_Y2_N18
\AltBplusOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AltBplusOne~0_combout\ = ( !\Equal0~0_combout\ & ( (!\Equal1~0_combout\ & (((\AgtBplusOne~0_combout\)))) # (\Equal1~0_combout\ & (!\Equal1~1_combout\ & ((\LessThan0~0_combout\) # (\AgtBplusOne~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111001001110000011100100111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_AgtBplusOne~0_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \AltBplusOne~0_combout\);

-- Location: LABCELL_X27_Y2_N21
\AlteBplusOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AlteBplusOne~0_combout\ = ( !\Equal0~0_combout\ & ( ((\Equal1~0_combout\ & ((\LessThan0~0_combout\) # (\Equal1~1_combout\)))) # (\AgtBplusOne~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_AgtBplusOne~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \AlteBplusOne~0_combout\);

-- Location: LABCELL_X27_Y2_N24
\AeqBplusOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AeqBplusOne~0_combout\ = ( \Equal1~0_combout\ & ( !\Equal0~0_combout\ & ( \Equal1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \AeqBplusOne~0_combout\);

-- Location: LABCELL_X33_Y30_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


