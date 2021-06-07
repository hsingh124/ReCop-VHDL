transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/recop_types.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/data_mem.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/program_mem_32.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/program_counter.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/instruction_reg.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/opcodes.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/register_file.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/mem_mux_data.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/pipeline_reg_1.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/pipeline_reg_2.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/various_constants.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/registerfile_mux.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/alu.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/mem_mux.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/recop.vhd}
vcom -93 -work work {D:/Main_Recop/githubRecop/ReCop-VHDL/control_unit.vhd}

