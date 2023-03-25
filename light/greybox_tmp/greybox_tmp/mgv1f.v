//lpm_compare CBX_SINGLE_OUTPUT_FILE="ON" LPM_HINT="ONE_INPUT_IS_CONSTANT=YES" LPM_REPRESENTATION="UNSIGNED" LPM_TYPE="LPM_COMPARE" LPM_WIDTH=26 ageb dataa datab
//VERSION_BEGIN 20.1 cbx_mgl 2020:06:05:12:11:10:SJ cbx_stratixii 2020:06:05:12:04:51:SJ cbx_util_mgl 2020:06:05:12:04:51:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2020  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and any partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details, at
//  https://fpgasoftware.intel.com/eula.



//synthesis_resources = lpm_compare 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgv1f
	( 
	ageb,
	dataa,
	datab) /* synthesis synthesis_clearbox=1 */;
	output   ageb;
	input   [25:0]  dataa;
	input   [25:0]  datab;

	wire  wire_mgl_prim1_ageb;

	lpm_compare   mgl_prim1
	( 
	.ageb(wire_mgl_prim1_ageb),
	.dataa(dataa),
	.datab(datab));
	defparam
		mgl_prim1.lpm_representation = "UNSIGNED",
		mgl_prim1.lpm_type = "LPM_COMPARE",
		mgl_prim1.lpm_width = 26,
		mgl_prim1.lpm_hint = "ONE_INPUT_IS_CONSTANT=YES";
	assign
		ageb = wire_mgl_prim1_ageb;
endmodule //mgv1f
//VALID FILE
