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

-- DATE "10/09/2017 14:05:23"

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

ENTITY 	exercise24 IS
    PORT (
	SW : IN std_logic_vector(3 DOWNTO 0);
	led : OUT std_logic
	);
END exercise24;

-- Design Ports Information
-- led	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercise24 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \nextstate.S2~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \nextstate.S1~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~0_combout\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X114_Y17_N26
\nextstate.S2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.S2~0_combout\ = (\SW[3]~input_o\ & (\state.S1~q\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \state.S1~q\,
	datad => \SW[2]~input_o\,
	combout => \nextstate.S2~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X114_Y17_N27
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \nextstate.S2~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X114_Y17_N24
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.S0~q\ & (!\state.S1~q\ & ((\SW[3]~input_o\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datab => \SW[3]~input_o\,
	datac => \state.S1~q\,
	datad => \SW[2]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X114_Y17_N25
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X114_Y17_N2
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.S0~q\ & ((\SW[2]~input_o\) # ((!\state.S2~q\ & !\state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datab => \SW[2]~input_o\,
	datac => \state.S0~q\,
	datad => \state.S3~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\Selector0~0_combout\))) # (!\SW[2]~input_o\ & (!\state.S1~q\)))) # (!\SW[3]~input_o\ & (!\state.S1~q\ & ((\SW[2]~input_o\) # (\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \state.S1~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X114_Y17_N31
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X114_Y17_N4
\nextstate.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.S1~0_combout\ = (!\state.S0~q\ & (\SW[2]~input_o\ $ (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \state.S0~q\,
	combout => \nextstate.S1~0_combout\);

-- Location: FF_X114_Y17_N5
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \nextstate.S1~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X114_Y17_N28
\led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\state.S1~q\) # (\state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S1~q\,
	datad => \state.S2~q\,
	combout => \led~0_combout\);

ww_led <= \led~output_o\;
END structure;


