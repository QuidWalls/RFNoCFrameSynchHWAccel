-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ItoZero is
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


architecture behav of ItoZero is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "ItoZero,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=1.397000,HLS_SYN_LAT=2,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=154,HLS_SYN_LUT=148}";
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
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";

    signal ap_rst_n_inv : STD_LOGIC;
    signal i_data_V_data_V_0_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_data_V_data_V_0_vld_in : STD_LOGIC;
    signal i_data_V_data_V_0_vld_out : STD_LOGIC;
    signal i_data_V_data_V_0_ack_in : STD_LOGIC;
    signal i_data_V_data_V_0_ack_out : STD_LOGIC;
    signal i_data_V_data_V_0_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal i_data_V_data_V_0_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal i_data_V_data_V_0_sel_rd : STD_LOGIC := '0';
    signal i_data_V_data_V_0_sel_wr : STD_LOGIC := '0';
    signal i_data_V_data_V_0_sel : STD_LOGIC;
    signal i_data_V_data_V_0_load_A : STD_LOGIC;
    signal i_data_V_data_V_0_load_B : STD_LOGIC;
    signal i_data_V_data_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal i_data_V_data_V_0_state_cmp_full : STD_LOGIC;
    signal i_data_V_last_V_0_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_data_V_last_V_0_vld_in : STD_LOGIC;
    signal i_data_V_last_V_0_vld_out : STD_LOGIC;
    signal i_data_V_last_V_0_ack_in : STD_LOGIC;
    signal i_data_V_last_V_0_ack_out : STD_LOGIC;
    signal i_data_V_last_V_0_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal i_data_V_last_V_0_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal i_data_V_last_V_0_sel_rd : STD_LOGIC := '0';
    signal i_data_V_last_V_0_sel_wr : STD_LOGIC := '0';
    signal i_data_V_last_V_0_sel : STD_LOGIC;
    signal i_data_V_last_V_0_load_A : STD_LOGIC;
    signal i_data_V_last_V_0_load_B : STD_LOGIC;
    signal i_data_V_last_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal i_data_V_last_V_0_state_cmp_full : STD_LOGIC;
    signal o_data_V_data_V_1_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal o_data_V_data_V_1_vld_in : STD_LOGIC;
    signal o_data_V_data_V_1_vld_out : STD_LOGIC;
    signal o_data_V_data_V_1_ack_in : STD_LOGIC;
    signal o_data_V_data_V_1_ack_out : STD_LOGIC;
    signal o_data_V_data_V_1_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal o_data_V_data_V_1_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal o_data_V_data_V_1_sel_rd : STD_LOGIC := '0';
    signal o_data_V_data_V_1_sel_wr : STD_LOGIC := '0';
    signal o_data_V_data_V_1_sel : STD_LOGIC;
    signal o_data_V_data_V_1_load_A : STD_LOGIC;
    signal o_data_V_data_V_1_load_B : STD_LOGIC;
    signal o_data_V_data_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal o_data_V_data_V_1_state_cmp_full : STD_LOGIC;
    signal o_data_V_last_V_1_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal o_data_V_last_V_1_vld_in : STD_LOGIC;
    signal o_data_V_last_V_1_vld_out : STD_LOGIC;
    signal o_data_V_last_V_1_ack_in : STD_LOGIC;
    signal o_data_V_last_V_1_ack_out : STD_LOGIC;
    signal o_data_V_last_V_1_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal o_data_V_last_V_1_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal o_data_V_last_V_1_sel_rd : STD_LOGIC := '0';
    signal o_data_V_last_V_1_sel_wr : STD_LOGIC := '0';
    signal o_data_V_last_V_1_sel : STD_LOGIC;
    signal o_data_V_last_V_1_load_A : STD_LOGIC;
    signal o_data_V_last_V_1_load_B : STD_LOGIC;
    signal o_data_V_last_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal o_data_V_last_V_1_state_cmp_full : STD_LOGIC;
    signal currentState : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal i_data_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal currentState_load_reg_110 : STD_LOGIC_VECTOR (0 downto 0);
    signal o_data_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_reg_pp0_iter1_currentState_load_reg_110 : STD_LOGIC_VECTOR (0 downto 0);
    signal start_V_read_read_fu_50_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal currentState_load_load_fu_74_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_fu_97_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00001001 : BOOLEAN;
    signal tmp_fu_93_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


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
                if ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then 
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
                if ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then 
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_const_logic_1) and (ap_const_lv1_0 = currentState_load_load_fu_74_p1) and (ap_const_lv1_1 = start_V_read_read_fu_50_p2))) then 
                    currentState <= ap_const_lv1_1;
                end if; 
            end if;
        end if;
    end process;


    i_data_V_data_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_V_data_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = i_data_V_data_V_0_ack_out) and (ap_const_logic_1 = i_data_V_data_V_0_vld_out))) then 
                                        i_data_V_data_V_0_sel_rd <= not(i_data_V_data_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    i_data_V_data_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_V_data_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = i_data_V_data_V_0_vld_in) and (ap_const_logic_1 = i_data_V_data_V_0_ack_in))) then 
                                        i_data_V_data_V_0_sel_wr <= not(i_data_V_data_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    i_data_V_data_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_V_data_V_0_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = i_data_V_data_V_0_vld_in) and (ap_const_logic_1 = i_data_V_data_V_0_ack_out) and (i_data_V_data_V_0_state = ap_const_lv2_3)) or ((ap_const_logic_0 = i_data_V_data_V_0_vld_in) and (i_data_V_data_V_0_state = ap_const_lv2_2)))) then 
                    i_data_V_data_V_0_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = i_data_V_data_V_0_vld_in) and (ap_const_logic_0 = i_data_V_data_V_0_ack_out) and (i_data_V_data_V_0_state = ap_const_lv2_3)) or ((ap_const_logic_0 = i_data_V_data_V_0_ack_out) and (i_data_V_data_V_0_state = ap_const_lv2_1)))) then 
                    i_data_V_data_V_0_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = i_data_V_data_V_0_vld_in) and (i_data_V_data_V_0_state = ap_const_lv2_2)) or ((ap_const_logic_1 = i_data_V_data_V_0_ack_out) and (i_data_V_data_V_0_state = ap_const_lv2_1)) or ((i_data_V_data_V_0_state = ap_const_lv2_3) and not(((ap_const_logic_1 = i_data_V_data_V_0_vld_in) and (ap_const_logic_0 = i_data_V_data_V_0_ack_out))) and not(((ap_const_logic_0 = i_data_V_data_V_0_vld_in) and (ap_const_logic_1 = i_data_V_data_V_0_ack_out)))))) then 
                    i_data_V_data_V_0_state <= ap_const_lv2_3;
                else 
                    i_data_V_data_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    i_data_V_last_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_V_last_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = i_data_V_last_V_0_ack_out) and (ap_const_logic_1 = i_data_V_last_V_0_vld_out))) then 
                                        i_data_V_last_V_0_sel_rd <= not(i_data_V_last_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    i_data_V_last_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_V_last_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = i_data_V_last_V_0_vld_in) and (ap_const_logic_1 = i_data_V_last_V_0_ack_in))) then 
                                        i_data_V_last_V_0_sel_wr <= not(i_data_V_last_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    i_data_V_last_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                i_data_V_last_V_0_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = i_data_V_last_V_0_vld_in) and (ap_const_logic_1 = i_data_V_last_V_0_ack_out) and (ap_const_lv2_3 = i_data_V_last_V_0_state)) or ((ap_const_logic_0 = i_data_V_last_V_0_vld_in) and (ap_const_lv2_2 = i_data_V_last_V_0_state)))) then 
                    i_data_V_last_V_0_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = i_data_V_last_V_0_vld_in) and (ap_const_logic_0 = i_data_V_last_V_0_ack_out) and (ap_const_lv2_3 = i_data_V_last_V_0_state)) or ((ap_const_logic_0 = i_data_V_last_V_0_ack_out) and (ap_const_lv2_1 = i_data_V_last_V_0_state)))) then 
                    i_data_V_last_V_0_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = i_data_V_last_V_0_vld_in) and (ap_const_lv2_2 = i_data_V_last_V_0_state)) or ((ap_const_logic_1 = i_data_V_last_V_0_ack_out) and (ap_const_lv2_1 = i_data_V_last_V_0_state)) or ((ap_const_lv2_3 = i_data_V_last_V_0_state) and not(((ap_const_logic_1 = i_data_V_last_V_0_vld_in) and (ap_const_logic_0 = i_data_V_last_V_0_ack_out))) and not(((ap_const_logic_0 = i_data_V_last_V_0_vld_in) and (ap_const_logic_1 = i_data_V_last_V_0_ack_out)))))) then 
                    i_data_V_last_V_0_state <= ap_const_lv2_3;
                else 
                    i_data_V_last_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    o_data_V_data_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_V_data_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = o_data_V_data_V_1_ack_out) and (ap_const_logic_1 = o_data_V_data_V_1_vld_out))) then 
                                        o_data_V_data_V_1_sel_rd <= not(o_data_V_data_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    o_data_V_data_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_V_data_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = o_data_V_data_V_1_vld_in) and (ap_const_logic_1 = o_data_V_data_V_1_ack_in))) then 
                                        o_data_V_data_V_1_sel_wr <= not(o_data_V_data_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    o_data_V_data_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_V_data_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = o_data_V_data_V_1_vld_in) and (ap_const_logic_1 = o_data_V_data_V_1_ack_out) and (ap_const_lv2_3 = o_data_V_data_V_1_state)) or ((ap_const_logic_0 = o_data_V_data_V_1_vld_in) and (ap_const_lv2_2 = o_data_V_data_V_1_state)))) then 
                    o_data_V_data_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = o_data_V_data_V_1_vld_in) and (ap_const_logic_0 = o_data_V_data_V_1_ack_out) and (ap_const_lv2_3 = o_data_V_data_V_1_state)) or ((ap_const_logic_0 = o_data_V_data_V_1_ack_out) and (ap_const_lv2_1 = o_data_V_data_V_1_state)))) then 
                    o_data_V_data_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = o_data_V_data_V_1_vld_in) and (ap_const_lv2_2 = o_data_V_data_V_1_state)) or ((ap_const_logic_1 = o_data_V_data_V_1_ack_out) and (ap_const_lv2_1 = o_data_V_data_V_1_state)) or ((ap_const_lv2_3 = o_data_V_data_V_1_state) and not(((ap_const_logic_1 = o_data_V_data_V_1_vld_in) and (ap_const_logic_0 = o_data_V_data_V_1_ack_out))) and not(((ap_const_logic_0 = o_data_V_data_V_1_vld_in) and (ap_const_logic_1 = o_data_V_data_V_1_ack_out)))))) then 
                    o_data_V_data_V_1_state <= ap_const_lv2_3;
                else 
                    o_data_V_data_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    o_data_V_last_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_V_last_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = o_data_V_last_V_1_ack_out) and (ap_const_logic_1 = o_data_V_last_V_1_vld_out))) then 
                                        o_data_V_last_V_1_sel_rd <= not(o_data_V_last_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    o_data_V_last_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_V_last_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = o_data_V_last_V_1_vld_in) and (ap_const_logic_1 = o_data_V_last_V_1_ack_in))) then 
                                        o_data_V_last_V_1_sel_wr <= not(o_data_V_last_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    o_data_V_last_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                o_data_V_last_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = o_data_V_last_V_1_vld_in) and (ap_const_logic_1 = o_data_V_last_V_1_ack_out) and (ap_const_lv2_3 = o_data_V_last_V_1_state)) or ((ap_const_logic_0 = o_data_V_last_V_1_vld_in) and (ap_const_lv2_2 = o_data_V_last_V_1_state)))) then 
                    o_data_V_last_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = o_data_V_last_V_1_vld_in) and (ap_const_logic_0 = o_data_V_last_V_1_ack_out) and (ap_const_lv2_3 = o_data_V_last_V_1_state)) or ((ap_const_logic_0 = o_data_V_last_V_1_ack_out) and (ap_const_lv2_1 = o_data_V_last_V_1_state)))) then 
                    o_data_V_last_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = o_data_V_last_V_1_vld_in) and (ap_const_lv2_2 = o_data_V_last_V_1_state)) or ((ap_const_logic_1 = o_data_V_last_V_1_ack_out) and (ap_const_lv2_1 = o_data_V_last_V_1_state)) or ((ap_const_lv2_3 = o_data_V_last_V_1_state) and not(((ap_const_logic_1 = o_data_V_last_V_1_vld_in) and (ap_const_logic_0 = o_data_V_last_V_1_ack_out))) and not(((ap_const_logic_0 = o_data_V_last_V_1_vld_in) and (ap_const_logic_1 = o_data_V_last_V_1_ack_out)))))) then 
                    o_data_V_last_V_1_state <= ap_const_lv2_3;
                else 
                    o_data_V_last_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_currentState_load_reg_110 <= currentState_load_reg_110;
                currentState_load_reg_110 <= currentState;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = i_data_V_data_V_0_load_A)) then
                i_data_V_data_V_0_payload_A <= i_data_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = i_data_V_data_V_0_load_B)) then
                i_data_V_data_V_0_payload_B <= i_data_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = i_data_V_last_V_0_load_A)) then
                i_data_V_last_V_0_payload_A <= i_data_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = i_data_V_last_V_0_load_B)) then
                i_data_V_last_V_0_payload_B <= i_data_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = o_data_V_data_V_1_load_A)) then
                o_data_V_data_V_1_payload_A <= p_Result_s_fu_97_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = o_data_V_data_V_1_load_B)) then
                o_data_V_data_V_1_payload_B <= p_Result_s_fu_97_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = o_data_V_last_V_1_load_A)) then
                o_data_V_last_V_1_payload_A <= i_data_V_last_V_0_data_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = o_data_V_last_V_1_load_B)) then
                o_data_V_last_V_1_payload_B <= i_data_V_last_V_0_data_out;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_flag00011011, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_flag00001001_assign_proc : process(i_data_V_data_V_0_vld_out, o_data_V_data_V_1_ack_in, o_data_V_last_V_1_ack_in, ap_enable_reg_pp0_iter1, currentState_load_reg_110, ap_enable_reg_pp0_iter2)
    begin
                ap_block_pp0_stage0_flag00001001 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_1 = currentState_load_reg_110) and (ap_const_logic_0 = i_data_V_data_V_0_vld_out)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and ((ap_const_logic_0 = o_data_V_data_V_1_ack_in) or (ap_const_logic_0 = o_data_V_last_V_1_ack_in))));
    end process;


    ap_block_pp0_stage0_flag00011001_assign_proc : process(i_data_V_data_V_0_vld_out, o_data_V_data_V_1_ack_in, o_data_V_last_V_1_ack_in, ap_enable_reg_pp0_iter1, currentState_load_reg_110, ap_enable_reg_pp0_iter2, ap_block_state2_io, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_flag00011001 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (((ap_const_lv1_1 = currentState_load_reg_110) and (ap_const_logic_0 = i_data_V_data_V_0_vld_out)) or (ap_const_boolean_1 = ap_block_state2_io))) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and ((ap_const_logic_0 = o_data_V_data_V_1_ack_in) or (ap_const_logic_0 = o_data_V_last_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state3_io))));
    end process;


    ap_block_pp0_stage0_flag00011011_assign_proc : process(i_data_V_data_V_0_vld_out, o_data_V_data_V_1_ack_in, o_data_V_last_V_1_ack_in, ap_enable_reg_pp0_iter1, currentState_load_reg_110, ap_enable_reg_pp0_iter2, ap_block_state2_io, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_flag00011011 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (((ap_const_lv1_1 = currentState_load_reg_110) and (ap_const_logic_0 = i_data_V_data_V_0_vld_out)) or (ap_const_boolean_1 = ap_block_state2_io))) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and ((ap_const_logic_0 = o_data_V_data_V_1_ack_in) or (ap_const_logic_0 = o_data_V_last_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state3_io))));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_io_assign_proc : process(o_data_V_data_V_1_ack_in, currentState_load_reg_110)
    begin
                ap_block_state2_io <= ((ap_const_lv1_1 = currentState_load_reg_110) and (ap_const_logic_0 = o_data_V_data_V_1_ack_in));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(i_data_V_data_V_0_vld_out, currentState_load_reg_110)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((ap_const_lv1_1 = currentState_load_reg_110) and (ap_const_logic_0 = i_data_V_data_V_0_vld_out));
    end process;


    ap_block_state3_io_assign_proc : process(o_data_V_data_V_1_ack_in, ap_reg_pp0_iter1_currentState_load_reg_110)
    begin
                ap_block_state3_io <= ((ap_const_lv1_1 = ap_reg_pp0_iter1_currentState_load_reg_110) and (ap_const_logic_0 = o_data_V_data_V_1_ack_in));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(o_data_V_data_V_1_ack_in, o_data_V_last_V_1_ack_in)
    begin
                ap_block_state3_pp0_stage0_iter2 <= ((ap_const_logic_0 = o_data_V_data_V_1_ack_in) or (ap_const_logic_0 = o_data_V_last_V_1_ack_in));
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_logic_0 = ap_const_logic_1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2))) then 
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

    currentState_load_load_fu_74_p1 <= currentState;

    i_data_TDATA_blk_n_assign_proc : process(i_data_V_data_V_0_state, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, currentState_load_reg_110)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_lv1_1 = currentState_load_reg_110))) then 
            i_data_TDATA_blk_n <= i_data_V_data_V_0_state(0);
        else 
            i_data_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    i_data_TREADY <= i_data_V_last_V_0_state(1);
    i_data_V_data_V_0_ack_in <= i_data_V_data_V_0_state(1);

    i_data_V_data_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, currentState_load_reg_110, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_1 = currentState_load_reg_110) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            i_data_V_data_V_0_ack_out <= ap_const_logic_1;
        else 
            i_data_V_data_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    i_data_V_data_V_0_data_out_assign_proc : process(i_data_V_data_V_0_payload_A, i_data_V_data_V_0_payload_B, i_data_V_data_V_0_sel)
    begin
        if ((ap_const_logic_1 = i_data_V_data_V_0_sel)) then 
            i_data_V_data_V_0_data_out <= i_data_V_data_V_0_payload_B;
        else 
            i_data_V_data_V_0_data_out <= i_data_V_data_V_0_payload_A;
        end if; 
    end process;

    i_data_V_data_V_0_load_A <= (i_data_V_data_V_0_state_cmp_full and not(i_data_V_data_V_0_sel_wr));
    i_data_V_data_V_0_load_B <= (i_data_V_data_V_0_sel_wr and i_data_V_data_V_0_state_cmp_full);
    i_data_V_data_V_0_sel <= i_data_V_data_V_0_sel_rd;
    i_data_V_data_V_0_state_cmp_full <= '0' when (i_data_V_data_V_0_state = ap_const_lv2_1) else '1';
    i_data_V_data_V_0_vld_in <= i_data_TVALID;
    i_data_V_data_V_0_vld_out <= i_data_V_data_V_0_state(0);
    i_data_V_last_V_0_ack_in <= i_data_V_last_V_0_state(1);

    i_data_V_last_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, currentState_load_reg_110, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_1 = currentState_load_reg_110) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            i_data_V_last_V_0_ack_out <= ap_const_logic_1;
        else 
            i_data_V_last_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    i_data_V_last_V_0_data_out_assign_proc : process(i_data_V_last_V_0_payload_A, i_data_V_last_V_0_payload_B, i_data_V_last_V_0_sel)
    begin
        if ((ap_const_logic_1 = i_data_V_last_V_0_sel)) then 
            i_data_V_last_V_0_data_out <= i_data_V_last_V_0_payload_B;
        else 
            i_data_V_last_V_0_data_out <= i_data_V_last_V_0_payload_A;
        end if; 
    end process;

    i_data_V_last_V_0_load_A <= (i_data_V_last_V_0_state_cmp_full and not(i_data_V_last_V_0_sel_wr));
    i_data_V_last_V_0_load_B <= (i_data_V_last_V_0_sel_wr and i_data_V_last_V_0_state_cmp_full);
    i_data_V_last_V_0_sel <= i_data_V_last_V_0_sel_rd;
    i_data_V_last_V_0_state_cmp_full <= '0' when (i_data_V_last_V_0_state = ap_const_lv2_1) else '1';
    i_data_V_last_V_0_vld_in <= i_data_TVALID;
    i_data_V_last_V_0_vld_out <= i_data_V_last_V_0_state(0);
    o_data_TDATA <= o_data_V_data_V_1_data_out;

    o_data_TDATA_blk_n_assign_proc : process(o_data_V_data_V_1_state, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, currentState_load_reg_110, ap_enable_reg_pp0_iter2, ap_reg_pp0_iter1_currentState_load_reg_110)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_lv1_1 = currentState_load_reg_110)) or ((ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_1 = ap_reg_pp0_iter1_currentState_load_reg_110)))) then 
            o_data_TDATA_blk_n <= o_data_V_data_V_1_state(1);
        else 
            o_data_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    o_data_TLAST <= o_data_V_last_V_1_data_out;
    o_data_TVALID <= o_data_V_last_V_1_state(0);
    o_data_V_data_V_1_ack_in <= o_data_V_data_V_1_state(1);
    o_data_V_data_V_1_ack_out <= o_data_TREADY;

    o_data_V_data_V_1_data_out_assign_proc : process(o_data_V_data_V_1_payload_A, o_data_V_data_V_1_payload_B, o_data_V_data_V_1_sel)
    begin
        if ((ap_const_logic_1 = o_data_V_data_V_1_sel)) then 
            o_data_V_data_V_1_data_out <= o_data_V_data_V_1_payload_B;
        else 
            o_data_V_data_V_1_data_out <= o_data_V_data_V_1_payload_A;
        end if; 
    end process;

    o_data_V_data_V_1_load_A <= (o_data_V_data_V_1_state_cmp_full and not(o_data_V_data_V_1_sel_wr));
    o_data_V_data_V_1_load_B <= (o_data_V_data_V_1_sel_wr and o_data_V_data_V_1_state_cmp_full);
    o_data_V_data_V_1_sel <= o_data_V_data_V_1_sel_rd;
    o_data_V_data_V_1_state_cmp_full <= '0' when (o_data_V_data_V_1_state = ap_const_lv2_1) else '1';

    o_data_V_data_V_1_vld_in_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, currentState_load_reg_110, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_1 = currentState_load_reg_110) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            o_data_V_data_V_1_vld_in <= ap_const_logic_1;
        else 
            o_data_V_data_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    o_data_V_data_V_1_vld_out <= o_data_V_data_V_1_state(0);
    o_data_V_last_V_1_ack_in <= o_data_V_last_V_1_state(1);
    o_data_V_last_V_1_ack_out <= o_data_TREADY;

    o_data_V_last_V_1_data_out_assign_proc : process(o_data_V_last_V_1_payload_A, o_data_V_last_V_1_payload_B, o_data_V_last_V_1_sel)
    begin
        if ((ap_const_logic_1 = o_data_V_last_V_1_sel)) then 
            o_data_V_last_V_1_data_out <= o_data_V_last_V_1_payload_B;
        else 
            o_data_V_last_V_1_data_out <= o_data_V_last_V_1_payload_A;
        end if; 
    end process;

    o_data_V_last_V_1_load_A <= (o_data_V_last_V_1_state_cmp_full and not(o_data_V_last_V_1_sel_wr));
    o_data_V_last_V_1_load_B <= (o_data_V_last_V_1_sel_wr and o_data_V_last_V_1_state_cmp_full);
    o_data_V_last_V_1_sel <= o_data_V_last_V_1_sel_rd;
    o_data_V_last_V_1_state_cmp_full <= '0' when (o_data_V_last_V_1_state = ap_const_lv2_1) else '1';

    o_data_V_last_V_1_vld_in_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, currentState_load_reg_110, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_1 = currentState_load_reg_110) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            o_data_V_last_V_1_vld_in <= ap_const_logic_1;
        else 
            o_data_V_last_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    o_data_V_last_V_1_vld_out <= o_data_V_last_V_1_state(0);
    p_Result_s_fu_97_p3 <= (ap_const_lv16_0 & tmp_fu_93_p1);
    start_V_read_read_fu_50_p2 <= start_V;
    tmp_fu_93_p1 <= i_data_V_data_V_0_data_out(16 - 1 downto 0);
end behav;
