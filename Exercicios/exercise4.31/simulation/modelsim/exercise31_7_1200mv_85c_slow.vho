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

-- DATE "10/18/2017 10:34:32"

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

ENTITY 	exercise31 IS
    PORT (
	clk : IN std_logic;
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	x : BUFFER std_logic;
	y : BUFFER std_logic
	);
END exercise31;

-- Design Ports Information
-- x	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercise31 IS
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
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL \x~output_o\ : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \creg~feeder_combout\ : std_logic;
SIGNAL \creg~q\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \breg~feeder_combout\ : std_logic;
SIGNAL \breg~q\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \areg~feeder_combout\ : std_logic;
SIGNAL \areg~q\ : std_logic;
SIGNAL \n2~combout\ : std_logic;
SIGNAL \x~reg0_q\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \dreg~q\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \y~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
x <= ww_x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\x~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~reg0_q\,
	devoe => ww_devoe,
	o => \x~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~reg0_q\,
	devoe => ww_devoe,
	o => \y~output_o\);

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
\c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LCCOMB_X114_Y17_N8
\creg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \creg~feeder_combout\ = \c~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c~input_o\,
	combout => \creg~feeder_combout\);

-- Location: FF_X114_Y17_N9
creg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \creg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \creg~q\);

-- Location: IOIBUF_X115_Y15_N8
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X114_Y17_N30
\breg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \breg~feeder_combout\ = \b~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b~input_o\,
	combout => \breg~feeder_combout\);

-- Location: FF_X114_Y17_N31
breg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \breg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \breg~q\);

-- Location: IOIBUF_X115_Y14_N1
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X114_Y17_N24
\areg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \areg~feeder_combout\ = \a~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a~input_o\,
	combout => \areg~feeder_combout\);

-- Location: FF_X114_Y17_N25
areg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \areg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \areg~q\);

-- Location: LCCOMB_X114_Y17_N28
n2 : cycloneive_lcell_comb
-- Equation(s):
-- \n2~combout\ = (\creg~q\) # ((\breg~q\ & \areg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \creg~q\,
	datac => \breg~q\,
	datad => \areg~q\,
	combout => \n2~combout\);

-- Location: FF_X114_Y17_N29
\x~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \n2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x~reg0_q\);

-- Location: IOIBUF_X115_Y18_N8
\d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: FF_X114_Y17_N27
dreg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \d~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dreg~q\);

-- Location: LCCOMB_X114_Y17_N22
\y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y~0_combout\ = (!\creg~q\ & (!\dreg~q\ & ((!\areg~q\) # (!\breg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \breg~q\,
	datab => \creg~q\,
	datac => \dreg~q\,
	datad => \areg~q\,
	combout => \y~0_combout\);

-- Location: FF_X114_Y17_N23
\y~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y~reg0_q\);

ww_x <= \x~output_o\;

ww_y <= \y~output_o\;
END structure;


