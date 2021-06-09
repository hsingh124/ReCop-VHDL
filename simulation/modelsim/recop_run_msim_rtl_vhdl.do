transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {c:/intelfpga/18.1/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {c:/intelfpga/18.1/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {c:/intelfpga/18.1/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {c:/intelfpga/18.1/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {c:/intelfpga/18.1/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {c:/intelfpga/18.1/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/cyclonev
vmap cyclonev ./vhdl_libs/cyclonev
vlog -vlog01compat -work cyclonev {c:/intelfpga/18.1/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vcom -93 -work cyclonev {c:/intelfpga/18.1/quartus/eda/sim_lib/cyclonev_atoms.vhd}
vcom -93 -work cyclonev {c:/intelfpga/18.1/quartus/eda/sim_lib/cyclonev_components.vhd}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/recop_types.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/data_mem.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/program_mem_32.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/program_counter.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/instruction_reg.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/opcodes.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/register_file.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/mem_mux_data.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/pipeline_reg_1.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/pipeline_reg_2.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/various_constants.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/registers.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/registerfile_mux.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/alu.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/mem_mux.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/recop.vhd}
vcom -93 -work work {//files.auckland.ac.nz/myhome/Desktop/hsin849/main_recop/git_recop/ReCop-VHDL/control_unit.vhd}

