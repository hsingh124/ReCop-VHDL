library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.recop_types.all;

entity pipeline_reg_3 is
port(
	clk			: in bit_1;
	ctrl			: in bit_1;
	ir_rz_in		: in bit_4; 
	mem_result	: in bit_16;
	alu_result	: in bit_16;
	ir_rz			: out bit_4;
	mem_out		: out bit_16 := X"0000";
	alu_out		: out bit_16 := X"0000"
);
end entity pipeline_reg_3;

architecture behaviour of pipeline_reg_3 is
begin

	process(clk)
	begin
		if rising_edge(clk) then
			if ctrl='1' then
				ir_rz <= ir_rz_in;
				mem_out <= mem_result;
				alu_out <= alu_result;
			end if;
		end if;
	end process;

end behaviour;