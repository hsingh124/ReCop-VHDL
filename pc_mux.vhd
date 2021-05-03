library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;

entity pc_mux is 
	port (
	clk: in std_logic;
	sel: in std_logic_vector(1 downto 0);
	m_out: in std_logic_vector(15 downto 0); 
	rx: in std_logic_vector(15 downto 0);
	ir_hold: in std_logic_vector(15 downto 0);
	p_add: in std_logic_vector(15 downto 0);
	pc_hold: out std_logic_vector(15 downto 0));
end pc_mux;

architecture start_count of PC is 
	begin 
		process(clk)
		begin 
			case sel is 
			when '00' =>
				pc_hold <= m_out;
			when '01' is
				pc_hold <= rx;
			when '10' is
				pc_hold <= ir_hold;
			when '11' is
				pc_hold <= p_add;
			when others =>
			end case;
		end process;
end start_count;
		

	