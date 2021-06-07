library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;
use work.various_constants.all;

entity recop is
	port(
		clk: in bit_1
	);
end recop;

architecture behaviour of recop is

-- first section components
component program_counter
	port (
		clk		: in bit_1;
		sel		: in bit_2;
		m_out		: in bit_16;
		rx			: in bit_16;
		operand	: in bit_16;
		pc_out	: out bit_16
	);
end component;

component program_mem_32
	port (
		address		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;

component instruction_reg
	port (
		clk			: in bit_1;
		mem_out		: in bit_32;
		operand		: out bit_16;
		rx				: out bit_4;
		rz				: out bit_4;
		opcode		: out bit_6;
		am				: out bit_2
	);
end component;

component pipeline_reg_1
	port(
		clk			: in bit_1;
		ctrl			: in bit_1;
		ir_operand	: in bit_16;
		ir_rx			: in bit_4;
		ir_rz			: in bit_4;
		ir_opcode	: in bit_6;
		ir_am			: in bit_2;
		operand		: out bit_16;
		rx				: out bit_4;
		rz				: out bit_4;
		opcode		: out bit_6;
		am				: out bit_2
	);
end component;

-- second section components
component control_unit
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
		mem_addr_sel		: out bit_2;
		mem_mux_data_sel	: out bit_2
	);
end component;

component registerfile_mux
	port (
		rf_input_sel: in bit_3;
		ir_operand: in bit_16;
		dm_out: in bit_16;
		aluout: in bit_16;
		rz_max: in bit_16;
		sip_hold: in bit_16;
		er_temp: in bit_1;
		dprr_res : in bit_1;	
		data_to_reg : out bit_16		
	);
end component;

component register_file
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
end component;

component registers
    port (
		clk : in bit_1;
		reset : in bit_1;
		dpcr: out bit_32;
		r7 : in bit_16;
		rx : in bit_16;
		ir_operand : in bit_16;
		dpcr_lsb_sel : in bit_1;
		dpcr_wr : in bit_1;
		er: out bit_1;
		er_wr : in bit_1;
		er_clr : in bit_1;
		eot: out bit_1;
		eot_wr : in bit_1;
		eot_clr : in bit_1;
		svop : out bit_16;
		svop_wr : in bit_1;
		sip_r : out bit_16;
		sip : in bit_16;
		sop : out bit_16;
		sop_wr : in bit_1;
		dprr :out bit_2;
		irq_wr:in bit_1;
		irq_clr:in bit_1;
		result_wen: in bit_1;
		result :in bit_1
		);
end component;

component pipeline_reg_2
	port(
		clk			: in bit_1;
		ctrl			: in bit_1;
		ir_rz_in		: in bit_4; 
		ir_operand	: in bit_16;
		rx_in			: in bit_16;
		rz_in			: in bit_16;
		r7_in			: in bit_16;
		r8_in			: in bit_16;
		r10_in		: in bit_16;
		ir_rz			: out bit_4; 
		operand		: out bit_16 := X"0000";
		rx				: out bit_16 := X"0000";
		rz				: out bit_16 := X"0000";
		r7				: out bit_16 := X"0000";
		r8				: out bit_16 := X"0000";
		r10			: out bit_16 := X"0000"
		);
end component;

-- third section components
component alu
	port (
		clk				: in bit_1;
		z_flag			: out bit_1;
		alu_operation	: in bit_3;
		alu_op1_sel		: in bit_2;
		alu_op2_sel		: in bit_1;
		alu_carry		: in bit_1;  --WARNING: carry in currently is not used
		alu_result		: out bit_16;
		rx					: in bit_16;
		rz					: in bit_16;
		ir_operand		: in bit_16;
		clr_z_flag		: in bit_1;
		reset : in bit_1
	);
end component;

component mem_mux
    port (
		mem_addr_sel: in bit_2;
		Rx: in bit_16;
		Rz: in bit_16;
		ir_operand: in bit_16;
		mem_addr: out bit_16		
	);
end component;

component mem_mux_data
	port(
		sel			: in bit_2;
		ir_operand	: in bit_16;
		rx				: in bit_16;
		dprr			: in bit_16;
		data			: out bit_16
	);
end component;

component data_mem
	PORT(
		address		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
end component;

component pipeline_reg_3
	port(
		clk			: in bit_1;
		ctrl			: in bit_1;
		mem_result	: in bit_16;
		alu_result	: in bit_16;
		mem_out		: out bit_16;
		alu_out		: out bit_16
	);
end component;

signal pc_sel			: bit_2 	:= "11";

signal rx				: bit_16	:= X"0000";
signal rz				: bit_16 := X"0000";
signal r7				: bit_16	:= X"0000";
signal r8				: bit_16 := X"0000";
signal r10				: bit_16	:= X"0000";
signal rx_1				: bit_16	:= X"0000";
signal rz_1				: bit_16 := X"0000";
signal r7_1				: bit_16	:= X"0000";
signal r8_1				: bit_16 := X"0000";
signal r10_1			: bit_16	:= X"0000";

signal ir_operand		: bit_16 := X"0000";
signal ir_operand_1	: bit_16 := X"0000";
signal ir_operand_2	: bit_16 := X"0000";
signal pc_out			: bit_16 := X"0000";
signal pm_out			: bit_32 := X"00000000";
signal ir_rx			: bit_4	:= "0000";
signal ir_rz			: bit_4	:= "0000";
signal opcode			: bit_6	:= "000000";
signal am				: bit_2	:= "00";
signal ir_rx_1			: bit_4	:= "0000";
signal ir_rz_1			: bit_4	:= "0000";
signal ir_rz_2			: bit_4	:= "0000";
signal opcode_1		: bit_6	:= "000000";
signal am_1				: bit_2	:= "00";
signal pr1_ctrl		: bit_1	:= '1';
signal rf_input_sel	: bit_3	:= "000";
signal dm_out			: bit_16	:= X"0000";
signal dm_wren			: bit_1	:= '0';
signal rz_max			: bit_16	:= X"0000";
signal sip				: bit_16	:= X"0000";
signal er				: bit_1	:= '0';
signal dprr				: bit_1	:= '0';
signal data_to_reg	: bit_16	:= X"0000";
signal regs_reset		: bit_1	:= '0';
signal pr2_ctrl		: bit_1	:= '1';

signal z_flag			: bit_1	:= '0';
signal ctrl_z_flag	: bit_1	:= '0';
signal alu_reset		: bit_1	:= '0';
signal alu_operation	: bit_3	:= "000";
signal alu_op1_sel	: bit_2	:= "00";
signal alu_op2_sel	: bit_1	:= '0';
signal alu_carry		: bit_1	:= '0';
signal alu_out			: bit_16	:= X"0000";

signal mem_addr_sel	: bit_2	:= "00";
signal mem_addr		: bit_16	:= X"0000";

signal mem_mux_data_sel	: bit_2 	:= "00";
signal mem_mux_data_out	: bit_16 := X"0000";

signal dprr_concat		: bit_16 := X"0000";

begin

	pc: program_counter
	port map (clk, pc_sel, dm_out, rx, ir_operand, pc_out);

	pm: program_mem_32
	port map (pc_out, clk, pm_out);
	
	ir: instruction_reg
	port map (clk, pm_out, ir_operand, ir_rx, ir_rz, opcode, am);

	pr1: pipeline_reg_1
	port map (clk, pr1_ctrl, ir_operand, ir_rx, ir_rz, opcode, am, ir_operand_1, ir_rx_1, ir_rz_1, opcode_1, am_1);
	
	cu: control_unit
	port map (clk, am_1, opcode_1, pc_sel, pr1_ctrl, rf_input_sel, pr2_ctrl, alu_operation, alu_op1_sel, alu_op2_sel, mem_addr_sel, mem_mux_data_sel);
	
	rf_mux: registerfile_mux
	port map (rf_input_sel, ir_operand_1, dm_out, alu_out, rz_max, sip, er, dprr, data_to_reg);
	
	rf: register_file
	port map (clk, data_to_reg, ir_rx_1, ir_rz_1, ir_rz_2,  rx, rz, r7, r8, r10);
	
	--regs: registers
	--port map (clk, regs_reset, )
	
	pr2: pipeline_reg_2
	port map (clk, pr2_ctrl, ir_rz_1, ir_operand_1, rx, rz, r7, r8, r10, ir_rz_2, ir_operand_2, rx_1, rz_1, r7_1, r8_1, r10_1);
	
	alu_1: alu
	port map (clk, z_flag, alu_operation, alu_op1_sel, alu_op2_sel, alu_carry, alu_out, rx_1, rz_1, ir_operand_2, ctrl_z_flag, alu_reset);
	
	mem_mux_1: mem_mux
	port map (mem_addr_sel, rx_1, rz_1, ir_operand_2, mem_addr);
	
	mem_mux_data_1: mem_mux_data
	port map (mem_mux_data_sel, ir_operand_2, rx_1, dprr_concat, mem_mux_data_out);
	
	--not using the last pipeline register, instead passing dmout and aluout directly
	
	dm: data_mem
	port map (mem_addr, clk, mem_mux_data_out, dm_wren, dm_out);

end architecture behaviour;