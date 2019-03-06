// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="correlator,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=5.495667,HLS_SYN_LAT=2,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=618,HLS_SYN_LUT=371}" *)

module correlator (
        ap_clk,
        ap_rst_n,
        i_data_TDATA,
        i_data_TVALID,
        i_data_TREADY,
        i_data_TLAST,
        o_data_TDATA,
        o_data_TVALID,
        o_data_TREADY,
        o_data_TLAST,
        start_V,
        phaseClass_V
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
parameter    ap_const_lv32_0 = 32'd0;

input   ap_clk;
input   ap_rst_n;
input  [31:0] i_data_TDATA;
input   i_data_TVALID;
output   i_data_TREADY;
input  [0:0] i_data_TLAST;
output  [31:0] o_data_TDATA;
output   o_data_TVALID;
input   o_data_TREADY;
output  [0:0] o_data_TLAST;
input  [0:0] start_V;
input  [3:0] phaseClass_V;

reg i_data_TREADY;

reg    ap_rst_n_inv;
reg   [31:0] o_data_V_data_V_1_data_out;
reg    o_data_V_data_V_1_vld_in;
wire    o_data_V_data_V_1_vld_out;
wire    o_data_V_data_V_1_ack_in;
wire    o_data_V_data_V_1_ack_out;
reg   [31:0] o_data_V_data_V_1_payload_A;
reg   [31:0] o_data_V_data_V_1_payload_B;
reg    o_data_V_data_V_1_sel_rd;
reg    o_data_V_data_V_1_sel_wr;
wire    o_data_V_data_V_1_sel;
wire    o_data_V_data_V_1_load_A;
wire    o_data_V_data_V_1_load_B;
reg   [1:0] o_data_V_data_V_1_state;
wire    o_data_V_data_V_1_state_cmp_full;
wire   [0:0] o_data_V_last_V_1_data_out;
reg    o_data_V_last_V_1_vld_in;
wire    o_data_V_last_V_1_vld_out;
wire    o_data_V_last_V_1_ack_in;
wire    o_data_V_last_V_1_ack_out;
reg    o_data_V_last_V_1_sel_rd;
wire    o_data_V_last_V_1_sel;
reg   [1:0] o_data_V_last_V_1_state;
reg   [1:0] currentState;
reg   [15:0] phaseClass0_V_14;
reg   [15:0] phaseClass0_V_13;
reg   [15:0] phaseClass0_V_12;
reg   [15:0] phaseClass0_V_11;
reg   [15:0] phaseClass0_V_10;
reg   [15:0] phaseClass0_V_9;
reg   [15:0] phaseClass0_V_8;
reg   [15:0] phaseClass0_V_7;
reg   [15:0] phaseClass0_V_6;
reg   [15:0] phaseClass0_V_5;
reg   [15:0] phaseClass0_V_4;
reg   [15:0] phaseClass0_V_3;
reg   [15:0] phaseClass0_V_2;
reg   [15:0] phaseClass0_V_1;
reg   [15:0] phaseClass0_V_0;
reg   [15:0] phaseClass0_V_15;
reg    i_data_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_flag00000000;
wire   [1:0] currentState_load_load_fu_170_p1;
wire   [0:0] tmp_nbreadreq_fu_124_p4;
reg    o_data_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [1:0] currentState_load_reg_562;
reg    ap_enable_reg_pp0_iter2;
reg   [1:0] ap_reg_pp0_iter1_currentState_load_reg_562;
wire   [0:0] start_V_read_read_fu_118_p2;
reg    ap_predicate_op10_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_flag00011001;
reg   [0:0] tmp_reg_566;
wire   [15:0] tmp_15_fu_178_p1;
reg   [15:0] tmp_15_reg_570;
wire   [31:0] tmp_data_V_fu_450_p5;
reg    ap_block_pp0_stage0_flag00011011;
wire   [1:0] ap_phi_precharge_reg_pp0_iter0_storemerge_reg_153;
reg   [1:0] storemerge_phi_fu_156_p4;
wire   [15:0] p_Val2_3_s_fu_432_p2;
reg    ap_block_pp0_stage0_flag00001001;
wire   [15:0] tmp2_fu_354_p2;
wire   [15:0] tmp1_fu_348_p2;
wire   [15:0] tmp5_fu_372_p2;
wire   [15:0] tmp4_fu_366_p2;
wire   [15:0] tmp6_fu_378_p2;
wire   [15:0] tmp3_fu_360_p2;
wire   [15:0] tmp9_fu_396_p2;
wire   [15:0] tmp8_fu_390_p2;
wire   [15:0] tmp12_fu_414_p2;
wire   [15:0] tmp11_fu_408_p2;
wire   [15:0] tmp13_fu_420_p2;
wire   [15:0] tmp10_fu_402_p2;
wire   [15:0] tmp14_fu_426_p2;
wire   [15:0] tmp7_fu_384_p2;
reg   [0:0] ap_NS_fsm;
wire    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_440;

// power-on initialization
initial begin
#0 o_data_V_data_V_1_sel_rd = 1'b0;
#0 o_data_V_data_V_1_sel_wr = 1'b0;
#0 o_data_V_data_V_1_state = 2'd0;
#0 o_data_V_last_V_1_sel_rd = 1'b0;
#0 o_data_V_last_V_1_state = 2'd0;
#0 currentState = 2'd0;
#0 phaseClass0_V_14 = 16'd0;
#0 phaseClass0_V_13 = 16'd0;
#0 phaseClass0_V_12 = 16'd0;
#0 phaseClass0_V_11 = 16'd0;
#0 phaseClass0_V_10 = 16'd0;
#0 phaseClass0_V_9 = 16'd0;
#0 phaseClass0_V_8 = 16'd0;
#0 phaseClass0_V_7 = 16'd0;
#0 phaseClass0_V_6 = 16'd0;
#0 phaseClass0_V_5 = 16'd0;
#0 phaseClass0_V_4 = 16'd0;
#0 phaseClass0_V_3 = 16'd0;
#0 phaseClass0_V_2 = 16'd0;
#0 phaseClass0_V_1 = 16'd0;
#0 phaseClass0_V_0 = 16'd0;
#0 phaseClass0_V_15 = 16'd0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        currentState <= 2'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == 1'b1) & (2'd1 == currentState) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
            currentState <= storemerge_phi_fu_156_p4;
        end else if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == 1'b1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd2 == currentState_load_load_fu_170_p1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == 1'b1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd0 == currentState_load_load_fu_170_p1) & (1'd1 == start_V_read_read_fu_118_p2)))) begin
            currentState <= 2'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        o_data_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == o_data_V_data_V_1_ack_out) & (1'b1 == o_data_V_data_V_1_vld_out))) begin
            o_data_V_data_V_1_sel_rd <= ~o_data_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        o_data_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == o_data_V_data_V_1_vld_in) & (1'b1 == o_data_V_data_V_1_ack_in))) begin
            o_data_V_data_V_1_sel_wr <= ~o_data_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        o_data_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == o_data_V_data_V_1_vld_in) & (1'b1 == o_data_V_data_V_1_ack_out) & (o_data_V_data_V_1_state == 2'd3)) | ((1'b0 == o_data_V_data_V_1_vld_in) & (o_data_V_data_V_1_state == 2'd2)))) begin
            o_data_V_data_V_1_state <= 2'd2;
        end else if ((((1'b1 == o_data_V_data_V_1_vld_in) & (1'b0 == o_data_V_data_V_1_ack_out) & (o_data_V_data_V_1_state == 2'd3)) | ((1'b0 == o_data_V_data_V_1_ack_out) & (o_data_V_data_V_1_state == 2'd1)))) begin
            o_data_V_data_V_1_state <= 2'd1;
        end else if ((((1'b1 == o_data_V_data_V_1_vld_in) & (o_data_V_data_V_1_state == 2'd2)) | ((1'b1 == o_data_V_data_V_1_ack_out) & (o_data_V_data_V_1_state == 2'd1)) | ((o_data_V_data_V_1_state == 2'd3) & ~((1'b1 == o_data_V_data_V_1_vld_in) & (1'b0 == o_data_V_data_V_1_ack_out)) & ~((1'b0 == o_data_V_data_V_1_vld_in) & (1'b1 == o_data_V_data_V_1_ack_out))))) begin
            o_data_V_data_V_1_state <= 2'd3;
        end else begin
            o_data_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        o_data_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == o_data_V_last_V_1_ack_out) & (1'b1 == o_data_V_last_V_1_vld_out))) begin
            o_data_V_last_V_1_sel_rd <= ~o_data_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        o_data_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == o_data_V_last_V_1_vld_in) & (1'b1 == o_data_V_last_V_1_ack_out) & (2'd3 == o_data_V_last_V_1_state)) | ((1'b0 == o_data_V_last_V_1_vld_in) & (2'd2 == o_data_V_last_V_1_state)))) begin
            o_data_V_last_V_1_state <= 2'd2;
        end else if ((((1'b1 == o_data_V_last_V_1_vld_in) & (1'b0 == o_data_V_last_V_1_ack_out) & (2'd3 == o_data_V_last_V_1_state)) | ((1'b0 == o_data_V_last_V_1_ack_out) & (2'd1 == o_data_V_last_V_1_state)))) begin
            o_data_V_last_V_1_state <= 2'd1;
        end else if ((((1'b1 == o_data_V_last_V_1_vld_in) & (2'd2 == o_data_V_last_V_1_state)) | ((1'b1 == o_data_V_last_V_1_ack_out) & (2'd1 == o_data_V_last_V_1_state)) | ((2'd3 == o_data_V_last_V_1_state) & ~((1'b1 == o_data_V_last_V_1_vld_in) & (1'b0 == o_data_V_last_V_1_ack_out)) & ~((1'b0 == o_data_V_last_V_1_vld_in) & (1'b1 == o_data_V_last_V_1_ack_out))))) begin
            o_data_V_last_V_1_state <= 2'd3;
        end else begin
            o_data_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_0 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_0 <= tmp_15_reg_570;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_1 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_1 <= phaseClass0_V_0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_10 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_10 <= phaseClass0_V_9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_11 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_11 <= phaseClass0_V_10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_12 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_12 <= phaseClass0_V_11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_13 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_13 <= phaseClass0_V_12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_14 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_14 <= phaseClass0_V_13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_15 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_15 <= phaseClass0_V_14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_2 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_2 <= phaseClass0_V_1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_3 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_3 <= phaseClass0_V_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_4 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_4 <= phaseClass0_V_3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_5 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_5 <= phaseClass0_V_4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_6 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_6 <= phaseClass0_V_5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_7 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_7 <= phaseClass0_V_6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_8 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_8 <= phaseClass0_V_7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        phaseClass0_V_9 <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (2'd1 == currentState_load_reg_562) & (1'd1 == tmp_reg_566))) begin
            phaseClass0_V_9 <= phaseClass0_V_8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_currentState_load_reg_562 <= currentState_load_reg_562;
        currentState_load_reg_562 <= currentState;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == o_data_V_data_V_1_load_A)) begin
        o_data_V_data_V_1_payload_A <= tmp_data_V_fu_450_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == o_data_V_data_V_1_load_B)) begin
        o_data_V_data_V_1_payload_B <= tmp_data_V_fu_450_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_predicate_op10_read_state1) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        tmp_15_reg_570 <= tmp_15_fu_178_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (2'd1 == currentState) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        tmp_reg_566 <= tmp_nbreadreq_fu_124_p4;
    end
end

always @ (*) begin
    if (((1'b0 == 1'b1) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

assign ap_reset_idle_pp0 = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == 1'b1) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (2'd1 == currentState) & (1'd1 == tmp_nbreadreq_fu_124_p4))) begin
        i_data_TDATA_blk_n = i_data_TVALID;
    end else begin
        i_data_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == 1'b1) & (1'b1 == ap_predicate_op10_read_state1) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        i_data_TREADY = 1'b1;
    end else begin
        i_data_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (2'd2 == currentState_load_reg_562)) | ((ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (2'd2 == ap_reg_pp0_iter1_currentState_load_reg_562)))) begin
        o_data_TDATA_blk_n = o_data_V_data_V_1_state[1'd1];
    end else begin
        o_data_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == o_data_V_data_V_1_sel)) begin
        o_data_V_data_V_1_data_out = o_data_V_data_V_1_payload_B;
    end else begin
        o_data_V_data_V_1_data_out = o_data_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (2'd2 == currentState_load_reg_562) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        o_data_V_data_V_1_vld_in = 1'b1;
    end else begin
        o_data_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (2'd2 == currentState_load_reg_562) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        o_data_V_last_V_1_vld_in = 1'b1;
    end else begin
        o_data_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((ap_condition_440 == 1'b1)) begin
        if ((1'd0 == tmp_nbreadreq_fu_124_p4)) begin
            storemerge_phi_fu_156_p4 = 2'd1;
        end else if ((1'd1 == tmp_nbreadreq_fu_124_p4)) begin
            storemerge_phi_fu_156_p4 = 2'd2;
        end else begin
            storemerge_phi_fu_156_p4 = ap_phi_precharge_reg_pp0_iter0_storemerge_reg_153;
        end
    end else begin
        storemerge_phi_fu_156_p4 = ap_phi_precharge_reg_pp0_iter0_storemerge_reg_153;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_flag00001001 = (((1'b1 == 1'b1) & (1'b0 == i_data_TVALID) & (1'b1 == ap_predicate_op10_read_state1)) | ((1'b1 == ap_enable_reg_pp0_iter2) & ((1'b0 == o_data_V_data_V_1_ack_in) | (1'b0 == o_data_V_last_V_1_ack_in))));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011001 = (((1'b1 == 1'b1) & (1'b0 == i_data_TVALID) & (1'b1 == ap_predicate_op10_read_state1)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state2_io)) | ((1'b1 == ap_enable_reg_pp0_iter2) & ((1'b0 == o_data_V_data_V_1_ack_in) | (1'b0 == o_data_V_last_V_1_ack_in) | (1'b1 == ap_block_state3_io))));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011011 = (((1'b1 == 1'b1) & (1'b0 == i_data_TVALID) & (1'b1 == ap_predicate_op10_read_state1)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'b1 == ap_block_state2_io)) | ((1'b1 == ap_enable_reg_pp0_iter2) & ((1'b0 == o_data_V_data_V_1_ack_in) | (1'b0 == o_data_V_last_V_1_ack_in) | (1'b1 == ap_block_state3_io))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((1'b0 == i_data_TVALID) & (1'b1 == ap_predicate_op10_read_state1));
end

always @ (*) begin
    ap_block_state2_io = ((2'd2 == currentState_load_reg_562) & (1'b0 == o_data_V_data_V_1_ack_in));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((2'd2 == ap_reg_pp0_iter1_currentState_load_reg_562) & (1'b0 == o_data_V_data_V_1_ack_in));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((1'b0 == o_data_V_data_V_1_ack_in) | (1'b0 == o_data_V_last_V_1_ack_in));
end

always @ (*) begin
    ap_condition_440 = ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == 1'b1) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (2'd1 == currentState));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_precharge_reg_pp0_iter0_storemerge_reg_153 = 'bx;

always @ (*) begin
    ap_predicate_op10_read_state1 = ((2'd1 == currentState) & (1'd1 == tmp_nbreadreq_fu_124_p4));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign currentState_load_load_fu_170_p1 = currentState;

assign o_data_TDATA = o_data_V_data_V_1_data_out;

assign o_data_TLAST = o_data_V_last_V_1_data_out;

assign o_data_TVALID = o_data_V_last_V_1_state[1'd0];

assign o_data_V_data_V_1_ack_in = o_data_V_data_V_1_state[1'd1];

assign o_data_V_data_V_1_ack_out = o_data_TREADY;

assign o_data_V_data_V_1_load_A = (o_data_V_data_V_1_state_cmp_full & ~o_data_V_data_V_1_sel_wr);

assign o_data_V_data_V_1_load_B = (o_data_V_data_V_1_sel_wr & o_data_V_data_V_1_state_cmp_full);

assign o_data_V_data_V_1_sel = o_data_V_data_V_1_sel_rd;

assign o_data_V_data_V_1_state_cmp_full = ((o_data_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign o_data_V_data_V_1_vld_out = o_data_V_data_V_1_state[1'd0];

assign o_data_V_last_V_1_ack_in = o_data_V_last_V_1_state[1'd1];

assign o_data_V_last_V_1_ack_out = o_data_TREADY;

assign o_data_V_last_V_1_data_out = 1'd0;

assign o_data_V_last_V_1_sel = o_data_V_last_V_1_sel_rd;

assign o_data_V_last_V_1_vld_out = o_data_V_last_V_1_state[1'd0];

assign p_Val2_3_s_fu_432_p2 = (tmp14_fu_426_p2 + tmp7_fu_384_p2);

assign start_V_read_read_fu_118_p2 = start_V;

assign tmp10_fu_402_p2 = (tmp9_fu_396_p2 + tmp8_fu_390_p2);

assign tmp11_fu_408_p2 = (phaseClass0_V_12 + phaseClass0_V_9);

assign tmp12_fu_414_p2 = (phaseClass0_V_10 + phaseClass0_V_0);

assign tmp13_fu_420_p2 = (tmp12_fu_414_p2 + tmp11_fu_408_p2);

assign tmp14_fu_426_p2 = (tmp13_fu_420_p2 + tmp10_fu_402_p2);

assign tmp1_fu_348_p2 = (phaseClass0_V_2 + phaseClass0_V_1);

assign tmp2_fu_354_p2 = (phaseClass0_V_3 + phaseClass0_V_4);

assign tmp3_fu_360_p2 = (tmp2_fu_354_p2 + tmp1_fu_348_p2);

assign tmp4_fu_366_p2 = (phaseClass0_V_7 + phaseClass0_V_8);

assign tmp5_fu_372_p2 = (phaseClass0_V_5 + phaseClass0_V_6);

assign tmp6_fu_378_p2 = (tmp5_fu_372_p2 + tmp4_fu_366_p2);

assign tmp7_fu_384_p2 = (tmp6_fu_378_p2 + tmp3_fu_360_p2);

assign tmp8_fu_390_p2 = (phaseClass0_V_15 + phaseClass0_V_13);

assign tmp9_fu_396_p2 = (phaseClass0_V_14 + phaseClass0_V_11);

assign tmp_15_fu_178_p1 = i_data_TDATA[15:0];

assign tmp_data_V_fu_450_p5 = {{ap_const_lv32_0[31:16]}, {p_Val2_3_s_fu_432_p2}};

assign tmp_nbreadreq_fu_124_p4 = i_data_TVALID;

endmodule //correlator
