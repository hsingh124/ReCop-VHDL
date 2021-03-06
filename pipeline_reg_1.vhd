library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.recop_types.all;

entity pipeline_reg_1 is
port(
	clk			: in bit_1;
	ctrl			: in bit_1;
	ir_operand	: in bit_16;
	ir_rx			: in bit_4;
	ir_rz			: in bit_4;
	ir_opcode	: in bit_6;
	ir_am			: in bit_2;
	operand		: out bit_16 := X"0000";
	rx				: out bit_4 :="0000";
	rz				: out bit_4 :="0000";
	opcode		: out bit_6 :="000000";
	am				: out bit_2 :="00"
);
end entity pipeline_reg_1;

architecture behaviour of pipeline_reg_1 is
begin

	process(clk)
	begin
		if rising_edge(clk) then
			if ctrl='1' then
				operand <= ir_operand;
				rx <= ir_rx;
				rz <= ir_rz;
				opcode <= ir_opcode;
				am <= ir_am;
			end if;
		end if;
	end process;

end behaviour;