-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity correlateTop is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    i_data_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    i_data_TVALID : IN STD_LOGIC;
    i_data_TREADY : OUT STD_LOGIC;
    i_data_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    o_data_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    o_data_TVALID : OUT STD_LOGIC;
    o_data_TREADY : IN STD_LOGIC;
    o_data_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    start_V : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of correlateTop is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "correlateTop,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=2.846000,HLS_SYN_LAT=2,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=126,HLS_SYN_LUT=311}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";

    signal ap_rst_n_inv : STD_LOGIC;
    signal i_data_data_V_0_vld_in : STD_LOGIC;
    signal i_data_data_V_0_vld_out : STD_LOGIC;
    signal i_data_data_V_0_ack_out : STD_LOGIC;
    signal i_data_data_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal i_data_last_V_0_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_data_last_V_0_vld_in : STD_LOGIC;
    signal i_data_last_V_0_vld_out : STD_LOGIC;
    signal i_data_last_V_0_ack_in : STD_LOGIC;
    signal i_data_last_V_0_ack_out : STD_LOGIC;
    signal i_data_last_V_0_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal i_data_last_V_0_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal i_data_last_V_0_sel_rd : STD_LOGIC := '0';
    signal i_data_last_V_0_sel_wr : STD_LOGIC := '0';
    signal i_data_last_V_0_sel : STD_LOGIC;
    signal i_data_last_V_0_load_A : STD_LOGIC;
    signal i_data_last_V_0_load_B : STD_LOGIC;
    signal i_data_last_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal i_data_last_V_0_state_cmp_full : STD_LOGIC;
    signal o_data_data_V_1_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal o_data_data_V_1_vld_in : STD_LOGIC;
    signal o_data_data_V_1_vld_out : STD_LOGIC;
    signal o_data_data_V_1_ack_in : STD_LOGIC;
    signal o_data_data_V_1_ack_out : STD_LOGIC;
    signal o_data_data_V_1_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal o_data_data_V_1_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal o_data_data_V_1_sel_rd : STD_LOGIC := '0';
    signal o_data_data_V_1_sel_wr : STD_LOGIC := '0';
    signal o_data_data_V_1_sel : STD_LOGIC;
    signal o_data_data_V_1_load_A : STD_LOGIC;
    signal o_data_data_V_1_load_B : STD_LOGIC;
    signal o_data_data_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal o_data_data_V_1_state_cmp_full : STD_LOGIC;
    signal o_data_last_V_1_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal o_data_last_V_1_vld_in : STD_LOGIC;
    signal o_data_last_V_1_vld_out : STD_LOGIC;
    signal o_data_last_V_1_ack_in : STD_LOGIC;
    signal o_data_last_V_1_ack_out : STD_LOGIC;
    signal o_data_last_V_1_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal o_data_last_V_1_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal o_data_last_V_1_sel_rd : STD_LOGIC := '0';
    signal o_data_last_V_1_sel_wr : STD_LOGIC := '0';
    signal o_data_last_V_1_sel : STD_LOGIC;
    signal o_data_last_V_1_load_A : STD_LOGIC;
    signal o_data_last_V_1_load_B : STD_LOGIC;
    signal o_data_last_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal o_data_last_V_1_state_cmp_full : STD_LOGIC;
    signal currentState : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal phaseClass_V : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal loadCount_V : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal i_data_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal currentState_load_reg_282 : STD_LOGIC_VECTOR (0 downto 0);
    signal o_data_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_reg_pp0_iter1_currentState_load_reg_282 : STD_LOGIC_VECTOR (0 downto 0);
    signal start_V_read_read_fu_76_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal start_V_read_reg_278 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_reg_pp0_iter1_start_V_read_reg_278 : STD_LOGIC_VECTOR (0 downto 0);
    signal currentState_load_load_fu_106_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal o_data_data_V_tmp_fu_251_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal tmp_6_fu_239_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_4_fu_266_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_340 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    currentState_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                currentState <= ap_const_lv1_0;
            else
                if ((((currentState_load_load_fu_106_p1 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((start_V_read_read_fu_76_p2 = ap_const_lv1_1) and (currentState_load_load_fu_106_p1 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
                    currentState <= ap_const_lv1_1;
                end if; 
            end if;
        end if;
    end process;


    i_data_data_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_data_V_0_state <= ap_const_lv2_0;
            else
                if ((((i_data_data_V_0_vld_in = ap_const_logic_0) and (i_data_data_V_0_state = ap_const_lv2_2)) or ((i_data_data_V_0_vld_in = ap_const_logic_0) and (i_data_data_V_0_state = ap_const_lv2_3) and (i_data_data_V_0_ack_out = ap_const_logic_1)))) then 
                    i_data_data_V_0_state <= ap_const_lv2_2;
                elsif ((((i_data_data_V_0_ack_out = ap_const_logic_0) and (i_data_data_V_0_state = ap_const_lv2_1)) or ((i_data_data_V_0_ack_out = ap_const_logic_0) and (i_data_data_V_0_state = ap_const_lv2_3) and (i_data_data_V_0_vld_in = ap_const_logic_1)))) then 
                    i_data_data_V_0_state <= ap_const_lv2_1;
                elsif (((not(((i_data_data_V_0_vld_in = ap_const_logic_0) and (i_data_data_V_0_ack_out = ap_const_logic_1))) and not(((i_data_data_V_0_ack_out = ap_const_logic_0) and (i_data_data_V_0_vld_in = ap_const_logic_1))) and (i_data_data_V_0_state = ap_const_lv2_3)) or ((i_data_data_V_0_state = ap_const_lv2_1) and (i_data_data_V_0_ack_out = ap_const_logic_1)) or ((i_data_data_V_0_state = ap_const_lv2_2) and (i_data_data_V_0_vld_in = ap_const_logic_1)))) then 
                    i_data_data_V_0_state <= ap_const_lv2_3;
                else 
                    i_data_data_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    i_data_last_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_last_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((i_data_last_V_0_ack_out = ap_const_logic_1) and (i_data_last_V_0_vld_out = ap_const_logic_1))) then 
                                        i_data_last_V_0_sel_rd <= not(i_data_last_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    i_data_last_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_last_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((i_data_last_V_0_ack_in = ap_const_logic_1) and (i_data_last_V_0_vld_in = ap_const_logic_1))) then 
                                        i_data_last_V_0_sel_wr <= not(i_data_last_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    i_data_last_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_last_V_0_state <= ap_const_lv2_0;
            else
                if ((((i_data_last_V_0_state = ap_const_lv2_3) and (i_data_last_V_0_vld_in = ap_const_logic_0) and (i_data_last_V_0_ack_out = ap_const_logic_1)) or ((i_data_last_V_0_state = ap_const_lv2_2) and (i_data_last_V_0_vld_in = ap_const_logic_0)))) then 
                    i_data_last_V_0_state <= ap_const_lv2_2;
                elsif ((((i_data_last_V_0_state = ap_const_lv2_1) and (i_data_last_V_0_ack_out = ap_const_logic_0)) or ((i_data_last_V_0_state = ap_const_lv2_3) and (i_data_last_V_0_ack_out = ap_const_logic_0) and (i_data_last_V_0_vld_in = ap_const_logic_1)))) then 
                    i_data_last_V_0_state <= ap_const_lv2_1;
                elsif ((((i_data_last_V_0_state = ap_const_lv2_1) and (i_data_last_V_0_ack_out = ap_const_logic_1)) or ((i_data_last_V_0_state = ap_const_lv2_2) and (i_data_last_V_0_vld_in = ap_const_logic_1)) or (not(((i_data_last_V_0_vld_in = ap_const_logic_0) and (i_data_last_V_0_ack_out = ap_const_logic_1))) and not(((i_data_last_V_0_ack_out = ap_const_logic_0) and (i_data_last_V_0_vld_in = ap_const_logic_1))) and (i_data_last_V_0_state = ap_const_lv2_3)))) then 
                    i_data_last_V_0_state <= ap_const_lv2_3;
                else 
                    i_data_last_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    loadCount_V_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                loadCount_V <= ap_const_lv32_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                    if ((ap_reg_pp0_iter1_currentState_load_reg_282 = ap_const_lv1_1)) then 
                        loadCount_V <= tmp_4_fu_266_p2;
                    elsif (((ap_reg_pp0_iter1_start_V_read_reg_278 = ap_const_lv1_1) and (ap_reg_pp0_iter1_currentState_load_reg_282 = ap_const_lv1_0))) then 
                        loadCount_V <= ap_const_lv32_0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    o_data_data_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_data_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((o_data_data_V_1_ack_out = ap_const_logic_1) and (o_data_data_V_1_vld_out = ap_const_logic_1))) then 
                                        o_data_data_V_1_sel_rd <= not(o_data_data_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    o_data_data_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_data_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((o_data_data_V_1_ack_in = ap_const_logic_1) and (o_data_data_V_1_vld_in = ap_const_logic_1))) then 
                                        o_data_data_V_1_sel_wr <= not(o_data_data_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    o_data_data_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_data_V_1_state <= ap_const_lv2_0;
            else
                if ((((o_data_data_V_1_state = ap_const_lv2_2) and (o_data_data_V_1_vld_in = ap_const_logic_0)) or ((o_data_data_V_1_state = ap_const_lv2_3) and (o_data_data_V_1_vld_in = ap_const_logic_0) and (o_data_data_V_1_ack_out = ap_const_logic_1)))) then 
                    o_data_data_V_1_state <= ap_const_lv2_2;
                elsif ((((o_data_data_V_1_state = ap_const_lv2_1) and (o_data_data_V_1_ack_out = ap_const_logic_0)) or ((o_data_data_V_1_state = ap_const_lv2_3) and (o_data_data_V_1_ack_out = ap_const_logic_0) and (o_data_data_V_1_vld_in = ap_const_logic_1)))) then 
                    o_data_data_V_1_state <= ap_const_lv2_1;
                elsif (((not(((o_data_data_V_1_vld_in = ap_const_logic_0) and (o_data_data_V_1_ack_out = ap_const_logic_1))) and not(((o_data_data_V_1_ack_out = ap_const_logic_0) and (o_data_data_V_1_vld_in = ap_const_logic_1))) and (o_data_data_V_1_state = ap_const_lv2_3)) or ((o_data_data_V_1_state = ap_const_lv2_1) and (o_data_data_V_1_ack_out = ap_const_logic_1)) or ((o_data_data_V_1_state = ap_const_lv2_2) and (o_data_data_V_1_vld_in = ap_const_logic_1)))) then 
                    o_data_data_V_1_state <= ap_const_lv2_3;
                else 
                    o_data_data_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    o_data_last_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_last_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((o_data_last_V_1_ack_out = ap_const_logic_1) and (o_data_last_V_1_vld_out = ap_const_logic_1))) then 
                                        o_data_last_V_1_sel_rd <= not(o_data_last_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    o_data_last_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_last_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((o_data_last_V_1_ack_in = ap_const_logic_1) and (o_data_last_V_1_vld_in = ap_const_logic_1))) then 
                                        o_data_last_V_1_sel_wr <= not(o_data_last_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    o_data_last_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_last_V_1_state <= ap_const_lv2_0;
            else
                if ((((o_data_last_V_1_state = ap_const_lv2_2) and (o_data_last_V_1_vld_in = ap_const_logic_0)) or ((o_data_last_V_1_state = ap_const_lv2_3) and (o_data_last_V_1_vld_in = ap_const_logic_0) and (o_data_last_V_1_ack_out = ap_const_logic_1)))) then 
                    o_data_last_V_1_state <= ap_const_lv2_2;
                elsif ((((o_data_last_V_1_state = ap_const_lv2_1) and (o_data_last_V_1_ack_out = ap_const_logic_0)) or ((o_data_last_V_1_state = ap_const_lv2_3) and (o_data_last_V_1_ack_out = ap_const_logic_0) and (o_data_last_V_1_vld_in = ap_const_logic_1)))) then 
                    o_data_last_V_1_state <= ap_const_lv2_1;
                elsif (((not(((o_data_last_V_1_vld_in = ap_const_logic_0) and (o_data_last_V_1_ack_out = ap_const_logic_1))) and not(((o_data_last_V_1_ack_out = ap_const_logic_0) and (o_data_last_V_1_vld_in = ap_const_logic_1))) and (o_data_last_V_1_state = ap_const_lv2_3)) or ((o_data_last_V_1_state = ap_const_lv2_1) and (o_data_last_V_1_ack_out = ap_const_logic_1)) or ((o_data_last_V_1_state = ap_const_lv2_2) and (o_data_last_V_1_vld_in = ap_const_logic_1)))) then 
                    o_data_last_V_1_state <= ap_const_lv2_3;
                else 
                    o_data_last_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    phaseClass_V_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                phaseClass_V <= ap_const_lv4_0;
            else
                if ((ap_const_boolean_1 = ap_condition_340)) then
                    if ((currentState_load_reg_282 = ap_const_lv1_1)) then 
                        phaseClass_V <= tmp_6_fu_239_p2;
                    elsif (((start_V_read_reg_278 = ap_const_lv1_1) and (currentState_load_reg_282 = ap_const_lv1_0))) then 
                        phaseClass_V <= ap_const_lv4_0;
                    end if;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_reg_pp0_iter1_currentState_load_reg_282 <= currentState_load_reg_282;
                ap_reg_pp0_iter1_start_V_read_reg_278 <= start_V_read_reg_278;
                currentState_load_reg_282 <= currentState;
                start_V_read_reg_278 <= start_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((i_data_last_V_0_load_A = ap_const_logic_1)) then
                i_data_last_V_0_payload_A <= i_data_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((i_data_last_V_0_load_B = ap_const_logic_1)) then
                i_data_last_V_0_payload_B <= i_data_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((o_data_data_V_1_load_A = ap_const_logic_1)) then
                o_data_data_V_1_payload_A <= o_data_data_V_tmp_fu_251_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((o_data_data_V_1_load_B = ap_const_logic_1)) then
                o_data_data_V_1_payload_B <= o_data_data_V_tmp_fu_251_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((o_data_last_V_1_load_A = ap_const_logic_1)) then
                o_data_last_V_1_payload_A <= i_data_last_V_0_data_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((o_data_last_V_1_load_B = ap_const_logic_1)) then
                o_data_last_V_1_payload_B <= i_data_last_V_0_data_out;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(i_data_data_V_0_vld_out, o_data_data_V_1_ack_in, o_data_last_V_1_ack_in, ap_enable_reg_pp0_iter1, currentState_load_reg_282, ap_enable_reg_pp0_iter2)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((o_data_last_V_1_ack_in = ap_const_logic_0) or (o_data_data_V_1_ack_in = ap_const_logic_0))) or ((currentState_load_reg_282 = ap_const_lv1_1) and (i_data_data_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(i_data_data_V_0_vld_out, o_data_data_V_1_ack_in, o_data_last_V_1_ack_in, ap_enable_reg_pp0_iter1, currentState_load_reg_282, ap_enable_reg_pp0_iter2, ap_block_state2_io, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((o_data_last_V_1_ack_in = ap_const_logic_0) or (o_data_data_V_1_ack_in = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state3_io))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((currentState_load_reg_282 = ap_const_lv1_1) and (i_data_data_V_0_vld_out = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(i_data_data_V_0_vld_out, o_data_data_V_1_ack_in, o_data_last_V_1_ack_in, ap_enable_reg_pp0_iter1, currentState_load_reg_282, ap_enable_reg_pp0_iter2, ap_block_state2_io, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((o_data_last_V_1_ack_in = ap_const_logic_0) or (o_data_data_V_1_ack_in = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state3_io))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((currentState_load_reg_282 = ap_const_lv1_1) and (i_data_data_V_0_vld_out = ap_const_logic_0)))));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_io_assign_proc : process(o_data_data_V_1_ack_in, currentState_load_reg_282)
    begin
                ap_block_state2_io <= ((currentState_load_reg_282 = ap_const_lv1_1) and (o_data_data_V_1_ack_in = ap_const_logic_0));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(i_data_data_V_0_vld_out, currentState_load_reg_282)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((currentState_load_reg_282 = ap_const_lv1_1) and (i_data_data_V_0_vld_out = ap_const_logic_0));
    end process;


    ap_block_state3_io_assign_proc : process(o_data_data_V_1_ack_in, ap_reg_pp0_iter1_currentState_load_reg_282)
    begin
                ap_block_state3_io <= ((ap_reg_pp0_iter1_currentState_load_reg_282 = ap_const_lv1_1) and (o_data_data_V_1_ack_in = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(o_data_data_V_1_ack_in, o_data_last_V_1_ack_in)
    begin
                ap_block_state3_pp0_stage0_iter2 <= ((o_data_last_V_1_ack_in = ap_const_logic_0) or (o_data_data_V_1_ack_in = ap_const_logic_0));
    end process;


    ap_condition_340_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
                ap_condition_340 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_logic_1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_reset_idle_pp0 <= ap_const_logic_0;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    currentState_load_load_fu_106_p1 <= currentState;

    i_data_TDATA_blk_n_assign_proc : process(i_data_data_V_0_state, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, currentState_load_reg_282)
    begin
        if (((currentState_load_reg_282 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            i_data_TDATA_blk_n <= i_data_data_V_0_state(0);
        else 
            i_data_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    i_data_TREADY <= i_data_last_V_0_state(1);

    i_data_data_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, currentState_load_reg_282, ap_block_pp0_stage0_11001)
    begin
        if (((currentState_load_reg_282 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            i_data_data_V_0_ack_out <= ap_const_logic_1;
        else 
            i_data_data_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;

    i_data_data_V_0_vld_in <= i_data_TVALID;
    i_data_data_V_0_vld_out <= i_data_data_V_0_state(0);
    i_data_last_V_0_ack_in <= i_data_last_V_0_state(1);

    i_data_last_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, currentState_load_reg_282, ap_block_pp0_stage0_11001)
    begin
        if (((currentState_load_reg_282 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            i_data_last_V_0_ack_out <= ap_const_logic_1;
        else 
            i_data_last_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    i_data_last_V_0_data_out_assign_proc : process(i_data_last_V_0_payload_A, i_data_last_V_0_payload_B, i_data_last_V_0_sel)
    begin
        if ((i_data_last_V_0_sel = ap_const_logic_1)) then 
            i_data_last_V_0_data_out <= i_data_last_V_0_payload_B;
        else 
            i_data_last_V_0_data_out <= i_data_last_V_0_payload_A;
        end if; 
    end process;

    i_data_last_V_0_load_A <= (i_data_last_V_0_state_cmp_full and not(i_data_last_V_0_sel_wr));
    i_data_last_V_0_load_B <= (i_data_last_V_0_state_cmp_full and i_data_last_V_0_sel_wr);
    i_data_last_V_0_sel <= i_data_last_V_0_sel_rd;
    i_data_last_V_0_state_cmp_full <= '0' when (i_data_last_V_0_state = ap_const_lv2_1) else '1';
    i_data_last_V_0_vld_in <= i_data_TVALID;
    i_data_last_V_0_vld_out <= i_data_last_V_0_state(0);
    o_data_TDATA <= o_data_data_V_1_data_out;

    o_data_TDATA_blk_n_assign_proc : process(o_data_data_V_1_state, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, currentState_load_reg_282, ap_enable_reg_pp0_iter2, ap_reg_pp0_iter1_currentState_load_reg_282)
    begin
        if ((((ap_reg_pp0_iter1_currentState_load_reg_282 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((currentState_load_reg_282 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            o_data_TDATA_blk_n <= o_data_data_V_1_state(1);
        else 
            o_data_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    o_data_TLAST <= o_data_last_V_1_data_out;
    o_data_TVALID <= o_data_last_V_1_state(0);
    o_data_data_V_1_ack_in <= o_data_data_V_1_state(1);
    o_data_data_V_1_ack_out <= o_data_TREADY;

    o_data_data_V_1_data_out_assign_proc : process(o_data_data_V_1_payload_A, o_data_data_V_1_payload_B, o_data_data_V_1_sel)
    begin
        if ((o_data_data_V_1_sel = ap_const_logic_1)) then 
            o_data_data_V_1_data_out <= o_data_data_V_1_payload_B;
        else 
            o_data_data_V_1_data_out <= o_data_data_V_1_payload_A;
        end if; 
    end process;

    o_data_data_V_1_load_A <= (o_data_data_V_1_state_cmp_full and not(o_data_data_V_1_sel_wr));
    o_data_data_V_1_load_B <= (o_data_data_V_1_state_cmp_full and o_data_data_V_1_sel_wr);
    o_data_data_V_1_sel <= o_data_data_V_1_sel_rd;
    o_data_data_V_1_state_cmp_full <= '0' when (o_data_data_V_1_state = ap_const_lv2_1) else '1';

    o_data_data_V_1_vld_in_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, currentState_load_reg_282, ap_block_pp0_stage0_11001)
    begin
        if (((currentState_load_reg_282 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            o_data_data_V_1_vld_in <= ap_const_logic_1;
        else 
            o_data_data_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    o_data_data_V_1_vld_out <= o_data_data_V_1_state(0);
    o_data_data_V_tmp_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_6_fu_239_p2),32));
    o_data_last_V_1_ack_in <= o_data_last_V_1_state(1);
    o_data_last_V_1_ack_out <= o_data_TREADY;

    o_data_last_V_1_data_out_assign_proc : process(o_data_last_V_1_payload_A, o_data_last_V_1_payload_B, o_data_last_V_1_sel)
    begin
        if ((o_data_last_V_1_sel = ap_const_logic_1)) then 
            o_data_last_V_1_data_out <= o_data_last_V_1_payload_B;
        else 
            o_data_last_V_1_data_out <= o_data_last_V_1_payload_A;
        end if; 
    end process;

    o_data_last_V_1_load_A <= (o_data_last_V_1_state_cmp_full and not(o_data_last_V_1_sel_wr));
    o_data_last_V_1_load_B <= (o_data_last_V_1_state_cmp_full and o_data_last_V_1_sel_wr);
    o_data_last_V_1_sel <= o_data_last_V_1_sel_rd;
    o_data_last_V_1_state_cmp_full <= '0' when (o_data_last_V_1_state = ap_const_lv2_1) else '1';

    o_data_last_V_1_vld_in_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, currentState_load_reg_282, ap_block_pp0_stage0_11001)
    begin
        if (((currentState_load_reg_282 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            o_data_last_V_1_vld_in <= ap_const_logic_1;
        else 
            o_data_last_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    o_data_last_V_1_vld_out <= o_data_last_V_1_state(0);
    start_V_read_read_fu_76_p2 <= start_V;
    tmp_4_fu_266_p2 <= std_logic_vector(unsigned(loadCount_V) + unsigned(ap_const_lv32_1));
    tmp_6_fu_239_p2 <= std_logic_vector(unsigned(phaseClass_V) + unsigned(ap_const_lv4_1));
end behav;
