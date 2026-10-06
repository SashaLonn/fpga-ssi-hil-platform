-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "10/06/2026 10:14:43"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ssi_protocol IS
    PORT (
	MAX10_CLK1_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 7);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	GPIO : IN std_logic_vector(35 DOWNTO 35);
	GPIO_data : OUT std_logic;
	reset_nrst : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	ARDUINO_IO : OUT std_logic_vector(1 DOWNTO 1);
	GSENSOR_SDI : OUT std_logic;
	GSENSOR_SDO : IN std_logic;
	GSENSOR_CS_N : OUT std_logic;
	GSENSOR_SCLK : OUT std_logic
	);
END ssi_protocol;

-- Design Ports Information
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_data	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GSENSOR_SDI	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GSENSOR_CS_N	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GSENSOR_SCLK	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_nrst	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[35]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GSENSOR_SDO	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ssi_protocol IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 7);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_GPIO : std_logic_vector(35 DOWNTO 35);
SIGNAL ww_GPIO_data : std_logic;
SIGNAL ww_reset_nrst : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ARDUINO_IO : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_GSENSOR_SDI : std_logic;
SIGNAL ww_GSENSOR_SDO : std_logic;
SIGNAL ww_GSENSOR_CS_N : std_logic;
SIGNAL ww_GSENSOR_SCLK : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset_n_t2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \GPIO_data~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \ARDUINO_IO[1]~output_o\ : std_logic;
SIGNAL \GSENSOR_SDI~output_o\ : std_logic;
SIGNAL \GSENSOR_CS_N~output_o\ : std_logic;
SIGNAL \GSENSOR_SCLK~output_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~0_combout\ : std_logic;
SIGNAL \reset_n_t1~feeder_combout\ : std_logic;
SIGNAL \reset_nrst~input_o\ : std_logic;
SIGNAL \reset_n_t1~q\ : std_logic;
SIGNAL \reset_n_t2~q\ : std_logic;
SIGNAL \reset_n_t2~clkctrl_outclk\ : std_logic;
SIGNAL \GPIO[35]~input_o\ : std_logic;
SIGNAL \ssi_inst_slave|ssi_clk_sync_1~feeder_combout\ : std_logic;
SIGNAL \ssi_inst_slave|ssi_clk_sync_1~q\ : std_logic;
SIGNAL \ssi_inst_slave|ssi_clk_sync_2~q\ : std_logic;
SIGNAL \ssi_inst_slave|ssi_clk_sync_3~q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \sw_sync_0[7]~feeder_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[0]~6_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[5]~10_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[0]~7\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[1]~8_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[1]~9\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[2]~11_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[2]~12\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[3]~13_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Equal0~0_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[3]~14\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[4]~15_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[4]~16\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr[5]~17_combout\ : std_logic;
SIGNAL \ssi_inst_slave|shift_transmit_register~0_combout\ : std_logic;
SIGNAL \ssi_inst_slave|start_transmission~0_combout\ : std_logic;
SIGNAL \ssi_inst_slave|start_transmission~q\ : std_logic;
SIGNAL \ssi_inst_slave|transmission_running~0_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmission_running~2_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmission_running~q\ : std_logic;
SIGNAL \ssi_inst_slave|ssi_data_i~0_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmission_running~1_combout\ : std_logic;
SIGNAL \ssi_inst_slave|run_tm_timer~0_combout\ : std_logic;
SIGNAL \ssi_inst_slave|run_tm_timer~q\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~1\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~2_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~3\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~5\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~6_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~7\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~8_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~9\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~10_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~11\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~12_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Equal1~1_combout\ : std_logic;
SIGNAL \ssi_inst_slave|tm_timer_counter~4_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~13\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~14_combout\ : std_logic;
SIGNAL \ssi_inst_slave|tm_timer_counter~3_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~15\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~16_combout\ : std_logic;
SIGNAL \ssi_inst_slave|tm_timer_counter~2_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~17\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~18_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~19\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~20_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~21\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~22_combout\ : std_logic;
SIGNAL \ssi_inst_slave|tm_timer_counter~6_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Equal1~0_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Add1~4_combout\ : std_logic;
SIGNAL \ssi_inst_slave|tm_timer_counter~5_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Equal1~2_combout\ : std_logic;
SIGNAL \ssi_inst_slave|Equal1~3_combout\ : std_logic;
SIGNAL \GSENSOR_SDO~input_o\ : std_logic;
SIGNAL \spi_inst_master|rx_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[0]~6_combout\ : std_logic;
SIGNAL \spi_inst_master|spi_state~8_combout\ : std_logic;
SIGNAL \spi_inst_master|spi_state~10_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector23~0_combout\ : std_logic;
SIGNAL \spi_inst_master|spi_state.IDLE~q\ : std_logic;
SIGNAL \spi_inst_master|Selector24~2_combout\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[0]~8_combout\ : std_logic;
SIGNAL \spi_inst_master|Equal0~0_combout\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[1]~12_combout\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[0]~9\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[1]~10_combout\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[1]~11\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[2]~13_combout\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[2]~14\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[3]~15_combout\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[3]~16\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[4]~17_combout\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[4]~18\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[5]~19_combout\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[5]~20\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[6]~21_combout\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[6]~22\ : std_logic;
SIGNAL \spi_inst_master|prescale_cnt[7]~23_combout\ : std_logic;
SIGNAL \spi_inst_master|Equal0~1_combout\ : std_logic;
SIGNAL \spi_inst_master|sclk_tick~0_combout\ : std_logic;
SIGNAL \spi_inst_master|sclk_tick~q\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[2]~8_combout\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[0]~7\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[1]~9_combout\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[1]~10\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[2]~11_combout\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[2]~12\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[3]~13_combout\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[3]~14\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[4]~15_combout\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[4]~16\ : std_logic;
SIGNAL \spi_inst_master|bit_cnt[5]~17_combout\ : std_logic;
SIGNAL \spi_inst_master|spi_state~9_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector25~0_combout\ : std_logic;
SIGNAL \spi_inst_master|spi_state.FINISH~q\ : std_logic;
SIGNAL \spi_inst_master|data_ready~q\ : std_logic;
SIGNAL \adxl345_int|state.POWER_ON_INIT~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.POWER_ON_INIT~q\ : std_logic;
SIGNAL \adxl345_int|timer[0]~23_combout\ : std_logic;
SIGNAL \adxl345_int|Equal0~5_combout\ : std_logic;
SIGNAL \adxl345_int|Equal0~4_combout\ : std_logic;
SIGNAL \adxl345_int|Equal0~6_combout\ : std_logic;
SIGNAL \adxl345_int|Equal1~1_combout\ : std_logic;
SIGNAL \adxl345_int|Equal1~0_combout\ : std_logic;
SIGNAL \adxl345_int|Equal1~2_combout\ : std_logic;
SIGNAL \adxl345_int|timer[11]~25_combout\ : std_logic;
SIGNAL \adxl345_int|timer[0]~24\ : std_logic;
SIGNAL \adxl345_int|timer[1]~26_combout\ : std_logic;
SIGNAL \adxl345_int|timer[1]~27\ : std_logic;
SIGNAL \adxl345_int|timer[2]~28_combout\ : std_logic;
SIGNAL \adxl345_int|timer[2]~29\ : std_logic;
SIGNAL \adxl345_int|timer[3]~30_combout\ : std_logic;
SIGNAL \adxl345_int|timer[3]~31\ : std_logic;
SIGNAL \adxl345_int|timer[4]~32_combout\ : std_logic;
SIGNAL \adxl345_int|timer[4]~33\ : std_logic;
SIGNAL \adxl345_int|timer[5]~34_combout\ : std_logic;
SIGNAL \adxl345_int|timer[5]~35\ : std_logic;
SIGNAL \adxl345_int|timer[6]~36_combout\ : std_logic;
SIGNAL \adxl345_int|timer[6]~37\ : std_logic;
SIGNAL \adxl345_int|timer[7]~38_combout\ : std_logic;
SIGNAL \adxl345_int|timer[7]~39\ : std_logic;
SIGNAL \adxl345_int|timer[8]~40_combout\ : std_logic;
SIGNAL \adxl345_int|timer[8]~41\ : std_logic;
SIGNAL \adxl345_int|timer[9]~42_combout\ : std_logic;
SIGNAL \adxl345_int|timer[9]~43\ : std_logic;
SIGNAL \adxl345_int|timer[10]~44_combout\ : std_logic;
SIGNAL \adxl345_int|timer[10]~45\ : std_logic;
SIGNAL \adxl345_int|timer[11]~46_combout\ : std_logic;
SIGNAL \adxl345_int|timer[11]~47\ : std_logic;
SIGNAL \adxl345_int|timer[12]~48_combout\ : std_logic;
SIGNAL \adxl345_int|timer[12]~49\ : std_logic;
SIGNAL \adxl345_int|timer[13]~50_combout\ : std_logic;
SIGNAL \adxl345_int|timer[13]~51\ : std_logic;
SIGNAL \adxl345_int|timer[14]~52_combout\ : std_logic;
SIGNAL \adxl345_int|timer[14]~53\ : std_logic;
SIGNAL \adxl345_int|timer[15]~54_combout\ : std_logic;
SIGNAL \adxl345_int|timer[15]~55\ : std_logic;
SIGNAL \adxl345_int|timer[16]~56_combout\ : std_logic;
SIGNAL \adxl345_int|timer[16]~57\ : std_logic;
SIGNAL \adxl345_int|timer[17]~58_combout\ : std_logic;
SIGNAL \adxl345_int|timer[17]~59\ : std_logic;
SIGNAL \adxl345_int|timer[18]~60_combout\ : std_logic;
SIGNAL \adxl345_int|timer[18]~61\ : std_logic;
SIGNAL \adxl345_int|timer[19]~62_combout\ : std_logic;
SIGNAL \adxl345_int|timer[19]~63\ : std_logic;
SIGNAL \adxl345_int|timer[20]~64_combout\ : std_logic;
SIGNAL \adxl345_int|timer[20]~65\ : std_logic;
SIGNAL \adxl345_int|timer[21]~66_combout\ : std_logic;
SIGNAL \adxl345_int|Equal0~2_combout\ : std_logic;
SIGNAL \adxl345_int|Equal0~1_combout\ : std_logic;
SIGNAL \adxl345_int|timer[21]~67\ : std_logic;
SIGNAL \adxl345_int|timer[22]~68_combout\ : std_logic;
SIGNAL \adxl345_int|Equal0~0_combout\ : std_logic;
SIGNAL \adxl345_int|Equal0~3_combout\ : std_logic;
SIGNAL \adxl345_int|Selector25~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.WAIT_FORMAT~q\ : std_logic;
SIGNAL \adxl345_int|Selector26~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.WRITE_POWER~q\ : std_logic;
SIGNAL \adxl345_int|Selector27~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.WAIT_POWER~q\ : std_logic;
SIGNAL \adxl345_int|Selector30~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector30~1_combout\ : std_logic;
SIGNAL \adxl345_int|state.READ_X_L~q\ : std_logic;
SIGNAL \adxl345_int|Selector31~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.WAIT_X_L~q\ : std_logic;
SIGNAL \adxl345_int|Selector32~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.READ_X_H~q\ : std_logic;
SIGNAL \adxl345_int|Selector33~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.WAIT_X_H~q\ : std_logic;
SIGNAL \adxl345_int|Selector34~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.READ_Y_L~q\ : std_logic;
SIGNAL \adxl345_int|Selector35~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.WAIT_Y_L~q\ : std_logic;
SIGNAL \adxl345_int|Selector36~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.READ_Y_H~q\ : std_logic;
SIGNAL \adxl345_int|Selector37~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.WAIT_Y_H~q\ : std_logic;
SIGNAL \adxl345_int|Selector38~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.READ_Z_L~q\ : std_logic;
SIGNAL \adxl345_int|Selector39~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.WAIT_Z_L~q\ : std_logic;
SIGNAL \adxl345_int|Selector40~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.READ_Z_H~q\ : std_logic;
SIGNAL \adxl345_int|Selector41~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.WAIT_Z_H~q\ : std_logic;
SIGNAL \adxl345_int|Selector42~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.SEND_TO_STM32~q\ : std_logic;
SIGNAL \adxl345_int|Selector43~0_combout\ : std_logic;
SIGNAL \adxl345_int|state.PAUSE~q\ : std_logic;
SIGNAL \adxl345_int|Selector23~1_combout\ : std_logic;
SIGNAL \adxl345_int|Selector23~3_combout\ : std_logic;
SIGNAL \adxl345_int|Selector23~2_combout\ : std_logic;
SIGNAL \adxl345_int|Selector23~4_combout\ : std_logic;
SIGNAL \adxl345_int|Selector23~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector23~5_combout\ : std_logic;
SIGNAL \adxl345_int|Selector48~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector24~3_combout\ : std_logic;
SIGNAL \adxl345_int|Selector23~6_combout\ : std_logic;
SIGNAL \adxl345_int|Selector24~1_combout\ : std_logic;
SIGNAL \adxl345_int|Selector23~7_combout\ : std_logic;
SIGNAL \adxl345_int|Selector24~2_combout\ : std_logic;
SIGNAL \adxl345_int|Selector24~4_combout\ : std_logic;
SIGNAL \adxl345_int|state.WRITE_FORMAT~q\ : std_logic;
SIGNAL \adxl345_int|Selector24~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector53~0_combout\ : std_logic;
SIGNAL \adxl345_int|s_start~q\ : std_logic;
SIGNAL \spi_inst_master|Selector24~3_combout\ : std_logic;
SIGNAL \spi_inst_master|spi_state.TRANSFER~q\ : std_logic;
SIGNAL \spi_inst_master|sclk_reg~0_combout\ : std_logic;
SIGNAL \spi_inst_master|sclk_reg~q\ : std_logic;
SIGNAL \spi_inst_master|rx_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \spi_inst_master|rx_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|rx_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|rx_shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|rx_shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|rx_shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample0[15]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample0[0]~0_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample1[15]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample1[12]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample0[11]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample1[10]~feeder_combout\ : std_logic;
SIGNAL \spi_inst_master|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample0[9]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_low[0]~0_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample0[7]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_low[5]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample0[5]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_low[4]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_low[3]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample0[3]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample1[2]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_low[1]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample0[1]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_low[0]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~1\ : std_logic;
SIGNAL \adxl345_int|Add0~3\ : std_logic;
SIGNAL \adxl345_int|Add0~5\ : std_logic;
SIGNAL \adxl345_int|Add0~7\ : std_logic;
SIGNAL \adxl345_int|Add0~9\ : std_logic;
SIGNAL \adxl345_int|Add0~11\ : std_logic;
SIGNAL \adxl345_int|Add0~13\ : std_logic;
SIGNAL \adxl345_int|Add0~15\ : std_logic;
SIGNAL \adxl345_int|Add0~17\ : std_logic;
SIGNAL \adxl345_int|Add0~19\ : std_logic;
SIGNAL \adxl345_int|Add0~21\ : std_logic;
SIGNAL \adxl345_int|Add0~23\ : std_logic;
SIGNAL \adxl345_int|Add0~25\ : std_logic;
SIGNAL \adxl345_int|Add0~27\ : std_logic;
SIGNAL \adxl345_int|Add0~29\ : std_logic;
SIGNAL \adxl345_int|Add0~31\ : std_logic;
SIGNAL \adxl345_int|Add0~32_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[15]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[13]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[12]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[9]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[7]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[5]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[3]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[2]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[1]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|x_sample2[0]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~1\ : std_logic;
SIGNAL \adxl345_int|Add1~3\ : std_logic;
SIGNAL \adxl345_int|Add1~5\ : std_logic;
SIGNAL \adxl345_int|Add1~7\ : std_logic;
SIGNAL \adxl345_int|Add1~9\ : std_logic;
SIGNAL \adxl345_int|Add1~11\ : std_logic;
SIGNAL \adxl345_int|Add1~13\ : std_logic;
SIGNAL \adxl345_int|Add1~15\ : std_logic;
SIGNAL \adxl345_int|Add1~17\ : std_logic;
SIGNAL \adxl345_int|Add1~19\ : std_logic;
SIGNAL \adxl345_int|Add1~21\ : std_logic;
SIGNAL \adxl345_int|Add1~23\ : std_logic;
SIGNAL \adxl345_int|Add1~25\ : std_logic;
SIGNAL \adxl345_int|Add1~27\ : std_logic;
SIGNAL \adxl345_int|Add1~29\ : std_logic;
SIGNAL \adxl345_int|Add1~31\ : std_logic;
SIGNAL \adxl345_int|Add1~32_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~30_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~30_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~28_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~28_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~26_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~26_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~24_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~24_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~22_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~22_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~20_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~20_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~18_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~18_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~16_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~16_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~14_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~14_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~12_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~12_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~10_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~10_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~8_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~8_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~6_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~6_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~4_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~4_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~2_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~2_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~0_combout\ : std_logic;
SIGNAL \adxl345_int|Add1~0_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[32]~49_cout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[32]~51_cout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[32]~53\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[33]~55\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[34]~57\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[35]~59\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[36]~61\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[37]~63\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[38]~65\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[39]~67\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[40]~69\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[41]~71\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[42]~73\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[43]~75\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[44]~77\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[45]~79\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[46]~80_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[44]~76_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[43]~74_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[38]~64_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[37]~62_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[36]~60_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[35]~58_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[34]~56_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[33]~54_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample0[0]~0_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample1[15]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample1[12]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample1[10]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_low[0]~0_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample0[7]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_low[5]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample0[5]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_low[4]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_low[3]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample0[3]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_low[2]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample1[2]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample0[1]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_low[0]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~1\ : std_logic;
SIGNAL \adxl345_int|Add3~3\ : std_logic;
SIGNAL \adxl345_int|Add3~5\ : std_logic;
SIGNAL \adxl345_int|Add3~7\ : std_logic;
SIGNAL \adxl345_int|Add3~9\ : std_logic;
SIGNAL \adxl345_int|Add3~11\ : std_logic;
SIGNAL \adxl345_int|Add3~13\ : std_logic;
SIGNAL \adxl345_int|Add3~15\ : std_logic;
SIGNAL \adxl345_int|Add3~17\ : std_logic;
SIGNAL \adxl345_int|Add3~19\ : std_logic;
SIGNAL \adxl345_int|Add3~21\ : std_logic;
SIGNAL \adxl345_int|Add3~23\ : std_logic;
SIGNAL \adxl345_int|Add3~25\ : std_logic;
SIGNAL \adxl345_int|Add3~27\ : std_logic;
SIGNAL \adxl345_int|Add3~29\ : std_logic;
SIGNAL \adxl345_int|Add3~31\ : std_logic;
SIGNAL \adxl345_int|Add3~33\ : std_logic;
SIGNAL \adxl345_int|Add3~34_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample2[10]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample2[8]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample2[7]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample2[6]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample2[5]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|y_sample2[0]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~1\ : std_logic;
SIGNAL \adxl345_int|Add4~3\ : std_logic;
SIGNAL \adxl345_int|Add4~5\ : std_logic;
SIGNAL \adxl345_int|Add4~7\ : std_logic;
SIGNAL \adxl345_int|Add4~9\ : std_logic;
SIGNAL \adxl345_int|Add4~11\ : std_logic;
SIGNAL \adxl345_int|Add4~13\ : std_logic;
SIGNAL \adxl345_int|Add4~15\ : std_logic;
SIGNAL \adxl345_int|Add4~17\ : std_logic;
SIGNAL \adxl345_int|Add4~19\ : std_logic;
SIGNAL \adxl345_int|Add4~21\ : std_logic;
SIGNAL \adxl345_int|Add4~23\ : std_logic;
SIGNAL \adxl345_int|Add4~25\ : std_logic;
SIGNAL \adxl345_int|Add4~27\ : std_logic;
SIGNAL \adxl345_int|Add4~29\ : std_logic;
SIGNAL \adxl345_int|Add4~31\ : std_logic;
SIGNAL \adxl345_int|Add4~32_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~32_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~30_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~30_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~28_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~28_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~26_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~26_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~24_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~24_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~22_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~22_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~20_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~20_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~18_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~18_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~16_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~16_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~14_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~14_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~12_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~12_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~10_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~10_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~8_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~8_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~6_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~6_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~4_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~4_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~2_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~2_combout\ : std_logic;
SIGNAL \adxl345_int|Add3~0_combout\ : std_logic;
SIGNAL \adxl345_int|Add4~0_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[16]~85_cout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[16]~87_cout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[16]~89\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[17]~91\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[18]~93\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[19]~95\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[20]~97\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[21]~99\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[22]~101\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[23]~103\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[24]~105\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[25]~107\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[26]~109\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[27]~111\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[28]~113\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[29]~115\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[30]~117\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[31]~118_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[29]~114_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[28]~112_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[27]~110_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[26]~108_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[25]~106_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[24]~104_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[23]~102_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[22]~100_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[21]~98_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[20]~96_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[19]~94_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[18]~92_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample0[15]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample1[0]~0_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample1[15]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample1[12]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample1[10]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample0[9]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_low[0]~0_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample0[7]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_low[6]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample1[6]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample0[5]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_low[4]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample0[3]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_low[2]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample1[2]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample0[1]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_low[0]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample0[0]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~1\ : std_logic;
SIGNAL \adxl345_int|Add6~3\ : std_logic;
SIGNAL \adxl345_int|Add6~5\ : std_logic;
SIGNAL \adxl345_int|Add6~7\ : std_logic;
SIGNAL \adxl345_int|Add6~9\ : std_logic;
SIGNAL \adxl345_int|Add6~11\ : std_logic;
SIGNAL \adxl345_int|Add6~13\ : std_logic;
SIGNAL \adxl345_int|Add6~15\ : std_logic;
SIGNAL \adxl345_int|Add6~17\ : std_logic;
SIGNAL \adxl345_int|Add6~19\ : std_logic;
SIGNAL \adxl345_int|Add6~21\ : std_logic;
SIGNAL \adxl345_int|Add6~23\ : std_logic;
SIGNAL \adxl345_int|Add6~25\ : std_logic;
SIGNAL \adxl345_int|Add6~27\ : std_logic;
SIGNAL \adxl345_int|Add6~29\ : std_logic;
SIGNAL \adxl345_int|Add6~31\ : std_logic;
SIGNAL \adxl345_int|Add6~32_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample2[12]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample2[11]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample2[10]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample2[8]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample2[7]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample2[5]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample2[4]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|z_sample2[1]~feeder_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~1\ : std_logic;
SIGNAL \adxl345_int|Add7~3\ : std_logic;
SIGNAL \adxl345_int|Add7~5\ : std_logic;
SIGNAL \adxl345_int|Add7~7\ : std_logic;
SIGNAL \adxl345_int|Add7~9\ : std_logic;
SIGNAL \adxl345_int|Add7~11\ : std_logic;
SIGNAL \adxl345_int|Add7~13\ : std_logic;
SIGNAL \adxl345_int|Add7~15\ : std_logic;
SIGNAL \adxl345_int|Add7~17\ : std_logic;
SIGNAL \adxl345_int|Add7~19\ : std_logic;
SIGNAL \adxl345_int|Add7~21\ : std_logic;
SIGNAL \adxl345_int|Add7~23\ : std_logic;
SIGNAL \adxl345_int|Add7~25\ : std_logic;
SIGNAL \adxl345_int|Add7~27\ : std_logic;
SIGNAL \adxl345_int|Add7~29\ : std_logic;
SIGNAL \adxl345_int|Add7~31\ : std_logic;
SIGNAL \adxl345_int|Add7~32_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~30_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~30_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~28_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~28_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~26_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~26_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~24_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~24_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~22_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~22_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~20_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~20_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~18_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~18_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~16_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~16_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~14_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~14_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~12_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~12_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~10_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~10_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~8_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~8_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~6_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~6_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~4_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~4_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~2_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~2_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~0_combout\ : std_logic;
SIGNAL \adxl345_int|Add7~0_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[0]~121_cout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[0]~123_cout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[0]~125\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[1]~127\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[2]~129\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[3]~131\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[4]~133\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[5]~135\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[6]~137\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[7]~139\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[8]~141\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[9]~143\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[10]~145\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[11]~147\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[12]~149\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[13]~151\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[14]~152_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[11]~146_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[7]~138_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[6]~136_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[5]~134_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[4]~132_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[1]~126_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[0]~124_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register[0]~49_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~48_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register[10]~1_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register[10]~2_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[2]~128_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~47_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[3]~130_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~46_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~45_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~44_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~43_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~42_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[8]~140_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~41_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[9]~142_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~40_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[10]~144_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~39_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~38_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[12]~148_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~37_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[13]~150_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~36_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~35_combout\ : std_logic;
SIGNAL \adxl345_int|Add6~33\ : std_logic;
SIGNAL \adxl345_int|Add6~34_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[14]~153\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[15]~154_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~34_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[16]~88_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~33_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[17]~90_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~32_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~31_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~30_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~29_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~28_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~27_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~26_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~25_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~24_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~23_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~22_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~21_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~20_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[30]~116_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~19_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~18_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[32]~52_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~17_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~16_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~15_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~14_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~13_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~12_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~11_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[39]~66_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~10_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[40]~68_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~9_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[41]~70_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~8_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[42]~72_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~7_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~6_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~5_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[45]~78_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~4_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~3_combout\ : std_logic;
SIGNAL \adxl345_int|Add0~33\ : std_logic;
SIGNAL \adxl345_int|Add0~34_combout\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[46]~81\ : std_logic;
SIGNAL \adxl345_int|s_acc_send[47]~82_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transmit_register~0_combout\ : std_logic;
SIGNAL \ssi_inst_slave|ssi_data_i~1_combout\ : std_logic;
SIGNAL \ssi_inst_slave|ssi_data_i~2_combout\ : std_logic;
SIGNAL \ssi_inst_slave|ssi_data_i~q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ssi_inst_slave|ssi_data~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector44~0_combout\ : std_logic;
SIGNAL \adxl345_int|WideOr8~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector47~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector47~1_combout\ : std_logic;
SIGNAL \adxl345_int|Selector48~1_combout\ : std_logic;
SIGNAL \adxl345_int|Selector50~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector13~0_combout\ : std_logic;
SIGNAL \spi_inst_master|tx_shift_reg[12]~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector12~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector11~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector10~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector9~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector49~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector49~1_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector8~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector7~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector6~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector46~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector5~0_combout\ : std_logic;
SIGNAL \adxl345_int|Selector45~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector4~0_combout\ : std_logic;
SIGNAL \adxl345_int|data_out_spi[13]~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector3~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector2~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector1~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector0~0_combout\ : std_logic;
SIGNAL \spi_inst_master|Selector0~1_combout\ : std_logic;
SIGNAL \spi_inst_master|mosi~q\ : std_logic;
SIGNAL \spi_inst_master|sclk_out~0_combout\ : std_logic;
SIGNAL \ssi_inst_slave|transfer_bit_nr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \adxl345_int|timer\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \spi_inst_master|bit_cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ssi_inst_slave|transmit_register\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \adxl345_int|s_acc_send\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \spi_inst_master|prescale_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL sw_sync_1 : std_logic_vector(8 DOWNTO 7);
SIGNAL sw_sync_0 : std_logic_vector(8 DOWNTO 7);
SIGNAL \ssi_inst_slave|tm_timer_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \adxl345_int|data_out_spi\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi_inst_master|tx_shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|x_sample0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|x_sample1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|x_sample2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|x_sample3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi_inst_master|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|x_low\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi_inst_master|rx_shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|y_sample0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|y_sample1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|y_sample2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|y_sample3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|y_low\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \adxl345_int|z_sample0\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|z_sample1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|z_sample2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|z_sample3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adxl345_int|z_low\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi_inst_master|ALT_INV_spi_state.TRANSFER~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_GPIO <= GPIO;
GPIO_data <= ww_GPIO_data;
ww_reset_nrst <= reset_nrst;
LEDR <= ww_LEDR;
ARDUINO_IO <= ww_ARDUINO_IO;
GSENSOR_SDI <= ww_GSENSOR_SDI;
ww_GSENSOR_SDO <= GSENSOR_SDO;
GSENSOR_CS_N <= ww_GSENSOR_CS_N;
GSENSOR_SCLK <= ww_GSENSOR_SCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\reset_n_t2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n_t2~q\);

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
\spi_inst_master|ALT_INV_spi_state.TRANSFER~q\ <= NOT \spi_inst_master|spi_state.TRANSFER~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\GPIO_data~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssi_inst_slave|ssi_data~0_combout\,
	devoe => ww_devoe,
	o => \GPIO_data~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\ARDUINO_IO[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ARDUINO_IO[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\GSENSOR_SDI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_inst_master|mosi~q\,
	devoe => ww_devoe,
	o => \GSENSOR_SDI~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\GSENSOR_CS_N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_inst_master|ALT_INV_spi_state.TRANSFER~q\,
	devoe => ww_devoe,
	o => \GSENSOR_CS_N~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\GSENSOR_SCLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_inst_master|sclk_out~0_combout\,
	devoe => ww_devoe,
	o => \GSENSOR_SCLK~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: CLKCTRL_G19
\MAX10_CLK1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK1_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y26_N4
\ssi_inst_slave|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~0_combout\ = \ssi_inst_slave|tm_timer_counter\(0) $ (VCC)
-- \ssi_inst_slave|Add1~1\ = CARRY(\ssi_inst_slave|tm_timer_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|tm_timer_counter\(0),
	datad => VCC,
	combout => \ssi_inst_slave|Add1~0_combout\,
	cout => \ssi_inst_slave|Add1~1\);

-- Location: LCCOMB_X30_Y25_N4
\reset_n_t1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reset_n_t1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_n_t1~feeder_combout\);

-- Location: IOIBUF_X24_Y0_N15
\reset_nrst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_nrst,
	o => \reset_nrst~input_o\);

-- Location: FF_X30_Y25_N5
reset_n_t1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \reset_n_t1~feeder_combout\,
	clrn => \reset_nrst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_n_t1~q\);

-- Location: FF_X30_Y25_N19
reset_n_t2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \reset_n_t1~q\,
	clrn => \reset_nrst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_n_t2~q\);

-- Location: CLKCTRL_G16
\reset_n_t2~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n_t2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n_t2~clkctrl_outclk\);

-- Location: IOIBUF_X18_Y0_N22
\GPIO[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO(35),
	o => \GPIO[35]~input_o\);

-- Location: LCCOMB_X30_Y25_N26
\ssi_inst_slave|ssi_clk_sync_1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|ssi_clk_sync_1~feeder_combout\ = \GPIO[35]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[35]~input_o\,
	combout => \ssi_inst_slave|ssi_clk_sync_1~feeder_combout\);

-- Location: FF_X30_Y25_N27
\ssi_inst_slave|ssi_clk_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|ssi_clk_sync_1~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|ssi_clk_sync_1~q\);

-- Location: FF_X30_Y25_N31
\ssi_inst_slave|ssi_clk_sync_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \ssi_inst_slave|ssi_clk_sync_1~q\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|ssi_clk_sync_2~q\);

-- Location: FF_X30_Y25_N9
\ssi_inst_slave|ssi_clk_sync_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \ssi_inst_slave|ssi_clk_sync_2~q\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|ssi_clk_sync_3~q\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X37_Y29_N0
\sw_sync_0[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sw_sync_0[7]~feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \sw_sync_0[7]~feeder_combout\);

-- Location: FF_X37_Y29_N1
\sw_sync_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \sw_sync_0[7]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync_0(7));

-- Location: FF_X30_Y25_N25
\sw_sync_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => sw_sync_0(7),
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync_1(7));

-- Location: LCCOMB_X34_Y25_N10
\ssi_inst_slave|transfer_bit_nr[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transfer_bit_nr[0]~6_combout\ = \ssi_inst_slave|transfer_bit_nr\(0) $ (VCC)
-- \ssi_inst_slave|transfer_bit_nr[0]~7\ = CARRY(\ssi_inst_slave|transfer_bit_nr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transfer_bit_nr\(0),
	datad => VCC,
	combout => \ssi_inst_slave|transfer_bit_nr[0]~6_combout\,
	cout => \ssi_inst_slave|transfer_bit_nr[0]~7\);

-- Location: LCCOMB_X30_Y25_N18
\ssi_inst_slave|transfer_bit_nr[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transfer_bit_nr[5]~10_combout\ = (\reset_n_t2~q\ & ((!\ssi_inst_slave|shift_transmit_register~0_combout\) # (!\ssi_inst_slave|transmission_running~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transmission_running~0_combout\,
	datac => \reset_n_t2~q\,
	datad => \ssi_inst_slave|shift_transmit_register~0_combout\,
	combout => \ssi_inst_slave|transfer_bit_nr[5]~10_combout\);

-- Location: FF_X34_Y25_N11
\ssi_inst_slave|transfer_bit_nr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transfer_bit_nr[0]~6_combout\,
	asdata => VCC,
	sload => \ssi_inst_slave|shift_transmit_register~0_combout\,
	ena => \ssi_inst_slave|transfer_bit_nr[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transfer_bit_nr\(0));

-- Location: LCCOMB_X34_Y25_N12
\ssi_inst_slave|transfer_bit_nr[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transfer_bit_nr[1]~8_combout\ = (\ssi_inst_slave|transfer_bit_nr\(1) & (\ssi_inst_slave|transfer_bit_nr[0]~7\ & VCC)) # (!\ssi_inst_slave|transfer_bit_nr\(1) & (!\ssi_inst_slave|transfer_bit_nr[0]~7\))
-- \ssi_inst_slave|transfer_bit_nr[1]~9\ = CARRY((!\ssi_inst_slave|transfer_bit_nr\(1) & !\ssi_inst_slave|transfer_bit_nr[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transfer_bit_nr\(1),
	datad => VCC,
	cin => \ssi_inst_slave|transfer_bit_nr[0]~7\,
	combout => \ssi_inst_slave|transfer_bit_nr[1]~8_combout\,
	cout => \ssi_inst_slave|transfer_bit_nr[1]~9\);

-- Location: LCCOMB_X38_Y25_N14
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X34_Y25_N13
\ssi_inst_slave|transfer_bit_nr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transfer_bit_nr[1]~8_combout\,
	asdata => \~GND~combout\,
	sload => \ssi_inst_slave|shift_transmit_register~0_combout\,
	ena => \ssi_inst_slave|transfer_bit_nr[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transfer_bit_nr\(1));

-- Location: LCCOMB_X34_Y25_N14
\ssi_inst_slave|transfer_bit_nr[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transfer_bit_nr[2]~11_combout\ = (\ssi_inst_slave|transfer_bit_nr\(2) & ((GND) # (!\ssi_inst_slave|transfer_bit_nr[1]~9\))) # (!\ssi_inst_slave|transfer_bit_nr\(2) & (\ssi_inst_slave|transfer_bit_nr[1]~9\ $ (GND)))
-- \ssi_inst_slave|transfer_bit_nr[2]~12\ = CARRY((\ssi_inst_slave|transfer_bit_nr\(2)) # (!\ssi_inst_slave|transfer_bit_nr[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transfer_bit_nr\(2),
	datad => VCC,
	cin => \ssi_inst_slave|transfer_bit_nr[1]~9\,
	combout => \ssi_inst_slave|transfer_bit_nr[2]~11_combout\,
	cout => \ssi_inst_slave|transfer_bit_nr[2]~12\);

-- Location: FF_X34_Y25_N15
\ssi_inst_slave|transfer_bit_nr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transfer_bit_nr[2]~11_combout\,
	asdata => \~GND~combout\,
	sload => \ssi_inst_slave|shift_transmit_register~0_combout\,
	ena => \ssi_inst_slave|transfer_bit_nr[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transfer_bit_nr\(2));

-- Location: LCCOMB_X34_Y25_N16
\ssi_inst_slave|transfer_bit_nr[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transfer_bit_nr[3]~13_combout\ = (\ssi_inst_slave|transfer_bit_nr\(3) & (\ssi_inst_slave|transfer_bit_nr[2]~12\ & VCC)) # (!\ssi_inst_slave|transfer_bit_nr\(3) & (!\ssi_inst_slave|transfer_bit_nr[2]~12\))
-- \ssi_inst_slave|transfer_bit_nr[3]~14\ = CARRY((!\ssi_inst_slave|transfer_bit_nr\(3) & !\ssi_inst_slave|transfer_bit_nr[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transfer_bit_nr\(3),
	datad => VCC,
	cin => \ssi_inst_slave|transfer_bit_nr[2]~12\,
	combout => \ssi_inst_slave|transfer_bit_nr[3]~13_combout\,
	cout => \ssi_inst_slave|transfer_bit_nr[3]~14\);

-- Location: FF_X34_Y25_N17
\ssi_inst_slave|transfer_bit_nr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transfer_bit_nr[3]~13_combout\,
	asdata => \~GND~combout\,
	sload => \ssi_inst_slave|shift_transmit_register~0_combout\,
	ena => \ssi_inst_slave|transfer_bit_nr[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transfer_bit_nr\(3));

-- Location: LCCOMB_X34_Y25_N24
\ssi_inst_slave|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Equal0~0_combout\ = ((\ssi_inst_slave|transfer_bit_nr\(3)) # ((\ssi_inst_slave|transfer_bit_nr\(2)) # (\ssi_inst_slave|transfer_bit_nr\(1)))) # (!\ssi_inst_slave|transfer_bit_nr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transfer_bit_nr\(0),
	datab => \ssi_inst_slave|transfer_bit_nr\(3),
	datac => \ssi_inst_slave|transfer_bit_nr\(2),
	datad => \ssi_inst_slave|transfer_bit_nr\(1),
	combout => \ssi_inst_slave|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y25_N18
\ssi_inst_slave|transfer_bit_nr[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transfer_bit_nr[4]~15_combout\ = (\ssi_inst_slave|transfer_bit_nr\(4) & ((GND) # (!\ssi_inst_slave|transfer_bit_nr[3]~14\))) # (!\ssi_inst_slave|transfer_bit_nr\(4) & (\ssi_inst_slave|transfer_bit_nr[3]~14\ $ (GND)))
-- \ssi_inst_slave|transfer_bit_nr[4]~16\ = CARRY((\ssi_inst_slave|transfer_bit_nr\(4)) # (!\ssi_inst_slave|transfer_bit_nr[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transfer_bit_nr\(4),
	datad => VCC,
	cin => \ssi_inst_slave|transfer_bit_nr[3]~14\,
	combout => \ssi_inst_slave|transfer_bit_nr[4]~15_combout\,
	cout => \ssi_inst_slave|transfer_bit_nr[4]~16\);

-- Location: FF_X34_Y25_N19
\ssi_inst_slave|transfer_bit_nr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transfer_bit_nr[4]~15_combout\,
	asdata => VCC,
	sload => \ssi_inst_slave|shift_transmit_register~0_combout\,
	ena => \ssi_inst_slave|transfer_bit_nr[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transfer_bit_nr\(4));

-- Location: LCCOMB_X34_Y25_N20
\ssi_inst_slave|transfer_bit_nr[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transfer_bit_nr[5]~17_combout\ = \ssi_inst_slave|transfer_bit_nr[4]~16\ $ (!\ssi_inst_slave|transfer_bit_nr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ssi_inst_slave|transfer_bit_nr\(5),
	cin => \ssi_inst_slave|transfer_bit_nr[4]~16\,
	combout => \ssi_inst_slave|transfer_bit_nr[5]~17_combout\);

-- Location: FF_X34_Y25_N21
\ssi_inst_slave|transfer_bit_nr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transfer_bit_nr[5]~17_combout\,
	asdata => VCC,
	sload => \ssi_inst_slave|shift_transmit_register~0_combout\,
	ena => \ssi_inst_slave|transfer_bit_nr[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transfer_bit_nr\(5));

-- Location: LCCOMB_X34_Y25_N26
\ssi_inst_slave|shift_transmit_register~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|shift_transmit_register~0_combout\ = ((!\ssi_inst_slave|Equal0~0_combout\ & (!\ssi_inst_slave|transfer_bit_nr\(4) & !\ssi_inst_slave|transfer_bit_nr\(5)))) # (!\ssi_inst_slave|ssi_data_i~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|ssi_data_i~0_combout\,
	datab => \ssi_inst_slave|Equal0~0_combout\,
	datac => \ssi_inst_slave|transfer_bit_nr\(4),
	datad => \ssi_inst_slave|transfer_bit_nr\(5),
	combout => \ssi_inst_slave|shift_transmit_register~0_combout\);

-- Location: LCCOMB_X30_Y25_N6
\ssi_inst_slave|start_transmission~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|start_transmission~0_combout\ = (\ssi_inst_slave|Equal1~3_combout\ & (((\ssi_inst_slave|start_transmission~q\)) # (!\ssi_inst_slave|shift_transmit_register~0_combout\))) # (!\ssi_inst_slave|Equal1~3_combout\ & 
-- (!\ssi_inst_slave|run_tm_timer~q\ & ((\ssi_inst_slave|start_transmission~q\) # (!\ssi_inst_slave|shift_transmit_register~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|Equal1~3_combout\,
	datab => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \ssi_inst_slave|start_transmission~q\,
	datad => \ssi_inst_slave|run_tm_timer~q\,
	combout => \ssi_inst_slave|start_transmission~0_combout\);

-- Location: FF_X30_Y25_N7
\ssi_inst_slave|start_transmission\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|start_transmission~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|start_transmission~q\);

-- Location: LCCOMB_X30_Y25_N24
\ssi_inst_slave|transmission_running~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmission_running~0_combout\ = (\ssi_inst_slave|ssi_clk_sync_2~q\) # (((\ssi_inst_slave|start_transmission~q\) # (!sw_sync_1(7))) # (!\ssi_inst_slave|ssi_clk_sync_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|ssi_clk_sync_2~q\,
	datab => \ssi_inst_slave|ssi_clk_sync_3~q\,
	datac => sw_sync_1(7),
	datad => \ssi_inst_slave|start_transmission~q\,
	combout => \ssi_inst_slave|transmission_running~0_combout\);

-- Location: LCCOMB_X30_Y25_N12
\ssi_inst_slave|transmission_running~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmission_running~2_combout\ = (!\ssi_inst_slave|transmission_running~1_combout\ & ((\ssi_inst_slave|transmission_running~q\) # (!\ssi_inst_slave|transmission_running~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transmission_running~0_combout\,
	datac => \ssi_inst_slave|transmission_running~q\,
	datad => \ssi_inst_slave|transmission_running~1_combout\,
	combout => \ssi_inst_slave|transmission_running~2_combout\);

-- Location: FF_X30_Y25_N13
\ssi_inst_slave|transmission_running\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmission_running~2_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmission_running~q\);

-- Location: LCCOMB_X30_Y25_N8
\ssi_inst_slave|ssi_data_i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|ssi_data_i~0_combout\ = (\ssi_inst_slave|ssi_clk_sync_2~q\ & (!\ssi_inst_slave|ssi_clk_sync_3~q\ & \ssi_inst_slave|transmission_running~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|ssi_clk_sync_2~q\,
	datac => \ssi_inst_slave|ssi_clk_sync_3~q\,
	datad => \ssi_inst_slave|transmission_running~q\,
	combout => \ssi_inst_slave|ssi_data_i~0_combout\);

-- Location: LCCOMB_X34_Y25_N22
\ssi_inst_slave|transmission_running~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmission_running~1_combout\ = (\ssi_inst_slave|ssi_data_i~0_combout\ & (!\ssi_inst_slave|Equal0~0_combout\ & (!\ssi_inst_slave|transfer_bit_nr\(4) & !\ssi_inst_slave|transfer_bit_nr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|ssi_data_i~0_combout\,
	datab => \ssi_inst_slave|Equal0~0_combout\,
	datac => \ssi_inst_slave|transfer_bit_nr\(4),
	datad => \ssi_inst_slave|transfer_bit_nr\(5),
	combout => \ssi_inst_slave|transmission_running~1_combout\);

-- Location: LCCOMB_X30_Y25_N2
\ssi_inst_slave|run_tm_timer~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|run_tm_timer~0_combout\ = (\ssi_inst_slave|run_tm_timer~q\ & ((\ssi_inst_slave|Equal1~3_combout\))) # (!\ssi_inst_slave|run_tm_timer~q\ & (\ssi_inst_slave|transmission_running~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transmission_running~1_combout\,
	datac => \ssi_inst_slave|run_tm_timer~q\,
	datad => \ssi_inst_slave|Equal1~3_combout\,
	combout => \ssi_inst_slave|run_tm_timer~0_combout\);

-- Location: FF_X30_Y25_N3
\ssi_inst_slave|run_tm_timer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|run_tm_timer~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|run_tm_timer~q\);

-- Location: FF_X29_Y26_N5
\ssi_inst_slave|tm_timer_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|Add1~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(0));

-- Location: LCCOMB_X29_Y26_N6
\ssi_inst_slave|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~2_combout\ = (\ssi_inst_slave|tm_timer_counter\(1) & (!\ssi_inst_slave|Add1~1\)) # (!\ssi_inst_slave|tm_timer_counter\(1) & ((\ssi_inst_slave|Add1~1\) # (GND)))
-- \ssi_inst_slave|Add1~3\ = CARRY((!\ssi_inst_slave|Add1~1\) # (!\ssi_inst_slave|tm_timer_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|tm_timer_counter\(1),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~1\,
	combout => \ssi_inst_slave|Add1~2_combout\,
	cout => \ssi_inst_slave|Add1~3\);

-- Location: FF_X29_Y26_N7
\ssi_inst_slave|tm_timer_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|Add1~2_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(1));

-- Location: LCCOMB_X29_Y26_N8
\ssi_inst_slave|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~4_combout\ = (\ssi_inst_slave|tm_timer_counter\(2) & (\ssi_inst_slave|Add1~3\ $ (GND))) # (!\ssi_inst_slave|tm_timer_counter\(2) & (!\ssi_inst_slave|Add1~3\ & VCC))
-- \ssi_inst_slave|Add1~5\ = CARRY((\ssi_inst_slave|tm_timer_counter\(2) & !\ssi_inst_slave|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|tm_timer_counter\(2),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~3\,
	combout => \ssi_inst_slave|Add1~4_combout\,
	cout => \ssi_inst_slave|Add1~5\);

-- Location: LCCOMB_X29_Y26_N10
\ssi_inst_slave|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~6_combout\ = (\ssi_inst_slave|tm_timer_counter\(3) & (!\ssi_inst_slave|Add1~5\)) # (!\ssi_inst_slave|tm_timer_counter\(3) & ((\ssi_inst_slave|Add1~5\) # (GND)))
-- \ssi_inst_slave|Add1~7\ = CARRY((!\ssi_inst_slave|Add1~5\) # (!\ssi_inst_slave|tm_timer_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|tm_timer_counter\(3),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~5\,
	combout => \ssi_inst_slave|Add1~6_combout\,
	cout => \ssi_inst_slave|Add1~7\);

-- Location: FF_X29_Y26_N11
\ssi_inst_slave|tm_timer_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|Add1~6_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(3));

-- Location: LCCOMB_X29_Y26_N12
\ssi_inst_slave|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~8_combout\ = (\ssi_inst_slave|tm_timer_counter\(4) & (\ssi_inst_slave|Add1~7\ $ (GND))) # (!\ssi_inst_slave|tm_timer_counter\(4) & (!\ssi_inst_slave|Add1~7\ & VCC))
-- \ssi_inst_slave|Add1~9\ = CARRY((\ssi_inst_slave|tm_timer_counter\(4) & !\ssi_inst_slave|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|tm_timer_counter\(4),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~7\,
	combout => \ssi_inst_slave|Add1~8_combout\,
	cout => \ssi_inst_slave|Add1~9\);

-- Location: FF_X29_Y26_N13
\ssi_inst_slave|tm_timer_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|Add1~8_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(4));

-- Location: LCCOMB_X29_Y26_N14
\ssi_inst_slave|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~10_combout\ = (\ssi_inst_slave|tm_timer_counter\(5) & (!\ssi_inst_slave|Add1~9\)) # (!\ssi_inst_slave|tm_timer_counter\(5) & ((\ssi_inst_slave|Add1~9\) # (GND)))
-- \ssi_inst_slave|Add1~11\ = CARRY((!\ssi_inst_slave|Add1~9\) # (!\ssi_inst_slave|tm_timer_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|tm_timer_counter\(5),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~9\,
	combout => \ssi_inst_slave|Add1~10_combout\,
	cout => \ssi_inst_slave|Add1~11\);

-- Location: FF_X29_Y26_N15
\ssi_inst_slave|tm_timer_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|Add1~10_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(5));

-- Location: LCCOMB_X29_Y26_N16
\ssi_inst_slave|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~12_combout\ = (\ssi_inst_slave|tm_timer_counter\(6) & (\ssi_inst_slave|Add1~11\ $ (GND))) # (!\ssi_inst_slave|tm_timer_counter\(6) & (!\ssi_inst_slave|Add1~11\ & VCC))
-- \ssi_inst_slave|Add1~13\ = CARRY((\ssi_inst_slave|tm_timer_counter\(6) & !\ssi_inst_slave|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|tm_timer_counter\(6),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~11\,
	combout => \ssi_inst_slave|Add1~12_combout\,
	cout => \ssi_inst_slave|Add1~13\);

-- Location: LCCOMB_X29_Y26_N28
\ssi_inst_slave|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Equal1~1_combout\ = (\ssi_inst_slave|tm_timer_counter\(4)) # (((\ssi_inst_slave|tm_timer_counter\(5)) # (!\ssi_inst_slave|tm_timer_counter\(6))) # (!\ssi_inst_slave|tm_timer_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|tm_timer_counter\(4),
	datab => \ssi_inst_slave|tm_timer_counter\(7),
	datac => \ssi_inst_slave|tm_timer_counter\(5),
	datad => \ssi_inst_slave|tm_timer_counter\(6),
	combout => \ssi_inst_slave|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y26_N2
\ssi_inst_slave|tm_timer_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|tm_timer_counter~4_combout\ = (\ssi_inst_slave|Add1~12_combout\ & ((\ssi_inst_slave|Equal1~0_combout\) # ((\ssi_inst_slave|Equal1~2_combout\) # (\ssi_inst_slave|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|Equal1~0_combout\,
	datab => \ssi_inst_slave|Add1~12_combout\,
	datac => \ssi_inst_slave|Equal1~2_combout\,
	datad => \ssi_inst_slave|Equal1~1_combout\,
	combout => \ssi_inst_slave|tm_timer_counter~4_combout\);

-- Location: FF_X29_Y26_N3
\ssi_inst_slave|tm_timer_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|tm_timer_counter~4_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(6));

-- Location: LCCOMB_X29_Y26_N18
\ssi_inst_slave|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~14_combout\ = (\ssi_inst_slave|tm_timer_counter\(7) & (!\ssi_inst_slave|Add1~13\)) # (!\ssi_inst_slave|tm_timer_counter\(7) & ((\ssi_inst_slave|Add1~13\) # (GND)))
-- \ssi_inst_slave|Add1~15\ = CARRY((!\ssi_inst_slave|Add1~13\) # (!\ssi_inst_slave|tm_timer_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|tm_timer_counter\(7),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~13\,
	combout => \ssi_inst_slave|Add1~14_combout\,
	cout => \ssi_inst_slave|Add1~15\);

-- Location: LCCOMB_X29_Y26_N0
\ssi_inst_slave|tm_timer_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|tm_timer_counter~3_combout\ = (\ssi_inst_slave|Add1~14_combout\ & ((\ssi_inst_slave|Equal1~0_combout\) # ((\ssi_inst_slave|Equal1~2_combout\) # (\ssi_inst_slave|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|Equal1~0_combout\,
	datab => \ssi_inst_slave|Add1~14_combout\,
	datac => \ssi_inst_slave|Equal1~2_combout\,
	datad => \ssi_inst_slave|Equal1~1_combout\,
	combout => \ssi_inst_slave|tm_timer_counter~3_combout\);

-- Location: FF_X29_Y26_N1
\ssi_inst_slave|tm_timer_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|tm_timer_counter~3_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(7));

-- Location: LCCOMB_X29_Y26_N20
\ssi_inst_slave|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~16_combout\ = (\ssi_inst_slave|tm_timer_counter\(8) & (\ssi_inst_slave|Add1~15\ $ (GND))) # (!\ssi_inst_slave|tm_timer_counter\(8) & (!\ssi_inst_slave|Add1~15\ & VCC))
-- \ssi_inst_slave|Add1~17\ = CARRY((\ssi_inst_slave|tm_timer_counter\(8) & !\ssi_inst_slave|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|tm_timer_counter\(8),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~15\,
	combout => \ssi_inst_slave|Add1~16_combout\,
	cout => \ssi_inst_slave|Add1~17\);

-- Location: LCCOMB_X30_Y25_N22
\ssi_inst_slave|tm_timer_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|tm_timer_counter~2_combout\ = (\ssi_inst_slave|Add1~16_combout\ & ((\ssi_inst_slave|Equal1~2_combout\) # ((\ssi_inst_slave|Equal1~0_combout\) # (\ssi_inst_slave|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|Equal1~2_combout\,
	datab => \ssi_inst_slave|Equal1~0_combout\,
	datac => \ssi_inst_slave|Add1~16_combout\,
	datad => \ssi_inst_slave|Equal1~1_combout\,
	combout => \ssi_inst_slave|tm_timer_counter~2_combout\);

-- Location: FF_X30_Y25_N23
\ssi_inst_slave|tm_timer_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|tm_timer_counter~2_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(8));

-- Location: LCCOMB_X29_Y26_N22
\ssi_inst_slave|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~18_combout\ = (\ssi_inst_slave|tm_timer_counter\(9) & (!\ssi_inst_slave|Add1~17\)) # (!\ssi_inst_slave|tm_timer_counter\(9) & ((\ssi_inst_slave|Add1~17\) # (GND)))
-- \ssi_inst_slave|Add1~19\ = CARRY((!\ssi_inst_slave|Add1~17\) # (!\ssi_inst_slave|tm_timer_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|tm_timer_counter\(9),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~17\,
	combout => \ssi_inst_slave|Add1~18_combout\,
	cout => \ssi_inst_slave|Add1~19\);

-- Location: FF_X29_Y26_N23
\ssi_inst_slave|tm_timer_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|Add1~18_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(9));

-- Location: LCCOMB_X29_Y26_N24
\ssi_inst_slave|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~20_combout\ = (\ssi_inst_slave|tm_timer_counter\(10) & (\ssi_inst_slave|Add1~19\ $ (GND))) # (!\ssi_inst_slave|tm_timer_counter\(10) & (!\ssi_inst_slave|Add1~19\ & VCC))
-- \ssi_inst_slave|Add1~21\ = CARRY((\ssi_inst_slave|tm_timer_counter\(10) & !\ssi_inst_slave|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|tm_timer_counter\(10),
	datad => VCC,
	cin => \ssi_inst_slave|Add1~19\,
	combout => \ssi_inst_slave|Add1~20_combout\,
	cout => \ssi_inst_slave|Add1~21\);

-- Location: FF_X29_Y26_N25
\ssi_inst_slave|tm_timer_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|Add1~20_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(10));

-- Location: LCCOMB_X29_Y26_N26
\ssi_inst_slave|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Add1~22_combout\ = \ssi_inst_slave|tm_timer_counter\(11) $ (\ssi_inst_slave|Add1~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|tm_timer_counter\(11),
	cin => \ssi_inst_slave|Add1~21\,
	combout => \ssi_inst_slave|Add1~22_combout\);

-- Location: LCCOMB_X30_Y25_N20
\ssi_inst_slave|tm_timer_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|tm_timer_counter~6_combout\ = (\ssi_inst_slave|Add1~22_combout\ & ((\ssi_inst_slave|Equal1~2_combout\) # ((\ssi_inst_slave|Equal1~0_combout\) # (\ssi_inst_slave|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|Equal1~2_combout\,
	datab => \ssi_inst_slave|Equal1~0_combout\,
	datac => \ssi_inst_slave|Add1~22_combout\,
	datad => \ssi_inst_slave|Equal1~1_combout\,
	combout => \ssi_inst_slave|tm_timer_counter~6_combout\);

-- Location: FF_X30_Y25_N21
\ssi_inst_slave|tm_timer_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|tm_timer_counter~6_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(11));

-- Location: LCCOMB_X30_Y26_N8
\ssi_inst_slave|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Equal1~0_combout\ = ((\ssi_inst_slave|tm_timer_counter\(9)) # ((\ssi_inst_slave|tm_timer_counter\(10)) # (!\ssi_inst_slave|tm_timer_counter\(8)))) # (!\ssi_inst_slave|tm_timer_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|tm_timer_counter\(11),
	datab => \ssi_inst_slave|tm_timer_counter\(9),
	datac => \ssi_inst_slave|tm_timer_counter\(8),
	datad => \ssi_inst_slave|tm_timer_counter\(10),
	combout => \ssi_inst_slave|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y25_N0
\ssi_inst_slave|tm_timer_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|tm_timer_counter~5_combout\ = (\ssi_inst_slave|Add1~4_combout\ & ((\ssi_inst_slave|Equal1~2_combout\) # ((\ssi_inst_slave|Equal1~0_combout\) # (\ssi_inst_slave|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|Equal1~2_combout\,
	datab => \ssi_inst_slave|Equal1~0_combout\,
	datac => \ssi_inst_slave|Add1~4_combout\,
	datad => \ssi_inst_slave|Equal1~1_combout\,
	combout => \ssi_inst_slave|tm_timer_counter~5_combout\);

-- Location: FF_X30_Y25_N1
\ssi_inst_slave|tm_timer_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|tm_timer_counter~5_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|run_tm_timer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|tm_timer_counter\(2));

-- Location: LCCOMB_X29_Y26_N30
\ssi_inst_slave|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Equal1~2_combout\ = ((\ssi_inst_slave|tm_timer_counter\(2)) # ((\ssi_inst_slave|tm_timer_counter\(3)) # (!\ssi_inst_slave|tm_timer_counter\(0)))) # (!\ssi_inst_slave|tm_timer_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|tm_timer_counter\(1),
	datab => \ssi_inst_slave|tm_timer_counter\(2),
	datac => \ssi_inst_slave|tm_timer_counter\(0),
	datad => \ssi_inst_slave|tm_timer_counter\(3),
	combout => \ssi_inst_slave|Equal1~2_combout\);

-- Location: LCCOMB_X30_Y25_N10
\ssi_inst_slave|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|Equal1~3_combout\ = (\ssi_inst_slave|Equal1~2_combout\) # ((\ssi_inst_slave|Equal1~0_combout\) # (\ssi_inst_slave|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|Equal1~2_combout\,
	datab => \ssi_inst_slave|Equal1~0_combout\,
	datad => \ssi_inst_slave|Equal1~1_combout\,
	combout => \ssi_inst_slave|Equal1~3_combout\);

-- Location: IOIBUF_X38_Y0_N22
\GSENSOR_SDO~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GSENSOR_SDO,
	o => \GSENSOR_SDO~input_o\);

-- Location: LCCOMB_X37_Y25_N30
\spi_inst_master|rx_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|rx_shift_reg[0]~feeder_combout\ = \GSENSOR_SDO~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GSENSOR_SDO~input_o\,
	combout => \spi_inst_master|rx_shift_reg[0]~feeder_combout\);

-- Location: LCCOMB_X38_Y25_N0
\spi_inst_master|bit_cnt[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|bit_cnt[0]~6_combout\ = \spi_inst_master|bit_cnt\(0) $ (VCC)
-- \spi_inst_master|bit_cnt[0]~7\ = CARRY(\spi_inst_master|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|bit_cnt\(0),
	datad => VCC,
	combout => \spi_inst_master|bit_cnt[0]~6_combout\,
	cout => \spi_inst_master|bit_cnt[0]~7\);

-- Location: LCCOMB_X38_Y25_N28
\spi_inst_master|spi_state~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|spi_state~8_combout\ = (!\spi_inst_master|bit_cnt\(3) & (!\spi_inst_master|bit_cnt\(1) & (!\spi_inst_master|bit_cnt\(2) & !\spi_inst_master|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|bit_cnt\(3),
	datab => \spi_inst_master|bit_cnt\(1),
	datac => \spi_inst_master|bit_cnt\(2),
	datad => \spi_inst_master|bit_cnt\(0),
	combout => \spi_inst_master|spi_state~8_combout\);

-- Location: LCCOMB_X38_Y25_N26
\spi_inst_master|spi_state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|spi_state~10_combout\ = (\spi_inst_master|spi_state~8_combout\ & (!\spi_inst_master|bit_cnt\(4) & !\spi_inst_master|bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|spi_state~8_combout\,
	datac => \spi_inst_master|bit_cnt\(4),
	datad => \spi_inst_master|bit_cnt\(5),
	combout => \spi_inst_master|spi_state~10_combout\);

-- Location: LCCOMB_X38_Y25_N16
\spi_inst_master|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector23~0_combout\ = (!\spi_inst_master|spi_state.FINISH~q\ & ((\adxl345_int|s_start~q\) # (\spi_inst_master|spi_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|s_start~q\,
	datac => \spi_inst_master|spi_state.IDLE~q\,
	datad => \spi_inst_master|spi_state.FINISH~q\,
	combout => \spi_inst_master|Selector23~0_combout\);

-- Location: FF_X38_Y25_N17
\spi_inst_master|spi_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector23~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|spi_state.IDLE~q\);

-- Location: LCCOMB_X38_Y25_N18
\spi_inst_master|Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector24~2_combout\ = (\adxl345_int|s_start~q\ & !\spi_inst_master|spi_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adxl345_int|s_start~q\,
	datad => \spi_inst_master|spi_state.IDLE~q\,
	combout => \spi_inst_master|Selector24~2_combout\);

-- Location: LCCOMB_X36_Y23_N14
\spi_inst_master|prescale_cnt[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|prescale_cnt[0]~8_combout\ = \spi_inst_master|prescale_cnt\(0) $ (VCC)
-- \spi_inst_master|prescale_cnt[0]~9\ = CARRY(\spi_inst_master|prescale_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|prescale_cnt\(0),
	datad => VCC,
	combout => \spi_inst_master|prescale_cnt[0]~8_combout\,
	cout => \spi_inst_master|prescale_cnt[0]~9\);

-- Location: LCCOMB_X36_Y23_N10
\spi_inst_master|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Equal0~0_combout\ = ((\spi_inst_master|prescale_cnt\(2)) # ((\spi_inst_master|prescale_cnt\(1)) # (!\spi_inst_master|prescale_cnt\(0)))) # (!\spi_inst_master|prescale_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|prescale_cnt\(3),
	datab => \spi_inst_master|prescale_cnt\(2),
	datac => \spi_inst_master|prescale_cnt\(0),
	datad => \spi_inst_master|prescale_cnt\(1),
	combout => \spi_inst_master|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y23_N30
\spi_inst_master|prescale_cnt[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|prescale_cnt[1]~12_combout\ = ((!\spi_inst_master|Equal0~1_combout\ & !\spi_inst_master|Equal0~0_combout\)) # (!\spi_inst_master|spi_state.TRANSFER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|Equal0~1_combout\,
	datab => \spi_inst_master|spi_state.TRANSFER~q\,
	datad => \spi_inst_master|Equal0~0_combout\,
	combout => \spi_inst_master|prescale_cnt[1]~12_combout\);

-- Location: FF_X36_Y23_N15
\spi_inst_master|prescale_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|prescale_cnt[0]~8_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \spi_inst_master|prescale_cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|prescale_cnt\(0));

-- Location: LCCOMB_X36_Y23_N16
\spi_inst_master|prescale_cnt[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|prescale_cnt[1]~10_combout\ = (\spi_inst_master|prescale_cnt\(1) & (!\spi_inst_master|prescale_cnt[0]~9\)) # (!\spi_inst_master|prescale_cnt\(1) & ((\spi_inst_master|prescale_cnt[0]~9\) # (GND)))
-- \spi_inst_master|prescale_cnt[1]~11\ = CARRY((!\spi_inst_master|prescale_cnt[0]~9\) # (!\spi_inst_master|prescale_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|prescale_cnt\(1),
	datad => VCC,
	cin => \spi_inst_master|prescale_cnt[0]~9\,
	combout => \spi_inst_master|prescale_cnt[1]~10_combout\,
	cout => \spi_inst_master|prescale_cnt[1]~11\);

-- Location: FF_X36_Y23_N17
\spi_inst_master|prescale_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|prescale_cnt[1]~10_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \spi_inst_master|prescale_cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|prescale_cnt\(1));

-- Location: LCCOMB_X36_Y23_N18
\spi_inst_master|prescale_cnt[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|prescale_cnt[2]~13_combout\ = (\spi_inst_master|prescale_cnt\(2) & (\spi_inst_master|prescale_cnt[1]~11\ $ (GND))) # (!\spi_inst_master|prescale_cnt\(2) & (!\spi_inst_master|prescale_cnt[1]~11\ & VCC))
-- \spi_inst_master|prescale_cnt[2]~14\ = CARRY((\spi_inst_master|prescale_cnt\(2) & !\spi_inst_master|prescale_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|prescale_cnt\(2),
	datad => VCC,
	cin => \spi_inst_master|prescale_cnt[1]~11\,
	combout => \spi_inst_master|prescale_cnt[2]~13_combout\,
	cout => \spi_inst_master|prescale_cnt[2]~14\);

-- Location: FF_X36_Y23_N19
\spi_inst_master|prescale_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|prescale_cnt[2]~13_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \spi_inst_master|prescale_cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|prescale_cnt\(2));

-- Location: LCCOMB_X36_Y23_N20
\spi_inst_master|prescale_cnt[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|prescale_cnt[3]~15_combout\ = (\spi_inst_master|prescale_cnt\(3) & (!\spi_inst_master|prescale_cnt[2]~14\)) # (!\spi_inst_master|prescale_cnt\(3) & ((\spi_inst_master|prescale_cnt[2]~14\) # (GND)))
-- \spi_inst_master|prescale_cnt[3]~16\ = CARRY((!\spi_inst_master|prescale_cnt[2]~14\) # (!\spi_inst_master|prescale_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|prescale_cnt\(3),
	datad => VCC,
	cin => \spi_inst_master|prescale_cnt[2]~14\,
	combout => \spi_inst_master|prescale_cnt[3]~15_combout\,
	cout => \spi_inst_master|prescale_cnt[3]~16\);

-- Location: FF_X36_Y23_N21
\spi_inst_master|prescale_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|prescale_cnt[3]~15_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \spi_inst_master|prescale_cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|prescale_cnt\(3));

-- Location: LCCOMB_X36_Y23_N22
\spi_inst_master|prescale_cnt[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|prescale_cnt[4]~17_combout\ = (\spi_inst_master|prescale_cnt\(4) & (\spi_inst_master|prescale_cnt[3]~16\ $ (GND))) # (!\spi_inst_master|prescale_cnt\(4) & (!\spi_inst_master|prescale_cnt[3]~16\ & VCC))
-- \spi_inst_master|prescale_cnt[4]~18\ = CARRY((\spi_inst_master|prescale_cnt\(4) & !\spi_inst_master|prescale_cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|prescale_cnt\(4),
	datad => VCC,
	cin => \spi_inst_master|prescale_cnt[3]~16\,
	combout => \spi_inst_master|prescale_cnt[4]~17_combout\,
	cout => \spi_inst_master|prescale_cnt[4]~18\);

-- Location: FF_X36_Y23_N23
\spi_inst_master|prescale_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|prescale_cnt[4]~17_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \spi_inst_master|prescale_cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|prescale_cnt\(4));

-- Location: LCCOMB_X36_Y23_N24
\spi_inst_master|prescale_cnt[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|prescale_cnt[5]~19_combout\ = (\spi_inst_master|prescale_cnt\(5) & (!\spi_inst_master|prescale_cnt[4]~18\)) # (!\spi_inst_master|prescale_cnt\(5) & ((\spi_inst_master|prescale_cnt[4]~18\) # (GND)))
-- \spi_inst_master|prescale_cnt[5]~20\ = CARRY((!\spi_inst_master|prescale_cnt[4]~18\) # (!\spi_inst_master|prescale_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|prescale_cnt\(5),
	datad => VCC,
	cin => \spi_inst_master|prescale_cnt[4]~18\,
	combout => \spi_inst_master|prescale_cnt[5]~19_combout\,
	cout => \spi_inst_master|prescale_cnt[5]~20\);

-- Location: FF_X36_Y23_N25
\spi_inst_master|prescale_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|prescale_cnt[5]~19_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \spi_inst_master|prescale_cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|prescale_cnt\(5));

-- Location: LCCOMB_X36_Y23_N26
\spi_inst_master|prescale_cnt[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|prescale_cnt[6]~21_combout\ = (\spi_inst_master|prescale_cnt\(6) & (\spi_inst_master|prescale_cnt[5]~20\ $ (GND))) # (!\spi_inst_master|prescale_cnt\(6) & (!\spi_inst_master|prescale_cnt[5]~20\ & VCC))
-- \spi_inst_master|prescale_cnt[6]~22\ = CARRY((\spi_inst_master|prescale_cnt\(6) & !\spi_inst_master|prescale_cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|prescale_cnt\(6),
	datad => VCC,
	cin => \spi_inst_master|prescale_cnt[5]~20\,
	combout => \spi_inst_master|prescale_cnt[6]~21_combout\,
	cout => \spi_inst_master|prescale_cnt[6]~22\);

-- Location: FF_X36_Y23_N27
\spi_inst_master|prescale_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|prescale_cnt[6]~21_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \spi_inst_master|prescale_cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|prescale_cnt\(6));

-- Location: LCCOMB_X36_Y23_N28
\spi_inst_master|prescale_cnt[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|prescale_cnt[7]~23_combout\ = \spi_inst_master|prescale_cnt[6]~22\ $ (\spi_inst_master|prescale_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|prescale_cnt\(7),
	cin => \spi_inst_master|prescale_cnt[6]~22\,
	combout => \spi_inst_master|prescale_cnt[7]~23_combout\);

-- Location: FF_X36_Y23_N29
\spi_inst_master|prescale_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|prescale_cnt[7]~23_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \spi_inst_master|prescale_cnt[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|prescale_cnt\(7));

-- Location: LCCOMB_X36_Y23_N12
\spi_inst_master|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Equal0~1_combout\ = (\spi_inst_master|prescale_cnt\(6)) # ((\spi_inst_master|prescale_cnt\(7)) # ((\spi_inst_master|prescale_cnt\(5)) # (!\spi_inst_master|prescale_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|prescale_cnt\(6),
	datab => \spi_inst_master|prescale_cnt\(7),
	datac => \spi_inst_master|prescale_cnt\(4),
	datad => \spi_inst_master|prescale_cnt\(5),
	combout => \spi_inst_master|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y23_N0
\spi_inst_master|sclk_tick~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|sclk_tick~0_combout\ = (!\spi_inst_master|Equal0~1_combout\ & (\spi_inst_master|spi_state.TRANSFER~q\ & !\spi_inst_master|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|Equal0~1_combout\,
	datab => \spi_inst_master|spi_state.TRANSFER~q\,
	datad => \spi_inst_master|Equal0~0_combout\,
	combout => \spi_inst_master|sclk_tick~0_combout\);

-- Location: FF_X36_Y23_N1
\spi_inst_master|sclk_tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|sclk_tick~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|sclk_tick~q\);

-- Location: LCCOMB_X38_Y25_N12
\spi_inst_master|bit_cnt[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|bit_cnt[2]~8_combout\ = (\spi_inst_master|Selector24~2_combout\) # ((!\spi_inst_master|spi_state~10_combout\ & (\spi_inst_master|sclk_tick~q\ & \spi_inst_master|spi_state.TRANSFER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|spi_state~10_combout\,
	datab => \spi_inst_master|Selector24~2_combout\,
	datac => \spi_inst_master|sclk_tick~q\,
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|bit_cnt[2]~8_combout\);

-- Location: FF_X38_Y25_N1
\spi_inst_master|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|bit_cnt[0]~6_combout\,
	asdata => VCC,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => \spi_inst_master|ALT_INV_spi_state.TRANSFER~q\,
	ena => \spi_inst_master|bit_cnt[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|bit_cnt\(0));

-- Location: LCCOMB_X38_Y25_N2
\spi_inst_master|bit_cnt[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|bit_cnt[1]~9_combout\ = (\spi_inst_master|bit_cnt\(1) & (\spi_inst_master|bit_cnt[0]~7\ & VCC)) # (!\spi_inst_master|bit_cnt\(1) & (!\spi_inst_master|bit_cnt[0]~7\))
-- \spi_inst_master|bit_cnt[1]~10\ = CARRY((!\spi_inst_master|bit_cnt\(1) & !\spi_inst_master|bit_cnt[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|bit_cnt\(1),
	datad => VCC,
	cin => \spi_inst_master|bit_cnt[0]~7\,
	combout => \spi_inst_master|bit_cnt[1]~9_combout\,
	cout => \spi_inst_master|bit_cnt[1]~10\);

-- Location: FF_X38_Y25_N3
\spi_inst_master|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|bit_cnt[1]~9_combout\,
	asdata => VCC,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => \spi_inst_master|ALT_INV_spi_state.TRANSFER~q\,
	ena => \spi_inst_master|bit_cnt[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|bit_cnt\(1));

-- Location: LCCOMB_X38_Y25_N4
\spi_inst_master|bit_cnt[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|bit_cnt[2]~11_combout\ = (\spi_inst_master|bit_cnt\(2) & ((GND) # (!\spi_inst_master|bit_cnt[1]~10\))) # (!\spi_inst_master|bit_cnt\(2) & (\spi_inst_master|bit_cnt[1]~10\ $ (GND)))
-- \spi_inst_master|bit_cnt[2]~12\ = CARRY((\spi_inst_master|bit_cnt\(2)) # (!\spi_inst_master|bit_cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|bit_cnt\(2),
	datad => VCC,
	cin => \spi_inst_master|bit_cnt[1]~10\,
	combout => \spi_inst_master|bit_cnt[2]~11_combout\,
	cout => \spi_inst_master|bit_cnt[2]~12\);

-- Location: FF_X38_Y25_N5
\spi_inst_master|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|bit_cnt[2]~11_combout\,
	asdata => VCC,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => \spi_inst_master|ALT_INV_spi_state.TRANSFER~q\,
	ena => \spi_inst_master|bit_cnt[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|bit_cnt\(2));

-- Location: LCCOMB_X38_Y25_N6
\spi_inst_master|bit_cnt[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|bit_cnt[3]~13_combout\ = (\spi_inst_master|bit_cnt\(3) & (\spi_inst_master|bit_cnt[2]~12\ & VCC)) # (!\spi_inst_master|bit_cnt\(3) & (!\spi_inst_master|bit_cnt[2]~12\))
-- \spi_inst_master|bit_cnt[3]~14\ = CARRY((!\spi_inst_master|bit_cnt\(3) & !\spi_inst_master|bit_cnt[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|bit_cnt\(3),
	datad => VCC,
	cin => \spi_inst_master|bit_cnt[2]~12\,
	combout => \spi_inst_master|bit_cnt[3]~13_combout\,
	cout => \spi_inst_master|bit_cnt[3]~14\);

-- Location: FF_X38_Y25_N7
\spi_inst_master|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|bit_cnt[3]~13_combout\,
	asdata => VCC,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => \spi_inst_master|ALT_INV_spi_state.TRANSFER~q\,
	ena => \spi_inst_master|bit_cnt[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|bit_cnt\(3));

-- Location: LCCOMB_X38_Y25_N8
\spi_inst_master|bit_cnt[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|bit_cnt[4]~15_combout\ = (\spi_inst_master|bit_cnt\(4) & ((GND) # (!\spi_inst_master|bit_cnt[3]~14\))) # (!\spi_inst_master|bit_cnt\(4) & (\spi_inst_master|bit_cnt[3]~14\ $ (GND)))
-- \spi_inst_master|bit_cnt[4]~16\ = CARRY((\spi_inst_master|bit_cnt\(4)) # (!\spi_inst_master|bit_cnt[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|bit_cnt\(4),
	datad => VCC,
	cin => \spi_inst_master|bit_cnt[3]~14\,
	combout => \spi_inst_master|bit_cnt[4]~15_combout\,
	cout => \spi_inst_master|bit_cnt[4]~16\);

-- Location: FF_X38_Y25_N9
\spi_inst_master|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|bit_cnt[4]~15_combout\,
	asdata => VCC,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => \spi_inst_master|ALT_INV_spi_state.TRANSFER~q\,
	ena => \spi_inst_master|bit_cnt[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|bit_cnt\(4));

-- Location: LCCOMB_X38_Y25_N10
\spi_inst_master|bit_cnt[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|bit_cnt[5]~17_combout\ = \spi_inst_master|bit_cnt[4]~16\ $ (!\spi_inst_master|bit_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|bit_cnt\(5),
	cin => \spi_inst_master|bit_cnt[4]~16\,
	combout => \spi_inst_master|bit_cnt[5]~17_combout\);

-- Location: FF_X38_Y25_N11
\spi_inst_master|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|bit_cnt[5]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => \spi_inst_master|ALT_INV_spi_state.TRANSFER~q\,
	ena => \spi_inst_master|bit_cnt[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|bit_cnt\(5));

-- Location: LCCOMB_X38_Y25_N30
\spi_inst_master|spi_state~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|spi_state~9_combout\ = (!\spi_inst_master|bit_cnt\(5) & (\spi_inst_master|sclk_tick~q\ & (!\spi_inst_master|bit_cnt\(4) & \spi_inst_master|spi_state~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|bit_cnt\(5),
	datab => \spi_inst_master|sclk_tick~q\,
	datac => \spi_inst_master|bit_cnt\(4),
	datad => \spi_inst_master|spi_state~8_combout\,
	combout => \spi_inst_master|spi_state~9_combout\);

-- Location: LCCOMB_X38_Y25_N24
\spi_inst_master|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector25~0_combout\ = (\spi_inst_master|spi_state~9_combout\ & \spi_inst_master|spi_state.TRANSFER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_inst_master|spi_state~9_combout\,
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector25~0_combout\);

-- Location: FF_X38_Y25_N25
\spi_inst_master|spi_state.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector25~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|spi_state.FINISH~q\);

-- Location: FF_X35_Y26_N31
\spi_inst_master|data_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|spi_state.FINISH~q\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|data_ready~q\);

-- Location: LCCOMB_X35_Y26_N22
\adxl345_int|state.POWER_ON_INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|state.POWER_ON_INIT~0_combout\ = (\adxl345_int|state.POWER_ON_INIT~q\) # (\adxl345_int|Selector23~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adxl345_int|state.POWER_ON_INIT~q\,
	datad => \adxl345_int|Selector23~7_combout\,
	combout => \adxl345_int|state.POWER_ON_INIT~0_combout\);

-- Location: FF_X35_Y26_N23
\adxl345_int|state.POWER_ON_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|state.POWER_ON_INIT~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.POWER_ON_INIT~q\);

-- Location: LCCOMB_X36_Y27_N10
\adxl345_int|timer[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[0]~23_combout\ = \adxl345_int|timer\(0) $ (VCC)
-- \adxl345_int|timer[0]~24\ = CARRY(\adxl345_int|timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(0),
	datad => VCC,
	combout => \adxl345_int|timer[0]~23_combout\,
	cout => \adxl345_int|timer[0]~24\);

-- Location: LCCOMB_X36_Y27_N4
\adxl345_int|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal0~5_combout\ = (!\adxl345_int|timer\(10) & (!\adxl345_int|timer\(13) & (\adxl345_int|timer\(8) & \adxl345_int|timer\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(10),
	datab => \adxl345_int|timer\(13),
	datac => \adxl345_int|timer\(8),
	datad => \adxl345_int|timer\(9),
	combout => \adxl345_int|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y27_N2
\adxl345_int|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal0~4_combout\ = (\adxl345_int|timer\(7) & (!\adxl345_int|timer\(5) & (!\adxl345_int|timer\(2) & \adxl345_int|timer\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(7),
	datab => \adxl345_int|timer\(5),
	datac => \adxl345_int|timer\(2),
	datad => \adxl345_int|timer\(3),
	combout => \adxl345_int|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y26_N28
\adxl345_int|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal0~6_combout\ = (!\adxl345_int|timer\(14) & (\adxl345_int|Equal0~5_combout\ & (\adxl345_int|Equal0~4_combout\ & !\adxl345_int|timer\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(14),
	datab => \adxl345_int|Equal0~5_combout\,
	datac => \adxl345_int|Equal0~4_combout\,
	datad => \adxl345_int|timer\(15),
	combout => \adxl345_int|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y27_N0
\adxl345_int|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal1~1_combout\ = (\adxl345_int|timer\(10) & (\adxl345_int|timer\(13) & (!\adxl345_int|timer\(8) & !\adxl345_int|timer\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(10),
	datab => \adxl345_int|timer\(13),
	datac => \adxl345_int|timer\(8),
	datad => \adxl345_int|timer\(9),
	combout => \adxl345_int|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y27_N6
\adxl345_int|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal1~0_combout\ = (!\adxl345_int|timer\(7) & (\adxl345_int|timer\(5) & (\adxl345_int|timer\(2) & !\adxl345_int|timer\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(7),
	datab => \adxl345_int|timer\(5),
	datac => \adxl345_int|timer\(2),
	datad => \adxl345_int|timer\(3),
	combout => \adxl345_int|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y28_N24
\adxl345_int|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal1~2_combout\ = (\adxl345_int|timer\(15) & (\adxl345_int|Equal1~1_combout\ & (\adxl345_int|timer\(14) & \adxl345_int|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(15),
	datab => \adxl345_int|Equal1~1_combout\,
	datac => \adxl345_int|timer\(14),
	datad => \adxl345_int|Equal1~0_combout\,
	combout => \adxl345_int|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y26_N30
\adxl345_int|timer[11]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[11]~25_combout\ = (\adxl345_int|Equal0~3_combout\ & ((\adxl345_int|state.PAUSE~q\ & ((\adxl345_int|Equal1~2_combout\))) # (!\adxl345_int|state.PAUSE~q\ & (\adxl345_int|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Equal0~3_combout\,
	datab => \adxl345_int|Equal0~6_combout\,
	datac => \adxl345_int|Equal1~2_combout\,
	datad => \adxl345_int|state.PAUSE~q\,
	combout => \adxl345_int|timer[11]~25_combout\);

-- Location: FF_X36_Y27_N11
\adxl345_int|timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[0]~23_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(0));

-- Location: LCCOMB_X36_Y27_N12
\adxl345_int|timer[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[1]~26_combout\ = (\adxl345_int|timer\(1) & (!\adxl345_int|timer[0]~24\)) # (!\adxl345_int|timer\(1) & ((\adxl345_int|timer[0]~24\) # (GND)))
-- \adxl345_int|timer[1]~27\ = CARRY((!\adxl345_int|timer[0]~24\) # (!\adxl345_int|timer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(1),
	datad => VCC,
	cin => \adxl345_int|timer[0]~24\,
	combout => \adxl345_int|timer[1]~26_combout\,
	cout => \adxl345_int|timer[1]~27\);

-- Location: FF_X36_Y27_N13
\adxl345_int|timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[1]~26_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(1));

-- Location: LCCOMB_X36_Y27_N14
\adxl345_int|timer[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[2]~28_combout\ = (\adxl345_int|timer\(2) & (\adxl345_int|timer[1]~27\ $ (GND))) # (!\adxl345_int|timer\(2) & (!\adxl345_int|timer[1]~27\ & VCC))
-- \adxl345_int|timer[2]~29\ = CARRY((\adxl345_int|timer\(2) & !\adxl345_int|timer[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(2),
	datad => VCC,
	cin => \adxl345_int|timer[1]~27\,
	combout => \adxl345_int|timer[2]~28_combout\,
	cout => \adxl345_int|timer[2]~29\);

-- Location: FF_X36_Y27_N15
\adxl345_int|timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[2]~28_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(2));

-- Location: LCCOMB_X36_Y27_N16
\adxl345_int|timer[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[3]~30_combout\ = (\adxl345_int|timer\(3) & (!\adxl345_int|timer[2]~29\)) # (!\adxl345_int|timer\(3) & ((\adxl345_int|timer[2]~29\) # (GND)))
-- \adxl345_int|timer[3]~31\ = CARRY((!\adxl345_int|timer[2]~29\) # (!\adxl345_int|timer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(3),
	datad => VCC,
	cin => \adxl345_int|timer[2]~29\,
	combout => \adxl345_int|timer[3]~30_combout\,
	cout => \adxl345_int|timer[3]~31\);

-- Location: FF_X36_Y27_N17
\adxl345_int|timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[3]~30_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(3));

-- Location: LCCOMB_X36_Y27_N18
\adxl345_int|timer[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[4]~32_combout\ = (\adxl345_int|timer\(4) & (\adxl345_int|timer[3]~31\ $ (GND))) # (!\adxl345_int|timer\(4) & (!\adxl345_int|timer[3]~31\ & VCC))
-- \adxl345_int|timer[4]~33\ = CARRY((\adxl345_int|timer\(4) & !\adxl345_int|timer[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(4),
	datad => VCC,
	cin => \adxl345_int|timer[3]~31\,
	combout => \adxl345_int|timer[4]~32_combout\,
	cout => \adxl345_int|timer[4]~33\);

-- Location: FF_X36_Y27_N19
\adxl345_int|timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[4]~32_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(4));

-- Location: LCCOMB_X36_Y27_N20
\adxl345_int|timer[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[5]~34_combout\ = (\adxl345_int|timer\(5) & (!\adxl345_int|timer[4]~33\)) # (!\adxl345_int|timer\(5) & ((\adxl345_int|timer[4]~33\) # (GND)))
-- \adxl345_int|timer[5]~35\ = CARRY((!\adxl345_int|timer[4]~33\) # (!\adxl345_int|timer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(5),
	datad => VCC,
	cin => \adxl345_int|timer[4]~33\,
	combout => \adxl345_int|timer[5]~34_combout\,
	cout => \adxl345_int|timer[5]~35\);

-- Location: FF_X36_Y27_N21
\adxl345_int|timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[5]~34_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(5));

-- Location: LCCOMB_X36_Y27_N22
\adxl345_int|timer[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[6]~36_combout\ = (\adxl345_int|timer\(6) & (\adxl345_int|timer[5]~35\ $ (GND))) # (!\adxl345_int|timer\(6) & (!\adxl345_int|timer[5]~35\ & VCC))
-- \adxl345_int|timer[6]~37\ = CARRY((\adxl345_int|timer\(6) & !\adxl345_int|timer[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(6),
	datad => VCC,
	cin => \adxl345_int|timer[5]~35\,
	combout => \adxl345_int|timer[6]~36_combout\,
	cout => \adxl345_int|timer[6]~37\);

-- Location: FF_X36_Y27_N23
\adxl345_int|timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[6]~36_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(6));

-- Location: LCCOMB_X36_Y27_N24
\adxl345_int|timer[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[7]~38_combout\ = (\adxl345_int|timer\(7) & (!\adxl345_int|timer[6]~37\)) # (!\adxl345_int|timer\(7) & ((\adxl345_int|timer[6]~37\) # (GND)))
-- \adxl345_int|timer[7]~39\ = CARRY((!\adxl345_int|timer[6]~37\) # (!\adxl345_int|timer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(7),
	datad => VCC,
	cin => \adxl345_int|timer[6]~37\,
	combout => \adxl345_int|timer[7]~38_combout\,
	cout => \adxl345_int|timer[7]~39\);

-- Location: FF_X36_Y27_N25
\adxl345_int|timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[7]~38_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(7));

-- Location: LCCOMB_X36_Y27_N26
\adxl345_int|timer[8]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[8]~40_combout\ = (\adxl345_int|timer\(8) & (\adxl345_int|timer[7]~39\ $ (GND))) # (!\adxl345_int|timer\(8) & (!\adxl345_int|timer[7]~39\ & VCC))
-- \adxl345_int|timer[8]~41\ = CARRY((\adxl345_int|timer\(8) & !\adxl345_int|timer[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(8),
	datad => VCC,
	cin => \adxl345_int|timer[7]~39\,
	combout => \adxl345_int|timer[8]~40_combout\,
	cout => \adxl345_int|timer[8]~41\);

-- Location: FF_X36_Y27_N27
\adxl345_int|timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[8]~40_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(8));

-- Location: LCCOMB_X36_Y27_N28
\adxl345_int|timer[9]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[9]~42_combout\ = (\adxl345_int|timer\(9) & (!\adxl345_int|timer[8]~41\)) # (!\adxl345_int|timer\(9) & ((\adxl345_int|timer[8]~41\) # (GND)))
-- \adxl345_int|timer[9]~43\ = CARRY((!\adxl345_int|timer[8]~41\) # (!\adxl345_int|timer\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(9),
	datad => VCC,
	cin => \adxl345_int|timer[8]~41\,
	combout => \adxl345_int|timer[9]~42_combout\,
	cout => \adxl345_int|timer[9]~43\);

-- Location: FF_X36_Y27_N29
\adxl345_int|timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[9]~42_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(9));

-- Location: LCCOMB_X36_Y27_N30
\adxl345_int|timer[10]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[10]~44_combout\ = (\adxl345_int|timer\(10) & (\adxl345_int|timer[9]~43\ $ (GND))) # (!\adxl345_int|timer\(10) & (!\adxl345_int|timer[9]~43\ & VCC))
-- \adxl345_int|timer[10]~45\ = CARRY((\adxl345_int|timer\(10) & !\adxl345_int|timer[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(10),
	datad => VCC,
	cin => \adxl345_int|timer[9]~43\,
	combout => \adxl345_int|timer[10]~44_combout\,
	cout => \adxl345_int|timer[10]~45\);

-- Location: FF_X36_Y27_N31
\adxl345_int|timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[10]~44_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(10));

-- Location: LCCOMB_X36_Y26_N0
\adxl345_int|timer[11]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[11]~46_combout\ = (\adxl345_int|timer\(11) & (!\adxl345_int|timer[10]~45\)) # (!\adxl345_int|timer\(11) & ((\adxl345_int|timer[10]~45\) # (GND)))
-- \adxl345_int|timer[11]~47\ = CARRY((!\adxl345_int|timer[10]~45\) # (!\adxl345_int|timer\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(11),
	datad => VCC,
	cin => \adxl345_int|timer[10]~45\,
	combout => \adxl345_int|timer[11]~46_combout\,
	cout => \adxl345_int|timer[11]~47\);

-- Location: FF_X36_Y26_N1
\adxl345_int|timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[11]~46_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(11));

-- Location: LCCOMB_X36_Y26_N2
\adxl345_int|timer[12]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[12]~48_combout\ = (\adxl345_int|timer\(12) & (\adxl345_int|timer[11]~47\ $ (GND))) # (!\adxl345_int|timer\(12) & (!\adxl345_int|timer[11]~47\ & VCC))
-- \adxl345_int|timer[12]~49\ = CARRY((\adxl345_int|timer\(12) & !\adxl345_int|timer[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(12),
	datad => VCC,
	cin => \adxl345_int|timer[11]~47\,
	combout => \adxl345_int|timer[12]~48_combout\,
	cout => \adxl345_int|timer[12]~49\);

-- Location: FF_X36_Y26_N3
\adxl345_int|timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[12]~48_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(12));

-- Location: LCCOMB_X36_Y26_N4
\adxl345_int|timer[13]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[13]~50_combout\ = (\adxl345_int|timer\(13) & (!\adxl345_int|timer[12]~49\)) # (!\adxl345_int|timer\(13) & ((\adxl345_int|timer[12]~49\) # (GND)))
-- \adxl345_int|timer[13]~51\ = CARRY((!\adxl345_int|timer[12]~49\) # (!\adxl345_int|timer\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(13),
	datad => VCC,
	cin => \adxl345_int|timer[12]~49\,
	combout => \adxl345_int|timer[13]~50_combout\,
	cout => \adxl345_int|timer[13]~51\);

-- Location: FF_X36_Y26_N5
\adxl345_int|timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[13]~50_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(13));

-- Location: LCCOMB_X36_Y26_N6
\adxl345_int|timer[14]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[14]~52_combout\ = (\adxl345_int|timer\(14) & (\adxl345_int|timer[13]~51\ $ (GND))) # (!\adxl345_int|timer\(14) & (!\adxl345_int|timer[13]~51\ & VCC))
-- \adxl345_int|timer[14]~53\ = CARRY((\adxl345_int|timer\(14) & !\adxl345_int|timer[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(14),
	datad => VCC,
	cin => \adxl345_int|timer[13]~51\,
	combout => \adxl345_int|timer[14]~52_combout\,
	cout => \adxl345_int|timer[14]~53\);

-- Location: FF_X36_Y26_N7
\adxl345_int|timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[14]~52_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(14));

-- Location: LCCOMB_X36_Y26_N8
\adxl345_int|timer[15]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[15]~54_combout\ = (\adxl345_int|timer\(15) & (!\adxl345_int|timer[14]~53\)) # (!\adxl345_int|timer\(15) & ((\adxl345_int|timer[14]~53\) # (GND)))
-- \adxl345_int|timer[15]~55\ = CARRY((!\adxl345_int|timer[14]~53\) # (!\adxl345_int|timer\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(15),
	datad => VCC,
	cin => \adxl345_int|timer[14]~53\,
	combout => \adxl345_int|timer[15]~54_combout\,
	cout => \adxl345_int|timer[15]~55\);

-- Location: FF_X36_Y26_N9
\adxl345_int|timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[15]~54_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(15));

-- Location: LCCOMB_X36_Y26_N10
\adxl345_int|timer[16]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[16]~56_combout\ = (\adxl345_int|timer\(16) & (\adxl345_int|timer[15]~55\ $ (GND))) # (!\adxl345_int|timer\(16) & (!\adxl345_int|timer[15]~55\ & VCC))
-- \adxl345_int|timer[16]~57\ = CARRY((\adxl345_int|timer\(16) & !\adxl345_int|timer[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(16),
	datad => VCC,
	cin => \adxl345_int|timer[15]~55\,
	combout => \adxl345_int|timer[16]~56_combout\,
	cout => \adxl345_int|timer[16]~57\);

-- Location: FF_X36_Y26_N11
\adxl345_int|timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[16]~56_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(16));

-- Location: LCCOMB_X36_Y26_N12
\adxl345_int|timer[17]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[17]~58_combout\ = (\adxl345_int|timer\(17) & (!\adxl345_int|timer[16]~57\)) # (!\adxl345_int|timer\(17) & ((\adxl345_int|timer[16]~57\) # (GND)))
-- \adxl345_int|timer[17]~59\ = CARRY((!\adxl345_int|timer[16]~57\) # (!\adxl345_int|timer\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(17),
	datad => VCC,
	cin => \adxl345_int|timer[16]~57\,
	combout => \adxl345_int|timer[17]~58_combout\,
	cout => \adxl345_int|timer[17]~59\);

-- Location: FF_X36_Y26_N13
\adxl345_int|timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[17]~58_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(17));

-- Location: LCCOMB_X36_Y26_N14
\adxl345_int|timer[18]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[18]~60_combout\ = (\adxl345_int|timer\(18) & (\adxl345_int|timer[17]~59\ $ (GND))) # (!\adxl345_int|timer\(18) & (!\adxl345_int|timer[17]~59\ & VCC))
-- \adxl345_int|timer[18]~61\ = CARRY((\adxl345_int|timer\(18) & !\adxl345_int|timer[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(18),
	datad => VCC,
	cin => \adxl345_int|timer[17]~59\,
	combout => \adxl345_int|timer[18]~60_combout\,
	cout => \adxl345_int|timer[18]~61\);

-- Location: FF_X36_Y26_N15
\adxl345_int|timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[18]~60_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(18));

-- Location: LCCOMB_X36_Y26_N16
\adxl345_int|timer[19]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[19]~62_combout\ = (\adxl345_int|timer\(19) & (!\adxl345_int|timer[18]~61\)) # (!\adxl345_int|timer\(19) & ((\adxl345_int|timer[18]~61\) # (GND)))
-- \adxl345_int|timer[19]~63\ = CARRY((!\adxl345_int|timer[18]~61\) # (!\adxl345_int|timer\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(19),
	datad => VCC,
	cin => \adxl345_int|timer[18]~61\,
	combout => \adxl345_int|timer[19]~62_combout\,
	cout => \adxl345_int|timer[19]~63\);

-- Location: FF_X36_Y26_N17
\adxl345_int|timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[19]~62_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(19));

-- Location: LCCOMB_X36_Y26_N18
\adxl345_int|timer[20]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[20]~64_combout\ = (\adxl345_int|timer\(20) & (\adxl345_int|timer[19]~63\ $ (GND))) # (!\adxl345_int|timer\(20) & (!\adxl345_int|timer[19]~63\ & VCC))
-- \adxl345_int|timer[20]~65\ = CARRY((\adxl345_int|timer\(20) & !\adxl345_int|timer[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(20),
	datad => VCC,
	cin => \adxl345_int|timer[19]~63\,
	combout => \adxl345_int|timer[20]~64_combout\,
	cout => \adxl345_int|timer[20]~65\);

-- Location: FF_X36_Y26_N19
\adxl345_int|timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[20]~64_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(20));

-- Location: LCCOMB_X36_Y26_N20
\adxl345_int|timer[21]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[21]~66_combout\ = (\adxl345_int|timer\(21) & (!\adxl345_int|timer[20]~65\)) # (!\adxl345_int|timer\(21) & ((\adxl345_int|timer[20]~65\) # (GND)))
-- \adxl345_int|timer[21]~67\ = CARRY((!\adxl345_int|timer[20]~65\) # (!\adxl345_int|timer\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|timer\(21),
	datad => VCC,
	cin => \adxl345_int|timer[20]~65\,
	combout => \adxl345_int|timer[21]~66_combout\,
	cout => \adxl345_int|timer[21]~67\);

-- Location: FF_X36_Y26_N21
\adxl345_int|timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[21]~66_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(21));

-- Location: LCCOMB_X36_Y26_N26
\adxl345_int|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal0~2_combout\ = (!\adxl345_int|timer\(21) & (!\adxl345_int|timer\(20) & (!\adxl345_int|timer\(18) & !\adxl345_int|timer\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(21),
	datab => \adxl345_int|timer\(20),
	datac => \adxl345_int|timer\(18),
	datad => \adxl345_int|timer\(19),
	combout => \adxl345_int|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y26_N24
\adxl345_int|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal0~1_combout\ = (!\adxl345_int|timer\(16) & (\adxl345_int|timer\(12) & (!\adxl345_int|timer\(17) & !\adxl345_int|timer\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(16),
	datab => \adxl345_int|timer\(12),
	datac => \adxl345_int|timer\(17),
	datad => \adxl345_int|timer\(11),
	combout => \adxl345_int|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y26_N22
\adxl345_int|timer[22]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|timer[22]~68_combout\ = \adxl345_int|timer\(22) $ (!\adxl345_int|timer[21]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(22),
	cin => \adxl345_int|timer[21]~67\,
	combout => \adxl345_int|timer[22]~68_combout\);

-- Location: FF_X36_Y26_N23
\adxl345_int|timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|timer[22]~68_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sclr => \adxl345_int|timer[11]~25_combout\,
	ena => \adxl345_int|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|timer\(22));

-- Location: LCCOMB_X36_Y27_N8
\adxl345_int|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal0~0_combout\ = (!\adxl345_int|timer\(1) & (!\adxl345_int|timer\(4) & (!\adxl345_int|timer\(6) & !\adxl345_int|timer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|timer\(1),
	datab => \adxl345_int|timer\(4),
	datac => \adxl345_int|timer\(6),
	datad => \adxl345_int|timer\(0),
	combout => \adxl345_int|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y26_N12
\adxl345_int|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Equal0~3_combout\ = (\adxl345_int|Equal0~2_combout\ & (\adxl345_int|Equal0~1_combout\ & (!\adxl345_int|timer\(22) & \adxl345_int|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Equal0~2_combout\,
	datab => \adxl345_int|Equal0~1_combout\,
	datac => \adxl345_int|timer\(22),
	datad => \adxl345_int|Equal0~0_combout\,
	combout => \adxl345_int|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y26_N18
\adxl345_int|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector25~0_combout\ = (\spi_inst_master|data_ready~q\ & (\adxl345_int|state.WRITE_FORMAT~q\ & ((!\spi_inst_master|spi_state.IDLE~q\)))) # (!\spi_inst_master|data_ready~q\ & ((\adxl345_int|state.WAIT_FORMAT~q\) # 
-- ((\adxl345_int|state.WRITE_FORMAT~q\ & !\spi_inst_master|spi_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \adxl345_int|state.WRITE_FORMAT~q\,
	datac => \adxl345_int|state.WAIT_FORMAT~q\,
	datad => \spi_inst_master|spi_state.IDLE~q\,
	combout => \adxl345_int|Selector25~0_combout\);

-- Location: FF_X34_Y26_N19
\adxl345_int|state.WAIT_FORMAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector25~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WAIT_FORMAT~q\);

-- Location: LCCOMB_X34_Y26_N24
\adxl345_int|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector26~0_combout\ = (\adxl345_int|state.WAIT_FORMAT~q\ & ((\spi_inst_master|data_ready~q\) # ((\adxl345_int|state.WRITE_POWER~q\)))) # (!\adxl345_int|state.WAIT_FORMAT~q\ & (((\adxl345_int|state.WRITE_POWER~q\ & 
-- \spi_inst_master|spi_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \adxl345_int|state.WAIT_FORMAT~q\,
	datac => \adxl345_int|state.WRITE_POWER~q\,
	datad => \spi_inst_master|spi_state.IDLE~q\,
	combout => \adxl345_int|Selector26~0_combout\);

-- Location: FF_X34_Y26_N25
\adxl345_int|state.WRITE_POWER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector26~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WRITE_POWER~q\);

-- Location: LCCOMB_X34_Y26_N8
\adxl345_int|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector27~0_combout\ = (\spi_inst_master|data_ready~q\ & (\adxl345_int|state.WRITE_POWER~q\ & ((!\spi_inst_master|spi_state.IDLE~q\)))) # (!\spi_inst_master|data_ready~q\ & ((\adxl345_int|state.WAIT_POWER~q\) # 
-- ((\adxl345_int|state.WRITE_POWER~q\ & !\spi_inst_master|spi_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \adxl345_int|state.WRITE_POWER~q\,
	datac => \adxl345_int|state.WAIT_POWER~q\,
	datad => \spi_inst_master|spi_state.IDLE~q\,
	combout => \adxl345_int|Selector27~0_combout\);

-- Location: FF_X34_Y26_N9
\adxl345_int|state.WAIT_POWER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector27~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WAIT_POWER~q\);

-- Location: LCCOMB_X35_Y26_N14
\adxl345_int|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector30~0_combout\ = (\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_POWER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_inst_master|data_ready~q\,
	datad => \adxl345_int|state.WAIT_POWER~q\,
	combout => \adxl345_int|Selector30~0_combout\);

-- Location: LCCOMB_X35_Y26_N18
\adxl345_int|Selector30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector30~1_combout\ = (\adxl345_int|Selector30~0_combout\) # ((\adxl345_int|Equal0~3_combout\ & (\adxl345_int|state.PAUSE~q\ & \adxl345_int|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Equal0~3_combout\,
	datab => \adxl345_int|state.PAUSE~q\,
	datac => \adxl345_int|Selector30~0_combout\,
	datad => \adxl345_int|Equal1~2_combout\,
	combout => \adxl345_int|Selector30~1_combout\);

-- Location: FF_X35_Y26_N19
\adxl345_int|state.READ_X_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector30~1_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.READ_X_L~q\);

-- Location: LCCOMB_X34_Y26_N30
\adxl345_int|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector31~0_combout\ = (\adxl345_int|state.READ_X_L~q\) # ((!\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_X_L~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datac => \adxl345_int|state.WAIT_X_L~q\,
	datad => \adxl345_int|state.READ_X_L~q\,
	combout => \adxl345_int|Selector31~0_combout\);

-- Location: FF_X34_Y26_N31
\adxl345_int|state.WAIT_X_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector31~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WAIT_X_L~q\);

-- Location: LCCOMB_X34_Y26_N10
\adxl345_int|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector32~0_combout\ = (\adxl345_int|state.WAIT_X_L~q\ & \spi_inst_master|data_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WAIT_X_L~q\,
	datac => \spi_inst_master|data_ready~q\,
	combout => \adxl345_int|Selector32~0_combout\);

-- Location: FF_X34_Y26_N11
\adxl345_int|state.READ_X_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector32~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.READ_X_H~q\);

-- Location: LCCOMB_X34_Y26_N4
\adxl345_int|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector33~0_combout\ = (\adxl345_int|state.READ_X_H~q\) # ((!\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_X_H~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datac => \adxl345_int|state.WAIT_X_H~q\,
	datad => \adxl345_int|state.READ_X_H~q\,
	combout => \adxl345_int|Selector33~0_combout\);

-- Location: FF_X34_Y26_N5
\adxl345_int|state.WAIT_X_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector33~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WAIT_X_H~q\);

-- Location: LCCOMB_X34_Y26_N2
\adxl345_int|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector34~0_combout\ = (\adxl345_int|state.WAIT_X_H~q\ & \spi_inst_master|data_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|state.WAIT_X_H~q\,
	datac => \spi_inst_master|data_ready~q\,
	combout => \adxl345_int|Selector34~0_combout\);

-- Location: FF_X34_Y26_N3
\adxl345_int|state.READ_Y_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector34~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.READ_Y_L~q\);

-- Location: LCCOMB_X32_Y26_N12
\adxl345_int|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector35~0_combout\ = (\adxl345_int|state.READ_Y_L~q\) # ((!\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_Y_L~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \adxl345_int|state.READ_Y_L~q\,
	datac => \adxl345_int|state.WAIT_Y_L~q\,
	combout => \adxl345_int|Selector35~0_combout\);

-- Location: FF_X32_Y26_N13
\adxl345_int|state.WAIT_Y_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector35~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WAIT_Y_L~q\);

-- Location: LCCOMB_X32_Y26_N0
\adxl345_int|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector36~0_combout\ = (\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_Y_L~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_inst_master|data_ready~q\,
	datad => \adxl345_int|state.WAIT_Y_L~q\,
	combout => \adxl345_int|Selector36~0_combout\);

-- Location: FF_X32_Y26_N1
\adxl345_int|state.READ_Y_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector36~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.READ_Y_H~q\);

-- Location: LCCOMB_X32_Y26_N22
\adxl345_int|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector37~0_combout\ = (\adxl345_int|state.READ_Y_H~q\) # ((!\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_Y_H~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \adxl345_int|state.READ_Y_H~q\,
	datac => \adxl345_int|state.WAIT_Y_H~q\,
	combout => \adxl345_int|Selector37~0_combout\);

-- Location: FF_X32_Y26_N23
\adxl345_int|state.WAIT_Y_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector37~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WAIT_Y_H~q\);

-- Location: LCCOMB_X34_Y26_N14
\adxl345_int|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector38~0_combout\ = (\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_Y_H~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datad => \adxl345_int|state.WAIT_Y_H~q\,
	combout => \adxl345_int|Selector38~0_combout\);

-- Location: FF_X34_Y26_N15
\adxl345_int|state.READ_Z_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector38~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.READ_Z_L~q\);

-- Location: LCCOMB_X34_Y26_N22
\adxl345_int|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector39~0_combout\ = (\adxl345_int|state.READ_Z_L~q\) # ((!\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_Z_L~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \adxl345_int|state.READ_Z_L~q\,
	datac => \adxl345_int|state.WAIT_Z_L~q\,
	combout => \adxl345_int|Selector39~0_combout\);

-- Location: FF_X34_Y26_N23
\adxl345_int|state.WAIT_Z_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector39~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WAIT_Z_L~q\);

-- Location: LCCOMB_X34_Y26_N28
\adxl345_int|Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector40~0_combout\ = (\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_Z_L~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datac => \adxl345_int|state.WAIT_Z_L~q\,
	combout => \adxl345_int|Selector40~0_combout\);

-- Location: FF_X34_Y26_N29
\adxl345_int|state.READ_Z_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector40~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.READ_Z_H~q\);

-- Location: LCCOMB_X32_Y26_N16
\adxl345_int|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector41~0_combout\ = (\adxl345_int|state.READ_Z_H~q\) # ((!\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_Z_H~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datac => \adxl345_int|state.WAIT_Z_H~q\,
	datad => \adxl345_int|state.READ_Z_H~q\,
	combout => \adxl345_int|Selector41~0_combout\);

-- Location: FF_X32_Y26_N17
\adxl345_int|state.WAIT_Z_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector41~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WAIT_Z_H~q\);

-- Location: LCCOMB_X32_Y26_N26
\adxl345_int|Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector42~0_combout\ = (\spi_inst_master|data_ready~q\ & \adxl345_int|state.WAIT_Z_H~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_inst_master|data_ready~q\,
	datad => \adxl345_int|state.WAIT_Z_H~q\,
	combout => \adxl345_int|Selector42~0_combout\);

-- Location: FF_X32_Y26_N27
\adxl345_int|state.SEND_TO_STM32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector42~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.SEND_TO_STM32~q\);

-- Location: LCCOMB_X35_Y26_N2
\adxl345_int|Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector43~0_combout\ = (\adxl345_int|state.SEND_TO_STM32~q\) # ((\adxl345_int|state.PAUSE~q\ & ((!\adxl345_int|Equal1~2_combout\) # (!\adxl345_int|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Equal0~3_combout\,
	datab => \adxl345_int|state.SEND_TO_STM32~q\,
	datac => \adxl345_int|state.PAUSE~q\,
	datad => \adxl345_int|Equal1~2_combout\,
	combout => \adxl345_int|Selector43~0_combout\);

-- Location: FF_X35_Y26_N3
\adxl345_int|state.PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector43~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.PAUSE~q\);

-- Location: LCCOMB_X35_Y26_N16
\adxl345_int|Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector23~1_combout\ = (\adxl345_int|state.PAUSE~q\) # (!\adxl345_int|state.POWER_ON_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adxl345_int|state.POWER_ON_INIT~q\,
	datad => \adxl345_int|state.PAUSE~q\,
	combout => \adxl345_int|Selector23~1_combout\);

-- Location: LCCOMB_X32_Y26_N10
\adxl345_int|Selector23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector23~3_combout\ = (\adxl345_int|state.WAIT_Y_L~q\) # ((\adxl345_int|state.WAIT_Z_L~q\) # ((\adxl345_int|state.WAIT_Y_H~q\) # (\adxl345_int|state.WAIT_Z_H~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WAIT_Y_L~q\,
	datab => \adxl345_int|state.WAIT_Z_L~q\,
	datac => \adxl345_int|state.WAIT_Y_H~q\,
	datad => \adxl345_int|state.WAIT_Z_H~q\,
	combout => \adxl345_int|Selector23~3_combout\);

-- Location: LCCOMB_X34_Y26_N12
\adxl345_int|Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector23~2_combout\ = (\adxl345_int|state.WAIT_POWER~q\) # ((\adxl345_int|state.WAIT_X_H~q\) # ((\adxl345_int|state.WAIT_X_L~q\) # (\adxl345_int|state.WAIT_FORMAT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WAIT_POWER~q\,
	datab => \adxl345_int|state.WAIT_X_H~q\,
	datac => \adxl345_int|state.WAIT_X_L~q\,
	datad => \adxl345_int|state.WAIT_FORMAT~q\,
	combout => \adxl345_int|Selector23~2_combout\);

-- Location: LCCOMB_X35_Y26_N10
\adxl345_int|Selector23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector23~4_combout\ = (\spi_inst_master|data_ready~q\ & (!\adxl345_int|Selector23~1_combout\ & ((\adxl345_int|Selector23~3_combout\) # (\adxl345_int|Selector23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \adxl345_int|Selector23~1_combout\,
	datac => \adxl345_int|Selector23~3_combout\,
	datad => \adxl345_int|Selector23~2_combout\,
	combout => \adxl345_int|Selector23~4_combout\);

-- Location: LCCOMB_X35_Y26_N28
\adxl345_int|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector23~0_combout\ = (\adxl345_int|Equal0~3_combout\ & (\adxl345_int|state.PAUSE~q\ & (\adxl345_int|state.POWER_ON_INIT~q\ & \adxl345_int|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Equal0~3_combout\,
	datab => \adxl345_int|state.PAUSE~q\,
	datac => \adxl345_int|state.POWER_ON_INIT~q\,
	datad => \adxl345_int|Equal1~2_combout\,
	combout => \adxl345_int|Selector23~0_combout\);

-- Location: LCCOMB_X34_Y26_N0
\adxl345_int|Selector23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector23~5_combout\ = (!\spi_inst_master|spi_state.IDLE~q\ & (\adxl345_int|state.POWER_ON_INIT~q\ & ((\adxl345_int|state.WRITE_FORMAT~q\) # (\adxl345_int|state.WRITE_POWER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|spi_state.IDLE~q\,
	datab => \adxl345_int|state.WRITE_FORMAT~q\,
	datac => \adxl345_int|state.POWER_ON_INIT~q\,
	datad => \adxl345_int|state.WRITE_POWER~q\,
	combout => \adxl345_int|Selector23~5_combout\);

-- Location: LCCOMB_X34_Y26_N16
\adxl345_int|Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector48~0_combout\ = (!\adxl345_int|state.READ_X_H~q\ & (!\adxl345_int|state.READ_Z_H~q\ & (!\adxl345_int|state.READ_Z_L~q\ & !\adxl345_int|state.READ_X_L~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.READ_X_H~q\,
	datab => \adxl345_int|state.READ_Z_H~q\,
	datac => \adxl345_int|state.READ_Z_L~q\,
	datad => \adxl345_int|state.READ_X_L~q\,
	combout => \adxl345_int|Selector48~0_combout\);

-- Location: LCCOMB_X35_Y27_N4
\adxl345_int|Selector24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector24~3_combout\ = (!\adxl345_int|state.READ_Y_H~q\ & !\adxl345_int|state.READ_Y_L~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.READ_Y_H~q\,
	datad => \adxl345_int|state.READ_Y_L~q\,
	combout => \adxl345_int|Selector24~3_combout\);

-- Location: LCCOMB_X35_Y27_N30
\adxl345_int|Selector23~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector23~6_combout\ = (\adxl345_int|Selector23~5_combout\) # (((\adxl345_int|state.SEND_TO_STM32~q\) # (!\adxl345_int|Selector24~3_combout\)) # (!\adxl345_int|Selector48~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Selector23~5_combout\,
	datab => \adxl345_int|Selector48~0_combout\,
	datac => \adxl345_int|Selector24~3_combout\,
	datad => \adxl345_int|state.SEND_TO_STM32~q\,
	combout => \adxl345_int|Selector23~6_combout\);

-- Location: LCCOMB_X35_Y26_N8
\adxl345_int|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector24~1_combout\ = (\adxl345_int|Equal0~3_combout\ & (!\adxl345_int|state.POWER_ON_INIT~q\ & \adxl345_int|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Equal0~3_combout\,
	datac => \adxl345_int|state.POWER_ON_INIT~q\,
	datad => \adxl345_int|Equal0~6_combout\,
	combout => \adxl345_int|Selector24~1_combout\);

-- Location: LCCOMB_X35_Y26_N20
\adxl345_int|Selector23~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector23~7_combout\ = (\adxl345_int|Selector23~4_combout\) # ((\adxl345_int|Selector23~0_combout\) # ((\adxl345_int|Selector23~6_combout\) # (\adxl345_int|Selector24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Selector23~4_combout\,
	datab => \adxl345_int|Selector23~0_combout\,
	datac => \adxl345_int|Selector23~6_combout\,
	datad => \adxl345_int|Selector24~1_combout\,
	combout => \adxl345_int|Selector23~7_combout\);

-- Location: LCCOMB_X35_Y27_N10
\adxl345_int|Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector24~2_combout\ = (!\adxl345_int|state.READ_Y_H~q\ & (!\adxl345_int|state.SEND_TO_STM32~q\ & (\adxl345_int|Selector48~0_combout\ & !\adxl345_int|state.READ_Y_L~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.READ_Y_H~q\,
	datab => \adxl345_int|state.SEND_TO_STM32~q\,
	datac => \adxl345_int|Selector48~0_combout\,
	datad => \adxl345_int|state.READ_Y_L~q\,
	combout => \adxl345_int|Selector24~2_combout\);

-- Location: LCCOMB_X35_Y26_N24
\adxl345_int|Selector24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector24~4_combout\ = (\adxl345_int|Selector23~7_combout\ & (\adxl345_int|Selector24~1_combout\ & ((\adxl345_int|Selector24~2_combout\)))) # (!\adxl345_int|Selector23~7_combout\ & ((\adxl345_int|state.WRITE_FORMAT~q\) # 
-- ((\adxl345_int|Selector24~1_combout\ & \adxl345_int|Selector24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Selector23~7_combout\,
	datab => \adxl345_int|Selector24~1_combout\,
	datac => \adxl345_int|state.WRITE_FORMAT~q\,
	datad => \adxl345_int|Selector24~2_combout\,
	combout => \adxl345_int|Selector24~4_combout\);

-- Location: FF_X35_Y26_N25
\adxl345_int|state.WRITE_FORMAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector24~4_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|state.WRITE_FORMAT~q\);

-- Location: LCCOMB_X35_Y27_N0
\adxl345_int|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector24~0_combout\ = (!\adxl345_int|state.READ_Y_H~q\ & (\adxl345_int|Selector48~0_combout\ & !\adxl345_int|state.READ_Y_L~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.READ_Y_H~q\,
	datac => \adxl345_int|Selector48~0_combout\,
	datad => \adxl345_int|state.READ_Y_L~q\,
	combout => \adxl345_int|Selector24~0_combout\);

-- Location: LCCOMB_X38_Y25_N22
\adxl345_int|Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector53~0_combout\ = ((!\spi_inst_master|spi_state.IDLE~q\ & ((\adxl345_int|state.WRITE_FORMAT~q\) # (\adxl345_int|state.WRITE_POWER~q\)))) # (!\adxl345_int|Selector24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WRITE_FORMAT~q\,
	datab => \adxl345_int|Selector24~0_combout\,
	datac => \adxl345_int|state.WRITE_POWER~q\,
	datad => \spi_inst_master|spi_state.IDLE~q\,
	combout => \adxl345_int|Selector53~0_combout\);

-- Location: FF_X38_Y25_N23
\adxl345_int|s_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector53~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_start~q\);

-- Location: LCCOMB_X38_Y25_N20
\spi_inst_master|Selector24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector24~3_combout\ = (\adxl345_int|s_start~q\ & (((!\spi_inst_master|spi_state~9_combout\ & \spi_inst_master|spi_state.TRANSFER~q\)) # (!\spi_inst_master|spi_state.IDLE~q\))) # (!\adxl345_int|s_start~q\ & 
-- (!\spi_inst_master|spi_state~9_combout\ & (\spi_inst_master|spi_state.TRANSFER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|s_start~q\,
	datab => \spi_inst_master|spi_state~9_combout\,
	datac => \spi_inst_master|spi_state.TRANSFER~q\,
	datad => \spi_inst_master|spi_state.IDLE~q\,
	combout => \spi_inst_master|Selector24~3_combout\);

-- Location: FF_X38_Y25_N21
\spi_inst_master|spi_state.TRANSFER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector24~3_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|spi_state.TRANSFER~q\);

-- Location: LCCOMB_X38_Y24_N2
\spi_inst_master|sclk_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|sclk_reg~0_combout\ = (\spi_inst_master|spi_state.TRANSFER~q\ & (\spi_inst_master|sclk_tick~q\ $ (\spi_inst_master|sclk_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|sclk_tick~q\,
	datac => \spi_inst_master|sclk_reg~q\,
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|sclk_reg~0_combout\);

-- Location: FF_X38_Y24_N3
\spi_inst_master|sclk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|sclk_reg~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|sclk_reg~q\);

-- Location: LCCOMB_X38_Y24_N6
\spi_inst_master|rx_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|rx_shift_reg[0]~0_combout\ = (\spi_inst_master|spi_state.TRANSFER~q\ & (\spi_inst_master|sclk_tick~q\ & \spi_inst_master|sclk_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|spi_state.TRANSFER~q\,
	datab => \spi_inst_master|sclk_tick~q\,
	datad => \spi_inst_master|sclk_reg~q\,
	combout => \spi_inst_master|rx_shift_reg[0]~0_combout\);

-- Location: FF_X37_Y25_N31
\spi_inst_master|rx_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|rx_shift_reg[0]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|rx_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|rx_shift_reg\(0));

-- Location: FF_X37_Y25_N13
\spi_inst_master|rx_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|rx_shift_reg\(0),
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	ena => \spi_inst_master|rx_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|rx_shift_reg\(1));

-- Location: LCCOMB_X37_Y25_N18
\spi_inst_master|rx_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|rx_shift_reg[2]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(1),
	combout => \spi_inst_master|rx_shift_reg[2]~feeder_combout\);

-- Location: FF_X37_Y25_N19
\spi_inst_master|rx_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|rx_shift_reg[2]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|rx_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|rx_shift_reg\(2));

-- Location: LCCOMB_X37_Y25_N8
\spi_inst_master|rx_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|rx_shift_reg[3]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(2),
	combout => \spi_inst_master|rx_shift_reg[3]~feeder_combout\);

-- Location: FF_X37_Y25_N9
\spi_inst_master|rx_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|rx_shift_reg[3]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|rx_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|rx_shift_reg\(3));

-- Location: FF_X37_Y25_N7
\spi_inst_master|rx_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|rx_shift_reg\(3),
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	ena => \spi_inst_master|rx_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|rx_shift_reg\(4));

-- Location: LCCOMB_X37_Y25_N28
\spi_inst_master|rx_shift_reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|rx_shift_reg[5]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(4),
	combout => \spi_inst_master|rx_shift_reg[5]~feeder_combout\);

-- Location: FF_X37_Y25_N29
\spi_inst_master|rx_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|rx_shift_reg[5]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|rx_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|rx_shift_reg\(5));

-- Location: LCCOMB_X37_Y25_N10
\spi_inst_master|rx_shift_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|rx_shift_reg[6]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(5),
	combout => \spi_inst_master|rx_shift_reg[6]~feeder_combout\);

-- Location: FF_X37_Y25_N11
\spi_inst_master|rx_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|rx_shift_reg[6]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|rx_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|rx_shift_reg\(6));

-- Location: LCCOMB_X37_Y25_N24
\spi_inst_master|rx_shift_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|rx_shift_reg[7]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(6),
	combout => \spi_inst_master|rx_shift_reg[7]~feeder_combout\);

-- Location: FF_X37_Y25_N25
\spi_inst_master|rx_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|rx_shift_reg[7]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|rx_shift_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|rx_shift_reg\(7));

-- Location: LCCOMB_X37_Y25_N0
\spi_inst_master|data_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|data_out[7]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(7),
	combout => \spi_inst_master|data_out[7]~feeder_combout\);

-- Location: FF_X37_Y25_N1
\spi_inst_master|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|data_out[7]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|spi_state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|data_out\(7));

-- Location: LCCOMB_X37_Y26_N18
\adxl345_int|x_sample0[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample0[15]~feeder_combout\ = \spi_inst_master|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(7),
	combout => \adxl345_int|x_sample0[15]~feeder_combout\);

-- Location: LCCOMB_X34_Y26_N26
\adxl345_int|x_sample0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample0[0]~0_combout\ = (\spi_inst_master|data_ready~q\ & (\adxl345_int|state.WAIT_X_H~q\ & \reset_n_t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \adxl345_int|state.WAIT_X_H~q\,
	datac => \reset_n_t2~q\,
	combout => \adxl345_int|x_sample0[0]~0_combout\);

-- Location: FF_X37_Y26_N19
\adxl345_int|x_sample0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample0[15]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(15));

-- Location: LCCOMB_X37_Y26_N26
\adxl345_int|x_sample1[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample1[15]~feeder_combout\ = \adxl345_int|x_sample0\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample0\(15),
	combout => \adxl345_int|x_sample1[15]~feeder_combout\);

-- Location: FF_X37_Y26_N27
\adxl345_int|x_sample1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample1[15]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(15));

-- Location: LCCOMB_X37_Y25_N26
\spi_inst_master|data_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|data_out[6]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(6),
	combout => \spi_inst_master|data_out[6]~feeder_combout\);

-- Location: FF_X37_Y25_N27
\spi_inst_master|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|data_out[6]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|spi_state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|data_out\(6));

-- Location: FF_X37_Y26_N11
\adxl345_int|x_sample0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(6),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(14));

-- Location: FF_X37_Y26_N13
\adxl345_int|x_sample1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(14),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(14));

-- Location: LCCOMB_X37_Y25_N4
\spi_inst_master|data_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|data_out[5]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(5),
	combout => \spi_inst_master|data_out[5]~feeder_combout\);

-- Location: FF_X37_Y25_N5
\spi_inst_master|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|data_out[5]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|spi_state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|data_out\(5));

-- Location: FF_X37_Y26_N15
\adxl345_int|x_sample0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(5),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(13));

-- Location: FF_X37_Y26_N9
\adxl345_int|x_sample1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(13),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(13));

-- Location: LCCOMB_X37_Y25_N22
\spi_inst_master|data_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|data_out[4]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(4),
	combout => \spi_inst_master|data_out[4]~feeder_combout\);

-- Location: FF_X37_Y25_N23
\spi_inst_master|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|data_out[4]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|spi_state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|data_out\(4));

-- Location: FF_X37_Y26_N7
\adxl345_int|x_sample0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(4),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(12));

-- Location: LCCOMB_X37_Y26_N20
\adxl345_int|x_sample1[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample1[12]~feeder_combout\ = \adxl345_int|x_sample0\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample0\(12),
	combout => \adxl345_int|x_sample1[12]~feeder_combout\);

-- Location: FF_X37_Y26_N21
\adxl345_int|x_sample1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample1[12]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(12));

-- Location: FF_X37_Y25_N17
\spi_inst_master|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|rx_shift_reg\(3),
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	ena => \spi_inst_master|spi_state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|data_out\(3));

-- Location: LCCOMB_X37_Y26_N30
\adxl345_int|x_sample0[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample0[11]~feeder_combout\ = \spi_inst_master|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(3),
	combout => \adxl345_int|x_sample0[11]~feeder_combout\);

-- Location: FF_X37_Y26_N31
\adxl345_int|x_sample0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample0[11]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(11));

-- Location: FF_X37_Y26_N5
\adxl345_int|x_sample1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(11),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(11));

-- Location: LCCOMB_X37_Y25_N2
\spi_inst_master|data_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|data_out[2]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(2),
	combout => \spi_inst_master|data_out[2]~feeder_combout\);

-- Location: FF_X37_Y25_N3
\spi_inst_master|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|data_out[2]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|spi_state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|data_out\(2));

-- Location: FF_X37_Y26_N3
\adxl345_int|x_sample0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(2),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(10));

-- Location: LCCOMB_X37_Y26_N28
\adxl345_int|x_sample1[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample1[10]~feeder_combout\ = \adxl345_int|x_sample0\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample0\(10),
	combout => \adxl345_int|x_sample1[10]~feeder_combout\);

-- Location: FF_X37_Y26_N29
\adxl345_int|x_sample1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample1[10]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(10));

-- Location: LCCOMB_X37_Y25_N20
\spi_inst_master|data_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|data_out[1]~feeder_combout\ = \spi_inst_master|rx_shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|rx_shift_reg\(1),
	combout => \spi_inst_master|data_out[1]~feeder_combout\);

-- Location: FF_X37_Y25_N21
\spi_inst_master|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|data_out[1]~feeder_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|spi_state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|data_out\(1));

-- Location: LCCOMB_X37_Y26_N22
\adxl345_int|x_sample0[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample0[9]~feeder_combout\ = \spi_inst_master|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(1),
	combout => \adxl345_int|x_sample0[9]~feeder_combout\);

-- Location: FF_X37_Y26_N23
\adxl345_int|x_sample0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample0[9]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(9));

-- Location: FF_X37_Y26_N1
\adxl345_int|x_sample1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(9),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(9));

-- Location: FF_X37_Y25_N15
\spi_inst_master|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|rx_shift_reg\(0),
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	ena => \spi_inst_master|spi_state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|data_out\(0));

-- Location: FF_X37_Y27_N31
\adxl345_int|x_sample0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(0),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(8));

-- Location: FF_X37_Y27_N1
\adxl345_int|x_sample1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(8),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(8));

-- Location: LCCOMB_X34_Y26_N20
\adxl345_int|x_low[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_low[0]~0_combout\ = (\spi_inst_master|data_ready~q\ & (\reset_n_t2~q\ & \adxl345_int|state.WAIT_X_L~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \reset_n_t2~q\,
	datac => \adxl345_int|state.WAIT_X_L~q\,
	combout => \adxl345_int|x_low[0]~0_combout\);

-- Location: FF_X32_Y27_N13
\adxl345_int|x_low[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(7),
	sload => VCC,
	ena => \adxl345_int|x_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_low\(7));

-- Location: LCCOMB_X32_Y27_N0
\adxl345_int|x_sample0[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample0[7]~feeder_combout\ = \adxl345_int|x_low\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_low\(7),
	combout => \adxl345_int|x_sample0[7]~feeder_combout\);

-- Location: FF_X32_Y27_N1
\adxl345_int|x_sample0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample0[7]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(7));

-- Location: FF_X37_Y27_N29
\adxl345_int|x_sample1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(7),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(7));

-- Location: FF_X34_Y27_N1
\adxl345_int|x_low[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(6),
	sload => VCC,
	ena => \adxl345_int|x_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_low\(6));

-- Location: FF_X37_Y27_N27
\adxl345_int|x_sample0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_low\(6),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(6));

-- Location: FF_X37_Y27_N3
\adxl345_int|x_sample1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(6),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(6));

-- Location: LCCOMB_X32_Y27_N6
\adxl345_int|x_low[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_low[5]~feeder_combout\ = \spi_inst_master|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(5),
	combout => \adxl345_int|x_low[5]~feeder_combout\);

-- Location: FF_X32_Y27_N7
\adxl345_int|x_low[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_low[5]~feeder_combout\,
	ena => \adxl345_int|x_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_low\(5));

-- Location: LCCOMB_X32_Y27_N2
\adxl345_int|x_sample0[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample0[5]~feeder_combout\ = \adxl345_int|x_low\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_low\(5),
	combout => \adxl345_int|x_sample0[5]~feeder_combout\);

-- Location: FF_X32_Y27_N3
\adxl345_int|x_sample0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample0[5]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(5));

-- Location: FF_X37_Y27_N25
\adxl345_int|x_sample1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(5),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(5));

-- Location: LCCOMB_X34_Y27_N2
\adxl345_int|x_low[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_low[4]~feeder_combout\ = \spi_inst_master|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(4),
	combout => \adxl345_int|x_low[4]~feeder_combout\);

-- Location: FF_X34_Y27_N3
\adxl345_int|x_low[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_low[4]~feeder_combout\,
	ena => \adxl345_int|x_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_low\(4));

-- Location: FF_X37_Y27_N23
\adxl345_int|x_sample0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_low\(4),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(4));

-- Location: FF_X37_Y27_N7
\adxl345_int|x_sample1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(4),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(4));

-- Location: LCCOMB_X32_Y27_N8
\adxl345_int|x_low[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_low[3]~feeder_combout\ = \spi_inst_master|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(3),
	combout => \adxl345_int|x_low[3]~feeder_combout\);

-- Location: FF_X32_Y27_N9
\adxl345_int|x_low[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_low[3]~feeder_combout\,
	ena => \adxl345_int|x_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_low\(3));

-- Location: LCCOMB_X37_Y27_N4
\adxl345_int|x_sample0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample0[3]~feeder_combout\ = \adxl345_int|x_low\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_low\(3),
	combout => \adxl345_int|x_sample0[3]~feeder_combout\);

-- Location: FF_X37_Y27_N5
\adxl345_int|x_sample0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample0[3]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(3));

-- Location: FF_X37_Y27_N21
\adxl345_int|x_sample1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(3),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(3));

-- Location: FF_X37_Y26_N25
\adxl345_int|x_low[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(2),
	sload => VCC,
	ena => \adxl345_int|x_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_low\(2));

-- Location: FF_X37_Y27_N19
\adxl345_int|x_sample0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_low\(2),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(2));

-- Location: LCCOMB_X37_Y27_N10
\adxl345_int|x_sample1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample1[2]~feeder_combout\ = \adxl345_int|x_sample0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample0\(2),
	combout => \adxl345_int|x_sample1[2]~feeder_combout\);

-- Location: FF_X37_Y27_N11
\adxl345_int|x_sample1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample1[2]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(2));

-- Location: LCCOMB_X35_Y26_N0
\adxl345_int|x_low[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_low[1]~feeder_combout\ = \spi_inst_master|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(1),
	combout => \adxl345_int|x_low[1]~feeder_combout\);

-- Location: FF_X35_Y26_N1
\adxl345_int|x_low[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_low[1]~feeder_combout\,
	ena => \adxl345_int|x_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_low\(1));

-- Location: LCCOMB_X37_Y27_N8
\adxl345_int|x_sample0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample0[1]~feeder_combout\ = \adxl345_int|x_low\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_low\(1),
	combout => \adxl345_int|x_sample0[1]~feeder_combout\);

-- Location: FF_X37_Y27_N9
\adxl345_int|x_sample0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample0[1]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(1));

-- Location: FF_X37_Y27_N17
\adxl345_int|x_sample1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(1),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(1));

-- Location: LCCOMB_X34_Y27_N28
\adxl345_int|x_low[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_low[0]~feeder_combout\ = \spi_inst_master|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(0),
	combout => \adxl345_int|x_low[0]~feeder_combout\);

-- Location: FF_X34_Y27_N29
\adxl345_int|x_low[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_low[0]~feeder_combout\,
	ena => \adxl345_int|x_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_low\(0));

-- Location: FF_X37_Y27_N15
\adxl345_int|x_sample0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_low\(0),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample0\(0));

-- Location: FF_X37_Y27_N13
\adxl345_int|x_sample1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample0\(0),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample1\(0));

-- Location: LCCOMB_X37_Y27_N14
\adxl345_int|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~0_combout\ = (\adxl345_int|x_sample1\(0) & (\adxl345_int|x_sample0\(0) $ (VCC))) # (!\adxl345_int|x_sample1\(0) & (\adxl345_int|x_sample0\(0) & VCC))
-- \adxl345_int|Add0~1\ = CARRY((\adxl345_int|x_sample1\(0) & \adxl345_int|x_sample0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(0),
	datab => \adxl345_int|x_sample0\(0),
	datad => VCC,
	combout => \adxl345_int|Add0~0_combout\,
	cout => \adxl345_int|Add0~1\);

-- Location: LCCOMB_X37_Y27_N16
\adxl345_int|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~2_combout\ = (\adxl345_int|x_sample1\(1) & ((\adxl345_int|x_sample0\(1) & (\adxl345_int|Add0~1\ & VCC)) # (!\adxl345_int|x_sample0\(1) & (!\adxl345_int|Add0~1\)))) # (!\adxl345_int|x_sample1\(1) & ((\adxl345_int|x_sample0\(1) & 
-- (!\adxl345_int|Add0~1\)) # (!\adxl345_int|x_sample0\(1) & ((\adxl345_int|Add0~1\) # (GND)))))
-- \adxl345_int|Add0~3\ = CARRY((\adxl345_int|x_sample1\(1) & (!\adxl345_int|x_sample0\(1) & !\adxl345_int|Add0~1\)) # (!\adxl345_int|x_sample1\(1) & ((!\adxl345_int|Add0~1\) # (!\adxl345_int|x_sample0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(1),
	datab => \adxl345_int|x_sample0\(1),
	datad => VCC,
	cin => \adxl345_int|Add0~1\,
	combout => \adxl345_int|Add0~2_combout\,
	cout => \adxl345_int|Add0~3\);

-- Location: LCCOMB_X37_Y27_N18
\adxl345_int|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~4_combout\ = ((\adxl345_int|x_sample1\(2) $ (\adxl345_int|x_sample0\(2) $ (!\adxl345_int|Add0~3\)))) # (GND)
-- \adxl345_int|Add0~5\ = CARRY((\adxl345_int|x_sample1\(2) & ((\adxl345_int|x_sample0\(2)) # (!\adxl345_int|Add0~3\))) # (!\adxl345_int|x_sample1\(2) & (\adxl345_int|x_sample0\(2) & !\adxl345_int|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(2),
	datab => \adxl345_int|x_sample0\(2),
	datad => VCC,
	cin => \adxl345_int|Add0~3\,
	combout => \adxl345_int|Add0~4_combout\,
	cout => \adxl345_int|Add0~5\);

-- Location: LCCOMB_X37_Y27_N20
\adxl345_int|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~6_combout\ = (\adxl345_int|x_sample1\(3) & ((\adxl345_int|x_sample0\(3) & (\adxl345_int|Add0~5\ & VCC)) # (!\adxl345_int|x_sample0\(3) & (!\adxl345_int|Add0~5\)))) # (!\adxl345_int|x_sample1\(3) & ((\adxl345_int|x_sample0\(3) & 
-- (!\adxl345_int|Add0~5\)) # (!\adxl345_int|x_sample0\(3) & ((\adxl345_int|Add0~5\) # (GND)))))
-- \adxl345_int|Add0~7\ = CARRY((\adxl345_int|x_sample1\(3) & (!\adxl345_int|x_sample0\(3) & !\adxl345_int|Add0~5\)) # (!\adxl345_int|x_sample1\(3) & ((!\adxl345_int|Add0~5\) # (!\adxl345_int|x_sample0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(3),
	datab => \adxl345_int|x_sample0\(3),
	datad => VCC,
	cin => \adxl345_int|Add0~5\,
	combout => \adxl345_int|Add0~6_combout\,
	cout => \adxl345_int|Add0~7\);

-- Location: LCCOMB_X37_Y27_N22
\adxl345_int|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~8_combout\ = ((\adxl345_int|x_sample0\(4) $ (\adxl345_int|x_sample1\(4) $ (!\adxl345_int|Add0~7\)))) # (GND)
-- \adxl345_int|Add0~9\ = CARRY((\adxl345_int|x_sample0\(4) & ((\adxl345_int|x_sample1\(4)) # (!\adxl345_int|Add0~7\))) # (!\adxl345_int|x_sample0\(4) & (\adxl345_int|x_sample1\(4) & !\adxl345_int|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample0\(4),
	datab => \adxl345_int|x_sample1\(4),
	datad => VCC,
	cin => \adxl345_int|Add0~7\,
	combout => \adxl345_int|Add0~8_combout\,
	cout => \adxl345_int|Add0~9\);

-- Location: LCCOMB_X37_Y27_N24
\adxl345_int|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~10_combout\ = (\adxl345_int|x_sample0\(5) & ((\adxl345_int|x_sample1\(5) & (\adxl345_int|Add0~9\ & VCC)) # (!\adxl345_int|x_sample1\(5) & (!\adxl345_int|Add0~9\)))) # (!\adxl345_int|x_sample0\(5) & ((\adxl345_int|x_sample1\(5) & 
-- (!\adxl345_int|Add0~9\)) # (!\adxl345_int|x_sample1\(5) & ((\adxl345_int|Add0~9\) # (GND)))))
-- \adxl345_int|Add0~11\ = CARRY((\adxl345_int|x_sample0\(5) & (!\adxl345_int|x_sample1\(5) & !\adxl345_int|Add0~9\)) # (!\adxl345_int|x_sample0\(5) & ((!\adxl345_int|Add0~9\) # (!\adxl345_int|x_sample1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample0\(5),
	datab => \adxl345_int|x_sample1\(5),
	datad => VCC,
	cin => \adxl345_int|Add0~9\,
	combout => \adxl345_int|Add0~10_combout\,
	cout => \adxl345_int|Add0~11\);

-- Location: LCCOMB_X37_Y27_N26
\adxl345_int|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~12_combout\ = ((\adxl345_int|x_sample0\(6) $ (\adxl345_int|x_sample1\(6) $ (!\adxl345_int|Add0~11\)))) # (GND)
-- \adxl345_int|Add0~13\ = CARRY((\adxl345_int|x_sample0\(6) & ((\adxl345_int|x_sample1\(6)) # (!\adxl345_int|Add0~11\))) # (!\adxl345_int|x_sample0\(6) & (\adxl345_int|x_sample1\(6) & !\adxl345_int|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample0\(6),
	datab => \adxl345_int|x_sample1\(6),
	datad => VCC,
	cin => \adxl345_int|Add0~11\,
	combout => \adxl345_int|Add0~12_combout\,
	cout => \adxl345_int|Add0~13\);

-- Location: LCCOMB_X37_Y27_N28
\adxl345_int|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~14_combout\ = (\adxl345_int|x_sample1\(7) & ((\adxl345_int|x_sample0\(7) & (\adxl345_int|Add0~13\ & VCC)) # (!\adxl345_int|x_sample0\(7) & (!\adxl345_int|Add0~13\)))) # (!\adxl345_int|x_sample1\(7) & ((\adxl345_int|x_sample0\(7) & 
-- (!\adxl345_int|Add0~13\)) # (!\adxl345_int|x_sample0\(7) & ((\adxl345_int|Add0~13\) # (GND)))))
-- \adxl345_int|Add0~15\ = CARRY((\adxl345_int|x_sample1\(7) & (!\adxl345_int|x_sample0\(7) & !\adxl345_int|Add0~13\)) # (!\adxl345_int|x_sample1\(7) & ((!\adxl345_int|Add0~13\) # (!\adxl345_int|x_sample0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(7),
	datab => \adxl345_int|x_sample0\(7),
	datad => VCC,
	cin => \adxl345_int|Add0~13\,
	combout => \adxl345_int|Add0~14_combout\,
	cout => \adxl345_int|Add0~15\);

-- Location: LCCOMB_X37_Y27_N30
\adxl345_int|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~16_combout\ = ((\adxl345_int|x_sample0\(8) $ (\adxl345_int|x_sample1\(8) $ (!\adxl345_int|Add0~15\)))) # (GND)
-- \adxl345_int|Add0~17\ = CARRY((\adxl345_int|x_sample0\(8) & ((\adxl345_int|x_sample1\(8)) # (!\adxl345_int|Add0~15\))) # (!\adxl345_int|x_sample0\(8) & (\adxl345_int|x_sample1\(8) & !\adxl345_int|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample0\(8),
	datab => \adxl345_int|x_sample1\(8),
	datad => VCC,
	cin => \adxl345_int|Add0~15\,
	combout => \adxl345_int|Add0~16_combout\,
	cout => \adxl345_int|Add0~17\);

-- Location: LCCOMB_X37_Y26_N0
\adxl345_int|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~18_combout\ = (\adxl345_int|x_sample0\(9) & ((\adxl345_int|x_sample1\(9) & (\adxl345_int|Add0~17\ & VCC)) # (!\adxl345_int|x_sample1\(9) & (!\adxl345_int|Add0~17\)))) # (!\adxl345_int|x_sample0\(9) & ((\adxl345_int|x_sample1\(9) & 
-- (!\adxl345_int|Add0~17\)) # (!\adxl345_int|x_sample1\(9) & ((\adxl345_int|Add0~17\) # (GND)))))
-- \adxl345_int|Add0~19\ = CARRY((\adxl345_int|x_sample0\(9) & (!\adxl345_int|x_sample1\(9) & !\adxl345_int|Add0~17\)) # (!\adxl345_int|x_sample0\(9) & ((!\adxl345_int|Add0~17\) # (!\adxl345_int|x_sample1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample0\(9),
	datab => \adxl345_int|x_sample1\(9),
	datad => VCC,
	cin => \adxl345_int|Add0~17\,
	combout => \adxl345_int|Add0~18_combout\,
	cout => \adxl345_int|Add0~19\);

-- Location: LCCOMB_X37_Y26_N2
\adxl345_int|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~20_combout\ = ((\adxl345_int|x_sample0\(10) $ (\adxl345_int|x_sample1\(10) $ (!\adxl345_int|Add0~19\)))) # (GND)
-- \adxl345_int|Add0~21\ = CARRY((\adxl345_int|x_sample0\(10) & ((\adxl345_int|x_sample1\(10)) # (!\adxl345_int|Add0~19\))) # (!\adxl345_int|x_sample0\(10) & (\adxl345_int|x_sample1\(10) & !\adxl345_int|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample0\(10),
	datab => \adxl345_int|x_sample1\(10),
	datad => VCC,
	cin => \adxl345_int|Add0~19\,
	combout => \adxl345_int|Add0~20_combout\,
	cout => \adxl345_int|Add0~21\);

-- Location: LCCOMB_X37_Y26_N4
\adxl345_int|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~22_combout\ = (\adxl345_int|x_sample0\(11) & ((\adxl345_int|x_sample1\(11) & (\adxl345_int|Add0~21\ & VCC)) # (!\adxl345_int|x_sample1\(11) & (!\adxl345_int|Add0~21\)))) # (!\adxl345_int|x_sample0\(11) & ((\adxl345_int|x_sample1\(11) & 
-- (!\adxl345_int|Add0~21\)) # (!\adxl345_int|x_sample1\(11) & ((\adxl345_int|Add0~21\) # (GND)))))
-- \adxl345_int|Add0~23\ = CARRY((\adxl345_int|x_sample0\(11) & (!\adxl345_int|x_sample1\(11) & !\adxl345_int|Add0~21\)) # (!\adxl345_int|x_sample0\(11) & ((!\adxl345_int|Add0~21\) # (!\adxl345_int|x_sample1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample0\(11),
	datab => \adxl345_int|x_sample1\(11),
	datad => VCC,
	cin => \adxl345_int|Add0~21\,
	combout => \adxl345_int|Add0~22_combout\,
	cout => \adxl345_int|Add0~23\);

-- Location: LCCOMB_X37_Y26_N6
\adxl345_int|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~24_combout\ = ((\adxl345_int|x_sample0\(12) $ (\adxl345_int|x_sample1\(12) $ (!\adxl345_int|Add0~23\)))) # (GND)
-- \adxl345_int|Add0~25\ = CARRY((\adxl345_int|x_sample0\(12) & ((\adxl345_int|x_sample1\(12)) # (!\adxl345_int|Add0~23\))) # (!\adxl345_int|x_sample0\(12) & (\adxl345_int|x_sample1\(12) & !\adxl345_int|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample0\(12),
	datab => \adxl345_int|x_sample1\(12),
	datad => VCC,
	cin => \adxl345_int|Add0~23\,
	combout => \adxl345_int|Add0~24_combout\,
	cout => \adxl345_int|Add0~25\);

-- Location: LCCOMB_X37_Y26_N8
\adxl345_int|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~26_combout\ = (\adxl345_int|x_sample1\(13) & ((\adxl345_int|x_sample0\(13) & (\adxl345_int|Add0~25\ & VCC)) # (!\adxl345_int|x_sample0\(13) & (!\adxl345_int|Add0~25\)))) # (!\adxl345_int|x_sample1\(13) & ((\adxl345_int|x_sample0\(13) & 
-- (!\adxl345_int|Add0~25\)) # (!\adxl345_int|x_sample0\(13) & ((\adxl345_int|Add0~25\) # (GND)))))
-- \adxl345_int|Add0~27\ = CARRY((\adxl345_int|x_sample1\(13) & (!\adxl345_int|x_sample0\(13) & !\adxl345_int|Add0~25\)) # (!\adxl345_int|x_sample1\(13) & ((!\adxl345_int|Add0~25\) # (!\adxl345_int|x_sample0\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(13),
	datab => \adxl345_int|x_sample0\(13),
	datad => VCC,
	cin => \adxl345_int|Add0~25\,
	combout => \adxl345_int|Add0~26_combout\,
	cout => \adxl345_int|Add0~27\);

-- Location: LCCOMB_X37_Y26_N10
\adxl345_int|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~28_combout\ = ((\adxl345_int|x_sample1\(14) $ (\adxl345_int|x_sample0\(14) $ (!\adxl345_int|Add0~27\)))) # (GND)
-- \adxl345_int|Add0~29\ = CARRY((\adxl345_int|x_sample1\(14) & ((\adxl345_int|x_sample0\(14)) # (!\adxl345_int|Add0~27\))) # (!\adxl345_int|x_sample1\(14) & (\adxl345_int|x_sample0\(14) & !\adxl345_int|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(14),
	datab => \adxl345_int|x_sample0\(14),
	datad => VCC,
	cin => \adxl345_int|Add0~27\,
	combout => \adxl345_int|Add0~28_combout\,
	cout => \adxl345_int|Add0~29\);

-- Location: LCCOMB_X37_Y26_N12
\adxl345_int|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~30_combout\ = (\adxl345_int|x_sample1\(15) & ((\adxl345_int|x_sample0\(15) & (\adxl345_int|Add0~29\ & VCC)) # (!\adxl345_int|x_sample0\(15) & (!\adxl345_int|Add0~29\)))) # (!\adxl345_int|x_sample1\(15) & ((\adxl345_int|x_sample0\(15) & 
-- (!\adxl345_int|Add0~29\)) # (!\adxl345_int|x_sample0\(15) & ((\adxl345_int|Add0~29\) # (GND)))))
-- \adxl345_int|Add0~31\ = CARRY((\adxl345_int|x_sample1\(15) & (!\adxl345_int|x_sample0\(15) & !\adxl345_int|Add0~29\)) # (!\adxl345_int|x_sample1\(15) & ((!\adxl345_int|Add0~29\) # (!\adxl345_int|x_sample0\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(15),
	datab => \adxl345_int|x_sample0\(15),
	datad => VCC,
	cin => \adxl345_int|Add0~29\,
	combout => \adxl345_int|Add0~30_combout\,
	cout => \adxl345_int|Add0~31\);

-- Location: LCCOMB_X37_Y26_N14
\adxl345_int|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~32_combout\ = ((\adxl345_int|x_sample1\(15) $ (\adxl345_int|x_sample0\(15) $ (!\adxl345_int|Add0~31\)))) # (GND)
-- \adxl345_int|Add0~33\ = CARRY((\adxl345_int|x_sample1\(15) & ((\adxl345_int|x_sample0\(15)) # (!\adxl345_int|Add0~31\))) # (!\adxl345_int|x_sample1\(15) & (\adxl345_int|x_sample0\(15) & !\adxl345_int|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(15),
	datab => \adxl345_int|x_sample0\(15),
	datad => VCC,
	cin => \adxl345_int|Add0~31\,
	combout => \adxl345_int|Add0~32_combout\,
	cout => \adxl345_int|Add0~33\);

-- Location: LCCOMB_X39_Y26_N30
\adxl345_int|x_sample2[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[15]~feeder_combout\ = \adxl345_int|x_sample1\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(15),
	combout => \adxl345_int|x_sample2[15]~feeder_combout\);

-- Location: FF_X39_Y26_N31
\adxl345_int|x_sample2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[15]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(15));

-- Location: FF_X39_Y26_N15
\adxl345_int|x_sample3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(15),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(15));

-- Location: FF_X39_Y26_N17
\adxl345_int|x_sample2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample1\(14),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(14));

-- Location: FF_X39_Y26_N13
\adxl345_int|x_sample3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(14),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(14));

-- Location: LCCOMB_X39_Y26_N26
\adxl345_int|x_sample2[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[13]~feeder_combout\ = \adxl345_int|x_sample1\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(13),
	combout => \adxl345_int|x_sample2[13]~feeder_combout\);

-- Location: FF_X39_Y26_N27
\adxl345_int|x_sample2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[13]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(13));

-- Location: FF_X39_Y26_N11
\adxl345_int|x_sample3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(13),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(13));

-- Location: LCCOMB_X39_Y26_N24
\adxl345_int|x_sample2[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[12]~feeder_combout\ = \adxl345_int|x_sample1\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(12),
	combout => \adxl345_int|x_sample2[12]~feeder_combout\);

-- Location: FF_X39_Y26_N25
\adxl345_int|x_sample2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[12]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(12));

-- Location: FF_X39_Y26_N9
\adxl345_int|x_sample3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(12),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(12));

-- Location: FF_X39_Y26_N21
\adxl345_int|x_sample2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample1\(11),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(11));

-- Location: FF_X39_Y26_N7
\adxl345_int|x_sample3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(11),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(11));

-- Location: FF_X39_Y26_N29
\adxl345_int|x_sample2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample1\(10),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(10));

-- Location: FF_X39_Y26_N5
\adxl345_int|x_sample3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(10),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(10));

-- Location: LCCOMB_X39_Y26_N18
\adxl345_int|x_sample2[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[9]~feeder_combout\ = \adxl345_int|x_sample1\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(9),
	combout => \adxl345_int|x_sample2[9]~feeder_combout\);

-- Location: FF_X39_Y26_N19
\adxl345_int|x_sample2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[9]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(9));

-- Location: FF_X39_Y26_N3
\adxl345_int|x_sample3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(9),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(9));

-- Location: FF_X39_Y26_N23
\adxl345_int|x_sample2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample1\(8),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(8));

-- Location: FF_X39_Y26_N1
\adxl345_int|x_sample3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(8),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(8));

-- Location: LCCOMB_X39_Y27_N8
\adxl345_int|x_sample2[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[7]~feeder_combout\ = \adxl345_int|x_sample1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(7),
	combout => \adxl345_int|x_sample2[7]~feeder_combout\);

-- Location: FF_X39_Y27_N9
\adxl345_int|x_sample2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[7]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(7));

-- Location: FF_X39_Y27_N31
\adxl345_int|x_sample3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(7),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(7));

-- Location: FF_X39_Y27_N15
\adxl345_int|x_sample2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample1\(6),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(6));

-- Location: FF_X39_Y27_N29
\adxl345_int|x_sample3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(6),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(6));

-- Location: LCCOMB_X39_Y27_N4
\adxl345_int|x_sample2[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[5]~feeder_combout\ = \adxl345_int|x_sample1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(5),
	combout => \adxl345_int|x_sample2[5]~feeder_combout\);

-- Location: FF_X39_Y27_N5
\adxl345_int|x_sample2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[5]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(5));

-- Location: FF_X39_Y27_N27
\adxl345_int|x_sample3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(5),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(5));

-- Location: FF_X39_Y27_N11
\adxl345_int|x_sample2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample1\(4),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(4));

-- Location: FF_X39_Y27_N25
\adxl345_int|x_sample3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(4),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(4));

-- Location: LCCOMB_X39_Y27_N12
\adxl345_int|x_sample2[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[3]~feeder_combout\ = \adxl345_int|x_sample1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(3),
	combout => \adxl345_int|x_sample2[3]~feeder_combout\);

-- Location: FF_X39_Y27_N13
\adxl345_int|x_sample2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[3]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(3));

-- Location: FF_X39_Y27_N23
\adxl345_int|x_sample3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(3),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(3));

-- Location: LCCOMB_X39_Y27_N0
\adxl345_int|x_sample2[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[2]~feeder_combout\ = \adxl345_int|x_sample1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(2),
	combout => \adxl345_int|x_sample2[2]~feeder_combout\);

-- Location: FF_X39_Y27_N1
\adxl345_int|x_sample2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[2]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(2));

-- Location: FF_X39_Y27_N21
\adxl345_int|x_sample3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(2),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(2));

-- Location: LCCOMB_X39_Y27_N6
\adxl345_int|x_sample2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[1]~feeder_combout\ = \adxl345_int|x_sample1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(1),
	combout => \adxl345_int|x_sample2[1]~feeder_combout\);

-- Location: FF_X39_Y27_N7
\adxl345_int|x_sample2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[1]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(1));

-- Location: FF_X39_Y27_N19
\adxl345_int|x_sample3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(1),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(1));

-- Location: LCCOMB_X39_Y27_N2
\adxl345_int|x_sample2[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|x_sample2[0]~feeder_combout\ = \adxl345_int|x_sample1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|x_sample1\(0),
	combout => \adxl345_int|x_sample2[0]~feeder_combout\);

-- Location: FF_X39_Y27_N3
\adxl345_int|x_sample2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|x_sample2[0]~feeder_combout\,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample2\(0));

-- Location: FF_X39_Y27_N17
\adxl345_int|x_sample3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|x_sample2\(0),
	sload => VCC,
	ena => \adxl345_int|x_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|x_sample3\(0));

-- Location: LCCOMB_X39_Y27_N16
\adxl345_int|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~0_combout\ = (\adxl345_int|x_sample3\(0) & (\adxl345_int|x_sample2\(0) $ (VCC))) # (!\adxl345_int|x_sample3\(0) & (\adxl345_int|x_sample2\(0) & VCC))
-- \adxl345_int|Add1~1\ = CARRY((\adxl345_int|x_sample3\(0) & \adxl345_int|x_sample2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample3\(0),
	datab => \adxl345_int|x_sample2\(0),
	datad => VCC,
	combout => \adxl345_int|Add1~0_combout\,
	cout => \adxl345_int|Add1~1\);

-- Location: LCCOMB_X39_Y27_N18
\adxl345_int|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~2_combout\ = (\adxl345_int|x_sample2\(1) & ((\adxl345_int|x_sample3\(1) & (\adxl345_int|Add1~1\ & VCC)) # (!\adxl345_int|x_sample3\(1) & (!\adxl345_int|Add1~1\)))) # (!\adxl345_int|x_sample2\(1) & ((\adxl345_int|x_sample3\(1) & 
-- (!\adxl345_int|Add1~1\)) # (!\adxl345_int|x_sample3\(1) & ((\adxl345_int|Add1~1\) # (GND)))))
-- \adxl345_int|Add1~3\ = CARRY((\adxl345_int|x_sample2\(1) & (!\adxl345_int|x_sample3\(1) & !\adxl345_int|Add1~1\)) # (!\adxl345_int|x_sample2\(1) & ((!\adxl345_int|Add1~1\) # (!\adxl345_int|x_sample3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample2\(1),
	datab => \adxl345_int|x_sample3\(1),
	datad => VCC,
	cin => \adxl345_int|Add1~1\,
	combout => \adxl345_int|Add1~2_combout\,
	cout => \adxl345_int|Add1~3\);

-- Location: LCCOMB_X39_Y27_N20
\adxl345_int|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~4_combout\ = ((\adxl345_int|x_sample3\(2) $ (\adxl345_int|x_sample2\(2) $ (!\adxl345_int|Add1~3\)))) # (GND)
-- \adxl345_int|Add1~5\ = CARRY((\adxl345_int|x_sample3\(2) & ((\adxl345_int|x_sample2\(2)) # (!\adxl345_int|Add1~3\))) # (!\adxl345_int|x_sample3\(2) & (\adxl345_int|x_sample2\(2) & !\adxl345_int|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample3\(2),
	datab => \adxl345_int|x_sample2\(2),
	datad => VCC,
	cin => \adxl345_int|Add1~3\,
	combout => \adxl345_int|Add1~4_combout\,
	cout => \adxl345_int|Add1~5\);

-- Location: LCCOMB_X39_Y27_N22
\adxl345_int|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~6_combout\ = (\adxl345_int|x_sample3\(3) & ((\adxl345_int|x_sample2\(3) & (\adxl345_int|Add1~5\ & VCC)) # (!\adxl345_int|x_sample2\(3) & (!\adxl345_int|Add1~5\)))) # (!\adxl345_int|x_sample3\(3) & ((\adxl345_int|x_sample2\(3) & 
-- (!\adxl345_int|Add1~5\)) # (!\adxl345_int|x_sample2\(3) & ((\adxl345_int|Add1~5\) # (GND)))))
-- \adxl345_int|Add1~7\ = CARRY((\adxl345_int|x_sample3\(3) & (!\adxl345_int|x_sample2\(3) & !\adxl345_int|Add1~5\)) # (!\adxl345_int|x_sample3\(3) & ((!\adxl345_int|Add1~5\) # (!\adxl345_int|x_sample2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample3\(3),
	datab => \adxl345_int|x_sample2\(3),
	datad => VCC,
	cin => \adxl345_int|Add1~5\,
	combout => \adxl345_int|Add1~6_combout\,
	cout => \adxl345_int|Add1~7\);

-- Location: LCCOMB_X39_Y27_N24
\adxl345_int|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~8_combout\ = ((\adxl345_int|x_sample2\(4) $ (\adxl345_int|x_sample3\(4) $ (!\adxl345_int|Add1~7\)))) # (GND)
-- \adxl345_int|Add1~9\ = CARRY((\adxl345_int|x_sample2\(4) & ((\adxl345_int|x_sample3\(4)) # (!\adxl345_int|Add1~7\))) # (!\adxl345_int|x_sample2\(4) & (\adxl345_int|x_sample3\(4) & !\adxl345_int|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample2\(4),
	datab => \adxl345_int|x_sample3\(4),
	datad => VCC,
	cin => \adxl345_int|Add1~7\,
	combout => \adxl345_int|Add1~8_combout\,
	cout => \adxl345_int|Add1~9\);

-- Location: LCCOMB_X39_Y27_N26
\adxl345_int|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~10_combout\ = (\adxl345_int|x_sample3\(5) & ((\adxl345_int|x_sample2\(5) & (\adxl345_int|Add1~9\ & VCC)) # (!\adxl345_int|x_sample2\(5) & (!\adxl345_int|Add1~9\)))) # (!\adxl345_int|x_sample3\(5) & ((\adxl345_int|x_sample2\(5) & 
-- (!\adxl345_int|Add1~9\)) # (!\adxl345_int|x_sample2\(5) & ((\adxl345_int|Add1~9\) # (GND)))))
-- \adxl345_int|Add1~11\ = CARRY((\adxl345_int|x_sample3\(5) & (!\adxl345_int|x_sample2\(5) & !\adxl345_int|Add1~9\)) # (!\adxl345_int|x_sample3\(5) & ((!\adxl345_int|Add1~9\) # (!\adxl345_int|x_sample2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample3\(5),
	datab => \adxl345_int|x_sample2\(5),
	datad => VCC,
	cin => \adxl345_int|Add1~9\,
	combout => \adxl345_int|Add1~10_combout\,
	cout => \adxl345_int|Add1~11\);

-- Location: LCCOMB_X39_Y27_N28
\adxl345_int|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~12_combout\ = ((\adxl345_int|x_sample2\(6) $ (\adxl345_int|x_sample3\(6) $ (!\adxl345_int|Add1~11\)))) # (GND)
-- \adxl345_int|Add1~13\ = CARRY((\adxl345_int|x_sample2\(6) & ((\adxl345_int|x_sample3\(6)) # (!\adxl345_int|Add1~11\))) # (!\adxl345_int|x_sample2\(6) & (\adxl345_int|x_sample3\(6) & !\adxl345_int|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample2\(6),
	datab => \adxl345_int|x_sample3\(6),
	datad => VCC,
	cin => \adxl345_int|Add1~11\,
	combout => \adxl345_int|Add1~12_combout\,
	cout => \adxl345_int|Add1~13\);

-- Location: LCCOMB_X39_Y27_N30
\adxl345_int|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~14_combout\ = (\adxl345_int|x_sample3\(7) & ((\adxl345_int|x_sample2\(7) & (\adxl345_int|Add1~13\ & VCC)) # (!\adxl345_int|x_sample2\(7) & (!\adxl345_int|Add1~13\)))) # (!\adxl345_int|x_sample3\(7) & ((\adxl345_int|x_sample2\(7) & 
-- (!\adxl345_int|Add1~13\)) # (!\adxl345_int|x_sample2\(7) & ((\adxl345_int|Add1~13\) # (GND)))))
-- \adxl345_int|Add1~15\ = CARRY((\adxl345_int|x_sample3\(7) & (!\adxl345_int|x_sample2\(7) & !\adxl345_int|Add1~13\)) # (!\adxl345_int|x_sample3\(7) & ((!\adxl345_int|Add1~13\) # (!\adxl345_int|x_sample2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample3\(7),
	datab => \adxl345_int|x_sample2\(7),
	datad => VCC,
	cin => \adxl345_int|Add1~13\,
	combout => \adxl345_int|Add1~14_combout\,
	cout => \adxl345_int|Add1~15\);

-- Location: LCCOMB_X39_Y26_N0
\adxl345_int|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~16_combout\ = ((\adxl345_int|x_sample2\(8) $ (\adxl345_int|x_sample3\(8) $ (!\adxl345_int|Add1~15\)))) # (GND)
-- \adxl345_int|Add1~17\ = CARRY((\adxl345_int|x_sample2\(8) & ((\adxl345_int|x_sample3\(8)) # (!\adxl345_int|Add1~15\))) # (!\adxl345_int|x_sample2\(8) & (\adxl345_int|x_sample3\(8) & !\adxl345_int|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample2\(8),
	datab => \adxl345_int|x_sample3\(8),
	datad => VCC,
	cin => \adxl345_int|Add1~15\,
	combout => \adxl345_int|Add1~16_combout\,
	cout => \adxl345_int|Add1~17\);

-- Location: LCCOMB_X39_Y26_N2
\adxl345_int|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~18_combout\ = (\adxl345_int|x_sample2\(9) & ((\adxl345_int|x_sample3\(9) & (\adxl345_int|Add1~17\ & VCC)) # (!\adxl345_int|x_sample3\(9) & (!\adxl345_int|Add1~17\)))) # (!\adxl345_int|x_sample2\(9) & ((\adxl345_int|x_sample3\(9) & 
-- (!\adxl345_int|Add1~17\)) # (!\adxl345_int|x_sample3\(9) & ((\adxl345_int|Add1~17\) # (GND)))))
-- \adxl345_int|Add1~19\ = CARRY((\adxl345_int|x_sample2\(9) & (!\adxl345_int|x_sample3\(9) & !\adxl345_int|Add1~17\)) # (!\adxl345_int|x_sample2\(9) & ((!\adxl345_int|Add1~17\) # (!\adxl345_int|x_sample3\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample2\(9),
	datab => \adxl345_int|x_sample3\(9),
	datad => VCC,
	cin => \adxl345_int|Add1~17\,
	combout => \adxl345_int|Add1~18_combout\,
	cout => \adxl345_int|Add1~19\);

-- Location: LCCOMB_X39_Y26_N4
\adxl345_int|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~20_combout\ = ((\adxl345_int|x_sample3\(10) $ (\adxl345_int|x_sample2\(10) $ (!\adxl345_int|Add1~19\)))) # (GND)
-- \adxl345_int|Add1~21\ = CARRY((\adxl345_int|x_sample3\(10) & ((\adxl345_int|x_sample2\(10)) # (!\adxl345_int|Add1~19\))) # (!\adxl345_int|x_sample3\(10) & (\adxl345_int|x_sample2\(10) & !\adxl345_int|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample3\(10),
	datab => \adxl345_int|x_sample2\(10),
	datad => VCC,
	cin => \adxl345_int|Add1~19\,
	combout => \adxl345_int|Add1~20_combout\,
	cout => \adxl345_int|Add1~21\);

-- Location: LCCOMB_X39_Y26_N6
\adxl345_int|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~22_combout\ = (\adxl345_int|x_sample3\(11) & ((\adxl345_int|x_sample2\(11) & (\adxl345_int|Add1~21\ & VCC)) # (!\adxl345_int|x_sample2\(11) & (!\adxl345_int|Add1~21\)))) # (!\adxl345_int|x_sample3\(11) & ((\adxl345_int|x_sample2\(11) & 
-- (!\adxl345_int|Add1~21\)) # (!\adxl345_int|x_sample2\(11) & ((\adxl345_int|Add1~21\) # (GND)))))
-- \adxl345_int|Add1~23\ = CARRY((\adxl345_int|x_sample3\(11) & (!\adxl345_int|x_sample2\(11) & !\adxl345_int|Add1~21\)) # (!\adxl345_int|x_sample3\(11) & ((!\adxl345_int|Add1~21\) # (!\adxl345_int|x_sample2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample3\(11),
	datab => \adxl345_int|x_sample2\(11),
	datad => VCC,
	cin => \adxl345_int|Add1~21\,
	combout => \adxl345_int|Add1~22_combout\,
	cout => \adxl345_int|Add1~23\);

-- Location: LCCOMB_X39_Y26_N8
\adxl345_int|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~24_combout\ = ((\adxl345_int|x_sample2\(12) $ (\adxl345_int|x_sample3\(12) $ (!\adxl345_int|Add1~23\)))) # (GND)
-- \adxl345_int|Add1~25\ = CARRY((\adxl345_int|x_sample2\(12) & ((\adxl345_int|x_sample3\(12)) # (!\adxl345_int|Add1~23\))) # (!\adxl345_int|x_sample2\(12) & (\adxl345_int|x_sample3\(12) & !\adxl345_int|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample2\(12),
	datab => \adxl345_int|x_sample3\(12),
	datad => VCC,
	cin => \adxl345_int|Add1~23\,
	combout => \adxl345_int|Add1~24_combout\,
	cout => \adxl345_int|Add1~25\);

-- Location: LCCOMB_X39_Y26_N10
\adxl345_int|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~26_combout\ = (\adxl345_int|x_sample2\(13) & ((\adxl345_int|x_sample3\(13) & (\adxl345_int|Add1~25\ & VCC)) # (!\adxl345_int|x_sample3\(13) & (!\adxl345_int|Add1~25\)))) # (!\adxl345_int|x_sample2\(13) & ((\adxl345_int|x_sample3\(13) & 
-- (!\adxl345_int|Add1~25\)) # (!\adxl345_int|x_sample3\(13) & ((\adxl345_int|Add1~25\) # (GND)))))
-- \adxl345_int|Add1~27\ = CARRY((\adxl345_int|x_sample2\(13) & (!\adxl345_int|x_sample3\(13) & !\adxl345_int|Add1~25\)) # (!\adxl345_int|x_sample2\(13) & ((!\adxl345_int|Add1~25\) # (!\adxl345_int|x_sample3\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample2\(13),
	datab => \adxl345_int|x_sample3\(13),
	datad => VCC,
	cin => \adxl345_int|Add1~25\,
	combout => \adxl345_int|Add1~26_combout\,
	cout => \adxl345_int|Add1~27\);

-- Location: LCCOMB_X39_Y26_N12
\adxl345_int|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~28_combout\ = ((\adxl345_int|x_sample3\(14) $ (\adxl345_int|x_sample2\(14) $ (!\adxl345_int|Add1~27\)))) # (GND)
-- \adxl345_int|Add1~29\ = CARRY((\adxl345_int|x_sample3\(14) & ((\adxl345_int|x_sample2\(14)) # (!\adxl345_int|Add1~27\))) # (!\adxl345_int|x_sample3\(14) & (\adxl345_int|x_sample2\(14) & !\adxl345_int|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample3\(14),
	datab => \adxl345_int|x_sample2\(14),
	datad => VCC,
	cin => \adxl345_int|Add1~27\,
	combout => \adxl345_int|Add1~28_combout\,
	cout => \adxl345_int|Add1~29\);

-- Location: LCCOMB_X39_Y26_N14
\adxl345_int|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~30_combout\ = (\adxl345_int|x_sample2\(15) & ((\adxl345_int|x_sample3\(15) & (\adxl345_int|Add1~29\ & VCC)) # (!\adxl345_int|x_sample3\(15) & (!\adxl345_int|Add1~29\)))) # (!\adxl345_int|x_sample2\(15) & ((\adxl345_int|x_sample3\(15) & 
-- (!\adxl345_int|Add1~29\)) # (!\adxl345_int|x_sample3\(15) & ((\adxl345_int|Add1~29\) # (GND)))))
-- \adxl345_int|Add1~31\ = CARRY((\adxl345_int|x_sample2\(15) & (!\adxl345_int|x_sample3\(15) & !\adxl345_int|Add1~29\)) # (!\adxl345_int|x_sample2\(15) & ((!\adxl345_int|Add1~29\) # (!\adxl345_int|x_sample3\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample2\(15),
	datab => \adxl345_int|x_sample3\(15),
	datad => VCC,
	cin => \adxl345_int|Add1~29\,
	combout => \adxl345_int|Add1~30_combout\,
	cout => \adxl345_int|Add1~31\);

-- Location: LCCOMB_X39_Y26_N16
\adxl345_int|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add1~32_combout\ = \adxl345_int|x_sample2\(15) $ (\adxl345_int|x_sample3\(15) $ (!\adxl345_int|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample2\(15),
	datab => \adxl345_int|x_sample3\(15),
	cin => \adxl345_int|Add1~31\,
	combout => \adxl345_int|Add1~32_combout\);

-- Location: LCCOMB_X38_Y27_N14
\adxl345_int|s_acc_send[32]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[32]~49_cout\ = CARRY((\adxl345_int|Add0~0_combout\ & \adxl345_int|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~0_combout\,
	datab => \adxl345_int|Add1~0_combout\,
	datad => VCC,
	cout => \adxl345_int|s_acc_send[32]~49_cout\);

-- Location: LCCOMB_X38_Y27_N16
\adxl345_int|s_acc_send[32]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[32]~51_cout\ = CARRY((\adxl345_int|Add0~2_combout\ & (!\adxl345_int|Add1~2_combout\ & !\adxl345_int|s_acc_send[32]~49_cout\)) # (!\adxl345_int|Add0~2_combout\ & ((!\adxl345_int|s_acc_send[32]~49_cout\) # 
-- (!\adxl345_int|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~2_combout\,
	datab => \adxl345_int|Add1~2_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[32]~49_cout\,
	cout => \adxl345_int|s_acc_send[32]~51_cout\);

-- Location: LCCOMB_X38_Y27_N18
\adxl345_int|s_acc_send[32]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[32]~52_combout\ = ((\adxl345_int|Add1~4_combout\ $ (\adxl345_int|Add0~4_combout\ $ (!\adxl345_int|s_acc_send[32]~51_cout\)))) # (GND)
-- \adxl345_int|s_acc_send[32]~53\ = CARRY((\adxl345_int|Add1~4_combout\ & ((\adxl345_int|Add0~4_combout\) # (!\adxl345_int|s_acc_send[32]~51_cout\))) # (!\adxl345_int|Add1~4_combout\ & (\adxl345_int|Add0~4_combout\ & !\adxl345_int|s_acc_send[32]~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add1~4_combout\,
	datab => \adxl345_int|Add0~4_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[32]~51_cout\,
	combout => \adxl345_int|s_acc_send[32]~52_combout\,
	cout => \adxl345_int|s_acc_send[32]~53\);

-- Location: LCCOMB_X38_Y27_N20
\adxl345_int|s_acc_send[33]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[33]~54_combout\ = (\adxl345_int|Add0~6_combout\ & ((\adxl345_int|Add1~6_combout\ & (\adxl345_int|s_acc_send[32]~53\ & VCC)) # (!\adxl345_int|Add1~6_combout\ & (!\adxl345_int|s_acc_send[32]~53\)))) # (!\adxl345_int|Add0~6_combout\ & 
-- ((\adxl345_int|Add1~6_combout\ & (!\adxl345_int|s_acc_send[32]~53\)) # (!\adxl345_int|Add1~6_combout\ & ((\adxl345_int|s_acc_send[32]~53\) # (GND)))))
-- \adxl345_int|s_acc_send[33]~55\ = CARRY((\adxl345_int|Add0~6_combout\ & (!\adxl345_int|Add1~6_combout\ & !\adxl345_int|s_acc_send[32]~53\)) # (!\adxl345_int|Add0~6_combout\ & ((!\adxl345_int|s_acc_send[32]~53\) # (!\adxl345_int|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~6_combout\,
	datab => \adxl345_int|Add1~6_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[32]~53\,
	combout => \adxl345_int|s_acc_send[33]~54_combout\,
	cout => \adxl345_int|s_acc_send[33]~55\);

-- Location: LCCOMB_X38_Y27_N22
\adxl345_int|s_acc_send[34]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[34]~56_combout\ = ((\adxl345_int|Add1~8_combout\ $ (\adxl345_int|Add0~8_combout\ $ (!\adxl345_int|s_acc_send[33]~55\)))) # (GND)
-- \adxl345_int|s_acc_send[34]~57\ = CARRY((\adxl345_int|Add1~8_combout\ & ((\adxl345_int|Add0~8_combout\) # (!\adxl345_int|s_acc_send[33]~55\))) # (!\adxl345_int|Add1~8_combout\ & (\adxl345_int|Add0~8_combout\ & !\adxl345_int|s_acc_send[33]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add1~8_combout\,
	datab => \adxl345_int|Add0~8_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[33]~55\,
	combout => \adxl345_int|s_acc_send[34]~56_combout\,
	cout => \adxl345_int|s_acc_send[34]~57\);

-- Location: LCCOMB_X38_Y27_N24
\adxl345_int|s_acc_send[35]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[35]~58_combout\ = (\adxl345_int|Add1~10_combout\ & ((\adxl345_int|Add0~10_combout\ & (\adxl345_int|s_acc_send[34]~57\ & VCC)) # (!\adxl345_int|Add0~10_combout\ & (!\adxl345_int|s_acc_send[34]~57\)))) # 
-- (!\adxl345_int|Add1~10_combout\ & ((\adxl345_int|Add0~10_combout\ & (!\adxl345_int|s_acc_send[34]~57\)) # (!\adxl345_int|Add0~10_combout\ & ((\adxl345_int|s_acc_send[34]~57\) # (GND)))))
-- \adxl345_int|s_acc_send[35]~59\ = CARRY((\adxl345_int|Add1~10_combout\ & (!\adxl345_int|Add0~10_combout\ & !\adxl345_int|s_acc_send[34]~57\)) # (!\adxl345_int|Add1~10_combout\ & ((!\adxl345_int|s_acc_send[34]~57\) # (!\adxl345_int|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add1~10_combout\,
	datab => \adxl345_int|Add0~10_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[34]~57\,
	combout => \adxl345_int|s_acc_send[35]~58_combout\,
	cout => \adxl345_int|s_acc_send[35]~59\);

-- Location: LCCOMB_X38_Y27_N26
\adxl345_int|s_acc_send[36]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[36]~60_combout\ = ((\adxl345_int|Add0~12_combout\ $ (\adxl345_int|Add1~12_combout\ $ (!\adxl345_int|s_acc_send[35]~59\)))) # (GND)
-- \adxl345_int|s_acc_send[36]~61\ = CARRY((\adxl345_int|Add0~12_combout\ & ((\adxl345_int|Add1~12_combout\) # (!\adxl345_int|s_acc_send[35]~59\))) # (!\adxl345_int|Add0~12_combout\ & (\adxl345_int|Add1~12_combout\ & !\adxl345_int|s_acc_send[35]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~12_combout\,
	datab => \adxl345_int|Add1~12_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[35]~59\,
	combout => \adxl345_int|s_acc_send[36]~60_combout\,
	cout => \adxl345_int|s_acc_send[36]~61\);

-- Location: LCCOMB_X38_Y27_N28
\adxl345_int|s_acc_send[37]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[37]~62_combout\ = (\adxl345_int|Add1~14_combout\ & ((\adxl345_int|Add0~14_combout\ & (\adxl345_int|s_acc_send[36]~61\ & VCC)) # (!\adxl345_int|Add0~14_combout\ & (!\adxl345_int|s_acc_send[36]~61\)))) # 
-- (!\adxl345_int|Add1~14_combout\ & ((\adxl345_int|Add0~14_combout\ & (!\adxl345_int|s_acc_send[36]~61\)) # (!\adxl345_int|Add0~14_combout\ & ((\adxl345_int|s_acc_send[36]~61\) # (GND)))))
-- \adxl345_int|s_acc_send[37]~63\ = CARRY((\adxl345_int|Add1~14_combout\ & (!\adxl345_int|Add0~14_combout\ & !\adxl345_int|s_acc_send[36]~61\)) # (!\adxl345_int|Add1~14_combout\ & ((!\adxl345_int|s_acc_send[36]~61\) # (!\adxl345_int|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add1~14_combout\,
	datab => \adxl345_int|Add0~14_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[36]~61\,
	combout => \adxl345_int|s_acc_send[37]~62_combout\,
	cout => \adxl345_int|s_acc_send[37]~63\);

-- Location: LCCOMB_X38_Y27_N30
\adxl345_int|s_acc_send[38]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[38]~64_combout\ = ((\adxl345_int|Add1~16_combout\ $ (\adxl345_int|Add0~16_combout\ $ (!\adxl345_int|s_acc_send[37]~63\)))) # (GND)
-- \adxl345_int|s_acc_send[38]~65\ = CARRY((\adxl345_int|Add1~16_combout\ & ((\adxl345_int|Add0~16_combout\) # (!\adxl345_int|s_acc_send[37]~63\))) # (!\adxl345_int|Add1~16_combout\ & (\adxl345_int|Add0~16_combout\ & !\adxl345_int|s_acc_send[37]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add1~16_combout\,
	datab => \adxl345_int|Add0~16_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[37]~63\,
	combout => \adxl345_int|s_acc_send[38]~64_combout\,
	cout => \adxl345_int|s_acc_send[38]~65\);

-- Location: LCCOMB_X38_Y26_N0
\adxl345_int|s_acc_send[39]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[39]~66_combout\ = (\adxl345_int|Add1~18_combout\ & ((\adxl345_int|Add0~18_combout\ & (\adxl345_int|s_acc_send[38]~65\ & VCC)) # (!\adxl345_int|Add0~18_combout\ & (!\adxl345_int|s_acc_send[38]~65\)))) # 
-- (!\adxl345_int|Add1~18_combout\ & ((\adxl345_int|Add0~18_combout\ & (!\adxl345_int|s_acc_send[38]~65\)) # (!\adxl345_int|Add0~18_combout\ & ((\adxl345_int|s_acc_send[38]~65\) # (GND)))))
-- \adxl345_int|s_acc_send[39]~67\ = CARRY((\adxl345_int|Add1~18_combout\ & (!\adxl345_int|Add0~18_combout\ & !\adxl345_int|s_acc_send[38]~65\)) # (!\adxl345_int|Add1~18_combout\ & ((!\adxl345_int|s_acc_send[38]~65\) # (!\adxl345_int|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add1~18_combout\,
	datab => \adxl345_int|Add0~18_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[38]~65\,
	combout => \adxl345_int|s_acc_send[39]~66_combout\,
	cout => \adxl345_int|s_acc_send[39]~67\);

-- Location: LCCOMB_X38_Y26_N2
\adxl345_int|s_acc_send[40]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[40]~68_combout\ = ((\adxl345_int|Add1~20_combout\ $ (\adxl345_int|Add0~20_combout\ $ (!\adxl345_int|s_acc_send[39]~67\)))) # (GND)
-- \adxl345_int|s_acc_send[40]~69\ = CARRY((\adxl345_int|Add1~20_combout\ & ((\adxl345_int|Add0~20_combout\) # (!\adxl345_int|s_acc_send[39]~67\))) # (!\adxl345_int|Add1~20_combout\ & (\adxl345_int|Add0~20_combout\ & !\adxl345_int|s_acc_send[39]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add1~20_combout\,
	datab => \adxl345_int|Add0~20_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[39]~67\,
	combout => \adxl345_int|s_acc_send[40]~68_combout\,
	cout => \adxl345_int|s_acc_send[40]~69\);

-- Location: LCCOMB_X38_Y26_N4
\adxl345_int|s_acc_send[41]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[41]~70_combout\ = (\adxl345_int|Add1~22_combout\ & ((\adxl345_int|Add0~22_combout\ & (\adxl345_int|s_acc_send[40]~69\ & VCC)) # (!\adxl345_int|Add0~22_combout\ & (!\adxl345_int|s_acc_send[40]~69\)))) # 
-- (!\adxl345_int|Add1~22_combout\ & ((\adxl345_int|Add0~22_combout\ & (!\adxl345_int|s_acc_send[40]~69\)) # (!\adxl345_int|Add0~22_combout\ & ((\adxl345_int|s_acc_send[40]~69\) # (GND)))))
-- \adxl345_int|s_acc_send[41]~71\ = CARRY((\adxl345_int|Add1~22_combout\ & (!\adxl345_int|Add0~22_combout\ & !\adxl345_int|s_acc_send[40]~69\)) # (!\adxl345_int|Add1~22_combout\ & ((!\adxl345_int|s_acc_send[40]~69\) # (!\adxl345_int|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add1~22_combout\,
	datab => \adxl345_int|Add0~22_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[40]~69\,
	combout => \adxl345_int|s_acc_send[41]~70_combout\,
	cout => \adxl345_int|s_acc_send[41]~71\);

-- Location: LCCOMB_X38_Y26_N6
\adxl345_int|s_acc_send[42]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[42]~72_combout\ = ((\adxl345_int|Add0~24_combout\ $ (\adxl345_int|Add1~24_combout\ $ (!\adxl345_int|s_acc_send[41]~71\)))) # (GND)
-- \adxl345_int|s_acc_send[42]~73\ = CARRY((\adxl345_int|Add0~24_combout\ & ((\adxl345_int|Add1~24_combout\) # (!\adxl345_int|s_acc_send[41]~71\))) # (!\adxl345_int|Add0~24_combout\ & (\adxl345_int|Add1~24_combout\ & !\adxl345_int|s_acc_send[41]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~24_combout\,
	datab => \adxl345_int|Add1~24_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[41]~71\,
	combout => \adxl345_int|s_acc_send[42]~72_combout\,
	cout => \adxl345_int|s_acc_send[42]~73\);

-- Location: LCCOMB_X38_Y26_N8
\adxl345_int|s_acc_send[43]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[43]~74_combout\ = (\adxl345_int|Add0~26_combout\ & ((\adxl345_int|Add1~26_combout\ & (\adxl345_int|s_acc_send[42]~73\ & VCC)) # (!\adxl345_int|Add1~26_combout\ & (!\adxl345_int|s_acc_send[42]~73\)))) # 
-- (!\adxl345_int|Add0~26_combout\ & ((\adxl345_int|Add1~26_combout\ & (!\adxl345_int|s_acc_send[42]~73\)) # (!\adxl345_int|Add1~26_combout\ & ((\adxl345_int|s_acc_send[42]~73\) # (GND)))))
-- \adxl345_int|s_acc_send[43]~75\ = CARRY((\adxl345_int|Add0~26_combout\ & (!\adxl345_int|Add1~26_combout\ & !\adxl345_int|s_acc_send[42]~73\)) # (!\adxl345_int|Add0~26_combout\ & ((!\adxl345_int|s_acc_send[42]~73\) # (!\adxl345_int|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~26_combout\,
	datab => \adxl345_int|Add1~26_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[42]~73\,
	combout => \adxl345_int|s_acc_send[43]~74_combout\,
	cout => \adxl345_int|s_acc_send[43]~75\);

-- Location: LCCOMB_X38_Y26_N10
\adxl345_int|s_acc_send[44]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[44]~76_combout\ = ((\adxl345_int|Add0~28_combout\ $ (\adxl345_int|Add1~28_combout\ $ (!\adxl345_int|s_acc_send[43]~75\)))) # (GND)
-- \adxl345_int|s_acc_send[44]~77\ = CARRY((\adxl345_int|Add0~28_combout\ & ((\adxl345_int|Add1~28_combout\) # (!\adxl345_int|s_acc_send[43]~75\))) # (!\adxl345_int|Add0~28_combout\ & (\adxl345_int|Add1~28_combout\ & !\adxl345_int|s_acc_send[43]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~28_combout\,
	datab => \adxl345_int|Add1~28_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[43]~75\,
	combout => \adxl345_int|s_acc_send[44]~76_combout\,
	cout => \adxl345_int|s_acc_send[44]~77\);

-- Location: LCCOMB_X38_Y26_N12
\adxl345_int|s_acc_send[45]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[45]~78_combout\ = (\adxl345_int|Add0~30_combout\ & ((\adxl345_int|Add1~30_combout\ & (\adxl345_int|s_acc_send[44]~77\ & VCC)) # (!\adxl345_int|Add1~30_combout\ & (!\adxl345_int|s_acc_send[44]~77\)))) # 
-- (!\adxl345_int|Add0~30_combout\ & ((\adxl345_int|Add1~30_combout\ & (!\adxl345_int|s_acc_send[44]~77\)) # (!\adxl345_int|Add1~30_combout\ & ((\adxl345_int|s_acc_send[44]~77\) # (GND)))))
-- \adxl345_int|s_acc_send[45]~79\ = CARRY((\adxl345_int|Add0~30_combout\ & (!\adxl345_int|Add1~30_combout\ & !\adxl345_int|s_acc_send[44]~77\)) # (!\adxl345_int|Add0~30_combout\ & ((!\adxl345_int|s_acc_send[44]~77\) # (!\adxl345_int|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~30_combout\,
	datab => \adxl345_int|Add1~30_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[44]~77\,
	combout => \adxl345_int|s_acc_send[45]~78_combout\,
	cout => \adxl345_int|s_acc_send[45]~79\);

-- Location: LCCOMB_X38_Y26_N14
\adxl345_int|s_acc_send[46]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[46]~80_combout\ = ((\adxl345_int|Add0~32_combout\ $ (\adxl345_int|Add1~32_combout\ $ (!\adxl345_int|s_acc_send[45]~79\)))) # (GND)
-- \adxl345_int|s_acc_send[46]~81\ = CARRY((\adxl345_int|Add0~32_combout\ & ((\adxl345_int|Add1~32_combout\) # (!\adxl345_int|s_acc_send[45]~79\))) # (!\adxl345_int|Add0~32_combout\ & (\adxl345_int|Add1~32_combout\ & !\adxl345_int|s_acc_send[45]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~32_combout\,
	datab => \adxl345_int|Add1~32_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[45]~79\,
	combout => \adxl345_int|s_acc_send[46]~80_combout\,
	cout => \adxl345_int|s_acc_send[46]~81\);

-- Location: FF_X38_Y26_N15
\adxl345_int|s_acc_send[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[46]~80_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(46));

-- Location: FF_X38_Y26_N11
\adxl345_int|s_acc_send[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[44]~76_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(44));

-- Location: FF_X38_Y26_N9
\adxl345_int|s_acc_send[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[43]~74_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(43));

-- Location: FF_X38_Y27_N31
\adxl345_int|s_acc_send[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[38]~64_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(38));

-- Location: FF_X38_Y27_N29
\adxl345_int|s_acc_send[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[37]~62_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(37));

-- Location: FF_X38_Y27_N27
\adxl345_int|s_acc_send[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[36]~60_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(36));

-- Location: FF_X38_Y27_N25
\adxl345_int|s_acc_send[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[35]~58_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(35));

-- Location: FF_X38_Y27_N23
\adxl345_int|s_acc_send[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[34]~56_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(34));

-- Location: FF_X38_Y27_N21
\adxl345_int|s_acc_send[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[33]~54_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(33));

-- Location: LCCOMB_X32_Y26_N28
\adxl345_int|y_sample0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample0[0]~0_combout\ = (\adxl345_int|state.WAIT_Y_H~q\ & (\reset_n_t2~q\ & \spi_inst_master|data_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WAIT_Y_H~q\,
	datab => \reset_n_t2~q\,
	datac => \spi_inst_master|data_ready~q\,
	combout => \adxl345_int|y_sample0[0]~0_combout\);

-- Location: FF_X31_Y23_N19
\adxl345_int|y_sample0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(7),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(15));

-- Location: LCCOMB_X31_Y23_N30
\adxl345_int|y_sample1[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample1[15]~feeder_combout\ = \adxl345_int|y_sample0\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample0\(15),
	combout => \adxl345_int|y_sample1[15]~feeder_combout\);

-- Location: FF_X31_Y23_N31
\adxl345_int|y_sample1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample1[15]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(15));

-- Location: FF_X31_Y23_N11
\adxl345_int|y_sample0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(6),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(14));

-- Location: FF_X31_Y23_N13
\adxl345_int|y_sample1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(14),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(14));

-- Location: FF_X31_Y23_N15
\adxl345_int|y_sample0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(5),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(13));

-- Location: FF_X31_Y23_N9
\adxl345_int|y_sample1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(13),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(13));

-- Location: FF_X31_Y23_N7
\adxl345_int|y_sample0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(4),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(12));

-- Location: LCCOMB_X31_Y23_N20
\adxl345_int|y_sample1[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample1[12]~feeder_combout\ = \adxl345_int|y_sample0\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample0\(12),
	combout => \adxl345_int|y_sample1[12]~feeder_combout\);

-- Location: FF_X31_Y23_N21
\adxl345_int|y_sample1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample1[12]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(12));

-- Location: FF_X31_Y23_N25
\adxl345_int|y_sample0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(3),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(11));

-- Location: FF_X31_Y23_N5
\adxl345_int|y_sample1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(11),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(11));

-- Location: FF_X31_Y23_N3
\adxl345_int|y_sample0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(2),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(10));

-- Location: LCCOMB_X31_Y23_N26
\adxl345_int|y_sample1[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample1[10]~feeder_combout\ = \adxl345_int|y_sample0\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample0\(10),
	combout => \adxl345_int|y_sample1[10]~feeder_combout\);

-- Location: FF_X31_Y23_N27
\adxl345_int|y_sample1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample1[10]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(10));

-- Location: FF_X31_Y23_N23
\adxl345_int|y_sample0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(1),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(9));

-- Location: FF_X31_Y23_N1
\adxl345_int|y_sample1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(9),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(9));

-- Location: FF_X31_Y24_N31
\adxl345_int|y_sample0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(0),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(8));

-- Location: FF_X31_Y24_N3
\adxl345_int|y_sample1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(8),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(8));

-- Location: LCCOMB_X32_Y26_N8
\adxl345_int|y_low[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_low[0]~0_combout\ = (\spi_inst_master|data_ready~q\ & (\reset_n_t2~q\ & \adxl345_int|state.WAIT_Y_L~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datac => \reset_n_t2~q\,
	datad => \adxl345_int|state.WAIT_Y_L~q\,
	combout => \adxl345_int|y_low[0]~0_combout\);

-- Location: FF_X34_Y24_N5
\adxl345_int|y_low[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(7),
	sload => VCC,
	ena => \adxl345_int|y_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_low\(7));

-- Location: LCCOMB_X31_Y24_N4
\adxl345_int|y_sample0[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample0[7]~feeder_combout\ = \adxl345_int|y_low\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_low\(7),
	combout => \adxl345_int|y_sample0[7]~feeder_combout\);

-- Location: FF_X31_Y24_N5
\adxl345_int|y_sample0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample0[7]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(7));

-- Location: FF_X31_Y24_N29
\adxl345_int|y_sample1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(7),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(7));

-- Location: FF_X35_Y24_N25
\adxl345_int|y_low[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(6),
	sload => VCC,
	ena => \adxl345_int|y_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_low\(6));

-- Location: FF_X31_Y24_N27
\adxl345_int|y_sample0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_low\(6),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(6));

-- Location: FF_X34_Y24_N17
\adxl345_int|y_sample1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(6),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(6));

-- Location: LCCOMB_X32_Y26_N6
\adxl345_int|y_low[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_low[5]~feeder_combout\ = \spi_inst_master|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(5),
	combout => \adxl345_int|y_low[5]~feeder_combout\);

-- Location: FF_X32_Y26_N7
\adxl345_int|y_low[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_low[5]~feeder_combout\,
	ena => \adxl345_int|y_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_low\(5));

-- Location: LCCOMB_X31_Y24_N8
\adxl345_int|y_sample0[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample0[5]~feeder_combout\ = \adxl345_int|y_low\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_low\(5),
	combout => \adxl345_int|y_sample0[5]~feeder_combout\);

-- Location: FF_X31_Y24_N9
\adxl345_int|y_sample0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample0[5]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(5));

-- Location: FF_X31_Y24_N25
\adxl345_int|y_sample1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(5),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(5));

-- Location: LCCOMB_X32_Y26_N24
\adxl345_int|y_low[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_low[4]~feeder_combout\ = \spi_inst_master|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(4),
	combout => \adxl345_int|y_low[4]~feeder_combout\);

-- Location: FF_X32_Y26_N25
\adxl345_int|y_low[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_low[4]~feeder_combout\,
	ena => \adxl345_int|y_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_low\(4));

-- Location: FF_X31_Y24_N23
\adxl345_int|y_sample0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_low\(4),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(4));

-- Location: FF_X31_Y24_N1
\adxl345_int|y_sample1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(4),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(4));

-- Location: LCCOMB_X32_Y26_N18
\adxl345_int|y_low[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_low[3]~feeder_combout\ = \spi_inst_master|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(3),
	combout => \adxl345_int|y_low[3]~feeder_combout\);

-- Location: FF_X32_Y26_N19
\adxl345_int|y_low[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_low[3]~feeder_combout\,
	ena => \adxl345_int|y_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_low\(3));

-- Location: LCCOMB_X31_Y24_N10
\adxl345_int|y_sample0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample0[3]~feeder_combout\ = \adxl345_int|y_low\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_low\(3),
	combout => \adxl345_int|y_sample0[3]~feeder_combout\);

-- Location: FF_X31_Y24_N11
\adxl345_int|y_sample0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample0[3]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(3));

-- Location: FF_X31_Y24_N21
\adxl345_int|y_sample1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(3),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(3));

-- Location: LCCOMB_X32_Y26_N20
\adxl345_int|y_low[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_low[2]~feeder_combout\ = \spi_inst_master|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(2),
	combout => \adxl345_int|y_low[2]~feeder_combout\);

-- Location: FF_X32_Y26_N21
\adxl345_int|y_low[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_low[2]~feeder_combout\,
	ena => \adxl345_int|y_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_low\(2));

-- Location: FF_X31_Y24_N19
\adxl345_int|y_sample0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_low\(2),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(2));

-- Location: LCCOMB_X31_Y24_N12
\adxl345_int|y_sample1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample1[2]~feeder_combout\ = \adxl345_int|y_sample0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample0\(2),
	combout => \adxl345_int|y_sample1[2]~feeder_combout\);

-- Location: FF_X31_Y24_N13
\adxl345_int|y_sample1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample1[2]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(2));

-- Location: FF_X32_Y26_N31
\adxl345_int|y_low[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(1),
	sload => VCC,
	ena => \adxl345_int|y_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_low\(1));

-- Location: LCCOMB_X34_Y24_N10
\adxl345_int|y_sample0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample0[1]~feeder_combout\ = \adxl345_int|y_low\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_low\(1),
	combout => \adxl345_int|y_sample0[1]~feeder_combout\);

-- Location: FF_X34_Y24_N11
\adxl345_int|y_sample0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample0[1]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(1));

-- Location: FF_X31_Y24_N17
\adxl345_int|y_sample1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(1),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(1));

-- Location: LCCOMB_X34_Y24_N6
\adxl345_int|y_low[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_low[0]~feeder_combout\ = \spi_inst_master|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(0),
	combout => \adxl345_int|y_low[0]~feeder_combout\);

-- Location: FF_X34_Y24_N7
\adxl345_int|y_low[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_low[0]~feeder_combout\,
	ena => \adxl345_int|y_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_low\(0));

-- Location: FF_X31_Y24_N15
\adxl345_int|y_sample0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_low\(0),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample0\(0));

-- Location: FF_X31_Y24_N7
\adxl345_int|y_sample1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample0\(0),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample1\(0));

-- Location: LCCOMB_X31_Y24_N14
\adxl345_int|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~0_combout\ = (\adxl345_int|y_sample1\(0) & (\adxl345_int|y_sample0\(0) $ (VCC))) # (!\adxl345_int|y_sample1\(0) & (\adxl345_int|y_sample0\(0) & VCC))
-- \adxl345_int|Add3~1\ = CARRY((\adxl345_int|y_sample1\(0) & \adxl345_int|y_sample0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(0),
	datab => \adxl345_int|y_sample0\(0),
	datad => VCC,
	combout => \adxl345_int|Add3~0_combout\,
	cout => \adxl345_int|Add3~1\);

-- Location: LCCOMB_X31_Y24_N16
\adxl345_int|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~2_combout\ = (\adxl345_int|y_sample0\(1) & ((\adxl345_int|y_sample1\(1) & (\adxl345_int|Add3~1\ & VCC)) # (!\adxl345_int|y_sample1\(1) & (!\adxl345_int|Add3~1\)))) # (!\adxl345_int|y_sample0\(1) & ((\adxl345_int|y_sample1\(1) & 
-- (!\adxl345_int|Add3~1\)) # (!\adxl345_int|y_sample1\(1) & ((\adxl345_int|Add3~1\) # (GND)))))
-- \adxl345_int|Add3~3\ = CARRY((\adxl345_int|y_sample0\(1) & (!\adxl345_int|y_sample1\(1) & !\adxl345_int|Add3~1\)) # (!\adxl345_int|y_sample0\(1) & ((!\adxl345_int|Add3~1\) # (!\adxl345_int|y_sample1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample0\(1),
	datab => \adxl345_int|y_sample1\(1),
	datad => VCC,
	cin => \adxl345_int|Add3~1\,
	combout => \adxl345_int|Add3~2_combout\,
	cout => \adxl345_int|Add3~3\);

-- Location: LCCOMB_X31_Y24_N18
\adxl345_int|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~4_combout\ = ((\adxl345_int|y_sample1\(2) $ (\adxl345_int|y_sample0\(2) $ (!\adxl345_int|Add3~3\)))) # (GND)
-- \adxl345_int|Add3~5\ = CARRY((\adxl345_int|y_sample1\(2) & ((\adxl345_int|y_sample0\(2)) # (!\adxl345_int|Add3~3\))) # (!\adxl345_int|y_sample1\(2) & (\adxl345_int|y_sample0\(2) & !\adxl345_int|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(2),
	datab => \adxl345_int|y_sample0\(2),
	datad => VCC,
	cin => \adxl345_int|Add3~3\,
	combout => \adxl345_int|Add3~4_combout\,
	cout => \adxl345_int|Add3~5\);

-- Location: LCCOMB_X31_Y24_N20
\adxl345_int|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~6_combout\ = (\adxl345_int|y_sample0\(3) & ((\adxl345_int|y_sample1\(3) & (\adxl345_int|Add3~5\ & VCC)) # (!\adxl345_int|y_sample1\(3) & (!\adxl345_int|Add3~5\)))) # (!\adxl345_int|y_sample0\(3) & ((\adxl345_int|y_sample1\(3) & 
-- (!\adxl345_int|Add3~5\)) # (!\adxl345_int|y_sample1\(3) & ((\adxl345_int|Add3~5\) # (GND)))))
-- \adxl345_int|Add3~7\ = CARRY((\adxl345_int|y_sample0\(3) & (!\adxl345_int|y_sample1\(3) & !\adxl345_int|Add3~5\)) # (!\adxl345_int|y_sample0\(3) & ((!\adxl345_int|Add3~5\) # (!\adxl345_int|y_sample1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample0\(3),
	datab => \adxl345_int|y_sample1\(3),
	datad => VCC,
	cin => \adxl345_int|Add3~5\,
	combout => \adxl345_int|Add3~6_combout\,
	cout => \adxl345_int|Add3~7\);

-- Location: LCCOMB_X31_Y24_N22
\adxl345_int|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~8_combout\ = ((\adxl345_int|y_sample0\(4) $ (\adxl345_int|y_sample1\(4) $ (!\adxl345_int|Add3~7\)))) # (GND)
-- \adxl345_int|Add3~9\ = CARRY((\adxl345_int|y_sample0\(4) & ((\adxl345_int|y_sample1\(4)) # (!\adxl345_int|Add3~7\))) # (!\adxl345_int|y_sample0\(4) & (\adxl345_int|y_sample1\(4) & !\adxl345_int|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample0\(4),
	datab => \adxl345_int|y_sample1\(4),
	datad => VCC,
	cin => \adxl345_int|Add3~7\,
	combout => \adxl345_int|Add3~8_combout\,
	cout => \adxl345_int|Add3~9\);

-- Location: LCCOMB_X31_Y24_N24
\adxl345_int|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~10_combout\ = (\adxl345_int|y_sample1\(5) & ((\adxl345_int|y_sample0\(5) & (\adxl345_int|Add3~9\ & VCC)) # (!\adxl345_int|y_sample0\(5) & (!\adxl345_int|Add3~9\)))) # (!\adxl345_int|y_sample1\(5) & ((\adxl345_int|y_sample0\(5) & 
-- (!\adxl345_int|Add3~9\)) # (!\adxl345_int|y_sample0\(5) & ((\adxl345_int|Add3~9\) # (GND)))))
-- \adxl345_int|Add3~11\ = CARRY((\adxl345_int|y_sample1\(5) & (!\adxl345_int|y_sample0\(5) & !\adxl345_int|Add3~9\)) # (!\adxl345_int|y_sample1\(5) & ((!\adxl345_int|Add3~9\) # (!\adxl345_int|y_sample0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(5),
	datab => \adxl345_int|y_sample0\(5),
	datad => VCC,
	cin => \adxl345_int|Add3~9\,
	combout => \adxl345_int|Add3~10_combout\,
	cout => \adxl345_int|Add3~11\);

-- Location: LCCOMB_X31_Y24_N26
\adxl345_int|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~12_combout\ = ((\adxl345_int|y_sample0\(6) $ (\adxl345_int|y_sample1\(6) $ (!\adxl345_int|Add3~11\)))) # (GND)
-- \adxl345_int|Add3~13\ = CARRY((\adxl345_int|y_sample0\(6) & ((\adxl345_int|y_sample1\(6)) # (!\adxl345_int|Add3~11\))) # (!\adxl345_int|y_sample0\(6) & (\adxl345_int|y_sample1\(6) & !\adxl345_int|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample0\(6),
	datab => \adxl345_int|y_sample1\(6),
	datad => VCC,
	cin => \adxl345_int|Add3~11\,
	combout => \adxl345_int|Add3~12_combout\,
	cout => \adxl345_int|Add3~13\);

-- Location: LCCOMB_X31_Y24_N28
\adxl345_int|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~14_combout\ = (\adxl345_int|y_sample1\(7) & ((\adxl345_int|y_sample0\(7) & (\adxl345_int|Add3~13\ & VCC)) # (!\adxl345_int|y_sample0\(7) & (!\adxl345_int|Add3~13\)))) # (!\adxl345_int|y_sample1\(7) & ((\adxl345_int|y_sample0\(7) & 
-- (!\adxl345_int|Add3~13\)) # (!\adxl345_int|y_sample0\(7) & ((\adxl345_int|Add3~13\) # (GND)))))
-- \adxl345_int|Add3~15\ = CARRY((\adxl345_int|y_sample1\(7) & (!\adxl345_int|y_sample0\(7) & !\adxl345_int|Add3~13\)) # (!\adxl345_int|y_sample1\(7) & ((!\adxl345_int|Add3~13\) # (!\adxl345_int|y_sample0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(7),
	datab => \adxl345_int|y_sample0\(7),
	datad => VCC,
	cin => \adxl345_int|Add3~13\,
	combout => \adxl345_int|Add3~14_combout\,
	cout => \adxl345_int|Add3~15\);

-- Location: LCCOMB_X31_Y24_N30
\adxl345_int|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~16_combout\ = ((\adxl345_int|y_sample0\(8) $ (\adxl345_int|y_sample1\(8) $ (!\adxl345_int|Add3~15\)))) # (GND)
-- \adxl345_int|Add3~17\ = CARRY((\adxl345_int|y_sample0\(8) & ((\adxl345_int|y_sample1\(8)) # (!\adxl345_int|Add3~15\))) # (!\adxl345_int|y_sample0\(8) & (\adxl345_int|y_sample1\(8) & !\adxl345_int|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample0\(8),
	datab => \adxl345_int|y_sample1\(8),
	datad => VCC,
	cin => \adxl345_int|Add3~15\,
	combout => \adxl345_int|Add3~16_combout\,
	cout => \adxl345_int|Add3~17\);

-- Location: LCCOMB_X31_Y23_N0
\adxl345_int|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~18_combout\ = (\adxl345_int|y_sample0\(9) & ((\adxl345_int|y_sample1\(9) & (\adxl345_int|Add3~17\ & VCC)) # (!\adxl345_int|y_sample1\(9) & (!\adxl345_int|Add3~17\)))) # (!\adxl345_int|y_sample0\(9) & ((\adxl345_int|y_sample1\(9) & 
-- (!\adxl345_int|Add3~17\)) # (!\adxl345_int|y_sample1\(9) & ((\adxl345_int|Add3~17\) # (GND)))))
-- \adxl345_int|Add3~19\ = CARRY((\adxl345_int|y_sample0\(9) & (!\adxl345_int|y_sample1\(9) & !\adxl345_int|Add3~17\)) # (!\adxl345_int|y_sample0\(9) & ((!\adxl345_int|Add3~17\) # (!\adxl345_int|y_sample1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample0\(9),
	datab => \adxl345_int|y_sample1\(9),
	datad => VCC,
	cin => \adxl345_int|Add3~17\,
	combout => \adxl345_int|Add3~18_combout\,
	cout => \adxl345_int|Add3~19\);

-- Location: LCCOMB_X31_Y23_N2
\adxl345_int|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~20_combout\ = ((\adxl345_int|y_sample1\(10) $ (\adxl345_int|y_sample0\(10) $ (!\adxl345_int|Add3~19\)))) # (GND)
-- \adxl345_int|Add3~21\ = CARRY((\adxl345_int|y_sample1\(10) & ((\adxl345_int|y_sample0\(10)) # (!\adxl345_int|Add3~19\))) # (!\adxl345_int|y_sample1\(10) & (\adxl345_int|y_sample0\(10) & !\adxl345_int|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(10),
	datab => \adxl345_int|y_sample0\(10),
	datad => VCC,
	cin => \adxl345_int|Add3~19\,
	combout => \adxl345_int|Add3~20_combout\,
	cout => \adxl345_int|Add3~21\);

-- Location: LCCOMB_X31_Y23_N4
\adxl345_int|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~22_combout\ = (\adxl345_int|y_sample0\(11) & ((\adxl345_int|y_sample1\(11) & (\adxl345_int|Add3~21\ & VCC)) # (!\adxl345_int|y_sample1\(11) & (!\adxl345_int|Add3~21\)))) # (!\adxl345_int|y_sample0\(11) & ((\adxl345_int|y_sample1\(11) & 
-- (!\adxl345_int|Add3~21\)) # (!\adxl345_int|y_sample1\(11) & ((\adxl345_int|Add3~21\) # (GND)))))
-- \adxl345_int|Add3~23\ = CARRY((\adxl345_int|y_sample0\(11) & (!\adxl345_int|y_sample1\(11) & !\adxl345_int|Add3~21\)) # (!\adxl345_int|y_sample0\(11) & ((!\adxl345_int|Add3~21\) # (!\adxl345_int|y_sample1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample0\(11),
	datab => \adxl345_int|y_sample1\(11),
	datad => VCC,
	cin => \adxl345_int|Add3~21\,
	combout => \adxl345_int|Add3~22_combout\,
	cout => \adxl345_int|Add3~23\);

-- Location: LCCOMB_X31_Y23_N6
\adxl345_int|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~24_combout\ = ((\adxl345_int|y_sample0\(12) $ (\adxl345_int|y_sample1\(12) $ (!\adxl345_int|Add3~23\)))) # (GND)
-- \adxl345_int|Add3~25\ = CARRY((\adxl345_int|y_sample0\(12) & ((\adxl345_int|y_sample1\(12)) # (!\adxl345_int|Add3~23\))) # (!\adxl345_int|y_sample0\(12) & (\adxl345_int|y_sample1\(12) & !\adxl345_int|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample0\(12),
	datab => \adxl345_int|y_sample1\(12),
	datad => VCC,
	cin => \adxl345_int|Add3~23\,
	combout => \adxl345_int|Add3~24_combout\,
	cout => \adxl345_int|Add3~25\);

-- Location: LCCOMB_X31_Y23_N8
\adxl345_int|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~26_combout\ = (\adxl345_int|y_sample1\(13) & ((\adxl345_int|y_sample0\(13) & (\adxl345_int|Add3~25\ & VCC)) # (!\adxl345_int|y_sample0\(13) & (!\adxl345_int|Add3~25\)))) # (!\adxl345_int|y_sample1\(13) & ((\adxl345_int|y_sample0\(13) & 
-- (!\adxl345_int|Add3~25\)) # (!\adxl345_int|y_sample0\(13) & ((\adxl345_int|Add3~25\) # (GND)))))
-- \adxl345_int|Add3~27\ = CARRY((\adxl345_int|y_sample1\(13) & (!\adxl345_int|y_sample0\(13) & !\adxl345_int|Add3~25\)) # (!\adxl345_int|y_sample1\(13) & ((!\adxl345_int|Add3~25\) # (!\adxl345_int|y_sample0\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(13),
	datab => \adxl345_int|y_sample0\(13),
	datad => VCC,
	cin => \adxl345_int|Add3~25\,
	combout => \adxl345_int|Add3~26_combout\,
	cout => \adxl345_int|Add3~27\);

-- Location: LCCOMB_X31_Y23_N10
\adxl345_int|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~28_combout\ = ((\adxl345_int|y_sample1\(14) $ (\adxl345_int|y_sample0\(14) $ (!\adxl345_int|Add3~27\)))) # (GND)
-- \adxl345_int|Add3~29\ = CARRY((\adxl345_int|y_sample1\(14) & ((\adxl345_int|y_sample0\(14)) # (!\adxl345_int|Add3~27\))) # (!\adxl345_int|y_sample1\(14) & (\adxl345_int|y_sample0\(14) & !\adxl345_int|Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(14),
	datab => \adxl345_int|y_sample0\(14),
	datad => VCC,
	cin => \adxl345_int|Add3~27\,
	combout => \adxl345_int|Add3~28_combout\,
	cout => \adxl345_int|Add3~29\);

-- Location: LCCOMB_X31_Y23_N12
\adxl345_int|Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~30_combout\ = (\adxl345_int|y_sample1\(15) & ((\adxl345_int|y_sample0\(15) & (\adxl345_int|Add3~29\ & VCC)) # (!\adxl345_int|y_sample0\(15) & (!\adxl345_int|Add3~29\)))) # (!\adxl345_int|y_sample1\(15) & ((\adxl345_int|y_sample0\(15) & 
-- (!\adxl345_int|Add3~29\)) # (!\adxl345_int|y_sample0\(15) & ((\adxl345_int|Add3~29\) # (GND)))))
-- \adxl345_int|Add3~31\ = CARRY((\adxl345_int|y_sample1\(15) & (!\adxl345_int|y_sample0\(15) & !\adxl345_int|Add3~29\)) # (!\adxl345_int|y_sample1\(15) & ((!\adxl345_int|Add3~29\) # (!\adxl345_int|y_sample0\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(15),
	datab => \adxl345_int|y_sample0\(15),
	datad => VCC,
	cin => \adxl345_int|Add3~29\,
	combout => \adxl345_int|Add3~30_combout\,
	cout => \adxl345_int|Add3~31\);

-- Location: LCCOMB_X31_Y23_N14
\adxl345_int|Add3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~32_combout\ = ((\adxl345_int|y_sample1\(15) $ (\adxl345_int|y_sample0\(15) $ (!\adxl345_int|Add3~31\)))) # (GND)
-- \adxl345_int|Add3~33\ = CARRY((\adxl345_int|y_sample1\(15) & ((\adxl345_int|y_sample0\(15)) # (!\adxl345_int|Add3~31\))) # (!\adxl345_int|y_sample1\(15) & (\adxl345_int|y_sample0\(15) & !\adxl345_int|Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(15),
	datab => \adxl345_int|y_sample0\(15),
	datad => VCC,
	cin => \adxl345_int|Add3~31\,
	combout => \adxl345_int|Add3~32_combout\,
	cout => \adxl345_int|Add3~33\);

-- Location: LCCOMB_X31_Y23_N16
\adxl345_int|Add3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add3~34_combout\ = \adxl345_int|y_sample1\(15) $ (\adxl345_int|y_sample0\(15) $ (\adxl345_int|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample1\(15),
	datab => \adxl345_int|y_sample0\(15),
	cin => \adxl345_int|Add3~33\,
	combout => \adxl345_int|Add3~34_combout\);

-- Location: FF_X30_Y23_N27
\adxl345_int|y_sample2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(15),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(15));

-- Location: FF_X30_Y23_N15
\adxl345_int|y_sample3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(15),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(15));

-- Location: FF_X30_Y23_N17
\adxl345_int|y_sample2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(14),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(14));

-- Location: FF_X30_Y23_N13
\adxl345_int|y_sample3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(14),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(14));

-- Location: FF_X30_Y23_N31
\adxl345_int|y_sample2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(13),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(13));

-- Location: FF_X30_Y23_N11
\adxl345_int|y_sample3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(13),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(13));

-- Location: FF_X30_Y23_N23
\adxl345_int|y_sample2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(12),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(12));

-- Location: FF_X30_Y23_N9
\adxl345_int|y_sample3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(12),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(12));

-- Location: FF_X30_Y23_N19
\adxl345_int|y_sample2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(11),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(11));

-- Location: FF_X30_Y23_N7
\adxl345_int|y_sample3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(11),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(11));

-- Location: LCCOMB_X30_Y23_N28
\adxl345_int|y_sample2[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample2[10]~feeder_combout\ = \adxl345_int|y_sample1\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample1\(10),
	combout => \adxl345_int|y_sample2[10]~feeder_combout\);

-- Location: FF_X30_Y23_N29
\adxl345_int|y_sample2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample2[10]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(10));

-- Location: FF_X30_Y23_N5
\adxl345_int|y_sample3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(10),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(10));

-- Location: FF_X30_Y23_N25
\adxl345_int|y_sample2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(9),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(9));

-- Location: FF_X30_Y23_N3
\adxl345_int|y_sample3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(9),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(9));

-- Location: LCCOMB_X30_Y23_N20
\adxl345_int|y_sample2[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample2[8]~feeder_combout\ = \adxl345_int|y_sample1\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample1\(8),
	combout => \adxl345_int|y_sample2[8]~feeder_combout\);

-- Location: FF_X30_Y23_N21
\adxl345_int|y_sample2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample2[8]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(8));

-- Location: FF_X30_Y23_N1
\adxl345_int|y_sample3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(8),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(8));

-- Location: LCCOMB_X30_Y24_N14
\adxl345_int|y_sample2[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample2[7]~feeder_combout\ = \adxl345_int|y_sample1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample1\(7),
	combout => \adxl345_int|y_sample2[7]~feeder_combout\);

-- Location: FF_X30_Y24_N15
\adxl345_int|y_sample2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample2[7]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(7));

-- Location: FF_X30_Y24_N31
\adxl345_int|y_sample3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(7),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(7));

-- Location: LCCOMB_X30_Y24_N8
\adxl345_int|y_sample2[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample2[6]~feeder_combout\ = \adxl345_int|y_sample1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample1\(6),
	combout => \adxl345_int|y_sample2[6]~feeder_combout\);

-- Location: FF_X30_Y24_N9
\adxl345_int|y_sample2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample2[6]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(6));

-- Location: FF_X30_Y24_N29
\adxl345_int|y_sample3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(6),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(6));

-- Location: LCCOMB_X30_Y24_N4
\adxl345_int|y_sample2[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample2[5]~feeder_combout\ = \adxl345_int|y_sample1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample1\(5),
	combout => \adxl345_int|y_sample2[5]~feeder_combout\);

-- Location: FF_X30_Y24_N5
\adxl345_int|y_sample2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample2[5]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(5));

-- Location: FF_X30_Y24_N27
\adxl345_int|y_sample3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(5),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(5));

-- Location: FF_X30_Y24_N7
\adxl345_int|y_sample2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(4),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(4));

-- Location: FF_X30_Y24_N25
\adxl345_int|y_sample3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(4),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(4));

-- Location: FF_X30_Y24_N3
\adxl345_int|y_sample2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(3),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(3));

-- Location: FF_X30_Y24_N23
\adxl345_int|y_sample3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(3),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(3));

-- Location: FF_X30_Y24_N1
\adxl345_int|y_sample2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(2),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(2));

-- Location: FF_X30_Y24_N21
\adxl345_int|y_sample3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(2),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(2));

-- Location: FF_X30_Y24_N13
\adxl345_int|y_sample2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample1\(1),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(1));

-- Location: FF_X30_Y24_N19
\adxl345_int|y_sample3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(1),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(1));

-- Location: LCCOMB_X30_Y24_N10
\adxl345_int|y_sample2[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|y_sample2[0]~feeder_combout\ = \adxl345_int|y_sample1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|y_sample1\(0),
	combout => \adxl345_int|y_sample2[0]~feeder_combout\);

-- Location: FF_X30_Y24_N11
\adxl345_int|y_sample2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|y_sample2[0]~feeder_combout\,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample2\(0));

-- Location: FF_X30_Y24_N17
\adxl345_int|y_sample3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|y_sample2\(0),
	sload => VCC,
	ena => \adxl345_int|y_sample0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|y_sample3\(0));

-- Location: LCCOMB_X30_Y24_N16
\adxl345_int|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~0_combout\ = (\adxl345_int|y_sample2\(0) & (\adxl345_int|y_sample3\(0) $ (VCC))) # (!\adxl345_int|y_sample2\(0) & (\adxl345_int|y_sample3\(0) & VCC))
-- \adxl345_int|Add4~1\ = CARRY((\adxl345_int|y_sample2\(0) & \adxl345_int|y_sample3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample2\(0),
	datab => \adxl345_int|y_sample3\(0),
	datad => VCC,
	combout => \adxl345_int|Add4~0_combout\,
	cout => \adxl345_int|Add4~1\);

-- Location: LCCOMB_X30_Y24_N18
\adxl345_int|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~2_combout\ = (\adxl345_int|y_sample2\(1) & ((\adxl345_int|y_sample3\(1) & (\adxl345_int|Add4~1\ & VCC)) # (!\adxl345_int|y_sample3\(1) & (!\adxl345_int|Add4~1\)))) # (!\adxl345_int|y_sample2\(1) & ((\adxl345_int|y_sample3\(1) & 
-- (!\adxl345_int|Add4~1\)) # (!\adxl345_int|y_sample3\(1) & ((\adxl345_int|Add4~1\) # (GND)))))
-- \adxl345_int|Add4~3\ = CARRY((\adxl345_int|y_sample2\(1) & (!\adxl345_int|y_sample3\(1) & !\adxl345_int|Add4~1\)) # (!\adxl345_int|y_sample2\(1) & ((!\adxl345_int|Add4~1\) # (!\adxl345_int|y_sample3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample2\(1),
	datab => \adxl345_int|y_sample3\(1),
	datad => VCC,
	cin => \adxl345_int|Add4~1\,
	combout => \adxl345_int|Add4~2_combout\,
	cout => \adxl345_int|Add4~3\);

-- Location: LCCOMB_X30_Y24_N20
\adxl345_int|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~4_combout\ = ((\adxl345_int|y_sample3\(2) $ (\adxl345_int|y_sample2\(2) $ (!\adxl345_int|Add4~3\)))) # (GND)
-- \adxl345_int|Add4~5\ = CARRY((\adxl345_int|y_sample3\(2) & ((\adxl345_int|y_sample2\(2)) # (!\adxl345_int|Add4~3\))) # (!\adxl345_int|y_sample3\(2) & (\adxl345_int|y_sample2\(2) & !\adxl345_int|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample3\(2),
	datab => \adxl345_int|y_sample2\(2),
	datad => VCC,
	cin => \adxl345_int|Add4~3\,
	combout => \adxl345_int|Add4~4_combout\,
	cout => \adxl345_int|Add4~5\);

-- Location: LCCOMB_X30_Y24_N22
\adxl345_int|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~6_combout\ = (\adxl345_int|y_sample3\(3) & ((\adxl345_int|y_sample2\(3) & (\adxl345_int|Add4~5\ & VCC)) # (!\adxl345_int|y_sample2\(3) & (!\adxl345_int|Add4~5\)))) # (!\adxl345_int|y_sample3\(3) & ((\adxl345_int|y_sample2\(3) & 
-- (!\adxl345_int|Add4~5\)) # (!\adxl345_int|y_sample2\(3) & ((\adxl345_int|Add4~5\) # (GND)))))
-- \adxl345_int|Add4~7\ = CARRY((\adxl345_int|y_sample3\(3) & (!\adxl345_int|y_sample2\(3) & !\adxl345_int|Add4~5\)) # (!\adxl345_int|y_sample3\(3) & ((!\adxl345_int|Add4~5\) # (!\adxl345_int|y_sample2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample3\(3),
	datab => \adxl345_int|y_sample2\(3),
	datad => VCC,
	cin => \adxl345_int|Add4~5\,
	combout => \adxl345_int|Add4~6_combout\,
	cout => \adxl345_int|Add4~7\);

-- Location: LCCOMB_X30_Y24_N24
\adxl345_int|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~8_combout\ = ((\adxl345_int|y_sample2\(4) $ (\adxl345_int|y_sample3\(4) $ (!\adxl345_int|Add4~7\)))) # (GND)
-- \adxl345_int|Add4~9\ = CARRY((\adxl345_int|y_sample2\(4) & ((\adxl345_int|y_sample3\(4)) # (!\adxl345_int|Add4~7\))) # (!\adxl345_int|y_sample2\(4) & (\adxl345_int|y_sample3\(4) & !\adxl345_int|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample2\(4),
	datab => \adxl345_int|y_sample3\(4),
	datad => VCC,
	cin => \adxl345_int|Add4~7\,
	combout => \adxl345_int|Add4~8_combout\,
	cout => \adxl345_int|Add4~9\);

-- Location: LCCOMB_X30_Y24_N26
\adxl345_int|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~10_combout\ = (\adxl345_int|y_sample3\(5) & ((\adxl345_int|y_sample2\(5) & (\adxl345_int|Add4~9\ & VCC)) # (!\adxl345_int|y_sample2\(5) & (!\adxl345_int|Add4~9\)))) # (!\adxl345_int|y_sample3\(5) & ((\adxl345_int|y_sample2\(5) & 
-- (!\adxl345_int|Add4~9\)) # (!\adxl345_int|y_sample2\(5) & ((\adxl345_int|Add4~9\) # (GND)))))
-- \adxl345_int|Add4~11\ = CARRY((\adxl345_int|y_sample3\(5) & (!\adxl345_int|y_sample2\(5) & !\adxl345_int|Add4~9\)) # (!\adxl345_int|y_sample3\(5) & ((!\adxl345_int|Add4~9\) # (!\adxl345_int|y_sample2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample3\(5),
	datab => \adxl345_int|y_sample2\(5),
	datad => VCC,
	cin => \adxl345_int|Add4~9\,
	combout => \adxl345_int|Add4~10_combout\,
	cout => \adxl345_int|Add4~11\);

-- Location: LCCOMB_X30_Y24_N28
\adxl345_int|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~12_combout\ = ((\adxl345_int|y_sample2\(6) $ (\adxl345_int|y_sample3\(6) $ (!\adxl345_int|Add4~11\)))) # (GND)
-- \adxl345_int|Add4~13\ = CARRY((\adxl345_int|y_sample2\(6) & ((\adxl345_int|y_sample3\(6)) # (!\adxl345_int|Add4~11\))) # (!\adxl345_int|y_sample2\(6) & (\adxl345_int|y_sample3\(6) & !\adxl345_int|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample2\(6),
	datab => \adxl345_int|y_sample3\(6),
	datad => VCC,
	cin => \adxl345_int|Add4~11\,
	combout => \adxl345_int|Add4~12_combout\,
	cout => \adxl345_int|Add4~13\);

-- Location: LCCOMB_X30_Y24_N30
\adxl345_int|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~14_combout\ = (\adxl345_int|y_sample3\(7) & ((\adxl345_int|y_sample2\(7) & (\adxl345_int|Add4~13\ & VCC)) # (!\adxl345_int|y_sample2\(7) & (!\adxl345_int|Add4~13\)))) # (!\adxl345_int|y_sample3\(7) & ((\adxl345_int|y_sample2\(7) & 
-- (!\adxl345_int|Add4~13\)) # (!\adxl345_int|y_sample2\(7) & ((\adxl345_int|Add4~13\) # (GND)))))
-- \adxl345_int|Add4~15\ = CARRY((\adxl345_int|y_sample3\(7) & (!\adxl345_int|y_sample2\(7) & !\adxl345_int|Add4~13\)) # (!\adxl345_int|y_sample3\(7) & ((!\adxl345_int|Add4~13\) # (!\adxl345_int|y_sample2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample3\(7),
	datab => \adxl345_int|y_sample2\(7),
	datad => VCC,
	cin => \adxl345_int|Add4~13\,
	combout => \adxl345_int|Add4~14_combout\,
	cout => \adxl345_int|Add4~15\);

-- Location: LCCOMB_X30_Y23_N0
\adxl345_int|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~16_combout\ = ((\adxl345_int|y_sample2\(8) $ (\adxl345_int|y_sample3\(8) $ (!\adxl345_int|Add4~15\)))) # (GND)
-- \adxl345_int|Add4~17\ = CARRY((\adxl345_int|y_sample2\(8) & ((\adxl345_int|y_sample3\(8)) # (!\adxl345_int|Add4~15\))) # (!\adxl345_int|y_sample2\(8) & (\adxl345_int|y_sample3\(8) & !\adxl345_int|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample2\(8),
	datab => \adxl345_int|y_sample3\(8),
	datad => VCC,
	cin => \adxl345_int|Add4~15\,
	combout => \adxl345_int|Add4~16_combout\,
	cout => \adxl345_int|Add4~17\);

-- Location: LCCOMB_X30_Y23_N2
\adxl345_int|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~18_combout\ = (\adxl345_int|y_sample3\(9) & ((\adxl345_int|y_sample2\(9) & (\adxl345_int|Add4~17\ & VCC)) # (!\adxl345_int|y_sample2\(9) & (!\adxl345_int|Add4~17\)))) # (!\adxl345_int|y_sample3\(9) & ((\adxl345_int|y_sample2\(9) & 
-- (!\adxl345_int|Add4~17\)) # (!\adxl345_int|y_sample2\(9) & ((\adxl345_int|Add4~17\) # (GND)))))
-- \adxl345_int|Add4~19\ = CARRY((\adxl345_int|y_sample3\(9) & (!\adxl345_int|y_sample2\(9) & !\adxl345_int|Add4~17\)) # (!\adxl345_int|y_sample3\(9) & ((!\adxl345_int|Add4~17\) # (!\adxl345_int|y_sample2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample3\(9),
	datab => \adxl345_int|y_sample2\(9),
	datad => VCC,
	cin => \adxl345_int|Add4~17\,
	combout => \adxl345_int|Add4~18_combout\,
	cout => \adxl345_int|Add4~19\);

-- Location: LCCOMB_X30_Y23_N4
\adxl345_int|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~20_combout\ = ((\adxl345_int|y_sample2\(10) $ (\adxl345_int|y_sample3\(10) $ (!\adxl345_int|Add4~19\)))) # (GND)
-- \adxl345_int|Add4~21\ = CARRY((\adxl345_int|y_sample2\(10) & ((\adxl345_int|y_sample3\(10)) # (!\adxl345_int|Add4~19\))) # (!\adxl345_int|y_sample2\(10) & (\adxl345_int|y_sample3\(10) & !\adxl345_int|Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample2\(10),
	datab => \adxl345_int|y_sample3\(10),
	datad => VCC,
	cin => \adxl345_int|Add4~19\,
	combout => \adxl345_int|Add4~20_combout\,
	cout => \adxl345_int|Add4~21\);

-- Location: LCCOMB_X30_Y23_N6
\adxl345_int|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~22_combout\ = (\adxl345_int|y_sample3\(11) & ((\adxl345_int|y_sample2\(11) & (\adxl345_int|Add4~21\ & VCC)) # (!\adxl345_int|y_sample2\(11) & (!\adxl345_int|Add4~21\)))) # (!\adxl345_int|y_sample3\(11) & ((\adxl345_int|y_sample2\(11) & 
-- (!\adxl345_int|Add4~21\)) # (!\adxl345_int|y_sample2\(11) & ((\adxl345_int|Add4~21\) # (GND)))))
-- \adxl345_int|Add4~23\ = CARRY((\adxl345_int|y_sample3\(11) & (!\adxl345_int|y_sample2\(11) & !\adxl345_int|Add4~21\)) # (!\adxl345_int|y_sample3\(11) & ((!\adxl345_int|Add4~21\) # (!\adxl345_int|y_sample2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample3\(11),
	datab => \adxl345_int|y_sample2\(11),
	datad => VCC,
	cin => \adxl345_int|Add4~21\,
	combout => \adxl345_int|Add4~22_combout\,
	cout => \adxl345_int|Add4~23\);

-- Location: LCCOMB_X30_Y23_N8
\adxl345_int|Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~24_combout\ = ((\adxl345_int|y_sample2\(12) $ (\adxl345_int|y_sample3\(12) $ (!\adxl345_int|Add4~23\)))) # (GND)
-- \adxl345_int|Add4~25\ = CARRY((\adxl345_int|y_sample2\(12) & ((\adxl345_int|y_sample3\(12)) # (!\adxl345_int|Add4~23\))) # (!\adxl345_int|y_sample2\(12) & (\adxl345_int|y_sample3\(12) & !\adxl345_int|Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample2\(12),
	datab => \adxl345_int|y_sample3\(12),
	datad => VCC,
	cin => \adxl345_int|Add4~23\,
	combout => \adxl345_int|Add4~24_combout\,
	cout => \adxl345_int|Add4~25\);

-- Location: LCCOMB_X30_Y23_N10
\adxl345_int|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~26_combout\ = (\adxl345_int|y_sample3\(13) & ((\adxl345_int|y_sample2\(13) & (\adxl345_int|Add4~25\ & VCC)) # (!\adxl345_int|y_sample2\(13) & (!\adxl345_int|Add4~25\)))) # (!\adxl345_int|y_sample3\(13) & ((\adxl345_int|y_sample2\(13) & 
-- (!\adxl345_int|Add4~25\)) # (!\adxl345_int|y_sample2\(13) & ((\adxl345_int|Add4~25\) # (GND)))))
-- \adxl345_int|Add4~27\ = CARRY((\adxl345_int|y_sample3\(13) & (!\adxl345_int|y_sample2\(13) & !\adxl345_int|Add4~25\)) # (!\adxl345_int|y_sample3\(13) & ((!\adxl345_int|Add4~25\) # (!\adxl345_int|y_sample2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample3\(13),
	datab => \adxl345_int|y_sample2\(13),
	datad => VCC,
	cin => \adxl345_int|Add4~25\,
	combout => \adxl345_int|Add4~26_combout\,
	cout => \adxl345_int|Add4~27\);

-- Location: LCCOMB_X30_Y23_N12
\adxl345_int|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~28_combout\ = ((\adxl345_int|y_sample3\(14) $ (\adxl345_int|y_sample2\(14) $ (!\adxl345_int|Add4~27\)))) # (GND)
-- \adxl345_int|Add4~29\ = CARRY((\adxl345_int|y_sample3\(14) & ((\adxl345_int|y_sample2\(14)) # (!\adxl345_int|Add4~27\))) # (!\adxl345_int|y_sample3\(14) & (\adxl345_int|y_sample2\(14) & !\adxl345_int|Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample3\(14),
	datab => \adxl345_int|y_sample2\(14),
	datad => VCC,
	cin => \adxl345_int|Add4~27\,
	combout => \adxl345_int|Add4~28_combout\,
	cout => \adxl345_int|Add4~29\);

-- Location: LCCOMB_X30_Y23_N14
\adxl345_int|Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~30_combout\ = (\adxl345_int|y_sample2\(15) & ((\adxl345_int|y_sample3\(15) & (\adxl345_int|Add4~29\ & VCC)) # (!\adxl345_int|y_sample3\(15) & (!\adxl345_int|Add4~29\)))) # (!\adxl345_int|y_sample2\(15) & ((\adxl345_int|y_sample3\(15) & 
-- (!\adxl345_int|Add4~29\)) # (!\adxl345_int|y_sample3\(15) & ((\adxl345_int|Add4~29\) # (GND)))))
-- \adxl345_int|Add4~31\ = CARRY((\adxl345_int|y_sample2\(15) & (!\adxl345_int|y_sample3\(15) & !\adxl345_int|Add4~29\)) # (!\adxl345_int|y_sample2\(15) & ((!\adxl345_int|Add4~29\) # (!\adxl345_int|y_sample3\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample2\(15),
	datab => \adxl345_int|y_sample3\(15),
	datad => VCC,
	cin => \adxl345_int|Add4~29\,
	combout => \adxl345_int|Add4~30_combout\,
	cout => \adxl345_int|Add4~31\);

-- Location: LCCOMB_X30_Y23_N16
\adxl345_int|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add4~32_combout\ = \adxl345_int|y_sample2\(15) $ (\adxl345_int|y_sample3\(15) $ (!\adxl345_int|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|y_sample2\(15),
	datab => \adxl345_int|y_sample3\(15),
	cin => \adxl345_int|Add4~31\,
	combout => \adxl345_int|Add4~32_combout\);

-- Location: LCCOMB_X32_Y24_N14
\adxl345_int|s_acc_send[16]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[16]~85_cout\ = CARRY((\adxl345_int|Add3~0_combout\ & \adxl345_int|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~0_combout\,
	datab => \adxl345_int|Add4~0_combout\,
	datad => VCC,
	cout => \adxl345_int|s_acc_send[16]~85_cout\);

-- Location: LCCOMB_X32_Y24_N16
\adxl345_int|s_acc_send[16]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[16]~87_cout\ = CARRY((\adxl345_int|Add3~2_combout\ & (!\adxl345_int|Add4~2_combout\ & !\adxl345_int|s_acc_send[16]~85_cout\)) # (!\adxl345_int|Add3~2_combout\ & ((!\adxl345_int|s_acc_send[16]~85_cout\) # 
-- (!\adxl345_int|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~2_combout\,
	datab => \adxl345_int|Add4~2_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[16]~85_cout\,
	cout => \adxl345_int|s_acc_send[16]~87_cout\);

-- Location: LCCOMB_X32_Y24_N18
\adxl345_int|s_acc_send[16]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[16]~88_combout\ = ((\adxl345_int|Add4~4_combout\ $ (\adxl345_int|Add3~4_combout\ $ (!\adxl345_int|s_acc_send[16]~87_cout\)))) # (GND)
-- \adxl345_int|s_acc_send[16]~89\ = CARRY((\adxl345_int|Add4~4_combout\ & ((\adxl345_int|Add3~4_combout\) # (!\adxl345_int|s_acc_send[16]~87_cout\))) # (!\adxl345_int|Add4~4_combout\ & (\adxl345_int|Add3~4_combout\ & !\adxl345_int|s_acc_send[16]~87_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add4~4_combout\,
	datab => \adxl345_int|Add3~4_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[16]~87_cout\,
	combout => \adxl345_int|s_acc_send[16]~88_combout\,
	cout => \adxl345_int|s_acc_send[16]~89\);

-- Location: LCCOMB_X32_Y24_N20
\adxl345_int|s_acc_send[17]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[17]~90_combout\ = (\adxl345_int|Add4~6_combout\ & ((\adxl345_int|Add3~6_combout\ & (\adxl345_int|s_acc_send[16]~89\ & VCC)) # (!\adxl345_int|Add3~6_combout\ & (!\adxl345_int|s_acc_send[16]~89\)))) # (!\adxl345_int|Add4~6_combout\ & 
-- ((\adxl345_int|Add3~6_combout\ & (!\adxl345_int|s_acc_send[16]~89\)) # (!\adxl345_int|Add3~6_combout\ & ((\adxl345_int|s_acc_send[16]~89\) # (GND)))))
-- \adxl345_int|s_acc_send[17]~91\ = CARRY((\adxl345_int|Add4~6_combout\ & (!\adxl345_int|Add3~6_combout\ & !\adxl345_int|s_acc_send[16]~89\)) # (!\adxl345_int|Add4~6_combout\ & ((!\adxl345_int|s_acc_send[16]~89\) # (!\adxl345_int|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add4~6_combout\,
	datab => \adxl345_int|Add3~6_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[16]~89\,
	combout => \adxl345_int|s_acc_send[17]~90_combout\,
	cout => \adxl345_int|s_acc_send[17]~91\);

-- Location: LCCOMB_X32_Y24_N22
\adxl345_int|s_acc_send[18]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[18]~92_combout\ = ((\adxl345_int|Add4~8_combout\ $ (\adxl345_int|Add3~8_combout\ $ (!\adxl345_int|s_acc_send[17]~91\)))) # (GND)
-- \adxl345_int|s_acc_send[18]~93\ = CARRY((\adxl345_int|Add4~8_combout\ & ((\adxl345_int|Add3~8_combout\) # (!\adxl345_int|s_acc_send[17]~91\))) # (!\adxl345_int|Add4~8_combout\ & (\adxl345_int|Add3~8_combout\ & !\adxl345_int|s_acc_send[17]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add4~8_combout\,
	datab => \adxl345_int|Add3~8_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[17]~91\,
	combout => \adxl345_int|s_acc_send[18]~92_combout\,
	cout => \adxl345_int|s_acc_send[18]~93\);

-- Location: LCCOMB_X32_Y24_N24
\adxl345_int|s_acc_send[19]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[19]~94_combout\ = (\adxl345_int|Add4~10_combout\ & ((\adxl345_int|Add3~10_combout\ & (\adxl345_int|s_acc_send[18]~93\ & VCC)) # (!\adxl345_int|Add3~10_combout\ & (!\adxl345_int|s_acc_send[18]~93\)))) # 
-- (!\adxl345_int|Add4~10_combout\ & ((\adxl345_int|Add3~10_combout\ & (!\adxl345_int|s_acc_send[18]~93\)) # (!\adxl345_int|Add3~10_combout\ & ((\adxl345_int|s_acc_send[18]~93\) # (GND)))))
-- \adxl345_int|s_acc_send[19]~95\ = CARRY((\adxl345_int|Add4~10_combout\ & (!\adxl345_int|Add3~10_combout\ & !\adxl345_int|s_acc_send[18]~93\)) # (!\adxl345_int|Add4~10_combout\ & ((!\adxl345_int|s_acc_send[18]~93\) # (!\adxl345_int|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add4~10_combout\,
	datab => \adxl345_int|Add3~10_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[18]~93\,
	combout => \adxl345_int|s_acc_send[19]~94_combout\,
	cout => \adxl345_int|s_acc_send[19]~95\);

-- Location: LCCOMB_X32_Y24_N26
\adxl345_int|s_acc_send[20]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[20]~96_combout\ = ((\adxl345_int|Add3~12_combout\ $ (\adxl345_int|Add4~12_combout\ $ (!\adxl345_int|s_acc_send[19]~95\)))) # (GND)
-- \adxl345_int|s_acc_send[20]~97\ = CARRY((\adxl345_int|Add3~12_combout\ & ((\adxl345_int|Add4~12_combout\) # (!\adxl345_int|s_acc_send[19]~95\))) # (!\adxl345_int|Add3~12_combout\ & (\adxl345_int|Add4~12_combout\ & !\adxl345_int|s_acc_send[19]~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~12_combout\,
	datab => \adxl345_int|Add4~12_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[19]~95\,
	combout => \adxl345_int|s_acc_send[20]~96_combout\,
	cout => \adxl345_int|s_acc_send[20]~97\);

-- Location: LCCOMB_X32_Y24_N28
\adxl345_int|s_acc_send[21]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[21]~98_combout\ = (\adxl345_int|Add4~14_combout\ & ((\adxl345_int|Add3~14_combout\ & (\adxl345_int|s_acc_send[20]~97\ & VCC)) # (!\adxl345_int|Add3~14_combout\ & (!\adxl345_int|s_acc_send[20]~97\)))) # 
-- (!\adxl345_int|Add4~14_combout\ & ((\adxl345_int|Add3~14_combout\ & (!\adxl345_int|s_acc_send[20]~97\)) # (!\adxl345_int|Add3~14_combout\ & ((\adxl345_int|s_acc_send[20]~97\) # (GND)))))
-- \adxl345_int|s_acc_send[21]~99\ = CARRY((\adxl345_int|Add4~14_combout\ & (!\adxl345_int|Add3~14_combout\ & !\adxl345_int|s_acc_send[20]~97\)) # (!\adxl345_int|Add4~14_combout\ & ((!\adxl345_int|s_acc_send[20]~97\) # (!\adxl345_int|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add4~14_combout\,
	datab => \adxl345_int|Add3~14_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[20]~97\,
	combout => \adxl345_int|s_acc_send[21]~98_combout\,
	cout => \adxl345_int|s_acc_send[21]~99\);

-- Location: LCCOMB_X32_Y24_N30
\adxl345_int|s_acc_send[22]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[22]~100_combout\ = ((\adxl345_int|Add4~16_combout\ $ (\adxl345_int|Add3~16_combout\ $ (!\adxl345_int|s_acc_send[21]~99\)))) # (GND)
-- \adxl345_int|s_acc_send[22]~101\ = CARRY((\adxl345_int|Add4~16_combout\ & ((\adxl345_int|Add3~16_combout\) # (!\adxl345_int|s_acc_send[21]~99\))) # (!\adxl345_int|Add4~16_combout\ & (\adxl345_int|Add3~16_combout\ & !\adxl345_int|s_acc_send[21]~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add4~16_combout\,
	datab => \adxl345_int|Add3~16_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[21]~99\,
	combout => \adxl345_int|s_acc_send[22]~100_combout\,
	cout => \adxl345_int|s_acc_send[22]~101\);

-- Location: LCCOMB_X32_Y23_N0
\adxl345_int|s_acc_send[23]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[23]~102_combout\ = (\adxl345_int|Add3~18_combout\ & ((\adxl345_int|Add4~18_combout\ & (\adxl345_int|s_acc_send[22]~101\ & VCC)) # (!\adxl345_int|Add4~18_combout\ & (!\adxl345_int|s_acc_send[22]~101\)))) # 
-- (!\adxl345_int|Add3~18_combout\ & ((\adxl345_int|Add4~18_combout\ & (!\adxl345_int|s_acc_send[22]~101\)) # (!\adxl345_int|Add4~18_combout\ & ((\adxl345_int|s_acc_send[22]~101\) # (GND)))))
-- \adxl345_int|s_acc_send[23]~103\ = CARRY((\adxl345_int|Add3~18_combout\ & (!\adxl345_int|Add4~18_combout\ & !\adxl345_int|s_acc_send[22]~101\)) # (!\adxl345_int|Add3~18_combout\ & ((!\adxl345_int|s_acc_send[22]~101\) # (!\adxl345_int|Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~18_combout\,
	datab => \adxl345_int|Add4~18_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[22]~101\,
	combout => \adxl345_int|s_acc_send[23]~102_combout\,
	cout => \adxl345_int|s_acc_send[23]~103\);

-- Location: LCCOMB_X32_Y23_N2
\adxl345_int|s_acc_send[24]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[24]~104_combout\ = ((\adxl345_int|Add3~20_combout\ $ (\adxl345_int|Add4~20_combout\ $ (!\adxl345_int|s_acc_send[23]~103\)))) # (GND)
-- \adxl345_int|s_acc_send[24]~105\ = CARRY((\adxl345_int|Add3~20_combout\ & ((\adxl345_int|Add4~20_combout\) # (!\adxl345_int|s_acc_send[23]~103\))) # (!\adxl345_int|Add3~20_combout\ & (\adxl345_int|Add4~20_combout\ & !\adxl345_int|s_acc_send[23]~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~20_combout\,
	datab => \adxl345_int|Add4~20_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[23]~103\,
	combout => \adxl345_int|s_acc_send[24]~104_combout\,
	cout => \adxl345_int|s_acc_send[24]~105\);

-- Location: LCCOMB_X32_Y23_N4
\adxl345_int|s_acc_send[25]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[25]~106_combout\ = (\adxl345_int|Add4~22_combout\ & ((\adxl345_int|Add3~22_combout\ & (\adxl345_int|s_acc_send[24]~105\ & VCC)) # (!\adxl345_int|Add3~22_combout\ & (!\adxl345_int|s_acc_send[24]~105\)))) # 
-- (!\adxl345_int|Add4~22_combout\ & ((\adxl345_int|Add3~22_combout\ & (!\adxl345_int|s_acc_send[24]~105\)) # (!\adxl345_int|Add3~22_combout\ & ((\adxl345_int|s_acc_send[24]~105\) # (GND)))))
-- \adxl345_int|s_acc_send[25]~107\ = CARRY((\adxl345_int|Add4~22_combout\ & (!\adxl345_int|Add3~22_combout\ & !\adxl345_int|s_acc_send[24]~105\)) # (!\adxl345_int|Add4~22_combout\ & ((!\adxl345_int|s_acc_send[24]~105\) # (!\adxl345_int|Add3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add4~22_combout\,
	datab => \adxl345_int|Add3~22_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[24]~105\,
	combout => \adxl345_int|s_acc_send[25]~106_combout\,
	cout => \adxl345_int|s_acc_send[25]~107\);

-- Location: LCCOMB_X32_Y23_N6
\adxl345_int|s_acc_send[26]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[26]~108_combout\ = ((\adxl345_int|Add4~24_combout\ $ (\adxl345_int|Add3~24_combout\ $ (!\adxl345_int|s_acc_send[25]~107\)))) # (GND)
-- \adxl345_int|s_acc_send[26]~109\ = CARRY((\adxl345_int|Add4~24_combout\ & ((\adxl345_int|Add3~24_combout\) # (!\adxl345_int|s_acc_send[25]~107\))) # (!\adxl345_int|Add4~24_combout\ & (\adxl345_int|Add3~24_combout\ & !\adxl345_int|s_acc_send[25]~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add4~24_combout\,
	datab => \adxl345_int|Add3~24_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[25]~107\,
	combout => \adxl345_int|s_acc_send[26]~108_combout\,
	cout => \adxl345_int|s_acc_send[26]~109\);

-- Location: LCCOMB_X32_Y23_N8
\adxl345_int|s_acc_send[27]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[27]~110_combout\ = (\adxl345_int|Add3~26_combout\ & ((\adxl345_int|Add4~26_combout\ & (\adxl345_int|s_acc_send[26]~109\ & VCC)) # (!\adxl345_int|Add4~26_combout\ & (!\adxl345_int|s_acc_send[26]~109\)))) # 
-- (!\adxl345_int|Add3~26_combout\ & ((\adxl345_int|Add4~26_combout\ & (!\adxl345_int|s_acc_send[26]~109\)) # (!\adxl345_int|Add4~26_combout\ & ((\adxl345_int|s_acc_send[26]~109\) # (GND)))))
-- \adxl345_int|s_acc_send[27]~111\ = CARRY((\adxl345_int|Add3~26_combout\ & (!\adxl345_int|Add4~26_combout\ & !\adxl345_int|s_acc_send[26]~109\)) # (!\adxl345_int|Add3~26_combout\ & ((!\adxl345_int|s_acc_send[26]~109\) # (!\adxl345_int|Add4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~26_combout\,
	datab => \adxl345_int|Add4~26_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[26]~109\,
	combout => \adxl345_int|s_acc_send[27]~110_combout\,
	cout => \adxl345_int|s_acc_send[27]~111\);

-- Location: LCCOMB_X32_Y23_N10
\adxl345_int|s_acc_send[28]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[28]~112_combout\ = ((\adxl345_int|Add3~28_combout\ $ (\adxl345_int|Add4~28_combout\ $ (!\adxl345_int|s_acc_send[27]~111\)))) # (GND)
-- \adxl345_int|s_acc_send[28]~113\ = CARRY((\adxl345_int|Add3~28_combout\ & ((\adxl345_int|Add4~28_combout\) # (!\adxl345_int|s_acc_send[27]~111\))) # (!\adxl345_int|Add3~28_combout\ & (\adxl345_int|Add4~28_combout\ & !\adxl345_int|s_acc_send[27]~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~28_combout\,
	datab => \adxl345_int|Add4~28_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[27]~111\,
	combout => \adxl345_int|s_acc_send[28]~112_combout\,
	cout => \adxl345_int|s_acc_send[28]~113\);

-- Location: LCCOMB_X32_Y23_N12
\adxl345_int|s_acc_send[29]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[29]~114_combout\ = (\adxl345_int|Add3~30_combout\ & ((\adxl345_int|Add4~30_combout\ & (\adxl345_int|s_acc_send[28]~113\ & VCC)) # (!\adxl345_int|Add4~30_combout\ & (!\adxl345_int|s_acc_send[28]~113\)))) # 
-- (!\adxl345_int|Add3~30_combout\ & ((\adxl345_int|Add4~30_combout\ & (!\adxl345_int|s_acc_send[28]~113\)) # (!\adxl345_int|Add4~30_combout\ & ((\adxl345_int|s_acc_send[28]~113\) # (GND)))))
-- \adxl345_int|s_acc_send[29]~115\ = CARRY((\adxl345_int|Add3~30_combout\ & (!\adxl345_int|Add4~30_combout\ & !\adxl345_int|s_acc_send[28]~113\)) # (!\adxl345_int|Add3~30_combout\ & ((!\adxl345_int|s_acc_send[28]~113\) # (!\adxl345_int|Add4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~30_combout\,
	datab => \adxl345_int|Add4~30_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[28]~113\,
	combout => \adxl345_int|s_acc_send[29]~114_combout\,
	cout => \adxl345_int|s_acc_send[29]~115\);

-- Location: LCCOMB_X32_Y23_N14
\adxl345_int|s_acc_send[30]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[30]~116_combout\ = ((\adxl345_int|Add3~32_combout\ $ (\adxl345_int|Add4~32_combout\ $ (!\adxl345_int|s_acc_send[29]~115\)))) # (GND)
-- \adxl345_int|s_acc_send[30]~117\ = CARRY((\adxl345_int|Add3~32_combout\ & ((\adxl345_int|Add4~32_combout\) # (!\adxl345_int|s_acc_send[29]~115\))) # (!\adxl345_int|Add3~32_combout\ & (\adxl345_int|Add4~32_combout\ & !\adxl345_int|s_acc_send[29]~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~32_combout\,
	datab => \adxl345_int|Add4~32_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[29]~115\,
	combout => \adxl345_int|s_acc_send[30]~116_combout\,
	cout => \adxl345_int|s_acc_send[30]~117\);

-- Location: LCCOMB_X32_Y23_N16
\adxl345_int|s_acc_send[31]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[31]~118_combout\ = \adxl345_int|Add3~34_combout\ $ (\adxl345_int|Add4~32_combout\ $ (\adxl345_int|s_acc_send[30]~117\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add3~34_combout\,
	datab => \adxl345_int|Add4~32_combout\,
	cin => \adxl345_int|s_acc_send[30]~117\,
	combout => \adxl345_int|s_acc_send[31]~118_combout\);

-- Location: FF_X32_Y23_N17
\adxl345_int|s_acc_send[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[31]~118_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(31));

-- Location: FF_X32_Y23_N13
\adxl345_int|s_acc_send[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[29]~114_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(29));

-- Location: FF_X32_Y23_N11
\adxl345_int|s_acc_send[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[28]~112_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(28));

-- Location: FF_X32_Y23_N9
\adxl345_int|s_acc_send[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[27]~110_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(27));

-- Location: FF_X32_Y23_N7
\adxl345_int|s_acc_send[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[26]~108_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(26));

-- Location: FF_X32_Y23_N5
\adxl345_int|s_acc_send[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[25]~106_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(25));

-- Location: FF_X32_Y23_N3
\adxl345_int|s_acc_send[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[24]~104_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(24));

-- Location: FF_X32_Y23_N1
\adxl345_int|s_acc_send[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[23]~102_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(23));

-- Location: FF_X32_Y24_N31
\adxl345_int|s_acc_send[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[22]~100_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(22));

-- Location: FF_X32_Y24_N29
\adxl345_int|s_acc_send[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[21]~98_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(21));

-- Location: FF_X32_Y24_N27
\adxl345_int|s_acc_send[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[20]~96_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(20));

-- Location: FF_X32_Y24_N25
\adxl345_int|s_acc_send[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[19]~94_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(19));

-- Location: FF_X32_Y24_N23
\adxl345_int|s_acc_send[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[18]~92_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(18));

-- Location: LCCOMB_X27_Y26_N18
\adxl345_int|z_sample0[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample0[15]~feeder_combout\ = \spi_inst_master|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(7),
	combout => \adxl345_int|z_sample0[15]~feeder_combout\);

-- Location: LCCOMB_X32_Y26_N2
\adxl345_int|z_sample1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample1[0]~0_combout\ = (\spi_inst_master|data_ready~q\ & (\reset_n_t2~q\ & \adxl345_int|state.WAIT_Z_H~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datac => \reset_n_t2~q\,
	datad => \adxl345_int|state.WAIT_Z_H~q\,
	combout => \adxl345_int|z_sample1[0]~0_combout\);

-- Location: FF_X27_Y26_N19
\adxl345_int|z_sample0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample0[15]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(15));

-- Location: LCCOMB_X27_Y26_N30
\adxl345_int|z_sample1[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample1[15]~feeder_combout\ = \adxl345_int|z_sample0\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample0\(15),
	combout => \adxl345_int|z_sample1[15]~feeder_combout\);

-- Location: FF_X27_Y26_N31
\adxl345_int|z_sample1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample1[15]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(15));

-- Location: FF_X27_Y26_N11
\adxl345_int|z_sample0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(6),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(14));

-- Location: FF_X27_Y26_N13
\adxl345_int|z_sample1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(14),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(14));

-- Location: FF_X27_Y26_N15
\adxl345_int|z_sample0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(5),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(13));

-- Location: FF_X27_Y26_N9
\adxl345_int|z_sample1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(13),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(13));

-- Location: FF_X27_Y26_N7
\adxl345_int|z_sample0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(4),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(12));

-- Location: LCCOMB_X27_Y26_N20
\adxl345_int|z_sample1[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample1[12]~feeder_combout\ = \adxl345_int|z_sample0\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample0\(12),
	combout => \adxl345_int|z_sample1[12]~feeder_combout\);

-- Location: FF_X27_Y26_N21
\adxl345_int|z_sample1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample1[12]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(12));

-- Location: FF_X27_Y26_N27
\adxl345_int|z_sample0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(3),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(11));

-- Location: FF_X27_Y26_N5
\adxl345_int|z_sample1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(11),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(11));

-- Location: FF_X27_Y26_N3
\adxl345_int|z_sample0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(2),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(10));

-- Location: LCCOMB_X27_Y26_N24
\adxl345_int|z_sample1[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample1[10]~feeder_combout\ = \adxl345_int|z_sample0\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample0\(10),
	combout => \adxl345_int|z_sample1[10]~feeder_combout\);

-- Location: FF_X27_Y26_N25
\adxl345_int|z_sample1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample1[10]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(10));

-- Location: LCCOMB_X27_Y26_N22
\adxl345_int|z_sample0[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample0[9]~feeder_combout\ = \spi_inst_master|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(1),
	combout => \adxl345_int|z_sample0[9]~feeder_combout\);

-- Location: FF_X27_Y26_N23
\adxl345_int|z_sample0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample0[9]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(9));

-- Location: FF_X27_Y26_N1
\adxl345_int|z_sample1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(9),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(9));

-- Location: FF_X27_Y27_N31
\adxl345_int|z_sample0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(0),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(8));

-- Location: FF_X27_Y27_N3
\adxl345_int|z_sample1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(8),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(8));

-- Location: LCCOMB_X32_Y26_N4
\adxl345_int|z_low[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_low[0]~0_combout\ = (\spi_inst_master|data_ready~q\ & (\adxl345_int|state.WAIT_Z_L~q\ & \reset_n_t2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|data_ready~q\,
	datab => \adxl345_int|state.WAIT_Z_L~q\,
	datac => \reset_n_t2~q\,
	combout => \adxl345_int|z_low[0]~0_combout\);

-- Location: FF_X30_Y27_N13
\adxl345_int|z_low[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(7),
	sload => VCC,
	ena => \adxl345_int|z_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_low\(7));

-- Location: LCCOMB_X30_Y27_N0
\adxl345_int|z_sample0[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample0[7]~feeder_combout\ = \adxl345_int|z_low\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_low\(7),
	combout => \adxl345_int|z_sample0[7]~feeder_combout\);

-- Location: FF_X30_Y27_N1
\adxl345_int|z_sample0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample0[7]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(7));

-- Location: FF_X27_Y27_N29
\adxl345_int|z_sample1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(7),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(7));

-- Location: LCCOMB_X30_Y27_N14
\adxl345_int|z_low[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_low[6]~feeder_combout\ = \spi_inst_master|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(6),
	combout => \adxl345_int|z_low[6]~feeder_combout\);

-- Location: FF_X30_Y27_N15
\adxl345_int|z_low[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_low[6]~feeder_combout\,
	ena => \adxl345_int|z_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_low\(6));

-- Location: FF_X27_Y27_N27
\adxl345_int|z_sample0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_low\(6),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(6));

-- Location: LCCOMB_X27_Y27_N0
\adxl345_int|z_sample1[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample1[6]~feeder_combout\ = \adxl345_int|z_sample0\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample0\(6),
	combout => \adxl345_int|z_sample1[6]~feeder_combout\);

-- Location: FF_X27_Y27_N1
\adxl345_int|z_sample1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample1[6]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(6));

-- Location: FF_X30_Y27_N25
\adxl345_int|z_low[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(5),
	sload => VCC,
	ena => \adxl345_int|z_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_low\(5));

-- Location: LCCOMB_X27_Y27_N6
\adxl345_int|z_sample0[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample0[5]~feeder_combout\ = \adxl345_int|z_low\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_low\(5),
	combout => \adxl345_int|z_sample0[5]~feeder_combout\);

-- Location: FF_X27_Y27_N7
\adxl345_int|z_sample0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample0[5]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(5));

-- Location: FF_X27_Y27_N25
\adxl345_int|z_sample1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(5),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(5));

-- Location: LCCOMB_X30_Y27_N10
\adxl345_int|z_low[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_low[4]~feeder_combout\ = \spi_inst_master|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(4),
	combout => \adxl345_int|z_low[4]~feeder_combout\);

-- Location: FF_X30_Y27_N11
\adxl345_int|z_low[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_low[4]~feeder_combout\,
	ena => \adxl345_int|z_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_low\(4));

-- Location: FF_X27_Y27_N23
\adxl345_int|z_sample0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_low\(4),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(4));

-- Location: FF_X27_Y27_N5
\adxl345_int|z_sample1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(4),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(4));

-- Location: FF_X30_Y27_N29
\adxl345_int|z_low[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(3),
	sload => VCC,
	ena => \adxl345_int|z_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_low\(3));

-- Location: LCCOMB_X27_Y27_N10
\adxl345_int|z_sample0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample0[3]~feeder_combout\ = \adxl345_int|z_low\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_low\(3),
	combout => \adxl345_int|z_sample0[3]~feeder_combout\);

-- Location: FF_X27_Y27_N11
\adxl345_int|z_sample0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample0[3]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(3));

-- Location: FF_X27_Y27_N21
\adxl345_int|z_sample1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(3),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(3));

-- Location: LCCOMB_X30_Y27_N6
\adxl345_int|z_low[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_low[2]~feeder_combout\ = \spi_inst_master|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(2),
	combout => \adxl345_int|z_low[2]~feeder_combout\);

-- Location: FF_X30_Y27_N7
\adxl345_int|z_low[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_low[2]~feeder_combout\,
	ena => \adxl345_int|z_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_low\(2));

-- Location: FF_X27_Y27_N19
\adxl345_int|z_sample0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_low\(2),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(2));

-- Location: LCCOMB_X27_Y27_N8
\adxl345_int|z_sample1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample1[2]~feeder_combout\ = \adxl345_int|z_sample0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample0\(2),
	combout => \adxl345_int|z_sample1[2]~feeder_combout\);

-- Location: FF_X27_Y27_N9
\adxl345_int|z_sample1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample1[2]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(2));

-- Location: FF_X30_Y27_N17
\adxl345_int|z_low[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \spi_inst_master|data_out\(1),
	sload => VCC,
	ena => \adxl345_int|z_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_low\(1));

-- Location: LCCOMB_X30_Y27_N18
\adxl345_int|z_sample0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample0[1]~feeder_combout\ = \adxl345_int|z_low\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_low\(1),
	combout => \adxl345_int|z_sample0[1]~feeder_combout\);

-- Location: FF_X30_Y27_N19
\adxl345_int|z_sample0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample0[1]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(1));

-- Location: FF_X27_Y27_N17
\adxl345_int|z_sample1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(1),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(1));

-- Location: LCCOMB_X30_Y27_N26
\adxl345_int|z_low[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_low[0]~feeder_combout\ = \spi_inst_master|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_inst_master|data_out\(0),
	combout => \adxl345_int|z_low[0]~feeder_combout\);

-- Location: FF_X30_Y27_N27
\adxl345_int|z_low[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_low[0]~feeder_combout\,
	ena => \adxl345_int|z_low[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_low\(0));

-- Location: LCCOMB_X27_Y27_N12
\adxl345_int|z_sample0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample0[0]~feeder_combout\ = \adxl345_int|z_low\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_low\(0),
	combout => \adxl345_int|z_sample0[0]~feeder_combout\);

-- Location: FF_X27_Y27_N13
\adxl345_int|z_sample0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample0[0]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample0\(0));

-- Location: FF_X27_Y27_N15
\adxl345_int|z_sample1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample0\(0),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample1\(0));

-- Location: LCCOMB_X27_Y27_N14
\adxl345_int|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~0_combout\ = (\adxl345_int|z_sample0\(0) & (\adxl345_int|z_sample1\(0) $ (VCC))) # (!\adxl345_int|z_sample0\(0) & (\adxl345_int|z_sample1\(0) & VCC))
-- \adxl345_int|Add6~1\ = CARRY((\adxl345_int|z_sample0\(0) & \adxl345_int|z_sample1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(0),
	datab => \adxl345_int|z_sample1\(0),
	datad => VCC,
	combout => \adxl345_int|Add6~0_combout\,
	cout => \adxl345_int|Add6~1\);

-- Location: LCCOMB_X27_Y27_N16
\adxl345_int|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~2_combout\ = (\adxl345_int|z_sample0\(1) & ((\adxl345_int|z_sample1\(1) & (\adxl345_int|Add6~1\ & VCC)) # (!\adxl345_int|z_sample1\(1) & (!\adxl345_int|Add6~1\)))) # (!\adxl345_int|z_sample0\(1) & ((\adxl345_int|z_sample1\(1) & 
-- (!\adxl345_int|Add6~1\)) # (!\adxl345_int|z_sample1\(1) & ((\adxl345_int|Add6~1\) # (GND)))))
-- \adxl345_int|Add6~3\ = CARRY((\adxl345_int|z_sample0\(1) & (!\adxl345_int|z_sample1\(1) & !\adxl345_int|Add6~1\)) # (!\adxl345_int|z_sample0\(1) & ((!\adxl345_int|Add6~1\) # (!\adxl345_int|z_sample1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(1),
	datab => \adxl345_int|z_sample1\(1),
	datad => VCC,
	cin => \adxl345_int|Add6~1\,
	combout => \adxl345_int|Add6~2_combout\,
	cout => \adxl345_int|Add6~3\);

-- Location: LCCOMB_X27_Y27_N18
\adxl345_int|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~4_combout\ = ((\adxl345_int|z_sample1\(2) $ (\adxl345_int|z_sample0\(2) $ (!\adxl345_int|Add6~3\)))) # (GND)
-- \adxl345_int|Add6~5\ = CARRY((\adxl345_int|z_sample1\(2) & ((\adxl345_int|z_sample0\(2)) # (!\adxl345_int|Add6~3\))) # (!\adxl345_int|z_sample1\(2) & (\adxl345_int|z_sample0\(2) & !\adxl345_int|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample1\(2),
	datab => \adxl345_int|z_sample0\(2),
	datad => VCC,
	cin => \adxl345_int|Add6~3\,
	combout => \adxl345_int|Add6~4_combout\,
	cout => \adxl345_int|Add6~5\);

-- Location: LCCOMB_X27_Y27_N20
\adxl345_int|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~6_combout\ = (\adxl345_int|z_sample0\(3) & ((\adxl345_int|z_sample1\(3) & (\adxl345_int|Add6~5\ & VCC)) # (!\adxl345_int|z_sample1\(3) & (!\adxl345_int|Add6~5\)))) # (!\adxl345_int|z_sample0\(3) & ((\adxl345_int|z_sample1\(3) & 
-- (!\adxl345_int|Add6~5\)) # (!\adxl345_int|z_sample1\(3) & ((\adxl345_int|Add6~5\) # (GND)))))
-- \adxl345_int|Add6~7\ = CARRY((\adxl345_int|z_sample0\(3) & (!\adxl345_int|z_sample1\(3) & !\adxl345_int|Add6~5\)) # (!\adxl345_int|z_sample0\(3) & ((!\adxl345_int|Add6~5\) # (!\adxl345_int|z_sample1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(3),
	datab => \adxl345_int|z_sample1\(3),
	datad => VCC,
	cin => \adxl345_int|Add6~5\,
	combout => \adxl345_int|Add6~6_combout\,
	cout => \adxl345_int|Add6~7\);

-- Location: LCCOMB_X27_Y27_N22
\adxl345_int|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~8_combout\ = ((\adxl345_int|z_sample0\(4) $ (\adxl345_int|z_sample1\(4) $ (!\adxl345_int|Add6~7\)))) # (GND)
-- \adxl345_int|Add6~9\ = CARRY((\adxl345_int|z_sample0\(4) & ((\adxl345_int|z_sample1\(4)) # (!\adxl345_int|Add6~7\))) # (!\adxl345_int|z_sample0\(4) & (\adxl345_int|z_sample1\(4) & !\adxl345_int|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(4),
	datab => \adxl345_int|z_sample1\(4),
	datad => VCC,
	cin => \adxl345_int|Add6~7\,
	combout => \adxl345_int|Add6~8_combout\,
	cout => \adxl345_int|Add6~9\);

-- Location: LCCOMB_X27_Y27_N24
\adxl345_int|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~10_combout\ = (\adxl345_int|z_sample0\(5) & ((\adxl345_int|z_sample1\(5) & (\adxl345_int|Add6~9\ & VCC)) # (!\adxl345_int|z_sample1\(5) & (!\adxl345_int|Add6~9\)))) # (!\adxl345_int|z_sample0\(5) & ((\adxl345_int|z_sample1\(5) & 
-- (!\adxl345_int|Add6~9\)) # (!\adxl345_int|z_sample1\(5) & ((\adxl345_int|Add6~9\) # (GND)))))
-- \adxl345_int|Add6~11\ = CARRY((\adxl345_int|z_sample0\(5) & (!\adxl345_int|z_sample1\(5) & !\adxl345_int|Add6~9\)) # (!\adxl345_int|z_sample0\(5) & ((!\adxl345_int|Add6~9\) # (!\adxl345_int|z_sample1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(5),
	datab => \adxl345_int|z_sample1\(5),
	datad => VCC,
	cin => \adxl345_int|Add6~9\,
	combout => \adxl345_int|Add6~10_combout\,
	cout => \adxl345_int|Add6~11\);

-- Location: LCCOMB_X27_Y27_N26
\adxl345_int|Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~12_combout\ = ((\adxl345_int|z_sample0\(6) $ (\adxl345_int|z_sample1\(6) $ (!\adxl345_int|Add6~11\)))) # (GND)
-- \adxl345_int|Add6~13\ = CARRY((\adxl345_int|z_sample0\(6) & ((\adxl345_int|z_sample1\(6)) # (!\adxl345_int|Add6~11\))) # (!\adxl345_int|z_sample0\(6) & (\adxl345_int|z_sample1\(6) & !\adxl345_int|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(6),
	datab => \adxl345_int|z_sample1\(6),
	datad => VCC,
	cin => \adxl345_int|Add6~11\,
	combout => \adxl345_int|Add6~12_combout\,
	cout => \adxl345_int|Add6~13\);

-- Location: LCCOMB_X27_Y27_N28
\adxl345_int|Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~14_combout\ = (\adxl345_int|z_sample1\(7) & ((\adxl345_int|z_sample0\(7) & (\adxl345_int|Add6~13\ & VCC)) # (!\adxl345_int|z_sample0\(7) & (!\adxl345_int|Add6~13\)))) # (!\adxl345_int|z_sample1\(7) & ((\adxl345_int|z_sample0\(7) & 
-- (!\adxl345_int|Add6~13\)) # (!\adxl345_int|z_sample0\(7) & ((\adxl345_int|Add6~13\) # (GND)))))
-- \adxl345_int|Add6~15\ = CARRY((\adxl345_int|z_sample1\(7) & (!\adxl345_int|z_sample0\(7) & !\adxl345_int|Add6~13\)) # (!\adxl345_int|z_sample1\(7) & ((!\adxl345_int|Add6~13\) # (!\adxl345_int|z_sample0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample1\(7),
	datab => \adxl345_int|z_sample0\(7),
	datad => VCC,
	cin => \adxl345_int|Add6~13\,
	combout => \adxl345_int|Add6~14_combout\,
	cout => \adxl345_int|Add6~15\);

-- Location: LCCOMB_X27_Y27_N30
\adxl345_int|Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~16_combout\ = ((\adxl345_int|z_sample0\(8) $ (\adxl345_int|z_sample1\(8) $ (!\adxl345_int|Add6~15\)))) # (GND)
-- \adxl345_int|Add6~17\ = CARRY((\adxl345_int|z_sample0\(8) & ((\adxl345_int|z_sample1\(8)) # (!\adxl345_int|Add6~15\))) # (!\adxl345_int|z_sample0\(8) & (\adxl345_int|z_sample1\(8) & !\adxl345_int|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(8),
	datab => \adxl345_int|z_sample1\(8),
	datad => VCC,
	cin => \adxl345_int|Add6~15\,
	combout => \adxl345_int|Add6~16_combout\,
	cout => \adxl345_int|Add6~17\);

-- Location: LCCOMB_X27_Y26_N0
\adxl345_int|Add6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~18_combout\ = (\adxl345_int|z_sample0\(9) & ((\adxl345_int|z_sample1\(9) & (\adxl345_int|Add6~17\ & VCC)) # (!\adxl345_int|z_sample1\(9) & (!\adxl345_int|Add6~17\)))) # (!\adxl345_int|z_sample0\(9) & ((\adxl345_int|z_sample1\(9) & 
-- (!\adxl345_int|Add6~17\)) # (!\adxl345_int|z_sample1\(9) & ((\adxl345_int|Add6~17\) # (GND)))))
-- \adxl345_int|Add6~19\ = CARRY((\adxl345_int|z_sample0\(9) & (!\adxl345_int|z_sample1\(9) & !\adxl345_int|Add6~17\)) # (!\adxl345_int|z_sample0\(9) & ((!\adxl345_int|Add6~17\) # (!\adxl345_int|z_sample1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(9),
	datab => \adxl345_int|z_sample1\(9),
	datad => VCC,
	cin => \adxl345_int|Add6~17\,
	combout => \adxl345_int|Add6~18_combout\,
	cout => \adxl345_int|Add6~19\);

-- Location: LCCOMB_X27_Y26_N2
\adxl345_int|Add6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~20_combout\ = ((\adxl345_int|z_sample1\(10) $ (\adxl345_int|z_sample0\(10) $ (!\adxl345_int|Add6~19\)))) # (GND)
-- \adxl345_int|Add6~21\ = CARRY((\adxl345_int|z_sample1\(10) & ((\adxl345_int|z_sample0\(10)) # (!\adxl345_int|Add6~19\))) # (!\adxl345_int|z_sample1\(10) & (\adxl345_int|z_sample0\(10) & !\adxl345_int|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample1\(10),
	datab => \adxl345_int|z_sample0\(10),
	datad => VCC,
	cin => \adxl345_int|Add6~19\,
	combout => \adxl345_int|Add6~20_combout\,
	cout => \adxl345_int|Add6~21\);

-- Location: LCCOMB_X27_Y26_N4
\adxl345_int|Add6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~22_combout\ = (\adxl345_int|z_sample0\(11) & ((\adxl345_int|z_sample1\(11) & (\adxl345_int|Add6~21\ & VCC)) # (!\adxl345_int|z_sample1\(11) & (!\adxl345_int|Add6~21\)))) # (!\adxl345_int|z_sample0\(11) & ((\adxl345_int|z_sample1\(11) & 
-- (!\adxl345_int|Add6~21\)) # (!\adxl345_int|z_sample1\(11) & ((\adxl345_int|Add6~21\) # (GND)))))
-- \adxl345_int|Add6~23\ = CARRY((\adxl345_int|z_sample0\(11) & (!\adxl345_int|z_sample1\(11) & !\adxl345_int|Add6~21\)) # (!\adxl345_int|z_sample0\(11) & ((!\adxl345_int|Add6~21\) # (!\adxl345_int|z_sample1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(11),
	datab => \adxl345_int|z_sample1\(11),
	datad => VCC,
	cin => \adxl345_int|Add6~21\,
	combout => \adxl345_int|Add6~22_combout\,
	cout => \adxl345_int|Add6~23\);

-- Location: LCCOMB_X27_Y26_N6
\adxl345_int|Add6~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~24_combout\ = ((\adxl345_int|z_sample0\(12) $ (\adxl345_int|z_sample1\(12) $ (!\adxl345_int|Add6~23\)))) # (GND)
-- \adxl345_int|Add6~25\ = CARRY((\adxl345_int|z_sample0\(12) & ((\adxl345_int|z_sample1\(12)) # (!\adxl345_int|Add6~23\))) # (!\adxl345_int|z_sample0\(12) & (\adxl345_int|z_sample1\(12) & !\adxl345_int|Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample0\(12),
	datab => \adxl345_int|z_sample1\(12),
	datad => VCC,
	cin => \adxl345_int|Add6~23\,
	combout => \adxl345_int|Add6~24_combout\,
	cout => \adxl345_int|Add6~25\);

-- Location: LCCOMB_X27_Y26_N8
\adxl345_int|Add6~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~26_combout\ = (\adxl345_int|z_sample1\(13) & ((\adxl345_int|z_sample0\(13) & (\adxl345_int|Add6~25\ & VCC)) # (!\adxl345_int|z_sample0\(13) & (!\adxl345_int|Add6~25\)))) # (!\adxl345_int|z_sample1\(13) & ((\adxl345_int|z_sample0\(13) & 
-- (!\adxl345_int|Add6~25\)) # (!\adxl345_int|z_sample0\(13) & ((\adxl345_int|Add6~25\) # (GND)))))
-- \adxl345_int|Add6~27\ = CARRY((\adxl345_int|z_sample1\(13) & (!\adxl345_int|z_sample0\(13) & !\adxl345_int|Add6~25\)) # (!\adxl345_int|z_sample1\(13) & ((!\adxl345_int|Add6~25\) # (!\adxl345_int|z_sample0\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample1\(13),
	datab => \adxl345_int|z_sample0\(13),
	datad => VCC,
	cin => \adxl345_int|Add6~25\,
	combout => \adxl345_int|Add6~26_combout\,
	cout => \adxl345_int|Add6~27\);

-- Location: LCCOMB_X27_Y26_N10
\adxl345_int|Add6~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~28_combout\ = ((\adxl345_int|z_sample1\(14) $ (\adxl345_int|z_sample0\(14) $ (!\adxl345_int|Add6~27\)))) # (GND)
-- \adxl345_int|Add6~29\ = CARRY((\adxl345_int|z_sample1\(14) & ((\adxl345_int|z_sample0\(14)) # (!\adxl345_int|Add6~27\))) # (!\adxl345_int|z_sample1\(14) & (\adxl345_int|z_sample0\(14) & !\adxl345_int|Add6~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample1\(14),
	datab => \adxl345_int|z_sample0\(14),
	datad => VCC,
	cin => \adxl345_int|Add6~27\,
	combout => \adxl345_int|Add6~28_combout\,
	cout => \adxl345_int|Add6~29\);

-- Location: LCCOMB_X27_Y26_N12
\adxl345_int|Add6~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~30_combout\ = (\adxl345_int|z_sample1\(15) & ((\adxl345_int|z_sample0\(15) & (\adxl345_int|Add6~29\ & VCC)) # (!\adxl345_int|z_sample0\(15) & (!\adxl345_int|Add6~29\)))) # (!\adxl345_int|z_sample1\(15) & ((\adxl345_int|z_sample0\(15) & 
-- (!\adxl345_int|Add6~29\)) # (!\adxl345_int|z_sample0\(15) & ((\adxl345_int|Add6~29\) # (GND)))))
-- \adxl345_int|Add6~31\ = CARRY((\adxl345_int|z_sample1\(15) & (!\adxl345_int|z_sample0\(15) & !\adxl345_int|Add6~29\)) # (!\adxl345_int|z_sample1\(15) & ((!\adxl345_int|Add6~29\) # (!\adxl345_int|z_sample0\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample1\(15),
	datab => \adxl345_int|z_sample0\(15),
	datad => VCC,
	cin => \adxl345_int|Add6~29\,
	combout => \adxl345_int|Add6~30_combout\,
	cout => \adxl345_int|Add6~31\);

-- Location: LCCOMB_X27_Y26_N14
\adxl345_int|Add6~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~32_combout\ = ((\adxl345_int|z_sample1\(15) $ (\adxl345_int|z_sample0\(15) $ (!\adxl345_int|Add6~31\)))) # (GND)
-- \adxl345_int|Add6~33\ = CARRY((\adxl345_int|z_sample1\(15) & ((\adxl345_int|z_sample0\(15)) # (!\adxl345_int|Add6~31\))) # (!\adxl345_int|z_sample1\(15) & (\adxl345_int|z_sample0\(15) & !\adxl345_int|Add6~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample1\(15),
	datab => \adxl345_int|z_sample0\(15),
	datad => VCC,
	cin => \adxl345_int|Add6~31\,
	combout => \adxl345_int|Add6~32_combout\,
	cout => \adxl345_int|Add6~33\);

-- Location: FF_X26_Y26_N27
\adxl345_int|z_sample2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample1\(15),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(15));

-- Location: FF_X26_Y26_N15
\adxl345_int|z_sample3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(15),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(15));

-- Location: FF_X26_Y26_N17
\adxl345_int|z_sample2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample1\(14),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(14));

-- Location: FF_X26_Y26_N13
\adxl345_int|z_sample3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(14),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(14));

-- Location: FF_X26_Y26_N23
\adxl345_int|z_sample2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample1\(13),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(13));

-- Location: FF_X26_Y26_N11
\adxl345_int|z_sample3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(13),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(13));

-- Location: LCCOMB_X26_Y26_N24
\adxl345_int|z_sample2[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample2[12]~feeder_combout\ = \adxl345_int|z_sample1\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample1\(12),
	combout => \adxl345_int|z_sample2[12]~feeder_combout\);

-- Location: FF_X26_Y26_N25
\adxl345_int|z_sample2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample2[12]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(12));

-- Location: FF_X26_Y26_N9
\adxl345_int|z_sample3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(12),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(12));

-- Location: LCCOMB_X26_Y26_N28
\adxl345_int|z_sample2[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample2[11]~feeder_combout\ = \adxl345_int|z_sample1\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample1\(11),
	combout => \adxl345_int|z_sample2[11]~feeder_combout\);

-- Location: FF_X26_Y26_N29
\adxl345_int|z_sample2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample2[11]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(11));

-- Location: FF_X26_Y26_N7
\adxl345_int|z_sample3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(11),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(11));

-- Location: LCCOMB_X26_Y26_N20
\adxl345_int|z_sample2[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample2[10]~feeder_combout\ = \adxl345_int|z_sample1\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample1\(10),
	combout => \adxl345_int|z_sample2[10]~feeder_combout\);

-- Location: FF_X26_Y26_N21
\adxl345_int|z_sample2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample2[10]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(10));

-- Location: FF_X26_Y26_N5
\adxl345_int|z_sample3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(10),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(10));

-- Location: FF_X26_Y26_N31
\adxl345_int|z_sample2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample1\(9),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(9));

-- Location: FF_X26_Y26_N3
\adxl345_int|z_sample3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(9),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(9));

-- Location: LCCOMB_X26_Y26_N18
\adxl345_int|z_sample2[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample2[8]~feeder_combout\ = \adxl345_int|z_sample1\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample1\(8),
	combout => \adxl345_int|z_sample2[8]~feeder_combout\);

-- Location: FF_X26_Y26_N19
\adxl345_int|z_sample2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample2[8]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(8));

-- Location: FF_X26_Y26_N1
\adxl345_int|z_sample3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(8),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(8));

-- Location: LCCOMB_X26_Y27_N0
\adxl345_int|z_sample2[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample2[7]~feeder_combout\ = \adxl345_int|z_sample1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample1\(7),
	combout => \adxl345_int|z_sample2[7]~feeder_combout\);

-- Location: FF_X26_Y27_N1
\adxl345_int|z_sample2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample2[7]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(7));

-- Location: FF_X26_Y27_N31
\adxl345_int|z_sample3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(7),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(7));

-- Location: FF_X26_Y27_N15
\adxl345_int|z_sample2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample1\(6),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(6));

-- Location: FF_X26_Y27_N29
\adxl345_int|z_sample3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(6),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(6));

-- Location: LCCOMB_X26_Y27_N2
\adxl345_int|z_sample2[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample2[5]~feeder_combout\ = \adxl345_int|z_sample1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample1\(5),
	combout => \adxl345_int|z_sample2[5]~feeder_combout\);

-- Location: FF_X26_Y27_N3
\adxl345_int|z_sample2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample2[5]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(5));

-- Location: FF_X26_Y27_N27
\adxl345_int|z_sample3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(5),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(5));

-- Location: LCCOMB_X26_Y27_N8
\adxl345_int|z_sample2[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample2[4]~feeder_combout\ = \adxl345_int|z_sample1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample1\(4),
	combout => \adxl345_int|z_sample2[4]~feeder_combout\);

-- Location: FF_X26_Y27_N9
\adxl345_int|z_sample2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample2[4]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(4));

-- Location: FF_X26_Y27_N25
\adxl345_int|z_sample3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(4),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(4));

-- Location: FF_X26_Y27_N11
\adxl345_int|z_sample2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample1\(3),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(3));

-- Location: FF_X26_Y27_N23
\adxl345_int|z_sample3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(3),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(3));

-- Location: FF_X26_Y27_N7
\adxl345_int|z_sample2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample1\(2),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(2));

-- Location: FF_X26_Y27_N21
\adxl345_int|z_sample3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(2),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(2));

-- Location: LCCOMB_X26_Y27_N12
\adxl345_int|z_sample2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|z_sample2[1]~feeder_combout\ = \adxl345_int|z_sample1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adxl345_int|z_sample1\(1),
	combout => \adxl345_int|z_sample2[1]~feeder_combout\);

-- Location: FF_X26_Y27_N13
\adxl345_int|z_sample2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|z_sample2[1]~feeder_combout\,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(1));

-- Location: FF_X26_Y27_N19
\adxl345_int|z_sample3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(1),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(1));

-- Location: FF_X26_Y27_N5
\adxl345_int|z_sample2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample1\(0),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample2\(0));

-- Location: FF_X26_Y27_N17
\adxl345_int|z_sample3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \adxl345_int|z_sample2\(0),
	sload => VCC,
	ena => \adxl345_int|z_sample1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|z_sample3\(0));

-- Location: LCCOMB_X26_Y27_N16
\adxl345_int|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~0_combout\ = (\adxl345_int|z_sample3\(0) & (\adxl345_int|z_sample2\(0) $ (VCC))) # (!\adxl345_int|z_sample3\(0) & (\adxl345_int|z_sample2\(0) & VCC))
-- \adxl345_int|Add7~1\ = CARRY((\adxl345_int|z_sample3\(0) & \adxl345_int|z_sample2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample3\(0),
	datab => \adxl345_int|z_sample2\(0),
	datad => VCC,
	combout => \adxl345_int|Add7~0_combout\,
	cout => \adxl345_int|Add7~1\);

-- Location: LCCOMB_X26_Y27_N18
\adxl345_int|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~2_combout\ = (\adxl345_int|z_sample2\(1) & ((\adxl345_int|z_sample3\(1) & (\adxl345_int|Add7~1\ & VCC)) # (!\adxl345_int|z_sample3\(1) & (!\adxl345_int|Add7~1\)))) # (!\adxl345_int|z_sample2\(1) & ((\adxl345_int|z_sample3\(1) & 
-- (!\adxl345_int|Add7~1\)) # (!\adxl345_int|z_sample3\(1) & ((\adxl345_int|Add7~1\) # (GND)))))
-- \adxl345_int|Add7~3\ = CARRY((\adxl345_int|z_sample2\(1) & (!\adxl345_int|z_sample3\(1) & !\adxl345_int|Add7~1\)) # (!\adxl345_int|z_sample2\(1) & ((!\adxl345_int|Add7~1\) # (!\adxl345_int|z_sample3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample2\(1),
	datab => \adxl345_int|z_sample3\(1),
	datad => VCC,
	cin => \adxl345_int|Add7~1\,
	combout => \adxl345_int|Add7~2_combout\,
	cout => \adxl345_int|Add7~3\);

-- Location: LCCOMB_X26_Y27_N20
\adxl345_int|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~4_combout\ = ((\adxl345_int|z_sample3\(2) $ (\adxl345_int|z_sample2\(2) $ (!\adxl345_int|Add7~3\)))) # (GND)
-- \adxl345_int|Add7~5\ = CARRY((\adxl345_int|z_sample3\(2) & ((\adxl345_int|z_sample2\(2)) # (!\adxl345_int|Add7~3\))) # (!\adxl345_int|z_sample3\(2) & (\adxl345_int|z_sample2\(2) & !\adxl345_int|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample3\(2),
	datab => \adxl345_int|z_sample2\(2),
	datad => VCC,
	cin => \adxl345_int|Add7~3\,
	combout => \adxl345_int|Add7~4_combout\,
	cout => \adxl345_int|Add7~5\);

-- Location: LCCOMB_X26_Y27_N22
\adxl345_int|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~6_combout\ = (\adxl345_int|z_sample2\(3) & ((\adxl345_int|z_sample3\(3) & (\adxl345_int|Add7~5\ & VCC)) # (!\adxl345_int|z_sample3\(3) & (!\adxl345_int|Add7~5\)))) # (!\adxl345_int|z_sample2\(3) & ((\adxl345_int|z_sample3\(3) & 
-- (!\adxl345_int|Add7~5\)) # (!\adxl345_int|z_sample3\(3) & ((\adxl345_int|Add7~5\) # (GND)))))
-- \adxl345_int|Add7~7\ = CARRY((\adxl345_int|z_sample2\(3) & (!\adxl345_int|z_sample3\(3) & !\adxl345_int|Add7~5\)) # (!\adxl345_int|z_sample2\(3) & ((!\adxl345_int|Add7~5\) # (!\adxl345_int|z_sample3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample2\(3),
	datab => \adxl345_int|z_sample3\(3),
	datad => VCC,
	cin => \adxl345_int|Add7~5\,
	combout => \adxl345_int|Add7~6_combout\,
	cout => \adxl345_int|Add7~7\);

-- Location: LCCOMB_X26_Y27_N24
\adxl345_int|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~8_combout\ = ((\adxl345_int|z_sample3\(4) $ (\adxl345_int|z_sample2\(4) $ (!\adxl345_int|Add7~7\)))) # (GND)
-- \adxl345_int|Add7~9\ = CARRY((\adxl345_int|z_sample3\(4) & ((\adxl345_int|z_sample2\(4)) # (!\adxl345_int|Add7~7\))) # (!\adxl345_int|z_sample3\(4) & (\adxl345_int|z_sample2\(4) & !\adxl345_int|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample3\(4),
	datab => \adxl345_int|z_sample2\(4),
	datad => VCC,
	cin => \adxl345_int|Add7~7\,
	combout => \adxl345_int|Add7~8_combout\,
	cout => \adxl345_int|Add7~9\);

-- Location: LCCOMB_X26_Y27_N26
\adxl345_int|Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~10_combout\ = (\adxl345_int|z_sample3\(5) & ((\adxl345_int|z_sample2\(5) & (\adxl345_int|Add7~9\ & VCC)) # (!\adxl345_int|z_sample2\(5) & (!\adxl345_int|Add7~9\)))) # (!\adxl345_int|z_sample3\(5) & ((\adxl345_int|z_sample2\(5) & 
-- (!\adxl345_int|Add7~9\)) # (!\adxl345_int|z_sample2\(5) & ((\adxl345_int|Add7~9\) # (GND)))))
-- \adxl345_int|Add7~11\ = CARRY((\adxl345_int|z_sample3\(5) & (!\adxl345_int|z_sample2\(5) & !\adxl345_int|Add7~9\)) # (!\adxl345_int|z_sample3\(5) & ((!\adxl345_int|Add7~9\) # (!\adxl345_int|z_sample2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample3\(5),
	datab => \adxl345_int|z_sample2\(5),
	datad => VCC,
	cin => \adxl345_int|Add7~9\,
	combout => \adxl345_int|Add7~10_combout\,
	cout => \adxl345_int|Add7~11\);

-- Location: LCCOMB_X26_Y27_N28
\adxl345_int|Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~12_combout\ = ((\adxl345_int|z_sample3\(6) $ (\adxl345_int|z_sample2\(6) $ (!\adxl345_int|Add7~11\)))) # (GND)
-- \adxl345_int|Add7~13\ = CARRY((\adxl345_int|z_sample3\(6) & ((\adxl345_int|z_sample2\(6)) # (!\adxl345_int|Add7~11\))) # (!\adxl345_int|z_sample3\(6) & (\adxl345_int|z_sample2\(6) & !\adxl345_int|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample3\(6),
	datab => \adxl345_int|z_sample2\(6),
	datad => VCC,
	cin => \adxl345_int|Add7~11\,
	combout => \adxl345_int|Add7~12_combout\,
	cout => \adxl345_int|Add7~13\);

-- Location: LCCOMB_X26_Y27_N30
\adxl345_int|Add7~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~14_combout\ = (\adxl345_int|z_sample3\(7) & ((\adxl345_int|z_sample2\(7) & (\adxl345_int|Add7~13\ & VCC)) # (!\adxl345_int|z_sample2\(7) & (!\adxl345_int|Add7~13\)))) # (!\adxl345_int|z_sample3\(7) & ((\adxl345_int|z_sample2\(7) & 
-- (!\adxl345_int|Add7~13\)) # (!\adxl345_int|z_sample2\(7) & ((\adxl345_int|Add7~13\) # (GND)))))
-- \adxl345_int|Add7~15\ = CARRY((\adxl345_int|z_sample3\(7) & (!\adxl345_int|z_sample2\(7) & !\adxl345_int|Add7~13\)) # (!\adxl345_int|z_sample3\(7) & ((!\adxl345_int|Add7~13\) # (!\adxl345_int|z_sample2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample3\(7),
	datab => \adxl345_int|z_sample2\(7),
	datad => VCC,
	cin => \adxl345_int|Add7~13\,
	combout => \adxl345_int|Add7~14_combout\,
	cout => \adxl345_int|Add7~15\);

-- Location: LCCOMB_X26_Y26_N0
\adxl345_int|Add7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~16_combout\ = ((\adxl345_int|z_sample2\(8) $ (\adxl345_int|z_sample3\(8) $ (!\adxl345_int|Add7~15\)))) # (GND)
-- \adxl345_int|Add7~17\ = CARRY((\adxl345_int|z_sample2\(8) & ((\adxl345_int|z_sample3\(8)) # (!\adxl345_int|Add7~15\))) # (!\adxl345_int|z_sample2\(8) & (\adxl345_int|z_sample3\(8) & !\adxl345_int|Add7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample2\(8),
	datab => \adxl345_int|z_sample3\(8),
	datad => VCC,
	cin => \adxl345_int|Add7~15\,
	combout => \adxl345_int|Add7~16_combout\,
	cout => \adxl345_int|Add7~17\);

-- Location: LCCOMB_X26_Y26_N2
\adxl345_int|Add7~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~18_combout\ = (\adxl345_int|z_sample2\(9) & ((\adxl345_int|z_sample3\(9) & (\adxl345_int|Add7~17\ & VCC)) # (!\adxl345_int|z_sample3\(9) & (!\adxl345_int|Add7~17\)))) # (!\adxl345_int|z_sample2\(9) & ((\adxl345_int|z_sample3\(9) & 
-- (!\adxl345_int|Add7~17\)) # (!\adxl345_int|z_sample3\(9) & ((\adxl345_int|Add7~17\) # (GND)))))
-- \adxl345_int|Add7~19\ = CARRY((\adxl345_int|z_sample2\(9) & (!\adxl345_int|z_sample3\(9) & !\adxl345_int|Add7~17\)) # (!\adxl345_int|z_sample2\(9) & ((!\adxl345_int|Add7~17\) # (!\adxl345_int|z_sample3\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample2\(9),
	datab => \adxl345_int|z_sample3\(9),
	datad => VCC,
	cin => \adxl345_int|Add7~17\,
	combout => \adxl345_int|Add7~18_combout\,
	cout => \adxl345_int|Add7~19\);

-- Location: LCCOMB_X26_Y26_N4
\adxl345_int|Add7~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~20_combout\ = ((\adxl345_int|z_sample2\(10) $ (\adxl345_int|z_sample3\(10) $ (!\adxl345_int|Add7~19\)))) # (GND)
-- \adxl345_int|Add7~21\ = CARRY((\adxl345_int|z_sample2\(10) & ((\adxl345_int|z_sample3\(10)) # (!\adxl345_int|Add7~19\))) # (!\adxl345_int|z_sample2\(10) & (\adxl345_int|z_sample3\(10) & !\adxl345_int|Add7~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample2\(10),
	datab => \adxl345_int|z_sample3\(10),
	datad => VCC,
	cin => \adxl345_int|Add7~19\,
	combout => \adxl345_int|Add7~20_combout\,
	cout => \adxl345_int|Add7~21\);

-- Location: LCCOMB_X26_Y26_N6
\adxl345_int|Add7~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~22_combout\ = (\adxl345_int|z_sample2\(11) & ((\adxl345_int|z_sample3\(11) & (\adxl345_int|Add7~21\ & VCC)) # (!\adxl345_int|z_sample3\(11) & (!\adxl345_int|Add7~21\)))) # (!\adxl345_int|z_sample2\(11) & ((\adxl345_int|z_sample3\(11) & 
-- (!\adxl345_int|Add7~21\)) # (!\adxl345_int|z_sample3\(11) & ((\adxl345_int|Add7~21\) # (GND)))))
-- \adxl345_int|Add7~23\ = CARRY((\adxl345_int|z_sample2\(11) & (!\adxl345_int|z_sample3\(11) & !\adxl345_int|Add7~21\)) # (!\adxl345_int|z_sample2\(11) & ((!\adxl345_int|Add7~21\) # (!\adxl345_int|z_sample3\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample2\(11),
	datab => \adxl345_int|z_sample3\(11),
	datad => VCC,
	cin => \adxl345_int|Add7~21\,
	combout => \adxl345_int|Add7~22_combout\,
	cout => \adxl345_int|Add7~23\);

-- Location: LCCOMB_X26_Y26_N8
\adxl345_int|Add7~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~24_combout\ = ((\adxl345_int|z_sample3\(12) $ (\adxl345_int|z_sample2\(12) $ (!\adxl345_int|Add7~23\)))) # (GND)
-- \adxl345_int|Add7~25\ = CARRY((\adxl345_int|z_sample3\(12) & ((\adxl345_int|z_sample2\(12)) # (!\adxl345_int|Add7~23\))) # (!\adxl345_int|z_sample3\(12) & (\adxl345_int|z_sample2\(12) & !\adxl345_int|Add7~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample3\(12),
	datab => \adxl345_int|z_sample2\(12),
	datad => VCC,
	cin => \adxl345_int|Add7~23\,
	combout => \adxl345_int|Add7~24_combout\,
	cout => \adxl345_int|Add7~25\);

-- Location: LCCOMB_X26_Y26_N10
\adxl345_int|Add7~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~26_combout\ = (\adxl345_int|z_sample2\(13) & ((\adxl345_int|z_sample3\(13) & (\adxl345_int|Add7~25\ & VCC)) # (!\adxl345_int|z_sample3\(13) & (!\adxl345_int|Add7~25\)))) # (!\adxl345_int|z_sample2\(13) & ((\adxl345_int|z_sample3\(13) & 
-- (!\adxl345_int|Add7~25\)) # (!\adxl345_int|z_sample3\(13) & ((\adxl345_int|Add7~25\) # (GND)))))
-- \adxl345_int|Add7~27\ = CARRY((\adxl345_int|z_sample2\(13) & (!\adxl345_int|z_sample3\(13) & !\adxl345_int|Add7~25\)) # (!\adxl345_int|z_sample2\(13) & ((!\adxl345_int|Add7~25\) # (!\adxl345_int|z_sample3\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample2\(13),
	datab => \adxl345_int|z_sample3\(13),
	datad => VCC,
	cin => \adxl345_int|Add7~25\,
	combout => \adxl345_int|Add7~26_combout\,
	cout => \adxl345_int|Add7~27\);

-- Location: LCCOMB_X26_Y26_N12
\adxl345_int|Add7~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~28_combout\ = ((\adxl345_int|z_sample3\(14) $ (\adxl345_int|z_sample2\(14) $ (!\adxl345_int|Add7~27\)))) # (GND)
-- \adxl345_int|Add7~29\ = CARRY((\adxl345_int|z_sample3\(14) & ((\adxl345_int|z_sample2\(14)) # (!\adxl345_int|Add7~27\))) # (!\adxl345_int|z_sample3\(14) & (\adxl345_int|z_sample2\(14) & !\adxl345_int|Add7~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample3\(14),
	datab => \adxl345_int|z_sample2\(14),
	datad => VCC,
	cin => \adxl345_int|Add7~27\,
	combout => \adxl345_int|Add7~28_combout\,
	cout => \adxl345_int|Add7~29\);

-- Location: LCCOMB_X26_Y26_N14
\adxl345_int|Add7~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~30_combout\ = (\adxl345_int|z_sample2\(15) & ((\adxl345_int|z_sample3\(15) & (\adxl345_int|Add7~29\ & VCC)) # (!\adxl345_int|z_sample3\(15) & (!\adxl345_int|Add7~29\)))) # (!\adxl345_int|z_sample2\(15) & ((\adxl345_int|z_sample3\(15) & 
-- (!\adxl345_int|Add7~29\)) # (!\adxl345_int|z_sample3\(15) & ((\adxl345_int|Add7~29\) # (GND)))))
-- \adxl345_int|Add7~31\ = CARRY((\adxl345_int|z_sample2\(15) & (!\adxl345_int|z_sample3\(15) & !\adxl345_int|Add7~29\)) # (!\adxl345_int|z_sample2\(15) & ((!\adxl345_int|Add7~29\) # (!\adxl345_int|z_sample3\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample2\(15),
	datab => \adxl345_int|z_sample3\(15),
	datad => VCC,
	cin => \adxl345_int|Add7~29\,
	combout => \adxl345_int|Add7~30_combout\,
	cout => \adxl345_int|Add7~31\);

-- Location: LCCOMB_X26_Y26_N16
\adxl345_int|Add7~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add7~32_combout\ = \adxl345_int|z_sample2\(15) $ (\adxl345_int|z_sample3\(15) $ (!\adxl345_int|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample2\(15),
	datab => \adxl345_int|z_sample3\(15),
	cin => \adxl345_int|Add7~31\,
	combout => \adxl345_int|Add7~32_combout\);

-- Location: LCCOMB_X27_Y25_N14
\adxl345_int|s_acc_send[0]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[0]~121_cout\ = CARRY((\adxl345_int|Add6~0_combout\ & \adxl345_int|Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add6~0_combout\,
	datab => \adxl345_int|Add7~0_combout\,
	datad => VCC,
	cout => \adxl345_int|s_acc_send[0]~121_cout\);

-- Location: LCCOMB_X27_Y25_N16
\adxl345_int|s_acc_send[0]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[0]~123_cout\ = CARRY((\adxl345_int|Add7~2_combout\ & (!\adxl345_int|Add6~2_combout\ & !\adxl345_int|s_acc_send[0]~121_cout\)) # (!\adxl345_int|Add7~2_combout\ & ((!\adxl345_int|s_acc_send[0]~121_cout\) # 
-- (!\adxl345_int|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~2_combout\,
	datab => \adxl345_int|Add6~2_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[0]~121_cout\,
	cout => \adxl345_int|s_acc_send[0]~123_cout\);

-- Location: LCCOMB_X27_Y25_N18
\adxl345_int|s_acc_send[0]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[0]~124_combout\ = ((\adxl345_int|Add7~4_combout\ $ (\adxl345_int|Add6~4_combout\ $ (!\adxl345_int|s_acc_send[0]~123_cout\)))) # (GND)
-- \adxl345_int|s_acc_send[0]~125\ = CARRY((\adxl345_int|Add7~4_combout\ & ((\adxl345_int|Add6~4_combout\) # (!\adxl345_int|s_acc_send[0]~123_cout\))) # (!\adxl345_int|Add7~4_combout\ & (\adxl345_int|Add6~4_combout\ & !\adxl345_int|s_acc_send[0]~123_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~4_combout\,
	datab => \adxl345_int|Add6~4_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[0]~123_cout\,
	combout => \adxl345_int|s_acc_send[0]~124_combout\,
	cout => \adxl345_int|s_acc_send[0]~125\);

-- Location: LCCOMB_X27_Y25_N20
\adxl345_int|s_acc_send[1]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[1]~126_combout\ = (\adxl345_int|Add7~6_combout\ & ((\adxl345_int|Add6~6_combout\ & (\adxl345_int|s_acc_send[0]~125\ & VCC)) # (!\adxl345_int|Add6~6_combout\ & (!\adxl345_int|s_acc_send[0]~125\)))) # (!\adxl345_int|Add7~6_combout\ & 
-- ((\adxl345_int|Add6~6_combout\ & (!\adxl345_int|s_acc_send[0]~125\)) # (!\adxl345_int|Add6~6_combout\ & ((\adxl345_int|s_acc_send[0]~125\) # (GND)))))
-- \adxl345_int|s_acc_send[1]~127\ = CARRY((\adxl345_int|Add7~6_combout\ & (!\adxl345_int|Add6~6_combout\ & !\adxl345_int|s_acc_send[0]~125\)) # (!\adxl345_int|Add7~6_combout\ & ((!\adxl345_int|s_acc_send[0]~125\) # (!\adxl345_int|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~6_combout\,
	datab => \adxl345_int|Add6~6_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[0]~125\,
	combout => \adxl345_int|s_acc_send[1]~126_combout\,
	cout => \adxl345_int|s_acc_send[1]~127\);

-- Location: LCCOMB_X27_Y25_N22
\adxl345_int|s_acc_send[2]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[2]~128_combout\ = ((\adxl345_int|Add7~8_combout\ $ (\adxl345_int|Add6~8_combout\ $ (!\adxl345_int|s_acc_send[1]~127\)))) # (GND)
-- \adxl345_int|s_acc_send[2]~129\ = CARRY((\adxl345_int|Add7~8_combout\ & ((\adxl345_int|Add6~8_combout\) # (!\adxl345_int|s_acc_send[1]~127\))) # (!\adxl345_int|Add7~8_combout\ & (\adxl345_int|Add6~8_combout\ & !\adxl345_int|s_acc_send[1]~127\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~8_combout\,
	datab => \adxl345_int|Add6~8_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[1]~127\,
	combout => \adxl345_int|s_acc_send[2]~128_combout\,
	cout => \adxl345_int|s_acc_send[2]~129\);

-- Location: LCCOMB_X27_Y25_N24
\adxl345_int|s_acc_send[3]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[3]~130_combout\ = (\adxl345_int|Add6~10_combout\ & ((\adxl345_int|Add7~10_combout\ & (\adxl345_int|s_acc_send[2]~129\ & VCC)) # (!\adxl345_int|Add7~10_combout\ & (!\adxl345_int|s_acc_send[2]~129\)))) # 
-- (!\adxl345_int|Add6~10_combout\ & ((\adxl345_int|Add7~10_combout\ & (!\adxl345_int|s_acc_send[2]~129\)) # (!\adxl345_int|Add7~10_combout\ & ((\adxl345_int|s_acc_send[2]~129\) # (GND)))))
-- \adxl345_int|s_acc_send[3]~131\ = CARRY((\adxl345_int|Add6~10_combout\ & (!\adxl345_int|Add7~10_combout\ & !\adxl345_int|s_acc_send[2]~129\)) # (!\adxl345_int|Add6~10_combout\ & ((!\adxl345_int|s_acc_send[2]~129\) # (!\adxl345_int|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add6~10_combout\,
	datab => \adxl345_int|Add7~10_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[2]~129\,
	combout => \adxl345_int|s_acc_send[3]~130_combout\,
	cout => \adxl345_int|s_acc_send[3]~131\);

-- Location: LCCOMB_X27_Y25_N26
\adxl345_int|s_acc_send[4]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[4]~132_combout\ = ((\adxl345_int|Add7~12_combout\ $ (\adxl345_int|Add6~12_combout\ $ (!\adxl345_int|s_acc_send[3]~131\)))) # (GND)
-- \adxl345_int|s_acc_send[4]~133\ = CARRY((\adxl345_int|Add7~12_combout\ & ((\adxl345_int|Add6~12_combout\) # (!\adxl345_int|s_acc_send[3]~131\))) # (!\adxl345_int|Add7~12_combout\ & (\adxl345_int|Add6~12_combout\ & !\adxl345_int|s_acc_send[3]~131\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~12_combout\,
	datab => \adxl345_int|Add6~12_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[3]~131\,
	combout => \adxl345_int|s_acc_send[4]~132_combout\,
	cout => \adxl345_int|s_acc_send[4]~133\);

-- Location: LCCOMB_X27_Y25_N28
\adxl345_int|s_acc_send[5]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[5]~134_combout\ = (\adxl345_int|Add7~14_combout\ & ((\adxl345_int|Add6~14_combout\ & (\adxl345_int|s_acc_send[4]~133\ & VCC)) # (!\adxl345_int|Add6~14_combout\ & (!\adxl345_int|s_acc_send[4]~133\)))) # 
-- (!\adxl345_int|Add7~14_combout\ & ((\adxl345_int|Add6~14_combout\ & (!\adxl345_int|s_acc_send[4]~133\)) # (!\adxl345_int|Add6~14_combout\ & ((\adxl345_int|s_acc_send[4]~133\) # (GND)))))
-- \adxl345_int|s_acc_send[5]~135\ = CARRY((\adxl345_int|Add7~14_combout\ & (!\adxl345_int|Add6~14_combout\ & !\adxl345_int|s_acc_send[4]~133\)) # (!\adxl345_int|Add7~14_combout\ & ((!\adxl345_int|s_acc_send[4]~133\) # (!\adxl345_int|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~14_combout\,
	datab => \adxl345_int|Add6~14_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[4]~133\,
	combout => \adxl345_int|s_acc_send[5]~134_combout\,
	cout => \adxl345_int|s_acc_send[5]~135\);

-- Location: LCCOMB_X27_Y25_N30
\adxl345_int|s_acc_send[6]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[6]~136_combout\ = ((\adxl345_int|Add7~16_combout\ $ (\adxl345_int|Add6~16_combout\ $ (!\adxl345_int|s_acc_send[5]~135\)))) # (GND)
-- \adxl345_int|s_acc_send[6]~137\ = CARRY((\adxl345_int|Add7~16_combout\ & ((\adxl345_int|Add6~16_combout\) # (!\adxl345_int|s_acc_send[5]~135\))) # (!\adxl345_int|Add7~16_combout\ & (\adxl345_int|Add6~16_combout\ & !\adxl345_int|s_acc_send[5]~135\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~16_combout\,
	datab => \adxl345_int|Add6~16_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[5]~135\,
	combout => \adxl345_int|s_acc_send[6]~136_combout\,
	cout => \adxl345_int|s_acc_send[6]~137\);

-- Location: LCCOMB_X27_Y24_N0
\adxl345_int|s_acc_send[7]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[7]~138_combout\ = (\adxl345_int|Add7~18_combout\ & ((\adxl345_int|Add6~18_combout\ & (\adxl345_int|s_acc_send[6]~137\ & VCC)) # (!\adxl345_int|Add6~18_combout\ & (!\adxl345_int|s_acc_send[6]~137\)))) # 
-- (!\adxl345_int|Add7~18_combout\ & ((\adxl345_int|Add6~18_combout\ & (!\adxl345_int|s_acc_send[6]~137\)) # (!\adxl345_int|Add6~18_combout\ & ((\adxl345_int|s_acc_send[6]~137\) # (GND)))))
-- \adxl345_int|s_acc_send[7]~139\ = CARRY((\adxl345_int|Add7~18_combout\ & (!\adxl345_int|Add6~18_combout\ & !\adxl345_int|s_acc_send[6]~137\)) # (!\adxl345_int|Add7~18_combout\ & ((!\adxl345_int|s_acc_send[6]~137\) # (!\adxl345_int|Add6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~18_combout\,
	datab => \adxl345_int|Add6~18_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[6]~137\,
	combout => \adxl345_int|s_acc_send[7]~138_combout\,
	cout => \adxl345_int|s_acc_send[7]~139\);

-- Location: LCCOMB_X27_Y24_N2
\adxl345_int|s_acc_send[8]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[8]~140_combout\ = ((\adxl345_int|Add7~20_combout\ $ (\adxl345_int|Add6~20_combout\ $ (!\adxl345_int|s_acc_send[7]~139\)))) # (GND)
-- \adxl345_int|s_acc_send[8]~141\ = CARRY((\adxl345_int|Add7~20_combout\ & ((\adxl345_int|Add6~20_combout\) # (!\adxl345_int|s_acc_send[7]~139\))) # (!\adxl345_int|Add7~20_combout\ & (\adxl345_int|Add6~20_combout\ & !\adxl345_int|s_acc_send[7]~139\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~20_combout\,
	datab => \adxl345_int|Add6~20_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[7]~139\,
	combout => \adxl345_int|s_acc_send[8]~140_combout\,
	cout => \adxl345_int|s_acc_send[8]~141\);

-- Location: LCCOMB_X27_Y24_N4
\adxl345_int|s_acc_send[9]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[9]~142_combout\ = (\adxl345_int|Add7~22_combout\ & ((\adxl345_int|Add6~22_combout\ & (\adxl345_int|s_acc_send[8]~141\ & VCC)) # (!\adxl345_int|Add6~22_combout\ & (!\adxl345_int|s_acc_send[8]~141\)))) # 
-- (!\adxl345_int|Add7~22_combout\ & ((\adxl345_int|Add6~22_combout\ & (!\adxl345_int|s_acc_send[8]~141\)) # (!\adxl345_int|Add6~22_combout\ & ((\adxl345_int|s_acc_send[8]~141\) # (GND)))))
-- \adxl345_int|s_acc_send[9]~143\ = CARRY((\adxl345_int|Add7~22_combout\ & (!\adxl345_int|Add6~22_combout\ & !\adxl345_int|s_acc_send[8]~141\)) # (!\adxl345_int|Add7~22_combout\ & ((!\adxl345_int|s_acc_send[8]~141\) # (!\adxl345_int|Add6~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~22_combout\,
	datab => \adxl345_int|Add6~22_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[8]~141\,
	combout => \adxl345_int|s_acc_send[9]~142_combout\,
	cout => \adxl345_int|s_acc_send[9]~143\);

-- Location: LCCOMB_X27_Y24_N6
\adxl345_int|s_acc_send[10]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[10]~144_combout\ = ((\adxl345_int|Add7~24_combout\ $ (\adxl345_int|Add6~24_combout\ $ (!\adxl345_int|s_acc_send[9]~143\)))) # (GND)
-- \adxl345_int|s_acc_send[10]~145\ = CARRY((\adxl345_int|Add7~24_combout\ & ((\adxl345_int|Add6~24_combout\) # (!\adxl345_int|s_acc_send[9]~143\))) # (!\adxl345_int|Add7~24_combout\ & (\adxl345_int|Add6~24_combout\ & !\adxl345_int|s_acc_send[9]~143\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~24_combout\,
	datab => \adxl345_int|Add6~24_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[9]~143\,
	combout => \adxl345_int|s_acc_send[10]~144_combout\,
	cout => \adxl345_int|s_acc_send[10]~145\);

-- Location: LCCOMB_X27_Y24_N8
\adxl345_int|s_acc_send[11]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[11]~146_combout\ = (\adxl345_int|Add6~26_combout\ & ((\adxl345_int|Add7~26_combout\ & (\adxl345_int|s_acc_send[10]~145\ & VCC)) # (!\adxl345_int|Add7~26_combout\ & (!\adxl345_int|s_acc_send[10]~145\)))) # 
-- (!\adxl345_int|Add6~26_combout\ & ((\adxl345_int|Add7~26_combout\ & (!\adxl345_int|s_acc_send[10]~145\)) # (!\adxl345_int|Add7~26_combout\ & ((\adxl345_int|s_acc_send[10]~145\) # (GND)))))
-- \adxl345_int|s_acc_send[11]~147\ = CARRY((\adxl345_int|Add6~26_combout\ & (!\adxl345_int|Add7~26_combout\ & !\adxl345_int|s_acc_send[10]~145\)) # (!\adxl345_int|Add6~26_combout\ & ((!\adxl345_int|s_acc_send[10]~145\) # (!\adxl345_int|Add7~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add6~26_combout\,
	datab => \adxl345_int|Add7~26_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[10]~145\,
	combout => \adxl345_int|s_acc_send[11]~146_combout\,
	cout => \adxl345_int|s_acc_send[11]~147\);

-- Location: LCCOMB_X27_Y24_N10
\adxl345_int|s_acc_send[12]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[12]~148_combout\ = ((\adxl345_int|Add7~28_combout\ $ (\adxl345_int|Add6~28_combout\ $ (!\adxl345_int|s_acc_send[11]~147\)))) # (GND)
-- \adxl345_int|s_acc_send[12]~149\ = CARRY((\adxl345_int|Add7~28_combout\ & ((\adxl345_int|Add6~28_combout\) # (!\adxl345_int|s_acc_send[11]~147\))) # (!\adxl345_int|Add7~28_combout\ & (\adxl345_int|Add6~28_combout\ & !\adxl345_int|s_acc_send[11]~147\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add7~28_combout\,
	datab => \adxl345_int|Add6~28_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[11]~147\,
	combout => \adxl345_int|s_acc_send[12]~148_combout\,
	cout => \adxl345_int|s_acc_send[12]~149\);

-- Location: LCCOMB_X27_Y24_N12
\adxl345_int|s_acc_send[13]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[13]~150_combout\ = (\adxl345_int|Add6~30_combout\ & ((\adxl345_int|Add7~30_combout\ & (\adxl345_int|s_acc_send[12]~149\ & VCC)) # (!\adxl345_int|Add7~30_combout\ & (!\adxl345_int|s_acc_send[12]~149\)))) # 
-- (!\adxl345_int|Add6~30_combout\ & ((\adxl345_int|Add7~30_combout\ & (!\adxl345_int|s_acc_send[12]~149\)) # (!\adxl345_int|Add7~30_combout\ & ((\adxl345_int|s_acc_send[12]~149\) # (GND)))))
-- \adxl345_int|s_acc_send[13]~151\ = CARRY((\adxl345_int|Add6~30_combout\ & (!\adxl345_int|Add7~30_combout\ & !\adxl345_int|s_acc_send[12]~149\)) # (!\adxl345_int|Add6~30_combout\ & ((!\adxl345_int|s_acc_send[12]~149\) # (!\adxl345_int|Add7~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add6~30_combout\,
	datab => \adxl345_int|Add7~30_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[12]~149\,
	combout => \adxl345_int|s_acc_send[13]~150_combout\,
	cout => \adxl345_int|s_acc_send[13]~151\);

-- Location: LCCOMB_X27_Y24_N14
\adxl345_int|s_acc_send[14]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[14]~152_combout\ = ((\adxl345_int|Add6~32_combout\ $ (\adxl345_int|Add7~32_combout\ $ (!\adxl345_int|s_acc_send[13]~151\)))) # (GND)
-- \adxl345_int|s_acc_send[14]~153\ = CARRY((\adxl345_int|Add6~32_combout\ & ((\adxl345_int|Add7~32_combout\) # (!\adxl345_int|s_acc_send[13]~151\))) # (!\adxl345_int|Add6~32_combout\ & (\adxl345_int|Add7~32_combout\ & !\adxl345_int|s_acc_send[13]~151\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add6~32_combout\,
	datab => \adxl345_int|Add7~32_combout\,
	datad => VCC,
	cin => \adxl345_int|s_acc_send[13]~151\,
	combout => \adxl345_int|s_acc_send[14]~152_combout\,
	cout => \adxl345_int|s_acc_send[14]~153\);

-- Location: FF_X27_Y24_N15
\adxl345_int|s_acc_send[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[14]~152_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(14));

-- Location: FF_X27_Y24_N9
\adxl345_int|s_acc_send[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[11]~146_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(11));

-- Location: FF_X27_Y24_N1
\adxl345_int|s_acc_send[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[7]~138_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(7));

-- Location: FF_X27_Y25_N31
\adxl345_int|s_acc_send[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[6]~136_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(6));

-- Location: FF_X27_Y25_N29
\adxl345_int|s_acc_send[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[5]~134_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(5));

-- Location: FF_X27_Y25_N27
\adxl345_int|s_acc_send[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[4]~132_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(4));

-- Location: FF_X27_Y25_N21
\adxl345_int|s_acc_send[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[1]~126_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(1));

-- Location: FF_X27_Y25_N19
\adxl345_int|s_acc_send[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[0]~124_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(0));

-- Location: LCCOMB_X30_Y25_N28
\ssi_inst_slave|transmit_register[0]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register[0]~49_combout\ = (\ssi_inst_slave|transmission_running~0_combout\ & ((\ssi_inst_slave|transmit_register\(0)))) # (!\ssi_inst_slave|transmission_running~0_combout\ & (\adxl345_int|s_acc_send\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|s_acc_send\(0),
	datab => \ssi_inst_slave|transmission_running~0_combout\,
	datac => \ssi_inst_slave|transmit_register\(0),
	combout => \ssi_inst_slave|transmit_register[0]~49_combout\);

-- Location: FF_X30_Y25_N29
\ssi_inst_slave|transmit_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register[0]~49_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(0));

-- Location: LCCOMB_X27_Y25_N4
\ssi_inst_slave|transmit_register~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~48_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(1))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|s_acc_send\(1),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \ssi_inst_slave|transmit_register\(0),
	combout => \ssi_inst_slave|transmit_register~48_combout\);

-- Location: LCCOMB_X34_Y25_N30
\ssi_inst_slave|transmit_register[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register[10]~1_combout\ = (!\ssi_inst_slave|transfer_bit_nr\(4) & !\ssi_inst_slave|transfer_bit_nr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transfer_bit_nr\(4),
	datad => \ssi_inst_slave|transfer_bit_nr\(5),
	combout => \ssi_inst_slave|transmit_register[10]~1_combout\);

-- Location: LCCOMB_X34_Y25_N8
\ssi_inst_slave|transmit_register[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register[10]~2_combout\ = ((\ssi_inst_slave|ssi_data_i~0_combout\ & ((\ssi_inst_slave|Equal0~0_combout\) # (!\ssi_inst_slave|transmit_register[10]~1_combout\)))) # (!\ssi_inst_slave|transmission_running~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|ssi_data_i~0_combout\,
	datab => \ssi_inst_slave|transmission_running~0_combout\,
	datac => \ssi_inst_slave|transmit_register[10]~1_combout\,
	datad => \ssi_inst_slave|Equal0~0_combout\,
	combout => \ssi_inst_slave|transmit_register[10]~2_combout\);

-- Location: FF_X27_Y25_N5
\ssi_inst_slave|transmit_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~48_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(1));

-- Location: FF_X27_Y25_N23
\adxl345_int|s_acc_send[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[2]~128_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(2));

-- Location: LCCOMB_X27_Y25_N10
\ssi_inst_slave|transmit_register~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~47_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(2)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \ssi_inst_slave|transmit_register\(1),
	datac => \adxl345_int|s_acc_send\(2),
	combout => \ssi_inst_slave|transmit_register~47_combout\);

-- Location: FF_X27_Y25_N11
\ssi_inst_slave|transmit_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~47_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(2));

-- Location: FF_X27_Y25_N25
\adxl345_int|s_acc_send[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[3]~130_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(3));

-- Location: LCCOMB_X27_Y25_N0
\ssi_inst_slave|transmit_register~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~46_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(3)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transmit_register\(2),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \adxl345_int|s_acc_send\(3),
	combout => \ssi_inst_slave|transmit_register~46_combout\);

-- Location: FF_X27_Y25_N1
\ssi_inst_slave|transmit_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~46_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(3));

-- Location: LCCOMB_X27_Y25_N6
\ssi_inst_slave|transmit_register~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~45_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(4))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(4),
	datad => \ssi_inst_slave|transmit_register\(3),
	combout => \ssi_inst_slave|transmit_register~45_combout\);

-- Location: FF_X27_Y25_N7
\ssi_inst_slave|transmit_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~45_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(4));

-- Location: LCCOMB_X27_Y25_N12
\ssi_inst_slave|transmit_register~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~44_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(5))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|s_acc_send\(5),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \ssi_inst_slave|transmit_register\(4),
	combout => \ssi_inst_slave|transmit_register~44_combout\);

-- Location: FF_X27_Y25_N13
\ssi_inst_slave|transmit_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~44_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(5));

-- Location: LCCOMB_X27_Y25_N2
\ssi_inst_slave|transmit_register~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~43_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(6))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(6),
	datad => \ssi_inst_slave|transmit_register\(5),
	combout => \ssi_inst_slave|transmit_register~43_combout\);

-- Location: FF_X27_Y25_N3
\ssi_inst_slave|transmit_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~43_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(6));

-- Location: LCCOMB_X27_Y25_N8
\ssi_inst_slave|transmit_register~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~42_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(7))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|s_acc_send\(7),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \ssi_inst_slave|transmit_register\(6),
	combout => \ssi_inst_slave|transmit_register~42_combout\);

-- Location: FF_X27_Y25_N9
\ssi_inst_slave|transmit_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~42_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(7));

-- Location: FF_X27_Y24_N3
\adxl345_int|s_acc_send[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[8]~140_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(8));

-- Location: LCCOMB_X27_Y24_N22
\ssi_inst_slave|transmit_register~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~41_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(8)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transmit_register\(7),
	datab => \adxl345_int|s_acc_send\(8),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	combout => \ssi_inst_slave|transmit_register~41_combout\);

-- Location: FF_X27_Y24_N23
\ssi_inst_slave|transmit_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~41_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(8));

-- Location: FF_X27_Y24_N5
\adxl345_int|s_acc_send[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[9]~142_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(9));

-- Location: LCCOMB_X27_Y24_N20
\ssi_inst_slave|transmit_register~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~40_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(9)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transmit_register\(8),
	datab => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(9),
	combout => \ssi_inst_slave|transmit_register~40_combout\);

-- Location: FF_X27_Y24_N21
\ssi_inst_slave|transmit_register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~40_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(9));

-- Location: FF_X27_Y24_N7
\adxl345_int|s_acc_send[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[10]~144_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(10));

-- Location: LCCOMB_X27_Y24_N18
\ssi_inst_slave|transmit_register~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~39_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(10)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transmit_register\(9),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \adxl345_int|s_acc_send\(10),
	combout => \ssi_inst_slave|transmit_register~39_combout\);

-- Location: FF_X27_Y24_N19
\ssi_inst_slave|transmit_register[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~39_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(10));

-- Location: LCCOMB_X27_Y24_N24
\ssi_inst_slave|transmit_register~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~38_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(11))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(11),
	datad => \ssi_inst_slave|transmit_register\(10),
	combout => \ssi_inst_slave|transmit_register~38_combout\);

-- Location: FF_X27_Y24_N25
\ssi_inst_slave|transmit_register[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~38_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(11));

-- Location: FF_X27_Y24_N11
\adxl345_int|s_acc_send[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[12]~148_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(12));

-- Location: LCCOMB_X27_Y24_N30
\ssi_inst_slave|transmit_register~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~37_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(12)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transmit_register\(11),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \adxl345_int|s_acc_send\(12),
	combout => \ssi_inst_slave|transmit_register~37_combout\);

-- Location: FF_X27_Y24_N31
\ssi_inst_slave|transmit_register[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~37_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(12));

-- Location: FF_X27_Y24_N13
\adxl345_int|s_acc_send[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[13]~150_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(13));

-- Location: LCCOMB_X27_Y24_N28
\ssi_inst_slave|transmit_register~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~36_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(13)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transmit_register\(12),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \adxl345_int|s_acc_send\(13),
	combout => \ssi_inst_slave|transmit_register~36_combout\);

-- Location: FF_X27_Y24_N29
\ssi_inst_slave|transmit_register[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~36_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(13));

-- Location: LCCOMB_X27_Y24_N26
\ssi_inst_slave|transmit_register~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~35_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(14))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(14),
	datad => \ssi_inst_slave|transmit_register\(13),
	combout => \ssi_inst_slave|transmit_register~35_combout\);

-- Location: FF_X27_Y24_N27
\ssi_inst_slave|transmit_register[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~35_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(14));

-- Location: LCCOMB_X27_Y26_N16
\adxl345_int|Add6~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add6~34_combout\ = \adxl345_int|z_sample1\(15) $ (\adxl345_int|z_sample0\(15) $ (\adxl345_int|Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|z_sample1\(15),
	datab => \adxl345_int|z_sample0\(15),
	cin => \adxl345_int|Add6~33\,
	combout => \adxl345_int|Add6~34_combout\);

-- Location: LCCOMB_X27_Y24_N16
\adxl345_int|s_acc_send[15]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[15]~154_combout\ = \adxl345_int|Add7~32_combout\ $ (\adxl345_int|s_acc_send[14]~153\ $ (\adxl345_int|Add6~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|Add7~32_combout\,
	datad => \adxl345_int|Add6~34_combout\,
	cin => \adxl345_int|s_acc_send[14]~153\,
	combout => \adxl345_int|s_acc_send[15]~154_combout\);

-- Location: FF_X27_Y24_N17
\adxl345_int|s_acc_send[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[15]~154_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(15));

-- Location: LCCOMB_X29_Y24_N16
\ssi_inst_slave|transmit_register~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~34_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(15)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \ssi_inst_slave|transmit_register\(14),
	datad => \adxl345_int|s_acc_send\(15),
	combout => \ssi_inst_slave|transmit_register~34_combout\);

-- Location: FF_X29_Y24_N17
\ssi_inst_slave|transmit_register[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~34_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(15));

-- Location: FF_X32_Y24_N19
\adxl345_int|s_acc_send[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[16]~88_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(16));

-- Location: LCCOMB_X32_Y24_N4
\ssi_inst_slave|transmit_register~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~33_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(16)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \ssi_inst_slave|transmit_register\(15),
	datad => \adxl345_int|s_acc_send\(16),
	combout => \ssi_inst_slave|transmit_register~33_combout\);

-- Location: FF_X32_Y24_N5
\ssi_inst_slave|transmit_register[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~33_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(16));

-- Location: FF_X32_Y24_N21
\adxl345_int|s_acc_send[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[17]~90_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(17));

-- Location: LCCOMB_X32_Y24_N2
\ssi_inst_slave|transmit_register~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~32_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(17)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \ssi_inst_slave|transmit_register\(16),
	datad => \adxl345_int|s_acc_send\(17),
	combout => \ssi_inst_slave|transmit_register~32_combout\);

-- Location: FF_X32_Y24_N3
\ssi_inst_slave|transmit_register[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~32_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(17));

-- Location: LCCOMB_X32_Y24_N8
\ssi_inst_slave|transmit_register~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~31_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(18))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(18),
	datad => \ssi_inst_slave|transmit_register\(17),
	combout => \ssi_inst_slave|transmit_register~31_combout\);

-- Location: FF_X32_Y24_N9
\ssi_inst_slave|transmit_register[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~31_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(18));

-- Location: LCCOMB_X32_Y24_N6
\ssi_inst_slave|transmit_register~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~30_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(19))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \adxl345_int|s_acc_send\(19),
	datac => \ssi_inst_slave|transmit_register\(18),
	combout => \ssi_inst_slave|transmit_register~30_combout\);

-- Location: FF_X32_Y24_N7
\ssi_inst_slave|transmit_register[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~30_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(19));

-- Location: LCCOMB_X32_Y24_N12
\ssi_inst_slave|transmit_register~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~29_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(20))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(20),
	datad => \ssi_inst_slave|transmit_register\(19),
	combout => \ssi_inst_slave|transmit_register~29_combout\);

-- Location: FF_X32_Y24_N13
\ssi_inst_slave|transmit_register[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~29_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(20));

-- Location: LCCOMB_X32_Y24_N10
\ssi_inst_slave|transmit_register~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~28_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(21))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \adxl345_int|s_acc_send\(21),
	datad => \ssi_inst_slave|transmit_register\(20),
	combout => \ssi_inst_slave|transmit_register~28_combout\);

-- Location: FF_X32_Y24_N11
\ssi_inst_slave|transmit_register[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~28_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(21));

-- Location: LCCOMB_X32_Y24_N0
\ssi_inst_slave|transmit_register~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~27_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(22))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(22),
	datad => \ssi_inst_slave|transmit_register\(21),
	combout => \ssi_inst_slave|transmit_register~27_combout\);

-- Location: FF_X32_Y24_N1
\ssi_inst_slave|transmit_register[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~27_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(22));

-- Location: LCCOMB_X34_Y25_N6
\ssi_inst_slave|transmit_register~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~26_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(23))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \adxl345_int|s_acc_send\(23),
	datac => \ssi_inst_slave|transmit_register\(22),
	combout => \ssi_inst_slave|transmit_register~26_combout\);

-- Location: FF_X34_Y25_N7
\ssi_inst_slave|transmit_register[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~26_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(23));

-- Location: LCCOMB_X34_Y25_N4
\ssi_inst_slave|transmit_register~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~25_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(24))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|s_acc_send\(24),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \ssi_inst_slave|transmit_register\(23),
	combout => \ssi_inst_slave|transmit_register~25_combout\);

-- Location: FF_X34_Y25_N5
\ssi_inst_slave|transmit_register[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~25_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(24));

-- Location: LCCOMB_X32_Y23_N30
\ssi_inst_slave|transmit_register~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~24_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(25))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(25),
	datad => \ssi_inst_slave|transmit_register\(24),
	combout => \ssi_inst_slave|transmit_register~24_combout\);

-- Location: FF_X32_Y23_N31
\ssi_inst_slave|transmit_register[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~24_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(25));

-- Location: LCCOMB_X32_Y23_N28
\ssi_inst_slave|transmit_register~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~23_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(26))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|s_acc_send\(26),
	datac => \ssi_inst_slave|transmit_register\(25),
	datad => \ssi_inst_slave|shift_transmit_register~0_combout\,
	combout => \ssi_inst_slave|transmit_register~23_combout\);

-- Location: FF_X32_Y23_N29
\ssi_inst_slave|transmit_register[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~23_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(26));

-- Location: LCCOMB_X32_Y23_N18
\ssi_inst_slave|transmit_register~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~22_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(27))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(27),
	datad => \ssi_inst_slave|transmit_register\(26),
	combout => \ssi_inst_slave|transmit_register~22_combout\);

-- Location: FF_X32_Y23_N19
\ssi_inst_slave|transmit_register[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~22_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(27));

-- Location: LCCOMB_X32_Y23_N24
\ssi_inst_slave|transmit_register~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~21_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(28))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|s_acc_send\(28),
	datab => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \ssi_inst_slave|transmit_register\(27),
	combout => \ssi_inst_slave|transmit_register~21_combout\);

-- Location: FF_X32_Y23_N25
\ssi_inst_slave|transmit_register[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~21_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(28));

-- Location: LCCOMB_X32_Y23_N22
\ssi_inst_slave|transmit_register~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~20_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(29))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|s_acc_send\(29),
	datab => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \ssi_inst_slave|transmit_register\(28),
	combout => \ssi_inst_slave|transmit_register~20_combout\);

-- Location: FF_X32_Y23_N23
\ssi_inst_slave|transmit_register[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~20_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(29));

-- Location: FF_X32_Y23_N15
\adxl345_int|s_acc_send[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[30]~116_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(30));

-- Location: LCCOMB_X32_Y23_N20
\ssi_inst_slave|transmit_register~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~19_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(30)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transmit_register\(29),
	datac => \adxl345_int|s_acc_send\(30),
	datad => \ssi_inst_slave|shift_transmit_register~0_combout\,
	combout => \ssi_inst_slave|transmit_register~19_combout\);

-- Location: FF_X32_Y23_N21
\ssi_inst_slave|transmit_register[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~19_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(30));

-- Location: LCCOMB_X32_Y23_N26
\ssi_inst_slave|transmit_register~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~18_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(31))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(31),
	datad => \ssi_inst_slave|transmit_register\(30),
	combout => \ssi_inst_slave|transmit_register~18_combout\);

-- Location: FF_X32_Y23_N27
\ssi_inst_slave|transmit_register[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~18_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(31));

-- Location: FF_X38_Y27_N19
\adxl345_int|s_acc_send[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[32]~52_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(32));

-- Location: LCCOMB_X38_Y27_N4
\ssi_inst_slave|transmit_register~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~17_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(32)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \ssi_inst_slave|transmit_register\(31),
	datad => \adxl345_int|s_acc_send\(32),
	combout => \ssi_inst_slave|transmit_register~17_combout\);

-- Location: FF_X38_Y27_N5
\ssi_inst_slave|transmit_register[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~17_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(32));

-- Location: LCCOMB_X38_Y27_N2
\ssi_inst_slave|transmit_register~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~16_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(33))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \adxl345_int|s_acc_send\(33),
	datac => \ssi_inst_slave|transmit_register\(32),
	combout => \ssi_inst_slave|transmit_register~16_combout\);

-- Location: FF_X38_Y27_N3
\ssi_inst_slave|transmit_register[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~16_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(33));

-- Location: LCCOMB_X38_Y27_N0
\ssi_inst_slave|transmit_register~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~15_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(34))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(34),
	datad => \ssi_inst_slave|transmit_register\(33),
	combout => \ssi_inst_slave|transmit_register~15_combout\);

-- Location: FF_X38_Y27_N1
\ssi_inst_slave|transmit_register[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~15_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(34));

-- Location: LCCOMB_X38_Y27_N6
\ssi_inst_slave|transmit_register~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~14_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(35))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \adxl345_int|s_acc_send\(35),
	datad => \ssi_inst_slave|transmit_register\(34),
	combout => \ssi_inst_slave|transmit_register~14_combout\);

-- Location: FF_X38_Y27_N7
\ssi_inst_slave|transmit_register[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~14_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(35));

-- Location: LCCOMB_X38_Y27_N12
\ssi_inst_slave|transmit_register~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~13_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(36))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(36),
	datad => \ssi_inst_slave|transmit_register\(35),
	combout => \ssi_inst_slave|transmit_register~13_combout\);

-- Location: FF_X38_Y27_N13
\ssi_inst_slave|transmit_register[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~13_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(36));

-- Location: LCCOMB_X38_Y27_N10
\ssi_inst_slave|transmit_register~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~12_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(37))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \adxl345_int|s_acc_send\(37),
	datad => \ssi_inst_slave|transmit_register\(36),
	combout => \ssi_inst_slave|transmit_register~12_combout\);

-- Location: FF_X38_Y27_N11
\ssi_inst_slave|transmit_register[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~12_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(37));

-- Location: LCCOMB_X38_Y27_N8
\ssi_inst_slave|transmit_register~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~11_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(38))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(38),
	datad => \ssi_inst_slave|transmit_register\(37),
	combout => \ssi_inst_slave|transmit_register~11_combout\);

-- Location: FF_X38_Y27_N9
\ssi_inst_slave|transmit_register[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~11_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(38));

-- Location: FF_X38_Y26_N1
\adxl345_int|s_acc_send[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[39]~66_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(39));

-- Location: LCCOMB_X34_Y25_N2
\ssi_inst_slave|transmit_register~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~10_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(39)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transmit_register\(38),
	datab => \adxl345_int|s_acc_send\(39),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	combout => \ssi_inst_slave|transmit_register~10_combout\);

-- Location: FF_X34_Y25_N3
\ssi_inst_slave|transmit_register[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~10_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(39));

-- Location: FF_X38_Y26_N3
\adxl345_int|s_acc_send[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[40]~68_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(40));

-- Location: LCCOMB_X34_Y25_N0
\ssi_inst_slave|transmit_register~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~9_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(40)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|transmit_register\(39),
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \adxl345_int|s_acc_send\(40),
	combout => \ssi_inst_slave|transmit_register~9_combout\);

-- Location: FF_X34_Y25_N1
\ssi_inst_slave|transmit_register[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~9_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(40));

-- Location: FF_X38_Y26_N5
\adxl345_int|s_acc_send[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[41]~70_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(41));

-- Location: LCCOMB_X38_Y26_N22
\ssi_inst_slave|transmit_register~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~8_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(41)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|transmit_register\(40),
	datac => \adxl345_int|s_acc_send\(41),
	datad => \ssi_inst_slave|shift_transmit_register~0_combout\,
	combout => \ssi_inst_slave|transmit_register~8_combout\);

-- Location: FF_X38_Y26_N23
\ssi_inst_slave|transmit_register[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~8_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(41));

-- Location: FF_X38_Y26_N7
\adxl345_int|s_acc_send[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[42]~72_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(42));

-- Location: LCCOMB_X38_Y26_N20
\ssi_inst_slave|transmit_register~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~7_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(42)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \ssi_inst_slave|transmit_register\(41),
	datad => \adxl345_int|s_acc_send\(42),
	combout => \ssi_inst_slave|transmit_register~7_combout\);

-- Location: FF_X38_Y26_N21
\ssi_inst_slave|transmit_register[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~7_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(42));

-- Location: LCCOMB_X38_Y26_N18
\ssi_inst_slave|transmit_register~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~6_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(43))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(43),
	datad => \ssi_inst_slave|transmit_register\(42),
	combout => \ssi_inst_slave|transmit_register~6_combout\);

-- Location: FF_X38_Y26_N19
\ssi_inst_slave|transmit_register[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~6_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(43));

-- Location: LCCOMB_X38_Y26_N24
\ssi_inst_slave|transmit_register~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~5_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(44))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datac => \adxl345_int|s_acc_send\(44),
	datad => \ssi_inst_slave|transmit_register\(43),
	combout => \ssi_inst_slave|transmit_register~5_combout\);

-- Location: FF_X38_Y26_N25
\ssi_inst_slave|transmit_register[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~5_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(44));

-- Location: FF_X38_Y26_N13
\adxl345_int|s_acc_send[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[45]~78_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(45));

-- Location: LCCOMB_X38_Y26_N30
\ssi_inst_slave|transmit_register~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~4_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(45)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \ssi_inst_slave|transmit_register\(44),
	datad => \adxl345_int|s_acc_send\(45),
	combout => \ssi_inst_slave|transmit_register~4_combout\);

-- Location: FF_X38_Y26_N31
\ssi_inst_slave|transmit_register[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~4_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(45));

-- Location: LCCOMB_X38_Y26_N28
\ssi_inst_slave|transmit_register~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~3_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & (\adxl345_int|s_acc_send\(46))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\ssi_inst_slave|transmit_register\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|s_acc_send\(46),
	datac => \ssi_inst_slave|transmit_register\(45),
	datad => \ssi_inst_slave|shift_transmit_register~0_combout\,
	combout => \ssi_inst_slave|transmit_register~3_combout\);

-- Location: FF_X38_Y26_N29
\ssi_inst_slave|transmit_register[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~3_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(46));

-- Location: LCCOMB_X37_Y26_N16
\adxl345_int|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Add0~34_combout\ = \adxl345_int|x_sample1\(15) $ (\adxl345_int|x_sample0\(15) $ (\adxl345_int|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|x_sample1\(15),
	datab => \adxl345_int|x_sample0\(15),
	cin => \adxl345_int|Add0~33\,
	combout => \adxl345_int|Add0~34_combout\);

-- Location: LCCOMB_X38_Y26_N16
\adxl345_int|s_acc_send[47]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|s_acc_send[47]~82_combout\ = \adxl345_int|Add0~34_combout\ $ (\adxl345_int|s_acc_send[46]~81\ $ (\adxl345_int|Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Add0~34_combout\,
	datad => \adxl345_int|Add1~32_combout\,
	cin => \adxl345_int|s_acc_send[46]~81\,
	combout => \adxl345_int|s_acc_send[47]~82_combout\);

-- Location: FF_X38_Y26_N17
\adxl345_int|s_acc_send[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|s_acc_send[47]~82_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \adxl345_int|state.SEND_TO_STM32~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|s_acc_send\(47));

-- Location: LCCOMB_X38_Y26_N26
\ssi_inst_slave|transmit_register~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|transmit_register~0_combout\ = (\ssi_inst_slave|shift_transmit_register~0_combout\ & ((\adxl345_int|s_acc_send\(47)))) # (!\ssi_inst_slave|shift_transmit_register~0_combout\ & (\ssi_inst_slave|transmit_register\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datab => \ssi_inst_slave|transmit_register\(46),
	datad => \adxl345_int|s_acc_send\(47),
	combout => \ssi_inst_slave|transmit_register~0_combout\);

-- Location: FF_X38_Y26_N27
\ssi_inst_slave|transmit_register[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|transmit_register~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \ssi_inst_slave|transmit_register[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|transmit_register\(47));

-- Location: LCCOMB_X34_Y25_N28
\ssi_inst_slave|ssi_data_i~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|ssi_data_i~1_combout\ = (\ssi_inst_slave|ssi_data_i~0_combout\ & (((!\ssi_inst_slave|shift_transmit_register~0_combout\ & \ssi_inst_slave|transmit_register\(47))))) # (!\ssi_inst_slave|ssi_data_i~0_combout\ & 
-- (((!\ssi_inst_slave|shift_transmit_register~0_combout\ & \ssi_inst_slave|transmit_register\(47))) # (!\ssi_inst_slave|ssi_data_i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|ssi_data_i~0_combout\,
	datab => \ssi_inst_slave|ssi_data_i~q\,
	datac => \ssi_inst_slave|shift_transmit_register~0_combout\,
	datad => \ssi_inst_slave|transmit_register\(47),
	combout => \ssi_inst_slave|ssi_data_i~1_combout\);

-- Location: LCCOMB_X30_Y25_N16
\ssi_inst_slave|ssi_data_i~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|ssi_data_i~2_combout\ = (\ssi_inst_slave|run_tm_timer~q\ & (\ssi_inst_slave|Equal1~3_combout\)) # (!\ssi_inst_slave|run_tm_timer~q\ & ((!\ssi_inst_slave|ssi_data_i~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ssi_inst_slave|Equal1~3_combout\,
	datac => \ssi_inst_slave|ssi_data_i~1_combout\,
	datad => \ssi_inst_slave|run_tm_timer~q\,
	combout => \ssi_inst_slave|ssi_data_i~2_combout\);

-- Location: FF_X30_Y25_N17
\ssi_inst_slave|ssi_data_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \ssi_inst_slave|ssi_data_i~2_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssi_inst_slave|ssi_data_i~q\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X35_Y23_N27
\sw_sync_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync_0(8));

-- Location: FF_X35_Y23_N9
\sw_sync_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	asdata => sw_sync_0(8),
	clrn => \reset_n_t2~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_sync_1(8));

-- Location: LCCOMB_X35_Y23_N8
\ssi_inst_slave|ssi_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ssi_inst_slave|ssi_data~0_combout\ = (!\ssi_inst_slave|ssi_data_i~q\ & !sw_sync_1(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssi_inst_slave|ssi_data_i~q\,
	datac => sw_sync_1(8),
	combout => \ssi_inst_slave|ssi_data~0_combout\);

-- Location: LCCOMB_X37_Y24_N8
\adxl345_int|Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector44~0_combout\ = ((!\adxl345_int|state.WRITE_POWER~q\ & (!\adxl345_int|state.WRITE_FORMAT~q\ & \adxl345_int|data_out_spi\(15)))) # (!\adxl345_int|Selector24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WRITE_POWER~q\,
	datab => \adxl345_int|state.WRITE_FORMAT~q\,
	datac => \adxl345_int|data_out_spi\(15),
	datad => \adxl345_int|Selector24~0_combout\,
	combout => \adxl345_int|Selector44~0_combout\);

-- Location: FF_X37_Y24_N9
\adxl345_int|data_out_spi[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector44~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|data_out_spi\(15));

-- Location: LCCOMB_X35_Y27_N6
\adxl345_int|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|WideOr8~0_combout\ = (\adxl345_int|state.WRITE_POWER~q\) # (((\adxl345_int|state.WRITE_FORMAT~q\) # (!\adxl345_int|Selector24~3_combout\)) # (!\adxl345_int|Selector48~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WRITE_POWER~q\,
	datab => \adxl345_int|Selector48~0_combout\,
	datac => \adxl345_int|Selector24~3_combout\,
	datad => \adxl345_int|state.WRITE_FORMAT~q\,
	combout => \adxl345_int|WideOr8~0_combout\);

-- Location: LCCOMB_X35_Y27_N12
\adxl345_int|Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector47~0_combout\ = (\adxl345_int|state.WRITE_POWER~q\) # ((\adxl345_int|state.READ_Y_L~q\) # ((\adxl345_int|state.READ_Y_H~q\) # (\adxl345_int|state.READ_Z_L~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WRITE_POWER~q\,
	datab => \adxl345_int|state.READ_Y_L~q\,
	datac => \adxl345_int|state.READ_Y_H~q\,
	datad => \adxl345_int|state.READ_Z_L~q\,
	combout => \adxl345_int|Selector47~0_combout\);

-- Location: LCCOMB_X35_Y27_N24
\adxl345_int|Selector47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector47~1_combout\ = (\adxl345_int|state.READ_Z_H~q\) # ((\adxl345_int|Selector47~0_combout\) # ((!\adxl345_int|WideOr8~0_combout\ & \adxl345_int|data_out_spi\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|WideOr8~0_combout\,
	datab => \adxl345_int|state.READ_Z_H~q\,
	datac => \adxl345_int|data_out_spi\(10),
	datad => \adxl345_int|Selector47~0_combout\,
	combout => \adxl345_int|Selector47~1_combout\);

-- Location: FF_X35_Y27_N25
\adxl345_int|data_out_spi[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector47~1_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|data_out_spi\(10));

-- Location: LCCOMB_X35_Y27_N2
\adxl345_int|Selector48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector48~1_combout\ = ((\adxl345_int|data_out_spi\(9) & !\adxl345_int|WideOr8~0_combout\)) # (!\adxl345_int|Selector48~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adxl345_int|Selector48~0_combout\,
	datac => \adxl345_int|data_out_spi\(9),
	datad => \adxl345_int|WideOr8~0_combout\,
	combout => \adxl345_int|Selector48~1_combout\);

-- Location: FF_X35_Y27_N3
\adxl345_int|data_out_spi[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector48~1_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|data_out_spi\(9));

-- Location: LCCOMB_X37_Y24_N30
\adxl345_int|Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector50~0_combout\ = (\adxl345_int|state.WRITE_POWER~q\) # ((\adxl345_int|state.WRITE_FORMAT~q\) # ((\adxl345_int|data_out_spi\(3) & \adxl345_int|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WRITE_POWER~q\,
	datab => \adxl345_int|state.WRITE_FORMAT~q\,
	datac => \adxl345_int|data_out_spi\(3),
	datad => \adxl345_int|Selector24~0_combout\,
	combout => \adxl345_int|Selector50~0_combout\);

-- Location: FF_X37_Y24_N31
\adxl345_int|data_out_spi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector50~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|data_out_spi\(3));

-- Location: LCCOMB_X37_Y24_N28
\spi_inst_master|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector13~0_combout\ = (\adxl345_int|data_out_spi\(3) & !\spi_inst_master|spi_state.TRANSFER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adxl345_int|data_out_spi\(3),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector13~0_combout\);

-- Location: LCCOMB_X38_Y24_N12
\spi_inst_master|tx_shift_reg[12]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|tx_shift_reg[12]~0_combout\ = (\spi_inst_master|Selector24~2_combout\) # ((\spi_inst_master|spi_state.TRANSFER~q\ & (!\spi_inst_master|sclk_reg~q\ & \spi_inst_master|sclk_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|spi_state.TRANSFER~q\,
	datab => \spi_inst_master|sclk_reg~q\,
	datac => \spi_inst_master|Selector24~2_combout\,
	datad => \spi_inst_master|sclk_tick~q\,
	combout => \spi_inst_master|tx_shift_reg[12]~0_combout\);

-- Location: FF_X37_Y24_N29
\spi_inst_master|tx_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector13~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(3));

-- Location: LCCOMB_X37_Y24_N10
\spi_inst_master|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector12~0_combout\ = (\spi_inst_master|tx_shift_reg\(3) & \spi_inst_master|spi_state.TRANSFER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|tx_shift_reg\(3),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector12~0_combout\);

-- Location: FF_X37_Y24_N11
\spi_inst_master|tx_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector12~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(4));

-- Location: LCCOMB_X37_Y24_N16
\spi_inst_master|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector11~0_combout\ = (\spi_inst_master|tx_shift_reg\(4) & \spi_inst_master|spi_state.TRANSFER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|tx_shift_reg\(4),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector11~0_combout\);

-- Location: FF_X37_Y24_N17
\spi_inst_master|tx_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector11~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(5));

-- Location: LCCOMB_X37_Y24_N22
\spi_inst_master|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector10~0_combout\ = (\spi_inst_master|tx_shift_reg\(5) & \spi_inst_master|spi_state.TRANSFER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|tx_shift_reg\(5),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector10~0_combout\);

-- Location: FF_X37_Y24_N23
\spi_inst_master|tx_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector10~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(6));

-- Location: LCCOMB_X37_Y24_N20
\spi_inst_master|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector9~0_combout\ = (\spi_inst_master|tx_shift_reg\(6) & \spi_inst_master|spi_state.TRANSFER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_inst_master|tx_shift_reg\(6),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector9~0_combout\);

-- Location: FF_X37_Y24_N21
\spi_inst_master|tx_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector9~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(7));

-- Location: LCCOMB_X34_Y26_N6
\adxl345_int|Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector49~0_combout\ = (\adxl345_int|state.READ_X_H~q\) # ((\adxl345_int|state.READ_Z_H~q\) # ((\adxl345_int|state.WRITE_POWER~q\) # (\adxl345_int|state.WRITE_FORMAT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.READ_X_H~q\,
	datab => \adxl345_int|state.READ_Z_H~q\,
	datac => \adxl345_int|state.WRITE_POWER~q\,
	datad => \adxl345_int|state.WRITE_FORMAT~q\,
	combout => \adxl345_int|Selector49~0_combout\);

-- Location: LCCOMB_X35_Y27_N8
\adxl345_int|Selector49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector49~1_combout\ = (\adxl345_int|Selector49~0_combout\) # ((\adxl345_int|state.READ_Y_H~q\) # ((\adxl345_int|data_out_spi\(8) & !\adxl345_int|WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|Selector49~0_combout\,
	datab => \adxl345_int|state.READ_Y_H~q\,
	datac => \adxl345_int|data_out_spi\(8),
	datad => \adxl345_int|WideOr8~0_combout\,
	combout => \adxl345_int|Selector49~1_combout\);

-- Location: FF_X35_Y27_N9
\adxl345_int|data_out_spi[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector49~1_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|data_out_spi\(8));

-- Location: LCCOMB_X37_Y24_N18
\spi_inst_master|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector8~0_combout\ = (\spi_inst_master|spi_state.TRANSFER~q\ & (\spi_inst_master|tx_shift_reg\(7))) # (!\spi_inst_master|spi_state.TRANSFER~q\ & ((\adxl345_int|data_out_spi\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|tx_shift_reg\(7),
	datac => \adxl345_int|data_out_spi\(8),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector8~0_combout\);

-- Location: FF_X37_Y24_N19
\spi_inst_master|tx_shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector8~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(8));

-- Location: LCCOMB_X37_Y24_N0
\spi_inst_master|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector7~0_combout\ = (\spi_inst_master|spi_state.TRANSFER~q\ & ((\spi_inst_master|tx_shift_reg\(8)))) # (!\spi_inst_master|spi_state.TRANSFER~q\ & (\adxl345_int|data_out_spi\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|data_out_spi\(9),
	datab => \spi_inst_master|tx_shift_reg\(8),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector7~0_combout\);

-- Location: FF_X37_Y24_N1
\spi_inst_master|tx_shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector7~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(9));

-- Location: LCCOMB_X37_Y24_N4
\spi_inst_master|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector6~0_combout\ = (\spi_inst_master|spi_state.TRANSFER~q\ & ((\spi_inst_master|tx_shift_reg\(9)))) # (!\spi_inst_master|spi_state.TRANSFER~q\ & (\adxl345_int|data_out_spi\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|spi_state.TRANSFER~q\,
	datab => \adxl345_int|data_out_spi\(10),
	datad => \spi_inst_master|tx_shift_reg\(9),
	combout => \spi_inst_master|Selector6~0_combout\);

-- Location: FF_X37_Y24_N5
\spi_inst_master|tx_shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector6~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(10));

-- Location: LCCOMB_X37_Y24_N14
\adxl345_int|Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector46~0_combout\ = (\adxl345_int|state.WRITE_POWER~q\) # ((!\adxl345_int|state.WRITE_FORMAT~q\ & (\adxl345_int|data_out_spi\(11) & \adxl345_int|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WRITE_POWER~q\,
	datab => \adxl345_int|state.WRITE_FORMAT~q\,
	datac => \adxl345_int|data_out_spi\(11),
	datad => \adxl345_int|Selector24~0_combout\,
	combout => \adxl345_int|Selector46~0_combout\);

-- Location: FF_X37_Y24_N15
\adxl345_int|data_out_spi[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector46~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|data_out_spi\(11));

-- Location: LCCOMB_X37_Y24_N24
\spi_inst_master|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector5~0_combout\ = (\spi_inst_master|spi_state.TRANSFER~q\ & (\spi_inst_master|tx_shift_reg\(10))) # (!\spi_inst_master|spi_state.TRANSFER~q\ & ((\adxl345_int|data_out_spi\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|tx_shift_reg\(10),
	datac => \adxl345_int|data_out_spi\(11),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector5~0_combout\);

-- Location: FF_X37_Y24_N25
\spi_inst_master|tx_shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector5~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(11));

-- Location: LCCOMB_X37_Y24_N26
\adxl345_int|Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|Selector45~0_combout\ = (\adxl345_int|state.WRITE_FORMAT~q\) # (((!\adxl345_int|state.WRITE_POWER~q\ & \adxl345_int|data_out_spi\(12))) # (!\adxl345_int|Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WRITE_POWER~q\,
	datab => \adxl345_int|state.WRITE_FORMAT~q\,
	datac => \adxl345_int|data_out_spi\(12),
	datad => \adxl345_int|Selector24~0_combout\,
	combout => \adxl345_int|Selector45~0_combout\);

-- Location: FF_X37_Y24_N27
\adxl345_int|data_out_spi[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|Selector45~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|data_out_spi\(12));

-- Location: LCCOMB_X37_Y24_N12
\spi_inst_master|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector4~0_combout\ = (\spi_inst_master|spi_state.TRANSFER~q\ & (\spi_inst_master|tx_shift_reg\(11))) # (!\spi_inst_master|spi_state.TRANSFER~q\ & ((\adxl345_int|data_out_spi\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|tx_shift_reg\(11),
	datac => \adxl345_int|data_out_spi\(12),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector4~0_combout\);

-- Location: FF_X37_Y24_N13
\spi_inst_master|tx_shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector4~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(12));

-- Location: LCCOMB_X37_Y24_N6
\adxl345_int|data_out_spi[13]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adxl345_int|data_out_spi[13]~0_combout\ = (\adxl345_int|state.WRITE_POWER~q\) # ((\adxl345_int|state.WRITE_FORMAT~q\) # ((\adxl345_int|data_out_spi\(13)) # (!\adxl345_int|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|state.WRITE_POWER~q\,
	datab => \adxl345_int|state.WRITE_FORMAT~q\,
	datac => \adxl345_int|data_out_spi\(13),
	datad => \adxl345_int|Selector24~0_combout\,
	combout => \adxl345_int|data_out_spi[13]~0_combout\);

-- Location: FF_X37_Y24_N7
\adxl345_int|data_out_spi[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \adxl345_int|data_out_spi[13]~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adxl345_int|data_out_spi\(13));

-- Location: LCCOMB_X37_Y24_N2
\spi_inst_master|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector3~0_combout\ = (\spi_inst_master|spi_state.TRANSFER~q\ & (\spi_inst_master|tx_shift_reg\(12))) # (!\spi_inst_master|spi_state.TRANSFER~q\ & ((\adxl345_int|data_out_spi\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|tx_shift_reg\(12),
	datac => \adxl345_int|data_out_spi\(13),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector3~0_combout\);

-- Location: FF_X37_Y24_N3
\spi_inst_master|tx_shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector3~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(13));

-- Location: LCCOMB_X38_Y24_N10
\spi_inst_master|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector2~0_combout\ = (\spi_inst_master|tx_shift_reg\(13) & \spi_inst_master|spi_state.TRANSFER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|tx_shift_reg\(13),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector2~0_combout\);

-- Location: FF_X38_Y24_N11
\spi_inst_master|tx_shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector2~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(14));

-- Location: LCCOMB_X38_Y24_N22
\spi_inst_master|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector1~0_combout\ = (\spi_inst_master|spi_state.TRANSFER~q\ & (\spi_inst_master|tx_shift_reg\(14))) # (!\spi_inst_master|spi_state.TRANSFER~q\ & ((\adxl345_int|data_out_spi\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|tx_shift_reg\(14),
	datac => \adxl345_int|data_out_spi\(15),
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector1~0_combout\);

-- Location: FF_X38_Y24_N23
\spi_inst_master|tx_shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector1~0_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	ena => \spi_inst_master|tx_shift_reg[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|tx_shift_reg\(15));

-- Location: LCCOMB_X38_Y24_N0
\spi_inst_master|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector0~0_combout\ = (\spi_inst_master|sclk_tick~q\ & ((\spi_inst_master|sclk_reg~q\ & (\spi_inst_master|mosi~q\)) # (!\spi_inst_master|sclk_reg~q\ & ((\spi_inst_master|tx_shift_reg\(15)))))) # (!\spi_inst_master|sclk_tick~q\ & 
-- (\spi_inst_master|mosi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_inst_master|mosi~q\,
	datab => \spi_inst_master|sclk_tick~q\,
	datac => \spi_inst_master|tx_shift_reg\(15),
	datad => \spi_inst_master|sclk_reg~q\,
	combout => \spi_inst_master|Selector0~0_combout\);

-- Location: LCCOMB_X38_Y24_N8
\spi_inst_master|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|Selector0~1_combout\ = (\adxl345_int|data_out_spi\(15) & ((\spi_inst_master|Selector24~2_combout\) # ((\spi_inst_master|Selector0~0_combout\ & \spi_inst_master|spi_state.TRANSFER~q\)))) # (!\adxl345_int|data_out_spi\(15) & 
-- (\spi_inst_master|Selector0~0_combout\ & ((\spi_inst_master|spi_state.TRANSFER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adxl345_int|data_out_spi\(15),
	datab => \spi_inst_master|Selector0~0_combout\,
	datac => \spi_inst_master|Selector24~2_combout\,
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|Selector0~1_combout\);

-- Location: FF_X38_Y24_N9
\spi_inst_master|mosi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \spi_inst_master|Selector0~1_combout\,
	clrn => \reset_n_t2~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_inst_master|mosi~q\);

-- Location: LCCOMB_X38_Y24_N20
\spi_inst_master|sclk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spi_inst_master|sclk_out~0_combout\ = (!\spi_inst_master|spi_state.TRANSFER~q\) # (!\spi_inst_master|sclk_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_inst_master|sclk_reg~q\,
	datad => \spi_inst_master|spi_state.TRANSFER~q\,
	combout => \spi_inst_master|sclk_out~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_GPIO_data <= \GPIO_data~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_ARDUINO_IO(1) <= \ARDUINO_IO[1]~output_o\;

ww_GSENSOR_SDI <= \GSENSOR_SDI~output_o\;

ww_GSENSOR_CS_N <= \GSENSOR_CS_N~output_o\;

ww_GSENSOR_SCLK <= \GSENSOR_SCLK~output_o\;
END structure;


