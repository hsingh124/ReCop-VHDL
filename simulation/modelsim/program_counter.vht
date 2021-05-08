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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/08/2021 17:08:02"
                                                            
-- Vhdl Test Bench template for design  :  program_counter
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY program_counter_vhd_tst IS
END program_counter_vhd_tst;
ARCHITECTURE program_counter_arch OF program_counter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL m_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL operand : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rx : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT program_counter
	PORT (
	clk : IN STD_LOGIC;
	m_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	operand : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : program_counter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	m_out => m_out,
	operand => operand,
	pc_out => pc_out,
	rx => rx,
	sel => sel
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once    
		m_out <= X"0001";
		operand <= X"0010";
		rx <= X"0011";
		sel <= "11";
WAIT;                                                       
END PROCESS init; 

clk_gen : PROCESS
BEGIN
	clk <= '1';
	wait for 5 ns;
	clk <= '0';
	wait for 5 ns;
END PROCESS clk_gen;


always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END program_counter_arch;
