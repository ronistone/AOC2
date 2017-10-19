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

-- DATE "10/18/2017 22:48:13"

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

ENTITY 	exercise34 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	ta : IN std_logic;
	tb : IN std_logic;
	q : BUFFER std_logic_vector(1 DOWNTO 0);
	d : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END exercise34;

-- Design Ports Information
-- q[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ta	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tb	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercise34 IS
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
SIGNAL ww_ta : std_logic;
SIGNAL ww_tb : std_logic;
SIGNAL ww_q : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(1 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \d[0]~output_o\ : std_logic;
SIGNAL \d[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \ta~input_o\ : std_logic;
SIGNAL \tb~input_o\ : std_logic;
SIGNAL \state.S1~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.S1~_Duplicate_1_q\ : std_logic;
SIGNAL \state.S2~feeder_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \nextstate.S4~0_combout\ : std_logic;
SIGNAL \state.S4~_Duplicate_1_q\ : std_logic;
SIGNAL \state.S5~feeder_combout\ : std_logic;
SIGNAL \state.S5~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \nextstate.S1~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \lalb~0_combout\ : std_logic;
SIGNAL \state.S4~q\ : std_logic;
SIGNAL \lalb~1_combout\ : std_logic;
SIGNAL \ALT_INV_lalb~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_lalb~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_ta <= ta;
ww_tb <= tb;
q <= ww_q;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_lalb~0_combout\ <= NOT \lalb~0_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_lalb~1_combout\ <= NOT \lalb~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S1~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_lalb~0_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S4~q\,
	devoe => ww_devoe,
	o => \d[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_lalb~1_combout\,
	devoe => ww_devoe,
	o => \d[1]~output_o\);

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

-- Location: IOIBUF_X115_Y15_N8
\ta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ta,
	o => \ta~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\tb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tb,
	o => \tb~input_o\);

-- Location: LCCOMB_X70_Y72_N16
\state.S1~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.S1~_Duplicate_1feeder_combout\ = \nextstate.S1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nextstate.S1~0_combout\,
	combout => \state.S1~_Duplicate_1feeder_combout\);

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

-- Location: FF_X70_Y72_N17
\state.S1~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.S1~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~_Duplicate_1_q\);

-- Location: LCCOMB_X95_Y72_N18
\state.S2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.S2~feeder_combout\ = \state.S1~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.S1~_Duplicate_1_q\,
	combout => \state.S2~feeder_combout\);

-- Location: FF_X95_Y72_N19
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.S2~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X95_Y72_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.S2~q\) # ((\state.S3~q\ & \tb~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \state.S3~q\,
	datad => \tb~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X95_Y72_N29
\state.S3\ : dffeas
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
	q => \state.S3~q\);

-- Location: LCCOMB_X95_Y72_N2
\nextstate.S4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.S4~0_combout\ = (!\tb~input_o\ & \state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tb~input_o\,
	datad => \state.S3~q\,
	combout => \nextstate.S4~0_combout\);

-- Location: FF_X95_Y72_N3
\state.S4~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \nextstate.S4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~_Duplicate_1_q\);

-- Location: LCCOMB_X95_Y72_N24
\state.S5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.S5~feeder_combout\ = \state.S4~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.S4~_Duplicate_1_q\,
	combout => \state.S5~feeder_combout\);

-- Location: FF_X95_Y72_N25
\state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.S5~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S5~q\);

-- Location: LCCOMB_X70_Y72_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state.S5~q\ & ((\state.S0~q\) # (!\ta~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ta~input_o\,
	datac => \state.S0~q\,
	datad => \state.S5~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X70_Y72_N19
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X70_Y72_N0
\nextstate.S1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextstate.S1~0_combout\ = (!\ta~input_o\ & !\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ta~input_o\,
	datad => \state.S0~q\,
	combout => \nextstate.S1~0_combout\);

-- Location: DDIOOUTCELL_X69_Y73_N18
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \nextstate.S1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X95_Y72_N0
\lalb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lalb~0_combout\ = (\state.S1~_Duplicate_1_q\) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~_Duplicate_1_q\,
	datad => \state.S0~q\,
	combout => \lalb~0_combout\);

-- Location: DDIOOUTCELL_X94_Y73_N4
\state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \nextstate.S4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~q\);

-- Location: LCCOMB_X95_Y72_N6
\lalb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lalb~1_combout\ = (\state.S3~q\) # (\state.S4~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S3~q\,
	datad => \state.S4~_Duplicate_1_q\,
	combout => \lalb~1_combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_d(0) <= \d[0]~output_o\;

ww_d(1) <= \d[1]~output_o\;
END structure;


