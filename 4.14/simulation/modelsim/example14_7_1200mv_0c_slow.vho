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

-- DATE "10/05/2017 11:55:44"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	example14 IS
    PORT (
	sw : IN std_logic_vector(17 DOWNTO 0);
	ledr : OUT std_logic_vector(3 DOWNTO 0)
	);
END example14;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF example14 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(3 DOWNTO 0);
SIGNAL \ledr[0]~output_o\ : std_logic;
SIGNAL \ledr[1]~output_o\ : std_logic;
SIGNAL \ledr[2]~output_o\ : std_logic;
SIGNAL \ledr[3]~output_o\ : std_logic;
SIGNAL \sw[17]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[12]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[16]~input_o\ : std_logic;
SIGNAL \finalmux|ledr[0]~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \finalmux|ledr[0]~1_combout\ : std_logic;
SIGNAL \sw[13]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \finalmux|ledr[1]~2_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \finalmux|ledr[1]~3_combout\ : std_logic;
SIGNAL \sw[14]~input_o\ : std_logic;
SIGNAL \sw[10]~input_o\ : std_logic;
SIGNAL \finalmux|ledr[2]~4_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \finalmux|ledr[2]~5_combout\ : std_logic;
SIGNAL \sw[15]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \finalmux|ledr[3]~6_combout\ : std_logic;
SIGNAL \sw[11]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \finalmux|ledr[3]~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sw <= sw;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\ledr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalmux|ledr[0]~1_combout\,
	devoe => ww_devoe,
	o => \ledr[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\ledr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalmux|ledr[1]~3_combout\,
	devoe => ww_devoe,
	o => \ledr[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\ledr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalmux|ledr[2]~5_combout\,
	devoe => ww_devoe,
	o => \ledr[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\ledr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finalmux|ledr[3]~7_combout\,
	devoe => ww_devoe,
	o => \ledr[3]~output_o\);

-- Location: IOIBUF_X115_Y14_N8
\sw[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(17),
	o => \sw[17]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\sw[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(12),
	o => \sw[12]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\sw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\sw[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(16),
	o => \sw[16]~input_o\);

-- Location: LCCOMB_X114_Y14_N24
\finalmux|ledr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalmux|ledr[0]~0_combout\ = (\sw[17]~input_o\ & (((\sw[16]~input_o\)))) # (!\sw[17]~input_o\ & ((\sw[16]~input_o\ & ((\sw[8]~input_o\))) # (!\sw[16]~input_o\ & (\sw[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[17]~input_o\,
	datab => \sw[12]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[16]~input_o\,
	combout => \finalmux|ledr[0]~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\sw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X114_Y14_N26
\finalmux|ledr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalmux|ledr[0]~1_combout\ = (\sw[17]~input_o\ & ((\finalmux|ledr[0]~0_combout\ & (\sw[0]~input_o\)) # (!\finalmux|ledr[0]~0_combout\ & ((\sw[4]~input_o\))))) # (!\sw[17]~input_o\ & (((\finalmux|ledr[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[17]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \finalmux|ledr[0]~0_combout\,
	datad => \sw[4]~input_o\,
	combout => \finalmux|ledr[0]~1_combout\);

-- Location: IOIBUF_X115_Y9_N22
\sw[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(13),
	o => \sw[13]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\sw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X114_Y14_N12
\finalmux|ledr[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalmux|ledr[1]~2_combout\ = (\sw[16]~input_o\ & (((\sw[17]~input_o\)))) # (!\sw[16]~input_o\ & ((\sw[17]~input_o\ & ((\sw[5]~input_o\))) # (!\sw[17]~input_o\ & (\sw[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[13]~input_o\,
	datab => \sw[16]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \sw[17]~input_o\,
	combout => \finalmux|ledr[1]~2_combout\);

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\sw[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: LCCOMB_X114_Y14_N14
\finalmux|ledr[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalmux|ledr[1]~3_combout\ = (\finalmux|ledr[1]~2_combout\ & (((\sw[1]~input_o\)) # (!\sw[16]~input_o\))) # (!\finalmux|ledr[1]~2_combout\ & (\sw[16]~input_o\ & ((\sw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \finalmux|ledr[1]~2_combout\,
	datab => \sw[16]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \finalmux|ledr[1]~3_combout\);

-- Location: IOIBUF_X115_Y10_N8
\sw[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(14),
	o => \sw[14]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\sw[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(10),
	o => \sw[10]~input_o\);

-- Location: LCCOMB_X114_Y14_N0
\finalmux|ledr[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalmux|ledr[2]~4_combout\ = (\sw[17]~input_o\ & (((\sw[16]~input_o\)))) # (!\sw[17]~input_o\ & ((\sw[16]~input_o\ & ((\sw[10]~input_o\))) # (!\sw[16]~input_o\ & (\sw[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[17]~input_o\,
	datab => \sw[14]~input_o\,
	datac => \sw[10]~input_o\,
	datad => \sw[16]~input_o\,
	combout => \finalmux|ledr[2]~4_combout\);

-- Location: IOIBUF_X115_Y10_N1
\sw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X114_Y14_N10
\finalmux|ledr[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalmux|ledr[2]~5_combout\ = (\sw[17]~input_o\ & ((\finalmux|ledr[2]~4_combout\ & ((\sw[2]~input_o\))) # (!\finalmux|ledr[2]~4_combout\ & (\sw[6]~input_o\)))) # (!\sw[17]~input_o\ & (\finalmux|ledr[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[17]~input_o\,
	datab => \finalmux|ledr[2]~4_combout\,
	datac => \sw[6]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \finalmux|ledr[2]~5_combout\);

-- Location: IOIBUF_X115_Y6_N15
\sw[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(15),
	o => \sw[15]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\sw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X114_Y14_N28
\finalmux|ledr[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalmux|ledr[3]~6_combout\ = (\sw[17]~input_o\ & ((\sw[16]~input_o\) # ((\sw[7]~input_o\)))) # (!\sw[17]~input_o\ & (!\sw[16]~input_o\ & (\sw[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[17]~input_o\,
	datab => \sw[16]~input_o\,
	datac => \sw[15]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \finalmux|ledr[3]~6_combout\);

-- Location: IOIBUF_X115_Y5_N15
\sw[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(11),
	o => \sw[11]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X114_Y13_N8
\finalmux|ledr[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \finalmux|ledr[3]~7_combout\ = (\sw[16]~input_o\ & ((\finalmux|ledr[3]~6_combout\ & ((\sw[3]~input_o\))) # (!\finalmux|ledr[3]~6_combout\ & (\sw[11]~input_o\)))) # (!\sw[16]~input_o\ & (\finalmux|ledr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[16]~input_o\,
	datab => \finalmux|ledr[3]~6_combout\,
	datac => \sw[11]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \finalmux|ledr[3]~7_combout\);

ww_ledr(0) <= \ledr[0]~output_o\;

ww_ledr(1) <= \ledr[1]~output_o\;

ww_ledr(2) <= \ledr[2]~output_o\;

ww_ledr(3) <= \ledr[3]~output_o\;
END structure;


