library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use work.recop_types.all;

entity register_file is
port(
	clk		: in bit_1;
	z			: in bit_16;
	sel_x		: in bit_4;
	sel_z		: in bit_4;
	wr_addr	: in bit_4;
	rx			: out bit_16;
	rz			: out bit_16;
	r7			: out bit_16; -- ccd (current clock domain)
	r8			: out bit_16; -- pcd (previous clock domain)
	r10		: out bit_16 -- flmr (fifo last memory register)
	
);
end register_file;

architecture behaviour of register_file is
	type reg_array_type is array (15 downto 0) of bit_16;
	signal reg_array : reg_array_type := (("0000000000000001"),("0000000000000111"),("0000000000000001"),("0000000000000001"),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),(others => '0'),("0000000000000001"),("0000000000000001"),("0000000000000001"),("0000000000000001"));
begin
	
	rx 	<= reg_array(to_integer(unsigned(sel_x)));
	rz		<= z when (sel_z = wr_addr) else
				reg_array(to_integer(unsigned(sel_z)));
	r7 	<= reg_array(7);
	r8 	<= reg_array(8);
	r10 	<= reg_array(10);
	
	process(clk)
	begin
		if rising_edge(clk) then
			reg_array(to_integer(unsigned(wr_addr))) <= z;
		end if;
	end process;

end architecture behaviour;