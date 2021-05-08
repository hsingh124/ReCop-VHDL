library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.recop_types.all;

entity pipeline_reg_2 is
port(
	clk			: in bit_1;
	ctrl			: in bit_1;
	ir_operand	: in bit_16;
	rx_in			: in bit_16;
	rz_in			: in bit_16;
	r7_in			: in bit_16;
	r8_in			: in bit_16;
	r10_in		: in bit_16;
	-- need to add inputs for control signals (manipulating mux decisions)
	operand		: out bit_16 := X"0000";
	rx				: out bit_16 := X"0000";
	rz				: out bit_16 := X"0000";
	r7				: out bit_16 := X"0000";
	r8				: out bit_16 := X"0000";
	r10			: out bit_16 := X"0000"
);
end entity pipeline_reg_2;

architecture behaviour of pipeline_reg_2 is
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if ctrl='1' then
				operand <= ir_operand;
				rx <= rx_in;
				rz <= rz_in;
				r7 <= r7_in;
				r8 <= r8_in;
				r10 <= r10_in;
			end if;
		end if;
	end process;
end behaviour;