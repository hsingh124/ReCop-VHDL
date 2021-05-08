library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.recop_types.all;

entity mem_mux_data is
port(
	sel			: in bit_2;
	ir_operand	: in bit_16;
	rx				: in bit_16;
	dprr			: in bit_16;
	data			: out bit_16
);
end entity mem_mux_data;

architecture behaviour of mem_mux_data is
begin
	data <= 	ir_operand 	when sel="00" else
				rx				when sel="01" else
				dprr			when sel="10" else
				X"0000";
end behaviour;