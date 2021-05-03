use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;

entity pc_adder is:
	port (
	clk: in std_logic;
	pc_hold: in std_logic_vector(15 downto 0);
	pc_add: out std_logic_vecor(15 downto 0));
end pc_adder;

architecture add is 
	begin 
		process(clk)
		begin 
		pc_add <= pc_hold + 1;
		end process;
end add;