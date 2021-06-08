library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;
use work.various_constants.all;

entity control_unit is
	port (	
		clk					: in bit_1;
		am						: in bit_2;
		opcode 				: in bit_6;
		
		pc_sel				: out bit_2;
		pr1_ctrl				: out bit_1;
		rf_input_sel		: out bit_3;
		pr2_ctrl				: out bit_1;
		alu_operation		: out bit_3;
		alu_op1_sel			: out bit_2;
		alu_op2_sel			: out bit_1;
		dpcr_wr				: out bit_1;
		dpcr_lsb_sel		: out bit_1;
		mem_addr_sel		: out bit_2;
		mem_mux_data_sel	: out bit_2;
		wr_en					: out bit_1
	);
end control_unit;

architecture behaviour of control_unit is

--signal pc_sel_1				: bit_2 := "11";
--signal pr1_ctrl_1				: bit_1 := '1';
--signal rf_input_sel_1		: bit_3 := "011";
--signal pr2_ctrl_1				: bit_1 := '1';
--signal alu_operation_1		: bit_3 := "000";
--signal alu_op1_sel_1			: bit_2 := "00";
--signal alu_op2_sel_1			: bit_1 := '0';
--signal mem_addr_sel_1		: bit_2 := "00";
--signal mem_mux_data_sel_1	: bit_2 := "00";

signal pc_sel_1				: bit_2;
signal pr1_ctrl_1				: bit_1 := '1';
signal rf_input_sel_1		: bit_3;
signal pr2_ctrl_1				: bit_1 := '1';
signal alu_operation_1		: bit_3 := alu_idle;
signal alu_op1_sel_1			: bit_2;
signal alu_op2_sel_1			: bit_1;
signal dpcr_wr_1				: bit_1;
signal dpcr_lsb_sel_1		: bit_1;
signal mem_addr_sel_1		: bit_2 := "00";
signal mem_mux_data_sel_1	: bit_2 := "00";
signal wr_en_1					: bit_1 := '1';


begin

	decode: process (am, opcode)
	begin
		if am = am_inherent then

		elsif am = am_immediate then
			-- change andr to addr
			if opcode = addr then
				pc_sel_1 <= pc_sel_next;
				rf_input_sel_1 <= rf_sel_aluout;
				alu_operation_1 <= alu_add;
				alu_op1_sel_1 <= alu_op1_ir_operand;
				alu_op2_sel_1 <= alu_op2_sel_rx;
				wr_en_1 <= '1';
			
			elsif opcode = andr then
				pc_sel_1 <= pc_sel_next;
				rf_input_sel_1 <= rf_sel_aluout;
				alu_operation_1 <= alu_and;
				alu_op1_sel_1 <= alu_op1_ir_operand;
				alu_op2_sel_1 <= alu_op2_sel_rx;
				wr_en_1 <= '1';
			
			elsif opcode = orr then
				pc_sel_1 <= pc_sel_next;
				rf_input_sel_1 <= rf_sel_aluout;
				alu_operation_1 <= alu_or;
				alu_op1_sel_1 <= alu_op1_ir_operand;
				alu_op2_sel_1 <= alu_op2_sel_rx;
				wr_en_1 <= '1';
			
			-- double check the subv and sub stuff
			elsif opcode = subr then
				pc_sel_1 <= pc_sel_next;
				rf_input_sel_1 <= rf_sel_aluout;
				alu_operation_1 <= alu_sub;
				alu_op1_sel_1 <= alu_op1_ir_operand;
				alu_op2_sel_1 <= alu_op2_sel_rx;
				wr_en_1 <= '1';
			
			elsif opcode = ldr then
				pc_sel_1 <= pc_sel_next;
				rf_input_sel_1 <= rf_sel_ir_operand;
				alu_operation_1 <= alu_idle;
				wr_en_1 <= '1';
				
			end if;
		elsif am = am_direct then
		
		elsif am = am_register then
			
			if opcode = datacall then
				dpcr_wr_1 <= '1';
				dpcr_lsb_sel_1 <= '0';
				wr_en_1 <= '0';
			end if;
			
		else
		
		end if;
	end process decode;
	
	set_controls: process (clk)
	begin
		wr_en <= wr_en_1;
		if rising_edge(clk) then
			pc_sel <= pc_sel_1;
			pr1_ctrl <= pr1_ctrl_1;
			rf_input_sel <= rf_input_sel_1;
			pr2_ctrl <= pr2_ctrl_1;
			alu_operation <= alu_operation_1;
			alu_op1_sel <= alu_op1_sel_1;
			alu_op2_sel <= alu_op2_sel_1;
			dpcr_wr <= dpcr_wr_1;
			dpcr_lsb_sel <= dpcr_lsb_sel_1;
			mem_addr_sel <= mem_addr_sel_1;
			mem_mux_data_sel <= mem_mux_data_sel_1;
		end if;
	
	end process set_controls;

end architecture behaviour;