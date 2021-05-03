use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;

entity instruction_register is
	port(
	id_ir1: in std_logic_vector(15 downto 0);
	id_ir2: in std_logic_vector(15 downto 0);
	m_out: in std_logic_vector(15 downto 0);
	IR_1: out std_logic_vector(15 downto 0);
	IR_2: out std_logic_vector(3 downto 0);
	IR_3: out std_logic_vector(3 downto 0);
	IR_4: out std_logic_vector(5 downto 0);
	IR_5: out std_logic_vector(1 downto 0));
end instruction_register;

architecture beg of instruction_register is
begin

end beg;