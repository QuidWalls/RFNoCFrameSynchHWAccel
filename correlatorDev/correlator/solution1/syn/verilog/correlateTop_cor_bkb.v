// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1ns/1ps

module correlateTop_cor_bkb
#(parameter
    DataWidth    = 32,
    AddressWidth = 4,
    AddressRange = 16
)(
    input  wire                    clk,
    input  wire                    reset,
    input  wire [AddressWidth-1:0] address0,
    input  wire                    ce0,
    input  wire                    we0,
    input  wire [DataWidth-1:0]    d0,
    output wire [DataWidth-1:0]    q0
);
//------------------------Local signal-------------------
reg  [AddressRange-1:0] written = {AddressRange{1'b0}};
wire [DataWidth-1:0]    q0_ram;
wire [DataWidth-1:0]    q0_rom;
wire                    q0_sel;
reg  [0:0]              sel0_sr;
//------------------------Instantiation------------------
correlateTop_cor_bkb_ram correlateTop_cor_bkb_ram_u (
    .clk   ( clk ),
    .ce0   ( ce0 ),
    .addr0 ( address0 ),
    .we0   ( we0 ),
    .d0    ( d0 ),
    .q0    ( q0_ram )
);
//------------------------Body---------------------------
assign q0     = q0_sel? q0_ram : q0_rom;
assign q0_sel = sel0_sr[0];
assign q0_rom = 32'b00000000000000000000000000000000;

always @(posedge clk) begin
    if (reset)
        written <= 1'b0;
    else begin
        if (ce0 & we0) begin
            written[address0] <= 1'b1;
        end
    end
end

always @(posedge clk) begin
    if (ce0) begin
        sel0_sr[0] <= written[address0];
    end
end

endmodule
