library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.recop_types.all;

entity program_counter is
port (
	clk		: in bit_1;
	sel		: in bit_2;
	m_out		: in bit_16;
	rx			: in bit_16;
	operand	: in bit_16;
	pc_out	: out bit_16
);
end program_counter;

architecture behaviour of program_counter	is
	signal pc_in			: bit_16 := X"0000";
	signal pc_out_temp	: bit_16 := X"0000";
begin

	pc_out <= pc_out_temp;
	
	pc_in <= m_out		when sel="00" else
				rx 		when sel="01" else
				operand	when sel="10" else
				pc_out_temp + 1;
	
	process(clk)
	begin
	
		if rising_edge(clk) then
			pc_out_temp <= pc_in;
		end if;	
		
	end process;
	
end architecture behaviour;
	