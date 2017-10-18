-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/18/2017 20:18:07"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exercise36 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	n : IN std_logic;
	d : IN std_logic;
	q : IN std_logic;
	dispense : OUT std_logic;
	return5 : OUT std_logic;
	return10 : OUT std_logic;
	return2_10 : OUT std_logic
	);
END exercise36;

-- Design Ports Information
-- dispense	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return5	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return10	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return2_10	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercise36 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_dispense : std_logic;
SIGNAL ww_return5 : std_logic;
SIGNAL ww_return10 : std_logic;
SIGNAL ww_return2_10 : std_logic;
SIGNAL \dispense~output_o\ : std_logic;
SIGNAL \return5~output_o\ : std_logic;
SIGNAL \return10~output_o\ : std_logic;
SIGNAL \return2_10~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \n~input_o\ : std_logic;
SIGNAL \q~input_o\ : std_logic;
SIGNAL \nextstate~0_combout\ : std_logic;
SIGNAL \nextstate.S40~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.S40~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \state.S30~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state.S25~q\ : std_logic;
SIGNAL \nextstate.S35~0_combout\ : std_logic;
SIGNAL \state.S35~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.S5~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.S10~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \state.S15~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \state.S20~q\ : std_logic;
SIGNAL \nextstate.S45~0_combout\ : std_logic;
SIGNAL \state.S45~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \state.S45~_Duplicate_1_q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \return5~0_combout\ : std_logic;
SIGNAL \return10~0_combout\ : std_logic;
SIGNAL \state.S45~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_return10~0_combout\ : std_logic;
SIGNAL \ALT_INV_return5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_n <= n;
ww_d <= d;
ww_q <= q;
dispense <= ww_dispense;
return5 <= ww_return5;
return10 <= ww_return10;
return2_10 <= ww_return2_10;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_return10~0_combout\ <= NOT \return10~0_combout\;
\ALT_INV_return5~0_combout\ <= NOT \return5~0_combout\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\dispense~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector0~1_combout\,
	devoe => ww_devoe,
	o => \dispense~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\return5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_return5~0_combout\,
	devoe => ww_devoe,
	o => \return5~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\return10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_return10~0_combout\,
	devoe => ww_devoe,
	o => \return10~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\return2_10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S45~q\,
	devoe => ww_devoe,
	o => \return2_10~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n,
	o => \n~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\q~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q,
	o => \q~input_o\);

-- Location: LCCOMB_X108_Y37_N6
\nextstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate~0_combout\ = (\d~input_o\) # ((\q~input_o\) # (\n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datac => \q~input_o\,
	datad => \n~input_o\,
	combout => \nextstate~0_combout\);

-- Location: LCCOMB_X114_Y37_N30
\nextstate.S40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.S40~0_combout\ = (\q~input_o\ & (!\d~input_o\ & (!\n~input_o\ & \state.S15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \d~input_o\,
	datac => \n~input_o\,
	datad => \state.S15~q\,
	combout => \nextstate.S40~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X114_Y37_N31
\state.S40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \nextstate.S40~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S40~q\);

-- Location: LCCOMB_X114_Y37_N22
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\n~input_o\ & (!\d~input_o\ & (\q~input_o\ & \state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \d~input_o\,
	datac => \q~input_o\,
	datad => \state.S5~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X114_Y37_N24
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\d~input_o\ & (!\n~input_o\ & \state.S20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \d~input_o\,
	datac => \n~input_o\,
	datad => \state.S20~q\,
	combout => \Selector4~1_combout\);

-- Location: FF_X114_Y37_N25
\state.S30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S30~q\);

-- Location: LCCOMB_X114_Y37_N28
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\d~input_o\ & (((\state.S15~q\)))) # (!\d~input_o\ & (\q~input_o\ & ((!\state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \d~input_o\,
	datac => \state.S15~q\,
	datad => \state.S0~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X114_Y37_N8
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\n~input_o\ & (\state.S20~q\)) # (!\n~input_o\ & ((\Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datac => \state.S20~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X114_Y37_N9
\state.S25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S25~q\);

-- Location: LCCOMB_X114_Y37_N6
\nextstate.S35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.S35~0_combout\ = (\q~input_o\ & (!\d~input_o\ & (!\n~input_o\ & \state.S10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~input_o\,
	datab => \d~input_o\,
	datac => \n~input_o\,
	datad => \state.S10~q\,
	combout => \nextstate.S35~0_combout\);

-- Location: FF_X114_Y37_N7
\state.S35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \nextstate.S35~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S35~q\);

-- Location: LCCOMB_X114_Y37_N12
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state.S40~q\ & (!\state.S30~q\ & (!\state.S25~q\ & !\state.S35~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S40~q\,
	datab => \state.S30~q\,
	datac => \state.S25~q\,
	datad => \state.S35~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X114_Y37_N14
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\state.S45~_Duplicate_1_q\ & (\Selector0~0_combout\ & ((\nextstate~0_combout\) # (\state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S45~_Duplicate_1_q\,
	datab => \nextstate~0_combout\,
	datac => \state.S0~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X114_Y37_N15
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X114_Y37_N0
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\n~input_o\ & (((\state.S5~q\ & !\nextstate~0_combout\)) # (!\state.S0~q\))) # (!\n~input_o\ & (((\state.S5~q\ & !\nextstate~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \state.S0~q\,
	datac => \state.S5~q\,
	datad => \nextstate~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X114_Y37_N1
\state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S5~q\);

-- Location: LCCOMB_X114_Y37_N20
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\n~input_o\ & (\state.S5~q\)) # (!\n~input_o\ & (((!\state.S0~q\ & \d~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \state.S5~q\,
	datac => \state.S0~q\,
	datad => \d~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X114_Y37_N18
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((!\nextstate~0_combout\ & \state.S10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nextstate~0_combout\,
	datac => \state.S10~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X114_Y37_N19
\state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S10~q\);

-- Location: LCCOMB_X114_Y37_N2
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\n~input_o\ & (((\state.S10~q\)))) # (!\n~input_o\ & (\d~input_o\ & ((\state.S5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \d~input_o\,
	datac => \state.S10~q\,
	datad => \state.S5~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X114_Y37_N4
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((!\nextstate~0_combout\ & \state.S15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nextstate~0_combout\,
	datac => \state.S15~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X114_Y37_N5
\state.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S15~q\);

-- Location: LCCOMB_X114_Y37_N16
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\n~input_o\ & (((\state.S15~q\)))) # (!\n~input_o\ & (\d~input_o\ & ((\state.S10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \d~input_o\,
	datac => \state.S15~q\,
	datad => \state.S10~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X108_Y37_N18
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((!\nextstate~0_combout\ & \state.S20~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate~0_combout\,
	datac => \state.S20~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X108_Y37_N19
\state.S20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S20~q\);

-- Location: LCCOMB_X108_Y37_N28
\nextstate.S45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.S45~0_combout\ = (!\d~input_o\ & (!\n~input_o\ & (\q~input_o\ & \state.S20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \n~input_o\,
	datac => \q~input_o\,
	datad => \state.S20~q\,
	combout => \nextstate.S45~0_combout\);

-- Location: LCCOMB_X108_Y37_N24
\state.S45~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.S45~_Duplicate_1feeder_combout\ = \nextstate.S45~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nextstate.S45~0_combout\,
	combout => \state.S45~_Duplicate_1feeder_combout\);

-- Location: FF_X108_Y37_N25
\state.S45~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.S45~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S45~_Duplicate_1_q\);

-- Location: LCCOMB_X114_Y37_N26
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\state.S45~_Duplicate_1_q\ & \Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S45~_Duplicate_1_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X114_Y41_N4
\return5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \return5~0_combout\ = (!\state.S40~q\ & !\state.S30~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S40~q\,
	datad => \state.S30~q\,
	combout => \return5~0_combout\);

-- Location: LCCOMB_X114_Y41_N6
\return10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \return10~0_combout\ = (!\state.S40~q\ & !\state.S35~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S40~q\,
	datad => \state.S35~q\,
	combout => \return10~0_combout\);

-- Location: DDIOOUTCELL_X107_Y73_N18
\state.S45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \nextstate.S45~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S45~q\);

ww_dispense <= \dispense~output_o\;

ww_return5 <= \return5~output_o\;

ww_return10 <= \return10~output_o\;

ww_return2_10 <= \return2_10~output_o\;
END structure;


