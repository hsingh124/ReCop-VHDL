library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.recop_types.all;

entity instruction_reg is
port (
	clk			: in bit_1;
	mem_out		: in bit_32;
	operand		: out bit_16;
	rx				: out bit_4;
	rz				: out bit_4;
	opcode		: out bit_6;
	am				: out bit_2
);
end instruction_reg;

architecture behaviour of instruction_reg is
	signal operand_temp 	: bit_16 := X"0000";
	signal rx_temp			: bit_4	:= "0000";
	signal rz_temp			: bit_4	:= "0000";
	signal opcode_temp	: bit_6	:= "000000";
	signal am_temp			: bit_2	:= "00";
begin

	process(clk)
	begin
		if rising_edge(clk) then
			operand_temp 	<= mem_out(15 downto 0);
			rx_temp 			<= mem_out(19 downto 16);
			rz_temp 			<= mem_out(23 downto 20);
			opcode_temp 	<= mem_out(29 downto 24);
			am_temp			<= mem_out(31 downto 30);
		end if;
	end process;
	
	operand 	<= operand_temp;
	rx			<= rx_temp;
	rz			<= rz_temp;
	opcode	<= opcode_temp;
	am			<= am_temp;

end architecture behaviour;