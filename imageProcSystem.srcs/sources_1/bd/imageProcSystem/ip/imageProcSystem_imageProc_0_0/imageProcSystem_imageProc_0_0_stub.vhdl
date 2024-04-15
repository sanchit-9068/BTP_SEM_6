-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Apr  5 02:39:39 2024
-- Host        : Sanchitslaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_imageProc_0_0/imageProcSystem_imageProc_0_0_stub.vhdl
-- Design      : imageProcSystem_imageProc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity imageProcSystem_imageProc_0_0 is
  Port ( 
    axi_clk : in STD_LOGIC;
    axi_reset_n : in STD_LOGIC;
    i_data_valid : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_data_ready : out STD_LOGIC;
    o_data_valid : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_data_ready : in STD_LOGIC;
    o_intr : out STD_LOGIC
  );

end imageProcSystem_imageProc_0_0;

architecture stub of imageProcSystem_imageProc_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axi_clk,axi_reset_n,i_data_valid,i_data[7:0],o_data_ready,o_data_valid,o_data[7:0],i_data_ready,o_intr";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "imageProcessTop,Vivado 2018.2";
begin
end;
