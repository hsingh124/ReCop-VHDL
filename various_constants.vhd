-- Zoran Salcic

library ieee;
use ieee.std_logic_1164.all;
use work.recop_types.all;

package various_constants is
-- ALU operation selection alu_sel
	constant alu_add: bit_3 := "000";
	constant alu_sub: bit_3 := "001";
	constant alu_and: bit_3 := "010";
	constant alu_or: bit_3 := "011";
	constant alu_idle: bit_3 := "100";
	constant alu_max: bit_3 := "101";
	
-- Program counter select
	constant pc_sel_mout: bit_2 := "00";
	constant pc_sel_rx: bit_2 := "01";
	constant pc_sel_operand: bit_2 := "10";
	constant pc_sel_next: bit_2 := "11";
	
-- Register file mux
	constant rf_sel_ir_operand: bit_3 := "000";
	constant rf_sel_dprr: bit_3 := "001";
	constant rf_sel_aluout: bit_3 := "011";
	constant rf_sel_rz_max: bit_3 := "100";
	constant rf_sel_sip_hold: bit_3 := "101";
	constant rf_sel_er_temp: bit_3 := "110";
	constant rf_sel_dmout: bit_3 := "111";
	
-- ALU mux 1
	constant alu_op1_sel_rx: bit_2 := "00";
	constant alu_op1_ir_operand: bit_2 := "01";
	
-- ALU mux 2
	constant alu_op2_sel_rx: bit_1 := '0';
	constant alu_op2_sel_rz: bit_1 := '1';
	
end various_constants;	
