use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;

entity program_counter is
	port(
	clk: in std_logic;
	sel: in std_logic;
	m_out: in std_logic_vector(15 downto 0);
	rx: in std_logic_vector(15 downto 0);
	ir_hold: in std_logic_vector(15 downto 0);
	pc_hold: out std_logic_vector(15 downto 0));
end program_counter;

architecture count of program_counter is
component pc_mux
	port(
	clk: in std_logic;
	sel: in std_logic_vector(1 downto 0);
	m_out: in std_logic_vector(15 downto 0); 
	rx: in std_logic_vector(15 downto 0);
	ir_hold: in std_logic_vector(15 downto 0);
	p_add: in std_logic_vector(15 downto 0);
	pc_hold: out std_logic_vector(15 downto 0));
end component 

component pc_adder
	port(
	clk: in std_logic;
	pc_hold: in std_logic_vector(15 downto 0);
	pc_add: out std_logic_vecor(15 downto 0));
end component 

signal pc_temp: std_logic_vector(15 downto 0) := 0;
signal pc_addout: std_logic_vector(15 downto 0) := 0;

begin 

pc_mux: port map(clk, sel, m_out, rx, ir_hold, pc_addout, pc_temp);
pc_add: port map(clk, pc_temp, pc_addout);

end count 