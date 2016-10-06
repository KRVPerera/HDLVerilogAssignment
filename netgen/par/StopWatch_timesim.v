////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: StopWatch_timesim.v
// /___/   /\     Timestamp: Thu Oct 06 13:23:08 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf StopWatch.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim StopWatch.ncd StopWatch_timesim.v 
// Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
// Input file	: StopWatch.ncd
// Output file	: D:\HDL\ISE\StopWatchAssignment\netgen\par\StopWatch_timesim.v
// # of Modules	: 1
// Design Name	: StopWatch
// Xilinx        : D:\Programs\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module StopWatch (
  clk, stop, start, dp, reset, an, segment
);
  input clk;
  input stop;
  input start;
  output dp;
  input reset;
  output [3 : 0] an;
  output [6 : 0] segment;
  wire \bcds2/Mrom_segment4_0 ;
  wire \bcds3/Mrom_segment4_0 ;
  wire \bcds0/Mrom_segment4_0 ;
  wire \bcds1/Mrom_segment4_0 ;
  wire \bcds2/Mrom_segment5_0 ;
  wire \bcds3/Mrom_segment5_0 ;
  wire \bcds0/Mrom_segment5_0 ;
  wire \bcds1/Mrom_segment5_0 ;
  wire \bcds2/Mrom_segment6_0 ;
  wire \bcds3/Mrom_segment6_0 ;
  wire \bcds0/Mrom_segment6_0 ;
  wire \bcds1/Mrom_segment6_0 ;
  wire \digi_module_2/c_out_885 ;
  wire reset_IBUF_886;
  wire \digi_module_3/c_out_889 ;
  wire \digi_module_3/Mcount_digit_xor<3>1_SW0/O ;
  wire \digi_module_1/c_out_893 ;
  wire \digi_module_2/c_out_mux0000_SW0/O ;
  wire \digi_module_2/Mcount_digit_xor<3>1_SW0/O ;
  wire \digi_module_0/c_out_900 ;
  wire \digi_module_1/Mcount_digit_xor<3>1_SW0/O ;
  wire \digi_module_3/c_out_mux0000_SW0/O ;
  wire \milispulse/msclock_907 ;
  wire \digi_module_0/Mcount_digit_xor<3>1_SW0/O ;
  wire \digi_module_0/c_out_mux0000_SW0/O ;
  wire \digi_module_1/c_out_mux0000_SW0/O ;
  wire \bcds0/Mrom_segment3_0 ;
  wire \bcds2/Mrom_segment3_0 ;
  wire \bcds1/Mrom_segment3_0 ;
  wire \bcds3/Mrom_segment3_0 ;
  wire \bcds1/Mrom_segment1_0 ;
  wire \bcds2/Mrom_segment_0 ;
  wire \milispulse/count_and00001_wg_cy[7] ;
  wire clk_BUFGP;
  wire \bcds0/Mrom_segment1_0 ;
  wire \bcds3/Mrom_segment2_0 ;
  wire \bcds1/Mrom_segment_0 ;
  wire \bcds1/Mrom_segment2_0 ;
  wire \bcds3/Mrom_segment_0 ;
  wire \milispulse/count_and0000_0 ;
  wire \bcds0/Mrom_segment2_0 ;
  wire \bcds0/Mrom_segment_0 ;
  wire \bcds2/Mrom_segment1_0 ;
  wire \bcds2/Mrom_segment2_0 ;
  wire \bcds3/Mrom_segment1_0 ;
  wire \milispulse/Mcount_count_cy[1] ;
  wire \milispulse/Mcount_count_cy[3] ;
  wire \milispulse/Mcount_count_cy[5] ;
  wire \milispulse/Mcount_count_cy[7] ;
  wire \milispulse/Mcount_count_cy[9] ;
  wire \milispulse/Mcount_count_cy[11] ;
  wire \milispulse/Mcount_count_cy[13] ;
  wire \milispulse/Mcount_count_cy[15] ;
  wire \milispulse/Mcount_count_cy[17] ;
  wire \milispulse/Mcount_count_cy[19] ;
  wire \milispulse/Mcount_count_cy[21] ;
  wire \milispulse/Mcount_count_cy[23] ;
  wire \milispulse/Mcount_count_cy[25] ;
  wire \milispulse/Mcount_count_cy[27] ;
  wire \segment_4_OBUF/F5MUX_1041 ;
  wire Mmux_segment_34_1039;
  wire \segment_4_OBUF/BXINV_1033 ;
  wire Mmux_segment_44_1031;
  wire \segment_5_OBUF/F5MUX_1066 ;
  wire Mmux_segment_35_1064;
  wire \segment_5_OBUF/BXINV_1058 ;
  wire Mmux_segment_45_1056;
  wire \segment_6_OBUF/F5MUX_1091 ;
  wire Mmux_segment_36_1089;
  wire \segment_6_OBUF/BXINV_1083 ;
  wire Mmux_segment_46_1081;
  wire \digi_module_3/digit<3>/DXMUX_1121 ;
  wire \digi_module_3/Mcount_digit3 ;
  wire \digi_module_3/Mcount_digit_xor<3>1_SW0/O_pack_2 ;
  wire \digi_module_3/digit<3>/CLKINV_1103 ;
  wire \digi_module_2/c_out/DXMUX_1156 ;
  wire \digi_module_2/c_out_mux0000_1153 ;
  wire \digi_module_2/c_out_mux0000_SW0/O_pack_2 ;
  wire \digi_module_2/c_out/CLKINV_1138 ;
  wire \digi_module_2/digit<3>/DXMUX_1191 ;
  wire \digi_module_2/Mcount_digit3 ;
  wire \digi_module_2/Mcount_digit_xor<3>1_SW0/O_pack_2 ;
  wire \digi_module_2/digit<3>/CLKINV_1173 ;
  wire \digi_module_1/digit<3>/DXMUX_1226 ;
  wire \digi_module_1/Mcount_digit3 ;
  wire \digi_module_1/Mcount_digit_xor<3>1_SW0/O_pack_2 ;
  wire \digi_module_1/digit<3>/CLKINV_1208 ;
  wire \digi_module_3/c_out/DXMUX_1261 ;
  wire \digi_module_3/c_out_mux0000_1258 ;
  wire \digi_module_3/c_out_mux0000_SW0/O_pack_2 ;
  wire \digi_module_3/c_out/CLKINV_1243 ;
  wire \digi_module_0/digit<3>/DXMUX_1296 ;
  wire \digi_module_0/Mcount_digit3 ;
  wire \digi_module_0/Mcount_digit_xor<3>1_SW0/O_pack_2 ;
  wire \digi_module_0/digit<3>/CLKINV_1278 ;
  wire \digi_module_0/c_out/DXMUX_1331 ;
  wire \digi_module_0/c_out_mux0000_1328 ;
  wire \digi_module_0/c_out_mux0000_SW0/O_pack_2 ;
  wire \digi_module_0/c_out/CLKINV_1313 ;
  wire \digi_module_1/c_out/FFX/RST ;
  wire \digi_module_1/c_out/DXMUX_1366 ;
  wire \digi_module_1/c_out_mux0000_1363 ;
  wire \digi_module_1/c_out_mux0000_SW0/O_pack_2 ;
  wire \digi_module_1/c_out/CLKINV_1348 ;
  wire \digi_module_0/digit<1>/DXMUX_1408 ;
  wire \digi_module_0/Mcount_digit1 ;
  wire \digi_module_0/digit<1>/DYMUX_1393 ;
  wire \digi_module_0/Mcount_digit ;
  wire \digi_module_0/digit<1>/SRINV_1383 ;
  wire \digi_module_0/digit<1>/CLKINV_1382 ;
  wire \bcds0/Mrom_segment3 ;
  wire \digi_module_0/digit<2>/DYMUX_1436 ;
  wire \digi_module_0/Mcount_digit2 ;
  wire \digi_module_0/digit<2>/CLKINV_1427 ;
  wire \digi_module_2/digit<1>/DXMUX_1485 ;
  wire \digi_module_2/Mcount_digit1 ;
  wire \digi_module_2/digit<1>/DYMUX_1470 ;
  wire \digi_module_2/Mcount_digit ;
  wire \digi_module_2/digit<1>/SRINV_1460 ;
  wire \digi_module_2/digit<1>/CLKINV_1459 ;
  wire \bcds2/Mrom_segment3 ;
  wire \digi_module_2/digit<2>/DYMUX_1513 ;
  wire \digi_module_2/Mcount_digit2 ;
  wire \digi_module_2/digit<2>/CLKINV_1504 ;
  wire \digi_module_1/digit<1>/DXMUX_1562 ;
  wire \digi_module_1/Mcount_digit1 ;
  wire \digi_module_1/digit<1>/DYMUX_1547 ;
  wire \digi_module_1/Mcount_digit ;
  wire \digi_module_1/digit<1>/SRINV_1537 ;
  wire \digi_module_1/digit<1>/CLKINV_1536 ;
  wire \bcds1/Mrom_segment3 ;
  wire \digi_module_1/digit<2>/DYMUX_1590 ;
  wire \digi_module_1/Mcount_digit2 ;
  wire \digi_module_1/digit<2>/CLKINV_1581 ;
  wire \digi_module_3/digit<1>/DXMUX_1639 ;
  wire \digi_module_3/Mcount_digit1 ;
  wire \digi_module_3/digit<1>/DYMUX_1624 ;
  wire \digi_module_3/Mcount_digit ;
  wire \digi_module_3/digit<1>/SRINV_1614 ;
  wire \digi_module_3/digit<1>/CLKINV_1613 ;
  wire \bcds3/Mrom_segment3 ;
  wire \digi_module_3/digit<2>/DYMUX_1667 ;
  wire \digi_module_3/Mcount_digit2 ;
  wire \digi_module_3/digit<2>/CLKINV_1658 ;
  wire \bcds2/Mrom_segment6 ;
  wire \bcds2/Mrom_segment4 ;
  wire \bcds1/Mrom_segment6 ;
  wire \bcds1/Mrom_segment1_1719 ;
  wire \bcds2/Mrom_segment ;
  wire \bcds2/Mrom_segment5 ;
  wire \milispulse/msclock/DYMUX_1760 ;
  wire \milispulse/msclock/CLKINV_1758 ;
  wire \milispulse/msclock/CEINV_1757 ;
  wire \bcds1/Mrom_segment5 ;
  wire \bcds1/Mrom_segment4 ;
  wire \bcds0/Mrom_segment6 ;
  wire \bcds0/Mrom_segment1_1803 ;
  wire \bcds3/Mrom_segment6 ;
  wire \bcds3/Mrom_segment2 ;
  wire \bcds0/Mrom_segment5 ;
  wire \bcds0/Mrom_segment4 ;
  wire \bcds1/Mrom_segment ;
  wire \bcds1/Mrom_segment2 ;
  wire \bcds3/Mrom_segment5 ;
  wire \bcds3/Mrom_segment ;
  wire \milispulse/started<0>/DYMUX_1918 ;
  wire \milispulse/started<0>/BYINV_1917 ;
  wire \milispulse/started<0>/SRINV_1916 ;
  wire \milispulse/started<0>/CLKINV_1915 ;
  wire \milispulse/started<0>/CEINV_1914 ;
  wire \milispulse/count_and0000 ;
  wire an_1_OBUF_1957;
  wire an_0_OBUF_1948;
  wire an_3_OBUF_1981;
  wire an_2_OBUF_1972;
  wire \bcds0/Mrom_segment2 ;
  wire \bcds0/Mrom_segment ;
  wire \bcds2/Mrom_segment1_2029 ;
  wire \bcds2/Mrom_segment2 ;
  wire \bcds3/Mrom_segment4 ;
  wire \bcds3/Mrom_segment1_2046 ;
  wire \milispulse/count<0>/DXMUX_2104 ;
  wire \milispulse/count<0>/XORF_2102 ;
  wire \milispulse/count<0>/LOGIC_ONE_2101 ;
  wire \milispulse/count<0>/CYINIT_2100 ;
  wire \milispulse/count<0>/CYSELF_2091 ;
  wire \milispulse/count<0>/BXINV_2089 ;
  wire \milispulse/count<0>/DYMUX_2083 ;
  wire \milispulse/count<0>/XORG_2081 ;
  wire \milispulse/count<0>/CYMUXG_2080 ;
  wire \milispulse/Mcount_count_cy[0] ;
  wire \milispulse/count<0>/LOGIC_ZERO_2078 ;
  wire \milispulse/count<0>/CYSELG_2069 ;
  wire \milispulse/count<0>/G ;
  wire \milispulse/count<0>/SRINV_2067 ;
  wire \milispulse/count<0>/CLKINV_2066 ;
  wire \milispulse/count<0>/CEINV_2065 ;
  wire \milispulse/count<2>/DXMUX_2160 ;
  wire \milispulse/count<2>/XORF_2158 ;
  wire \milispulse/count<2>/CYINIT_2157 ;
  wire \milispulse/count<2>/F ;
  wire \milispulse/count<2>/DYMUX_2142 ;
  wire \milispulse/count<2>/XORG_2140 ;
  wire \milispulse/Mcount_count_cy[2] ;
  wire \milispulse/count<2>/CYSELF_2138 ;
  wire \milispulse/count<2>/CYMUXFAST_2137 ;
  wire \milispulse/count<2>/CYAND_2136 ;
  wire \milispulse/count<2>/FASTCARRY_2135 ;
  wire \milispulse/count<2>/CYMUXG2_2134 ;
  wire \milispulse/count<2>/CYMUXF2_2133 ;
  wire \milispulse/count<2>/LOGIC_ZERO_2132 ;
  wire \milispulse/count<2>/CYSELG_2123 ;
  wire \milispulse/count<2>/G ;
  wire \milispulse/count<2>/SRINV_2121 ;
  wire \milispulse/count<2>/CLKINV_2120 ;
  wire \milispulse/count<2>/CEINV_2119 ;
  wire \milispulse/count<4>/DXMUX_2216 ;
  wire \milispulse/count<4>/XORF_2214 ;
  wire \milispulse/count<4>/CYINIT_2213 ;
  wire \milispulse/count<4>/F ;
  wire \milispulse/count<4>/DYMUX_2198 ;
  wire \milispulse/count<4>/XORG_2196 ;
  wire \milispulse/Mcount_count_cy[4] ;
  wire \milispulse/count<4>/CYSELF_2194 ;
  wire \milispulse/count<4>/CYMUXFAST_2193 ;
  wire \milispulse/count<4>/CYAND_2192 ;
  wire \milispulse/count<4>/FASTCARRY_2191 ;
  wire \milispulse/count<4>/CYMUXG2_2190 ;
  wire \milispulse/count<4>/CYMUXF2_2189 ;
  wire \milispulse/count<4>/LOGIC_ZERO_2188 ;
  wire \milispulse/count<4>/CYSELG_2179 ;
  wire \milispulse/count<4>/G ;
  wire \milispulse/count<4>/SRINV_2177 ;
  wire \milispulse/count<4>/CLKINV_2176 ;
  wire \milispulse/count<4>/CEINV_2175 ;
  wire \milispulse/count<6>/DXMUX_2272 ;
  wire \milispulse/count<6>/XORF_2270 ;
  wire \milispulse/count<6>/CYINIT_2269 ;
  wire \milispulse/count<6>/F ;
  wire \milispulse/count<6>/DYMUX_2254 ;
  wire \milispulse/count<6>/XORG_2252 ;
  wire \milispulse/Mcount_count_cy[6] ;
  wire \milispulse/count<6>/CYSELF_2250 ;
  wire \milispulse/count<6>/CYMUXFAST_2249 ;
  wire \milispulse/count<6>/CYAND_2248 ;
  wire \milispulse/count<6>/FASTCARRY_2247 ;
  wire \milispulse/count<6>/CYMUXG2_2246 ;
  wire \milispulse/count<6>/CYMUXF2_2245 ;
  wire \milispulse/count<6>/LOGIC_ZERO_2244 ;
  wire \milispulse/count<6>/CYSELG_2235 ;
  wire \milispulse/count<6>/G ;
  wire \milispulse/count<6>/SRINV_2233 ;
  wire \milispulse/count<6>/CLKINV_2232 ;
  wire \milispulse/count<6>/CEINV_2231 ;
  wire \milispulse/count<8>/DXMUX_2328 ;
  wire \milispulse/count<8>/XORF_2326 ;
  wire \milispulse/count<8>/CYINIT_2325 ;
  wire \milispulse/count<8>/F ;
  wire \milispulse/count<8>/DYMUX_2310 ;
  wire \milispulse/count<8>/XORG_2308 ;
  wire \milispulse/Mcount_count_cy[8] ;
  wire \milispulse/count<8>/CYSELF_2306 ;
  wire \milispulse/count<8>/CYMUXFAST_2305 ;
  wire \milispulse/count<8>/CYAND_2304 ;
  wire \milispulse/count<8>/FASTCARRY_2303 ;
  wire \milispulse/count<8>/CYMUXG2_2302 ;
  wire \milispulse/count<8>/CYMUXF2_2301 ;
  wire \milispulse/count<8>/LOGIC_ZERO_2300 ;
  wire \milispulse/count<8>/CYSELG_2291 ;
  wire \milispulse/count<8>/G ;
  wire \milispulse/count<8>/SRINV_2289 ;
  wire \milispulse/count<8>/CLKINV_2288 ;
  wire \milispulse/count<8>/CEINV_2287 ;
  wire \milispulse/count<10>/DXMUX_2384 ;
  wire \milispulse/count<10>/XORF_2382 ;
  wire \milispulse/count<10>/CYINIT_2381 ;
  wire \milispulse/count<10>/F ;
  wire \milispulse/count<10>/DYMUX_2366 ;
  wire \milispulse/count<10>/XORG_2364 ;
  wire \milispulse/Mcount_count_cy[10] ;
  wire \milispulse/count<10>/CYSELF_2362 ;
  wire \milispulse/count<10>/CYMUXFAST_2361 ;
  wire \milispulse/count<10>/CYAND_2360 ;
  wire \milispulse/count<10>/FASTCARRY_2359 ;
  wire \milispulse/count<10>/CYMUXG2_2358 ;
  wire \milispulse/count<10>/CYMUXF2_2357 ;
  wire \milispulse/count<10>/LOGIC_ZERO_2356 ;
  wire \milispulse/count<10>/CYSELG_2347 ;
  wire \milispulse/count<10>/G ;
  wire \milispulse/count<10>/SRINV_2345 ;
  wire \milispulse/count<10>/CLKINV_2344 ;
  wire \milispulse/count<10>/CEINV_2343 ;
  wire \milispulse/count<12>/DXMUX_2440 ;
  wire \milispulse/count<12>/XORF_2438 ;
  wire \milispulse/count<12>/CYINIT_2437 ;
  wire \milispulse/count<12>/F ;
  wire \milispulse/count<12>/DYMUX_2422 ;
  wire \milispulse/count<12>/XORG_2420 ;
  wire \milispulse/Mcount_count_cy[12] ;
  wire \milispulse/count<12>/CYSELF_2418 ;
  wire \milispulse/count<12>/CYMUXFAST_2417 ;
  wire \milispulse/count<12>/CYAND_2416 ;
  wire \milispulse/count<12>/FASTCARRY_2415 ;
  wire \milispulse/count<12>/CYMUXG2_2414 ;
  wire \milispulse/count<12>/CYMUXF2_2413 ;
  wire \milispulse/count<12>/LOGIC_ZERO_2412 ;
  wire \milispulse/count<12>/CYSELG_2403 ;
  wire \milispulse/count<12>/G ;
  wire \milispulse/count<12>/SRINV_2401 ;
  wire \milispulse/count<12>/CLKINV_2400 ;
  wire \milispulse/count<12>/CEINV_2399 ;
  wire \milispulse/count<14>/DXMUX_2496 ;
  wire \milispulse/count<14>/XORF_2494 ;
  wire \milispulse/count<14>/CYINIT_2493 ;
  wire \milispulse/count<14>/F ;
  wire \milispulse/count<14>/DYMUX_2478 ;
  wire \milispulse/count<14>/XORG_2476 ;
  wire \milispulse/Mcount_count_cy[14] ;
  wire \milispulse/count<14>/CYSELF_2474 ;
  wire \milispulse/count<14>/CYMUXFAST_2473 ;
  wire \milispulse/count<14>/CYAND_2472 ;
  wire \milispulse/count<14>/FASTCARRY_2471 ;
  wire \milispulse/count<14>/CYMUXG2_2470 ;
  wire \milispulse/count<14>/CYMUXF2_2469 ;
  wire \milispulse/count<14>/LOGIC_ZERO_2468 ;
  wire \milispulse/count<14>/CYSELG_2459 ;
  wire \milispulse/count<14>/G ;
  wire \milispulse/count<14>/SRINV_2457 ;
  wire \milispulse/count<14>/CLKINV_2456 ;
  wire \milispulse/count<14>/CEINV_2455 ;
  wire \milispulse/count<16>/DXMUX_2552 ;
  wire \milispulse/count<16>/XORF_2550 ;
  wire \milispulse/count<16>/CYINIT_2549 ;
  wire \milispulse/count<16>/F ;
  wire \milispulse/count<16>/DYMUX_2534 ;
  wire \milispulse/count<16>/XORG_2532 ;
  wire \milispulse/Mcount_count_cy[16] ;
  wire \milispulse/count<16>/CYSELF_2530 ;
  wire \milispulse/count<16>/CYMUXFAST_2529 ;
  wire \milispulse/count<16>/CYAND_2528 ;
  wire \milispulse/count<16>/FASTCARRY_2527 ;
  wire \milispulse/count<16>/CYMUXG2_2526 ;
  wire \milispulse/count<16>/CYMUXF2_2525 ;
  wire \milispulse/count<16>/LOGIC_ZERO_2524 ;
  wire \milispulse/count<16>/CYSELG_2515 ;
  wire \milispulse/count<16>/G ;
  wire \milispulse/count<16>/SRINV_2513 ;
  wire \milispulse/count<16>/CLKINV_2512 ;
  wire \milispulse/count<16>/CEINV_2511 ;
  wire \milispulse/count<18>/DXMUX_2608 ;
  wire \milispulse/count<18>/XORF_2606 ;
  wire \milispulse/count<18>/CYINIT_2605 ;
  wire \milispulse/count<18>/F ;
  wire \milispulse/count<18>/DYMUX_2590 ;
  wire \milispulse/count<18>/XORG_2588 ;
  wire \milispulse/Mcount_count_cy[18] ;
  wire \milispulse/count<18>/CYSELF_2586 ;
  wire \milispulse/count<18>/CYMUXFAST_2585 ;
  wire \milispulse/count<18>/CYAND_2584 ;
  wire \milispulse/count<18>/FASTCARRY_2583 ;
  wire \milispulse/count<18>/CYMUXG2_2582 ;
  wire \milispulse/count<18>/CYMUXF2_2581 ;
  wire \milispulse/count<18>/LOGIC_ZERO_2580 ;
  wire \milispulse/count<18>/CYSELG_2571 ;
  wire \milispulse/count<18>/G ;
  wire \milispulse/count<18>/SRINV_2569 ;
  wire \milispulse/count<18>/CLKINV_2568 ;
  wire \milispulse/count<18>/CEINV_2567 ;
  wire \milispulse/count<20>/DXMUX_2664 ;
  wire \milispulse/count<20>/XORF_2662 ;
  wire \milispulse/count<20>/CYINIT_2661 ;
  wire \milispulse/count<20>/F ;
  wire \milispulse/count<20>/DYMUX_2646 ;
  wire \milispulse/count<20>/XORG_2644 ;
  wire \milispulse/Mcount_count_cy[20] ;
  wire \milispulse/count<20>/CYSELF_2642 ;
  wire \milispulse/count<20>/CYMUXFAST_2641 ;
  wire \milispulse/count<20>/CYAND_2640 ;
  wire \milispulse/count<20>/FASTCARRY_2639 ;
  wire \milispulse/count<20>/CYMUXG2_2638 ;
  wire \milispulse/count<20>/CYMUXF2_2637 ;
  wire \milispulse/count<20>/LOGIC_ZERO_2636 ;
  wire \milispulse/count<20>/CYSELG_2627 ;
  wire \milispulse/count<20>/G ;
  wire \milispulse/count<20>/SRINV_2625 ;
  wire \milispulse/count<20>/CLKINV_2624 ;
  wire \milispulse/count<20>/CEINV_2623 ;
  wire \milispulse/count<22>/DXMUX_2720 ;
  wire \milispulse/count<22>/XORF_2718 ;
  wire \milispulse/count<22>/CYINIT_2717 ;
  wire \milispulse/count<22>/F ;
  wire \milispulse/count<22>/DYMUX_2702 ;
  wire \milispulse/count<22>/XORG_2700 ;
  wire \milispulse/Mcount_count_cy[22] ;
  wire \milispulse/count<22>/CYSELF_2698 ;
  wire \milispulse/count<22>/CYMUXFAST_2697 ;
  wire \milispulse/count<22>/CYAND_2696 ;
  wire \milispulse/count<22>/FASTCARRY_2695 ;
  wire \milispulse/count<22>/CYMUXG2_2694 ;
  wire \milispulse/count<22>/CYMUXF2_2693 ;
  wire \milispulse/count<22>/LOGIC_ZERO_2692 ;
  wire \milispulse/count<22>/CYSELG_2683 ;
  wire \milispulse/count<22>/G ;
  wire \milispulse/count<22>/SRINV_2681 ;
  wire \milispulse/count<22>/CLKINV_2680 ;
  wire \milispulse/count<22>/CEINV_2679 ;
  wire \milispulse/count<24>/DXMUX_2776 ;
  wire \milispulse/count<24>/XORF_2774 ;
  wire \milispulse/count<24>/CYINIT_2773 ;
  wire \milispulse/count<24>/F ;
  wire \milispulse/count<24>/DYMUX_2758 ;
  wire \milispulse/count<24>/XORG_2756 ;
  wire \milispulse/Mcount_count_cy[24] ;
  wire \milispulse/count<24>/CYSELF_2754 ;
  wire \milispulse/count<24>/CYMUXFAST_2753 ;
  wire \milispulse/count<24>/CYAND_2752 ;
  wire \milispulse/count<24>/FASTCARRY_2751 ;
  wire \milispulse/count<24>/CYMUXG2_2750 ;
  wire \milispulse/count<24>/CYMUXF2_2749 ;
  wire \milispulse/count<24>/LOGIC_ZERO_2748 ;
  wire \milispulse/count<24>/CYSELG_2739 ;
  wire \milispulse/count<24>/G ;
  wire \milispulse/count<24>/SRINV_2737 ;
  wire \milispulse/count<24>/CLKINV_2736 ;
  wire \milispulse/count<24>/CEINV_2735 ;
  wire \milispulse/count<26>/DXMUX_2832 ;
  wire \milispulse/count<26>/XORF_2830 ;
  wire \milispulse/count<26>/CYINIT_2829 ;
  wire \milispulse/count<26>/F ;
  wire \milispulse/count<26>/DYMUX_2814 ;
  wire \milispulse/count<26>/XORG_2812 ;
  wire \milispulse/Mcount_count_cy[26] ;
  wire \milispulse/count<26>/CYSELF_2810 ;
  wire \milispulse/count<26>/CYMUXFAST_2809 ;
  wire \milispulse/count<26>/CYAND_2808 ;
  wire \milispulse/count<26>/FASTCARRY_2807 ;
  wire \milispulse/count<26>/CYMUXG2_2806 ;
  wire \milispulse/count<26>/CYMUXF2_2805 ;
  wire \milispulse/count<26>/LOGIC_ZERO_2804 ;
  wire \milispulse/count<26>/CYSELG_2795 ;
  wire \milispulse/count<26>/G ;
  wire \milispulse/count<26>/SRINV_2793 ;
  wire \milispulse/count<26>/CLKINV_2792 ;
  wire \milispulse/count<26>/CEINV_2791 ;
  wire \milispulse/count<28>/DXMUX_2888 ;
  wire \milispulse/count<28>/XORF_2886 ;
  wire \milispulse/count<28>/CYINIT_2885 ;
  wire \milispulse/count<28>/F ;
  wire \milispulse/count<28>/DYMUX_2870 ;
  wire \milispulse/count<28>/XORG_2868 ;
  wire \milispulse/Mcount_count_cy[28] ;
  wire \milispulse/count<28>/CYSELF_2866 ;
  wire \milispulse/count<28>/CYMUXFAST_2865 ;
  wire \milispulse/count<28>/CYAND_2864 ;
  wire \milispulse/count<28>/FASTCARRY_2863 ;
  wire \milispulse/count<28>/CYMUXG2_2862 ;
  wire \milispulse/count<28>/CYMUXF2_2861 ;
  wire \milispulse/count<28>/LOGIC_ZERO_2860 ;
  wire \milispulse/count<28>/CYSELG_2851 ;
  wire \milispulse/count<28>/G ;
  wire \milispulse/count<28>/SRINV_2849 ;
  wire \milispulse/count<28>/CLKINV_2848 ;
  wire \milispulse/count<28>/CEINV_2847 ;
  wire \milispulse/count<30>/DXMUX_2937 ;
  wire \milispulse/count<30>/XORF_2935 ;
  wire \milispulse/count<30>/LOGIC_ZERO_2934 ;
  wire \milispulse/count<30>/CYINIT_2933 ;
  wire \milispulse/count<30>/CYSELF_2924 ;
  wire \milispulse/count<30>/F ;
  wire \milispulse/count<30>/DYMUX_2917 ;
  wire \milispulse/count<30>/XORG_2915 ;
  wire \milispulse/Mcount_count_cy[30] ;
  wire \milispulse/count<31>_rt_2912 ;
  wire \milispulse/count<30>/SRINV_2904 ;
  wire \milispulse/count<30>/CLKINV_2903 ;
  wire \milispulse/count<30>/CEINV_2902 ;
  wire \count<0>/DXMUX_2985 ;
  wire \count<0>/XORF_2983 ;
  wire \count<0>/LOGIC_ONE_2982 ;
  wire \count<0>/CYINIT_2981 ;
  wire \count<0>/CYSELF_2972 ;
  wire \count<0>/BXINV_2970 ;
  wire \count<0>/DYMUX_2966 ;
  wire \count<0>/XORG_2964 ;
  wire \count<0>/CYMUXG_2963 ;
  wire \count<0>/LOGIC_ZERO_2961 ;
  wire \count<0>/CYSELG_2952 ;
  wire \count<0>/G ;
  wire \count<0>/CLKINV_2950 ;
  wire \count<2>/DXMUX_3033 ;
  wire \count<2>/XORF_3031 ;
  wire \count<2>/CYINIT_3030 ;
  wire \count<2>/F ;
  wire \count<2>/DYMUX_3017 ;
  wire \count<2>/XORG_3015 ;
  wire \count<2>/CYSELF_3013 ;
  wire \count<2>/CYMUXFAST_3012 ;
  wire \count<2>/CYAND_3011 ;
  wire \count<2>/FASTCARRY_3010 ;
  wire \count<2>/CYMUXG2_3009 ;
  wire \count<2>/CYMUXF2_3008 ;
  wire \count<2>/LOGIC_ZERO_3007 ;
  wire \count<2>/CYSELG_2998 ;
  wire \count<2>/G ;
  wire \count<2>/CLKINV_2996 ;
  wire \count<4>/DXMUX_3081 ;
  wire \count<4>/XORF_3079 ;
  wire \count<4>/CYINIT_3078 ;
  wire \count<4>/F ;
  wire \count<4>/DYMUX_3065 ;
  wire \count<4>/XORG_3063 ;
  wire \count<4>/CYSELF_3061 ;
  wire \count<4>/CYMUXFAST_3060 ;
  wire \count<4>/CYAND_3059 ;
  wire \count<4>/FASTCARRY_3058 ;
  wire \count<4>/CYMUXG2_3057 ;
  wire \count<4>/CYMUXF2_3056 ;
  wire \count<4>/LOGIC_ZERO_3055 ;
  wire \count<4>/CYSELG_3046 ;
  wire \count<4>/G ;
  wire \count<4>/CLKINV_3044 ;
  wire \count<6>/DXMUX_3129 ;
  wire \count<6>/XORF_3127 ;
  wire \count<6>/CYINIT_3126 ;
  wire \count<6>/F ;
  wire \count<6>/DYMUX_3113 ;
  wire \count<6>/XORG_3111 ;
  wire \count<6>/CYSELF_3109 ;
  wire \count<6>/CYMUXFAST_3108 ;
  wire \count<6>/CYAND_3107 ;
  wire \count<6>/FASTCARRY_3106 ;
  wire \count<6>/CYMUXG2_3105 ;
  wire \count<6>/CYMUXF2_3104 ;
  wire \count<6>/LOGIC_ZERO_3103 ;
  wire \count<6>/CYSELG_3094 ;
  wire \count<6>/G ;
  wire \count<6>/CLKINV_3092 ;
  wire \count<8>/DXMUX_3177 ;
  wire \count<8>/XORF_3175 ;
  wire \count<8>/CYINIT_3174 ;
  wire \count<8>/F ;
  wire \count<8>/DYMUX_3161 ;
  wire \count<8>/XORG_3159 ;
  wire \count<8>/CYSELF_3157 ;
  wire \count<8>/CYMUXFAST_3156 ;
  wire \count<8>/CYAND_3155 ;
  wire \count<8>/FASTCARRY_3154 ;
  wire \count<8>/CYMUXG2_3153 ;
  wire \count<8>/CYMUXF2_3152 ;
  wire \count<8>/LOGIC_ZERO_3151 ;
  wire \count<8>/CYSELG_3142 ;
  wire \count<8>/G ;
  wire \count<8>/CLKINV_3140 ;
  wire \count<10>/DXMUX_3225 ;
  wire \count<10>/XORF_3223 ;
  wire \count<10>/CYINIT_3222 ;
  wire \count<10>/F ;
  wire \count<10>/DYMUX_3209 ;
  wire \count<10>/XORG_3207 ;
  wire \count<10>/CYSELF_3205 ;
  wire \count<10>/CYMUXFAST_3204 ;
  wire \count<10>/CYAND_3203 ;
  wire \count<10>/FASTCARRY_3202 ;
  wire \count<10>/CYMUXG2_3201 ;
  wire \count<10>/CYMUXF2_3200 ;
  wire \count<10>/LOGIC_ZERO_3199 ;
  wire \count<10>/CYSELG_3190 ;
  wire \count<10>/G ;
  wire \count<10>/CLKINV_3188 ;
  wire \count<12>/DXMUX_3273 ;
  wire \count<12>/XORF_3271 ;
  wire \count<12>/CYINIT_3270 ;
  wire \count<12>/F ;
  wire \count<12>/DYMUX_3257 ;
  wire \count<12>/XORG_3255 ;
  wire \count<12>/CYSELF_3253 ;
  wire \count<12>/CYMUXFAST_3252 ;
  wire \count<12>/CYAND_3251 ;
  wire \count<12>/FASTCARRY_3250 ;
  wire \count<12>/CYMUXG2_3249 ;
  wire \count<12>/CYMUXF2_3248 ;
  wire \count<12>/LOGIC_ZERO_3247 ;
  wire \count<12>/CYSELG_3238 ;
  wire \count<12>/G ;
  wire \count<12>/CLKINV_3236 ;
  wire \count<14>/DXMUX_3294 ;
  wire \count<14>/XORF_3292 ;
  wire \count<14>/CYINIT_3291 ;
  wire \count<14>_rt_3289 ;
  wire \count<14>/CLKINV_3281 ;
  wire \milispulse/count_and00001_wg_cy<1>/CYINIT_3326 ;
  wire \milispulse/count_and00001_wg_cy<1>/CYSELF_3320 ;
  wire \milispulse/count_and00001_wg_cy<1>/BXINV_3318 ;
  wire \milispulse/count_and00001_wg_cy<1>/CYMUXG_3317 ;
  wire \milispulse/count_and00001_wg_cy[0] ;
  wire \milispulse/count_and00001_wg_cy<1>/LOGIC_ZERO_3315 ;
  wire \milispulse/count_and00001_wg_cy<1>/CYSELG_3309 ;
  wire \milispulse/count_and00001_wg_cy<3>/CYSELF_3350 ;
  wire \milispulse/count_and00001_wg_cy<3>/CYMUXFAST_3349 ;
  wire \milispulse/count_and00001_wg_cy<3>/CYAND_3348 ;
  wire \milispulse/count_and00001_wg_cy<3>/FASTCARRY_3347 ;
  wire \milispulse/count_and00001_wg_cy<3>/CYMUXG2_3346 ;
  wire \milispulse/count_and00001_wg_cy<3>/CYMUXF2_3345 ;
  wire \milispulse/count_and00001_wg_cy<3>/LOGIC_ZERO_3344 ;
  wire \milispulse/count_and00001_wg_cy<3>/CYSELG_3338 ;
  wire \milispulse/count_and00001_wg_cy<5>/CYSELF_3380 ;
  wire \milispulse/count_and00001_wg_cy<5>/CYMUXFAST_3379 ;
  wire \milispulse/count_and00001_wg_cy<5>/CYAND_3378 ;
  wire \milispulse/count_and00001_wg_cy<5>/FASTCARRY_3377 ;
  wire \milispulse/count_and00001_wg_cy<5>/CYMUXG2_3376 ;
  wire \milispulse/count_and00001_wg_cy<5>/CYMUXF2_3375 ;
  wire \milispulse/count_and00001_wg_cy<5>/LOGIC_ZERO_3374 ;
  wire \milispulse/count_and00001_wg_cy<5>/CYSELG_3368 ;
  wire \milispulse/count_and00001_wg_cy<7>/CYSELF_3410 ;
  wire \milispulse/count_and00001_wg_cy<7>/CYMUXFAST_3409 ;
  wire \milispulse/count_and00001_wg_cy<7>/CYAND_3408 ;
  wire \milispulse/count_and00001_wg_cy<7>/FASTCARRY_3407 ;
  wire \milispulse/count_and00001_wg_cy<7>/CYMUXG2_3406 ;
  wire \milispulse/count_and00001_wg_cy<7>/CYMUXF2_3405 ;
  wire \milispulse/count_and00001_wg_cy<7>/LOGIC_ZERO_3404 ;
  wire \milispulse/count_and00001_wg_cy<7>/CYSELG_3398 ;
  wire \stop/INBUF ;
  wire \an<0>/O ;
  wire \an<1>/O ;
  wire \an<2>/O ;
  wire \an<3>/O ;
  wire \dp/O ;
  wire \clk/INBUF ;
  wire \segment<0>/O ;
  wire \segment<1>/O ;
  wire \segment<2>/O ;
  wire \segment<3>/O ;
  wire \segment<4>/O ;
  wire \segment<5>/O ;
  wire \segment<6>/O ;
  wire \start/INBUF ;
  wire \reset/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \segment_1_OBUF/F5MUX_3565 ;
  wire Mmux_segment_31_3563;
  wire \segment_1_OBUF/BXINV_3557 ;
  wire Mmux_segment_41_3555;
  wire \segment_2_OBUF/F5MUX_3590 ;
  wire Mmux_segment_32_3588;
  wire \segment_2_OBUF/BXINV_3582 ;
  wire Mmux_segment_42_3580;
  wire \segment_3_OBUF/F5MUX_3615 ;
  wire Mmux_segment_33_3613;
  wire \segment_3_OBUF/BXINV_3607 ;
  wire Mmux_segment_43_3605;
  wire \segment_0_OBUF/F5MUX_3640 ;
  wire Mmux_segment_3_3638;
  wire \segment_0_OBUF/BXINV_3632 ;
  wire Mmux_segment_4_3630;
  wire \digi_module_0/digit<3>/FFX/RSTAND_1301 ;
  wire \digi_module_3/digit<3>/FFX/RSTAND_1126 ;
  wire \digi_module_2/c_out/FFX/RSTAND_1161 ;
  wire \digi_module_2/digit<3>/FFX/RSTAND_1196 ;
  wire \digi_module_1/digit<3>/FFX/RSTAND_1231 ;
  wire \digi_module_3/c_out/FFX/RSTAND_1266 ;
  wire \digi_module_0/c_out/FFX/RSTAND_1336 ;
  wire \digi_module_0/digit<2>/FFY/RSTAND_1441 ;
  wire \digi_module_2/digit<2>/FFY/RSTAND_1518 ;
  wire \digi_module_1/digit<2>/FFY/RSTAND_1595 ;
  wire \digi_module_3/digit<2>/FFY/RSTAND_1672 ;
  wire \dp/OUTPUT/OFF/O1INV_3462 ;
  wire VCC;
  wire GND;
  wire [14 : 0] count;
  wire [3 : 0] \digi_module_3/digit ;
  wire [3 : 0] \digi_module_2/digit ;
  wire [3 : 0] \digi_module_1/digit ;
  wire [3 : 0] \digi_module_0/digit ;
  wire [0 : 0] \milispulse/started ;
  wire [31 : 0] \milispulse/count ;
  wire [12 : 0] Mcount_count_cy;
  wire [0 : 0] \milispulse/Mcount_count_lut ;
  wire [0 : 0] Mcount_count_lut;
  wire [7 : 0] \milispulse/count_and00001_wg_lut ;
  initial $sdf_annotate("netgen/par/stopwatch_timesim.sdf");
  X_MUX2 #(
    .LOC ( "SLICE_X66Y72" ))
  \segment_4_OBUF/F5MUX  (
    .IA(Mmux_segment_44_1031),
    .IB(Mmux_segment_34_1039),
    .SEL(\segment_4_OBUF/BXINV_1033 ),
    .O(\segment_4_OBUF/F5MUX_1041 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y72" ))
  \segment_4_OBUF/BXINV  (
    .I(count[14]),
    .O(\segment_4_OBUF/BXINV_1033 )
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X66Y73" ))
  Mmux_segment_35 (
    .ADR0(\bcds3/Mrom_segment5_0 ),
    .ADR1(\bcds2/Mrom_segment5_0 ),
    .ADR2(count[13]),
    .ADR3(VCC),
    .O(Mmux_segment_35_1064)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X66Y73" ))
  \segment_5_OBUF/F5MUX  (
    .IA(Mmux_segment_45_1056),
    .IB(Mmux_segment_35_1064),
    .SEL(\segment_5_OBUF/BXINV_1058 ),
    .O(\segment_5_OBUF/F5MUX_1066 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y73" ))
  \segment_5_OBUF/BXINV  (
    .I(count[14]),
    .O(\segment_5_OBUF/BXINV_1058 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X66Y64" ))
  \segment_6_OBUF/F5MUX  (
    .IA(Mmux_segment_46_1081),
    .IB(Mmux_segment_36_1089),
    .SEL(\segment_6_OBUF/BXINV_1083 ),
    .O(\segment_6_OBUF/F5MUX_1091 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y64" ))
  \segment_6_OBUF/BXINV  (
    .I(count[14]),
    .O(\segment_6_OBUF/BXINV_1083 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y71" ))
  \digi_module_3/digit<3>/DXMUX  (
    .I(\digi_module_3/Mcount_digit3 ),
    .O(\digi_module_3/digit<3>/DXMUX_1121 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y71" ))
  \digi_module_3/digit<3>/YUSED  (
    .I(\digi_module_3/Mcount_digit_xor<3>1_SW0/O_pack_2 ),
    .O(\digi_module_3/Mcount_digit_xor<3>1_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y71" ))
  \digi_module_3/digit<3>/CLKINV  (
    .I(\digi_module_2/c_out_885 ),
    .O(\digi_module_3/digit<3>/CLKINV_1103 )
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X64Y66" ))
  \digi_module_2/c_out_mux0000  (
    .ADR0(\digi_module_2/digit [2]),
    .ADR1(\digi_module_2/digit [3]),
    .ADR2(\digi_module_2/digit [1]),
    .ADR3(\digi_module_2/c_out_mux0000_SW0/O ),
    .O(\digi_module_2/c_out_mux0000_1153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y66" ))
  \digi_module_2/c_out/DXMUX  (
    .I(\digi_module_2/c_out_mux0000_1153 ),
    .O(\digi_module_2/c_out/DXMUX_1156 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y66" ))
  \digi_module_2/c_out/YUSED  (
    .I(\digi_module_2/c_out_mux0000_SW0/O_pack_2 ),
    .O(\digi_module_2/c_out_mux0000_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y66" ))
  \digi_module_2/c_out/CLKINV  (
    .I(\digi_module_1/c_out_893 ),
    .O(\digi_module_2/c_out/CLKINV_1138 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y68" ))
  \digi_module_2/digit<3>/DXMUX  (
    .I(\digi_module_2/Mcount_digit3 ),
    .O(\digi_module_2/digit<3>/DXMUX_1191 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y68" ))
  \digi_module_2/digit<3>/YUSED  (
    .I(\digi_module_2/Mcount_digit_xor<3>1_SW0/O_pack_2 ),
    .O(\digi_module_2/Mcount_digit_xor<3>1_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y68" ))
  \digi_module_2/digit<3>/CLKINV  (
    .I(\digi_module_1/c_out_893 ),
    .O(\digi_module_2/digit<3>/CLKINV_1173 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y76" ))
  \digi_module_1/digit<3>/DXMUX  (
    .I(\digi_module_1/Mcount_digit3 ),
    .O(\digi_module_1/digit<3>/DXMUX_1226 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y76" ))
  \digi_module_1/digit<3>/YUSED  (
    .I(\digi_module_1/Mcount_digit_xor<3>1_SW0/O_pack_2 ),
    .O(\digi_module_1/Mcount_digit_xor<3>1_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y76" ))
  \digi_module_1/digit<3>/CLKINV  (
    .I(\digi_module_0/c_out_900 ),
    .O(\digi_module_1/digit<3>/CLKINV_1208 )
  );
  X_LUT4 #(
    .INIT ( 16'h5F5F ),
    .LOC ( "SLICE_X66Y76" ))
  \digi_module_1/Mcount_digit_xor<3>1_SW0  (
    .ADR0(\digi_module_1/digit [1]),
    .ADR1(VCC),
    .ADR2(\digi_module_1/digit [0]),
    .ADR3(VCC),
    .O(\digi_module_1/Mcount_digit_xor<3>1_SW0/O_pack_2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y70" ))
  \digi_module_3/c_out/DXMUX  (
    .I(\digi_module_3/c_out_mux0000_1258 ),
    .O(\digi_module_3/c_out/DXMUX_1261 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y70" ))
  \digi_module_3/c_out/YUSED  (
    .I(\digi_module_3/c_out_mux0000_SW0/O_pack_2 ),
    .O(\digi_module_3/c_out_mux0000_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y70" ))
  \digi_module_3/c_out/CLKINV  (
    .I(\digi_module_2/c_out_885 ),
    .O(\digi_module_3/c_out/CLKINV_1243 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y70" ))
  \digi_module_0/digit<3>/DXMUX  (
    .I(\digi_module_0/Mcount_digit3 ),
    .O(\digi_module_0/digit<3>/DXMUX_1296 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y70" ))
  \digi_module_0/digit<3>/YUSED  (
    .I(\digi_module_0/Mcount_digit_xor<3>1_SW0/O_pack_2 ),
    .O(\digi_module_0/Mcount_digit_xor<3>1_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y70" ))
  \digi_module_0/digit<3>/CLKINV  (
    .I(\milispulse/msclock_907 ),
    .O(\digi_module_0/digit<3>/CLKINV_1278 )
  );
  X_LUT4 #(
    .INIT ( 16'h3012 ),
    .LOC ( "SLICE_X64Y70" ))
  \digi_module_0/Mcount_digit_xor<3>1  (
    .ADR0(\digi_module_0/digit [2]),
    .ADR1(\digi_module_0/c_out_900 ),
    .ADR2(\digi_module_0/digit [3]),
    .ADR3(\digi_module_0/Mcount_digit_xor<3>1_SW0/O ),
    .O(\digi_module_0/Mcount_digit3 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y72" ))
  \digi_module_0/c_out/DXMUX  (
    .I(\digi_module_0/c_out_mux0000_1328 ),
    .O(\digi_module_0/c_out/DXMUX_1331 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y72" ))
  \digi_module_0/c_out/YUSED  (
    .I(\digi_module_0/c_out_mux0000_SW0/O_pack_2 ),
    .O(\digi_module_0/c_out_mux0000_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y72" ))
  \digi_module_0/c_out/CLKINV  (
    .I(\milispulse/msclock_907 ),
    .O(\digi_module_0/c_out/CLKINV_1313 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \digi_module_1/c_out/FFX/RSTOR  (
    .I(reset_IBUF_886),
    .O(\digi_module_1/c_out/FFX/RST )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y76" ),
    .INIT ( 1'b0 ))
  \digi_module_1/c_out  (
    .I(\digi_module_1/c_out/DXMUX_1366 ),
    .CE(VCC),
    .CLK(\digi_module_1/c_out/CLKINV_1348 ),
    .SET(GND),
    .RST(\digi_module_1/c_out/FFX/RST ),
    .O(\digi_module_1/c_out_893 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \digi_module_1/c_out/DXMUX  (
    .I(\digi_module_1/c_out_mux0000_1363 ),
    .O(\digi_module_1/c_out/DXMUX_1366 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \digi_module_1/c_out/YUSED  (
    .I(\digi_module_1/c_out_mux0000_SW0/O_pack_2 ),
    .O(\digi_module_1/c_out_mux0000_SW0/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y76" ))
  \digi_module_1/c_out/CLKINV  (
    .I(\digi_module_0/c_out_900 ),
    .O(\digi_module_1/c_out/CLKINV_1348 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y71" ))
  \digi_module_0/digit<1>/DXMUX  (
    .I(\digi_module_0/Mcount_digit1 ),
    .O(\digi_module_0/digit<1>/DXMUX_1408 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y71" ))
  \digi_module_0/digit<1>/DYMUX  (
    .I(\digi_module_0/Mcount_digit ),
    .O(\digi_module_0/digit<1>/DYMUX_1393 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y71" ))
  \digi_module_0/digit<1>/SRINV  (
    .I(reset_IBUF_886),
    .O(\digi_module_0/digit<1>/SRINV_1383 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y71" ))
  \digi_module_0/digit<1>/CLKINV  (
    .I(\milispulse/msclock_907 ),
    .O(\digi_module_0/digit<1>/CLKINV_1382 )
  );
  X_LUT4 #(
    .INIT ( 16'h1444 ),
    .LOC ( "SLICE_X65Y75" ))
  \digi_module_0/Mcount_digit_xor<2>11  (
    .ADR0(\digi_module_0/c_out_900 ),
    .ADR1(\digi_module_0/digit [2]),
    .ADR2(\digi_module_0/digit [0]),
    .ADR3(\digi_module_0/digit [1]),
    .O(\digi_module_0/Mcount_digit2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y75" ))
  \digi_module_0/digit<2>/XUSED  (
    .I(\bcds0/Mrom_segment3 ),
    .O(\bcds0/Mrom_segment3_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y75" ))
  \digi_module_0/digit<2>/DYMUX  (
    .I(\digi_module_0/Mcount_digit2 ),
    .O(\digi_module_0/digit<2>/DYMUX_1436 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y75" ))
  \digi_module_0/digit<2>/CLKINV  (
    .I(\milispulse/msclock_907 ),
    .O(\digi_module_0/digit<2>/CLKINV_1427 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y67" ))
  \digi_module_2/digit<1>/DXMUX  (
    .I(\digi_module_2/Mcount_digit1 ),
    .O(\digi_module_2/digit<1>/DXMUX_1485 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y67" ))
  \digi_module_2/digit<1>/DYMUX  (
    .I(\digi_module_2/Mcount_digit ),
    .O(\digi_module_2/digit<1>/DYMUX_1470 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y67" ))
  \digi_module_2/digit<1>/SRINV  (
    .I(reset_IBUF_886),
    .O(\digi_module_2/digit<1>/SRINV_1460 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y67" ))
  \digi_module_2/digit<1>/CLKINV  (
    .I(\digi_module_1/c_out_893 ),
    .O(\digi_module_2/digit<1>/CLKINV_1459 )
  );
  X_LUT4 #(
    .INIT ( 16'h1222 ),
    .LOC ( "SLICE_X66Y69" ))
  \digi_module_2/Mcount_digit_xor<2>11  (
    .ADR0(\digi_module_2/digit [2]),
    .ADR1(\digi_module_2/c_out_885 ),
    .ADR2(\digi_module_2/digit [1]),
    .ADR3(\digi_module_2/digit [0]),
    .O(\digi_module_2/Mcount_digit2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y69" ))
  \digi_module_2/digit<2>/XUSED  (
    .I(\bcds2/Mrom_segment3 ),
    .O(\bcds2/Mrom_segment3_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y69" ))
  \digi_module_2/digit<2>/DYMUX  (
    .I(\digi_module_2/Mcount_digit2 ),
    .O(\digi_module_2/digit<2>/DYMUX_1513 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y69" ))
  \digi_module_2/digit<2>/CLKINV  (
    .I(\digi_module_1/c_out_893 ),
    .O(\digi_module_2/digit<2>/CLKINV_1504 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \digi_module_1/digit<1>/DXMUX  (
    .I(\digi_module_1/Mcount_digit1 ),
    .O(\digi_module_1/digit<1>/DXMUX_1562 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \digi_module_1/digit<1>/DYMUX  (
    .I(\digi_module_1/Mcount_digit ),
    .O(\digi_module_1/digit<1>/DYMUX_1547 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \digi_module_1/digit<1>/SRINV  (
    .I(reset_IBUF_886),
    .O(\digi_module_1/digit<1>/SRINV_1537 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y77" ))
  \digi_module_1/digit<1>/CLKINV  (
    .I(\digi_module_0/c_out_900 ),
    .O(\digi_module_1/digit<1>/CLKINV_1536 )
  );
  X_LUT4 #(
    .INIT ( 16'h1450 ),
    .LOC ( "SLICE_X67Y74" ))
  \digi_module_1/Mcount_digit_xor<2>11  (
    .ADR0(\digi_module_1/c_out_893 ),
    .ADR1(\digi_module_1/digit [1]),
    .ADR2(\digi_module_1/digit [2]),
    .ADR3(\digi_module_1/digit [0]),
    .O(\digi_module_1/Mcount_digit2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \digi_module_1/digit<2>/XUSED  (
    .I(\bcds1/Mrom_segment3 ),
    .O(\bcds1/Mrom_segment3_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \digi_module_1/digit<2>/DYMUX  (
    .I(\digi_module_1/Mcount_digit2 ),
    .O(\digi_module_1/digit<2>/DYMUX_1590 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \digi_module_1/digit<2>/CLKINV  (
    .I(\digi_module_0/c_out_900 ),
    .O(\digi_module_1/digit<2>/CLKINV_1581 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \digi_module_3/digit<1>/DXMUX  (
    .I(\digi_module_3/Mcount_digit1 ),
    .O(\digi_module_3/digit<1>/DXMUX_1639 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \digi_module_3/digit<1>/DYMUX  (
    .I(\digi_module_3/Mcount_digit ),
    .O(\digi_module_3/digit<1>/DYMUX_1624 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \digi_module_3/digit<1>/SRINV  (
    .I(reset_IBUF_886),
    .O(\digi_module_3/digit<1>/SRINV_1614 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y71" ))
  \digi_module_3/digit<1>/CLKINV  (
    .I(\digi_module_2/c_out_885 ),
    .O(\digi_module_3/digit<1>/CLKINV_1613 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y70" ))
  \digi_module_3/digit<2>/XUSED  (
    .I(\bcds3/Mrom_segment3 ),
    .O(\bcds3/Mrom_segment3_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y70" ))
  \digi_module_3/digit<2>/DYMUX  (
    .I(\digi_module_3/Mcount_digit2 ),
    .O(\digi_module_3/digit<2>/DYMUX_1667 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y70" ))
  \digi_module_3/digit<2>/CLKINV  (
    .I(\digi_module_2/c_out_885 ),
    .O(\digi_module_3/digit<2>/CLKINV_1658 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y66" ))
  \bcds2/Mrom_segment6/XUSED  (
    .I(\bcds2/Mrom_segment6 ),
    .O(\bcds2/Mrom_segment6_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y66" ))
  \bcds2/Mrom_segment6/YUSED  (
    .I(\bcds2/Mrom_segment4 ),
    .O(\bcds2/Mrom_segment4_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y65" ))
  \bcds1/Mrom_segment6/XUSED  (
    .I(\bcds1/Mrom_segment6 ),
    .O(\bcds1/Mrom_segment6_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y65" ))
  \bcds1/Mrom_segment6/YUSED  (
    .I(\bcds1/Mrom_segment1_1719 ),
    .O(\bcds1/Mrom_segment1_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA85 ),
    .LOC ( "SLICE_X66Y68" ))
  \bcds2/Mrom_segment1  (
    .ADR0(\digi_module_2/digit [2]),
    .ADR1(\digi_module_2/digit [0]),
    .ADR2(\digi_module_2/digit [1]),
    .ADR3(\digi_module_2/digit [3]),
    .O(\bcds2/Mrom_segment )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y68" ))
  \bcds2/Mrom_segment/XUSED  (
    .I(\bcds2/Mrom_segment ),
    .O(\bcds2/Mrom_segment_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y68" ))
  \bcds2/Mrom_segment/YUSED  (
    .I(\bcds2/Mrom_segment5 ),
    .O(\bcds2/Mrom_segment5_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA28 ),
    .LOC ( "SLICE_X66Y68" ))
  \bcds2/Mrom_segment511  (
    .ADR0(\digi_module_2/digit [2]),
    .ADR1(\digi_module_2/digit [0]),
    .ADR2(\digi_module_2/digit [1]),
    .ADR3(\digi_module_2/digit [3]),
    .O(\bcds2/Mrom_segment5 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y78" ))
  \milispulse/msclock/DYMUX  (
    .I(\milispulse/count_and00001_wg_cy[7] ),
    .O(\milispulse/msclock/DYMUX_1760 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y78" ))
  \milispulse/msclock/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/msclock/CLKINV_1758 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y78" ))
  \milispulse/msclock/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/msclock/CEINV_1757 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \bcds1/Mrom_segment5/XUSED  (
    .I(\bcds1/Mrom_segment5 ),
    .O(\bcds1/Mrom_segment5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y73" ))
  \bcds1/Mrom_segment5/YUSED  (
    .I(\bcds1/Mrom_segment4 ),
    .O(\bcds1/Mrom_segment4_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y64" ))
  \bcds0/Mrom_segment6/XUSED  (
    .I(\bcds0/Mrom_segment6 ),
    .O(\bcds0/Mrom_segment6_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y64" ))
  \bcds0/Mrom_segment6/YUSED  (
    .I(\bcds0/Mrom_segment1_1803 ),
    .O(\bcds0/Mrom_segment1_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y67" ))
  \bcds3/Mrom_segment6/XUSED  (
    .I(\bcds3/Mrom_segment6 ),
    .O(\bcds3/Mrom_segment6_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y67" ))
  \bcds3/Mrom_segment6/YUSED  (
    .I(\bcds3/Mrom_segment2 ),
    .O(\bcds3/Mrom_segment2_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \bcds0/Mrom_segment5/XUSED  (
    .I(\bcds0/Mrom_segment5 ),
    .O(\bcds0/Mrom_segment5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y72" ))
  \bcds0/Mrom_segment5/YUSED  (
    .I(\bcds0/Mrom_segment4 ),
    .O(\bcds0/Mrom_segment4_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hE0E2 ),
    .LOC ( "SLICE_X67Y72" ))
  \bcds0/Mrom_segment411  (
    .ADR0(\digi_module_0/digit [1]),
    .ADR1(\digi_module_0/digit [2]),
    .ADR2(\digi_module_0/digit [3]),
    .ADR3(\digi_module_0/digit [0]),
    .O(\bcds0/Mrom_segment4 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y65" ))
  \bcds1/Mrom_segment/XUSED  (
    .I(\bcds1/Mrom_segment ),
    .O(\bcds1/Mrom_segment_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y65" ))
  \bcds1/Mrom_segment/YUSED  (
    .I(\bcds1/Mrom_segment2 ),
    .O(\bcds1/Mrom_segment2_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y68" ))
  \bcds3/Mrom_segment5/XUSED  (
    .I(\bcds3/Mrom_segment5 ),
    .O(\bcds3/Mrom_segment5_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y68" ))
  \bcds3/Mrom_segment5/YUSED  (
    .I(\bcds3/Mrom_segment ),
    .O(\bcds3/Mrom_segment_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y86" ))
  \milispulse/started<0>/DYMUX  (
    .I(\milispulse/started<0>/BYINV_1917 ),
    .O(\milispulse/started<0>/DYMUX_1918 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y86" ))
  \milispulse/started<0>/BYINV  (
    .I(1'b0),
    .O(\milispulse/started<0>/BYINV_1917 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y86" ))
  \milispulse/started<0>/SRINV  (
    .I(\start/INBUF ),
    .O(\milispulse/started<0>/SRINV_1916 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y86" ))
  \milispulse/started<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/started<0>/CLKINV_1915 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y86" ))
  \milispulse/started<0>/CEINV  (
    .I(\stop/INBUF ),
    .O(\milispulse/started<0>/CEINV_1914 )
  );
  X_LUT4 #(
    .INIT ( 16'hA0A0 ),
    .LOC ( "SLICE_X54Y82" ))
  \milispulse/count_and00001  (
    .ADR0(\milispulse/started [0]),
    .ADR1(VCC),
    .ADR2(\milispulse/count_and00001_wg_cy[7] ),
    .ADR3(VCC),
    .O(\milispulse/count_and0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y82" ))
  \milispulse/count_and0000/YUSED  (
    .I(\milispulse/count_and0000 ),
    .O(\milispulse/count_and0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y75" ))
  \bcds0/Mrom_segment2/XUSED  (
    .I(\bcds0/Mrom_segment2 ),
    .O(\bcds0/Mrom_segment2_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y75" ))
  \bcds0/Mrom_segment2/YUSED  (
    .I(\bcds0/Mrom_segment ),
    .O(\bcds0/Mrom_segment_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y66" ))
  \bcds2/Mrom_segment1/XUSED  (
    .I(\bcds2/Mrom_segment1_2029 ),
    .O(\bcds2/Mrom_segment1_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y66" ))
  \bcds2/Mrom_segment1/YUSED  (
    .I(\bcds2/Mrom_segment2 ),
    .O(\bcds2/Mrom_segment2_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCEE ),
    .LOC ( "SLICE_X66Y66" ))
  \bcds2/Mrom_segment21  (
    .ADR0(\digi_module_2/digit [2]),
    .ADR1(\digi_module_2/digit [0]),
    .ADR2(\digi_module_2/digit [3]),
    .ADR3(\digi_module_2/digit [1]),
    .O(\bcds2/Mrom_segment2 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y67" ))
  \bcds3/Mrom_segment4/XUSED  (
    .I(\bcds3/Mrom_segment4 ),
    .O(\bcds3/Mrom_segment4_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y67" ))
  \bcds3/Mrom_segment4/YUSED  (
    .I(\bcds3/Mrom_segment1_2046 ),
    .O(\bcds3/Mrom_segment1_0 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/LOGIC_ZERO  (
    .O(\milispulse/count<0>/LOGIC_ZERO_2078 )
  );
  X_ONE #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/LOGIC_ONE  (
    .O(\milispulse/count<0>/LOGIC_ONE_2101 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/DXMUX  (
    .I(\milispulse/count<0>/XORF_2102 ),
    .O(\milispulse/count<0>/DXMUX_2104 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/XORF  (
    .I0(\milispulse/count<0>/CYINIT_2100 ),
    .I1(\milispulse/Mcount_count_lut [0]),
    .O(\milispulse/count<0>/XORF_2102 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/CYMUXF  (
    .IA(\milispulse/count<0>/LOGIC_ONE_2101 ),
    .IB(\milispulse/count<0>/CYINIT_2100 ),
    .SEL(\milispulse/count<0>/CYSELF_2091 ),
    .O(\milispulse/Mcount_count_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/CYINIT  (
    .I(\milispulse/count<0>/BXINV_2089 ),
    .O(\milispulse/count<0>/CYINIT_2100 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/CYSELF  (
    .I(\milispulse/Mcount_count_lut [0]),
    .O(\milispulse/count<0>/CYSELF_2091 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/BXINV  (
    .I(1'b0),
    .O(\milispulse/count<0>/BXINV_2089 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/DYMUX  (
    .I(\milispulse/count<0>/XORG_2081 ),
    .O(\milispulse/count<0>/DYMUX_2083 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/XORG  (
    .I0(\milispulse/Mcount_count_cy[0] ),
    .I1(\milispulse/count<0>/G ),
    .O(\milispulse/count<0>/XORG_2081 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/COUTUSED  (
    .I(\milispulse/count<0>/CYMUXG_2080 ),
    .O(\milispulse/Mcount_count_cy[1] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/CYMUXG  (
    .IA(\milispulse/count<0>/LOGIC_ZERO_2078 ),
    .IB(\milispulse/Mcount_count_cy[0] ),
    .SEL(\milispulse/count<0>/CYSELG_2069 ),
    .O(\milispulse/count<0>/CYMUXG_2080 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/CYSELG  (
    .I(\milispulse/count<0>/G ),
    .O(\milispulse/count<0>/CYSELG_2069 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<0>/SRINV_2067 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<0>/CLKINV_2066 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<0>/CEINV_2065 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/LOGIC_ZERO  (
    .O(\milispulse/count<2>/LOGIC_ZERO_2132 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/DXMUX  (
    .I(\milispulse/count<2>/XORF_2158 ),
    .O(\milispulse/count<2>/DXMUX_2160 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/XORF  (
    .I0(\milispulse/count<2>/CYINIT_2157 ),
    .I1(\milispulse/count<2>/F ),
    .O(\milispulse/count<2>/XORF_2158 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CYMUXF  (
    .IA(\milispulse/count<2>/LOGIC_ZERO_2132 ),
    .IB(\milispulse/count<2>/CYINIT_2157 ),
    .SEL(\milispulse/count<2>/CYSELF_2138 ),
    .O(\milispulse/Mcount_count_cy[2] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CYMUXF2  (
    .IA(\milispulse/count<2>/LOGIC_ZERO_2132 ),
    .IB(\milispulse/count<2>/LOGIC_ZERO_2132 ),
    .SEL(\milispulse/count<2>/CYSELF_2138 ),
    .O(\milispulse/count<2>/CYMUXF2_2133 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[1] ),
    .O(\milispulse/count<2>/CYINIT_2157 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CYSELF  (
    .I(\milispulse/count<2>/F ),
    .O(\milispulse/count<2>/CYSELF_2138 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/DYMUX  (
    .I(\milispulse/count<2>/XORG_2140 ),
    .O(\milispulse/count<2>/DYMUX_2142 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/XORG  (
    .I0(\milispulse/Mcount_count_cy[2] ),
    .I1(\milispulse/count<2>/G ),
    .O(\milispulse/count<2>/XORG_2140 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/COUTUSED  (
    .I(\milispulse/count<2>/CYMUXFAST_2137 ),
    .O(\milispulse/Mcount_count_cy[3] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[1] ),
    .O(\milispulse/count<2>/FASTCARRY_2135 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CYAND  (
    .I0(\milispulse/count<2>/CYSELG_2123 ),
    .I1(\milispulse/count<2>/CYSELF_2138 ),
    .O(\milispulse/count<2>/CYAND_2136 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CYMUXFAST  (
    .IA(\milispulse/count<2>/CYMUXG2_2134 ),
    .IB(\milispulse/count<2>/FASTCARRY_2135 ),
    .SEL(\milispulse/count<2>/CYAND_2136 ),
    .O(\milispulse/count<2>/CYMUXFAST_2137 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CYMUXG2  (
    .IA(\milispulse/count<2>/LOGIC_ZERO_2132 ),
    .IB(\milispulse/count<2>/CYMUXF2_2133 ),
    .SEL(\milispulse/count<2>/CYSELG_2123 ),
    .O(\milispulse/count<2>/CYMUXG2_2134 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CYSELG  (
    .I(\milispulse/count<2>/G ),
    .O(\milispulse/count<2>/CYSELG_2123 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<2>/SRINV_2121 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<2>/CLKINV_2120 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<2>/CEINV_2119 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/LOGIC_ZERO  (
    .O(\milispulse/count<4>/LOGIC_ZERO_2188 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/DXMUX  (
    .I(\milispulse/count<4>/XORF_2214 ),
    .O(\milispulse/count<4>/DXMUX_2216 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/XORF  (
    .I0(\milispulse/count<4>/CYINIT_2213 ),
    .I1(\milispulse/count<4>/F ),
    .O(\milispulse/count<4>/XORF_2214 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CYMUXF  (
    .IA(\milispulse/count<4>/LOGIC_ZERO_2188 ),
    .IB(\milispulse/count<4>/CYINIT_2213 ),
    .SEL(\milispulse/count<4>/CYSELF_2194 ),
    .O(\milispulse/Mcount_count_cy[4] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CYMUXF2  (
    .IA(\milispulse/count<4>/LOGIC_ZERO_2188 ),
    .IB(\milispulse/count<4>/LOGIC_ZERO_2188 ),
    .SEL(\milispulse/count<4>/CYSELF_2194 ),
    .O(\milispulse/count<4>/CYMUXF2_2189 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[3] ),
    .O(\milispulse/count<4>/CYINIT_2213 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CYSELF  (
    .I(\milispulse/count<4>/F ),
    .O(\milispulse/count<4>/CYSELF_2194 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/DYMUX  (
    .I(\milispulse/count<4>/XORG_2196 ),
    .O(\milispulse/count<4>/DYMUX_2198 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/XORG  (
    .I0(\milispulse/Mcount_count_cy[4] ),
    .I1(\milispulse/count<4>/G ),
    .O(\milispulse/count<4>/XORG_2196 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/COUTUSED  (
    .I(\milispulse/count<4>/CYMUXFAST_2193 ),
    .O(\milispulse/Mcount_count_cy[5] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[3] ),
    .O(\milispulse/count<4>/FASTCARRY_2191 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CYAND  (
    .I0(\milispulse/count<4>/CYSELG_2179 ),
    .I1(\milispulse/count<4>/CYSELF_2194 ),
    .O(\milispulse/count<4>/CYAND_2192 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CYMUXFAST  (
    .IA(\milispulse/count<4>/CYMUXG2_2190 ),
    .IB(\milispulse/count<4>/FASTCARRY_2191 ),
    .SEL(\milispulse/count<4>/CYAND_2192 ),
    .O(\milispulse/count<4>/CYMUXFAST_2193 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CYMUXG2  (
    .IA(\milispulse/count<4>/LOGIC_ZERO_2188 ),
    .IB(\milispulse/count<4>/CYMUXF2_2189 ),
    .SEL(\milispulse/count<4>/CYSELG_2179 ),
    .O(\milispulse/count<4>/CYMUXG2_2190 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CYSELG  (
    .I(\milispulse/count<4>/G ),
    .O(\milispulse/count<4>/CYSELG_2179 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<4>/SRINV_2177 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<4>/CLKINV_2176 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<4>/CEINV_2175 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/LOGIC_ZERO  (
    .O(\milispulse/count<6>/LOGIC_ZERO_2244 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/DXMUX  (
    .I(\milispulse/count<6>/XORF_2270 ),
    .O(\milispulse/count<6>/DXMUX_2272 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/XORF  (
    .I0(\milispulse/count<6>/CYINIT_2269 ),
    .I1(\milispulse/count<6>/F ),
    .O(\milispulse/count<6>/XORF_2270 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CYMUXF  (
    .IA(\milispulse/count<6>/LOGIC_ZERO_2244 ),
    .IB(\milispulse/count<6>/CYINIT_2269 ),
    .SEL(\milispulse/count<6>/CYSELF_2250 ),
    .O(\milispulse/Mcount_count_cy[6] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CYMUXF2  (
    .IA(\milispulse/count<6>/LOGIC_ZERO_2244 ),
    .IB(\milispulse/count<6>/LOGIC_ZERO_2244 ),
    .SEL(\milispulse/count<6>/CYSELF_2250 ),
    .O(\milispulse/count<6>/CYMUXF2_2245 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[5] ),
    .O(\milispulse/count<6>/CYINIT_2269 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CYSELF  (
    .I(\milispulse/count<6>/F ),
    .O(\milispulse/count<6>/CYSELF_2250 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/DYMUX  (
    .I(\milispulse/count<6>/XORG_2252 ),
    .O(\milispulse/count<6>/DYMUX_2254 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/XORG  (
    .I0(\milispulse/Mcount_count_cy[6] ),
    .I1(\milispulse/count<6>/G ),
    .O(\milispulse/count<6>/XORG_2252 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/COUTUSED  (
    .I(\milispulse/count<6>/CYMUXFAST_2249 ),
    .O(\milispulse/Mcount_count_cy[7] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[5] ),
    .O(\milispulse/count<6>/FASTCARRY_2247 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CYAND  (
    .I0(\milispulse/count<6>/CYSELG_2235 ),
    .I1(\milispulse/count<6>/CYSELF_2250 ),
    .O(\milispulse/count<6>/CYAND_2248 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CYMUXFAST  (
    .IA(\milispulse/count<6>/CYMUXG2_2246 ),
    .IB(\milispulse/count<6>/FASTCARRY_2247 ),
    .SEL(\milispulse/count<6>/CYAND_2248 ),
    .O(\milispulse/count<6>/CYMUXFAST_2249 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CYMUXG2  (
    .IA(\milispulse/count<6>/LOGIC_ZERO_2244 ),
    .IB(\milispulse/count<6>/CYMUXF2_2245 ),
    .SEL(\milispulse/count<6>/CYSELG_2235 ),
    .O(\milispulse/count<6>/CYMUXG2_2246 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CYSELG  (
    .I(\milispulse/count<6>/G ),
    .O(\milispulse/count<6>/CYSELG_2235 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<6>/SRINV_2233 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<6>/CLKINV_2232 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<6>/CEINV_2231 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/LOGIC_ZERO  (
    .O(\milispulse/count<8>/LOGIC_ZERO_2300 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/DXMUX  (
    .I(\milispulse/count<8>/XORF_2326 ),
    .O(\milispulse/count<8>/DXMUX_2328 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/XORF  (
    .I0(\milispulse/count<8>/CYINIT_2325 ),
    .I1(\milispulse/count<8>/F ),
    .O(\milispulse/count<8>/XORF_2326 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CYMUXF  (
    .IA(\milispulse/count<8>/LOGIC_ZERO_2300 ),
    .IB(\milispulse/count<8>/CYINIT_2325 ),
    .SEL(\milispulse/count<8>/CYSELF_2306 ),
    .O(\milispulse/Mcount_count_cy[8] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CYMUXF2  (
    .IA(\milispulse/count<8>/LOGIC_ZERO_2300 ),
    .IB(\milispulse/count<8>/LOGIC_ZERO_2300 ),
    .SEL(\milispulse/count<8>/CYSELF_2306 ),
    .O(\milispulse/count<8>/CYMUXF2_2301 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[7] ),
    .O(\milispulse/count<8>/CYINIT_2325 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CYSELF  (
    .I(\milispulse/count<8>/F ),
    .O(\milispulse/count<8>/CYSELF_2306 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/DYMUX  (
    .I(\milispulse/count<8>/XORG_2308 ),
    .O(\milispulse/count<8>/DYMUX_2310 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/XORG  (
    .I0(\milispulse/Mcount_count_cy[8] ),
    .I1(\milispulse/count<8>/G ),
    .O(\milispulse/count<8>/XORG_2308 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/COUTUSED  (
    .I(\milispulse/count<8>/CYMUXFAST_2305 ),
    .O(\milispulse/Mcount_count_cy[9] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[7] ),
    .O(\milispulse/count<8>/FASTCARRY_2303 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CYAND  (
    .I0(\milispulse/count<8>/CYSELG_2291 ),
    .I1(\milispulse/count<8>/CYSELF_2306 ),
    .O(\milispulse/count<8>/CYAND_2304 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CYMUXFAST  (
    .IA(\milispulse/count<8>/CYMUXG2_2302 ),
    .IB(\milispulse/count<8>/FASTCARRY_2303 ),
    .SEL(\milispulse/count<8>/CYAND_2304 ),
    .O(\milispulse/count<8>/CYMUXFAST_2305 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CYMUXG2  (
    .IA(\milispulse/count<8>/LOGIC_ZERO_2300 ),
    .IB(\milispulse/count<8>/CYMUXF2_2301 ),
    .SEL(\milispulse/count<8>/CYSELG_2291 ),
    .O(\milispulse/count<8>/CYMUXG2_2302 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CYSELG  (
    .I(\milispulse/count<8>/G ),
    .O(\milispulse/count<8>/CYSELG_2291 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<8>/SRINV_2289 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<8>/CLKINV_2288 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<8>/CEINV_2287 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/LOGIC_ZERO  (
    .O(\milispulse/count<10>/LOGIC_ZERO_2356 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/DXMUX  (
    .I(\milispulse/count<10>/XORF_2382 ),
    .O(\milispulse/count<10>/DXMUX_2384 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/XORF  (
    .I0(\milispulse/count<10>/CYINIT_2381 ),
    .I1(\milispulse/count<10>/F ),
    .O(\milispulse/count<10>/XORF_2382 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CYMUXF  (
    .IA(\milispulse/count<10>/LOGIC_ZERO_2356 ),
    .IB(\milispulse/count<10>/CYINIT_2381 ),
    .SEL(\milispulse/count<10>/CYSELF_2362 ),
    .O(\milispulse/Mcount_count_cy[10] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CYMUXF2  (
    .IA(\milispulse/count<10>/LOGIC_ZERO_2356 ),
    .IB(\milispulse/count<10>/LOGIC_ZERO_2356 ),
    .SEL(\milispulse/count<10>/CYSELF_2362 ),
    .O(\milispulse/count<10>/CYMUXF2_2357 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[9] ),
    .O(\milispulse/count<10>/CYINIT_2381 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CYSELF  (
    .I(\milispulse/count<10>/F ),
    .O(\milispulse/count<10>/CYSELF_2362 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/DYMUX  (
    .I(\milispulse/count<10>/XORG_2364 ),
    .O(\milispulse/count<10>/DYMUX_2366 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/XORG  (
    .I0(\milispulse/Mcount_count_cy[10] ),
    .I1(\milispulse/count<10>/G ),
    .O(\milispulse/count<10>/XORG_2364 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/COUTUSED  (
    .I(\milispulse/count<10>/CYMUXFAST_2361 ),
    .O(\milispulse/Mcount_count_cy[11] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[9] ),
    .O(\milispulse/count<10>/FASTCARRY_2359 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CYAND  (
    .I0(\milispulse/count<10>/CYSELG_2347 ),
    .I1(\milispulse/count<10>/CYSELF_2362 ),
    .O(\milispulse/count<10>/CYAND_2360 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CYMUXFAST  (
    .IA(\milispulse/count<10>/CYMUXG2_2358 ),
    .IB(\milispulse/count<10>/FASTCARRY_2359 ),
    .SEL(\milispulse/count<10>/CYAND_2360 ),
    .O(\milispulse/count<10>/CYMUXFAST_2361 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CYMUXG2  (
    .IA(\milispulse/count<10>/LOGIC_ZERO_2356 ),
    .IB(\milispulse/count<10>/CYMUXF2_2357 ),
    .SEL(\milispulse/count<10>/CYSELG_2347 ),
    .O(\milispulse/count<10>/CYMUXG2_2358 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CYSELG  (
    .I(\milispulse/count<10>/G ),
    .O(\milispulse/count<10>/CYSELG_2347 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<10>/SRINV_2345 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<10>/CLKINV_2344 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<10>/CEINV_2343 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/LOGIC_ZERO  (
    .O(\milispulse/count<12>/LOGIC_ZERO_2412 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/DXMUX  (
    .I(\milispulse/count<12>/XORF_2438 ),
    .O(\milispulse/count<12>/DXMUX_2440 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/XORF  (
    .I0(\milispulse/count<12>/CYINIT_2437 ),
    .I1(\milispulse/count<12>/F ),
    .O(\milispulse/count<12>/XORF_2438 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CYMUXF  (
    .IA(\milispulse/count<12>/LOGIC_ZERO_2412 ),
    .IB(\milispulse/count<12>/CYINIT_2437 ),
    .SEL(\milispulse/count<12>/CYSELF_2418 ),
    .O(\milispulse/Mcount_count_cy[12] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CYMUXF2  (
    .IA(\milispulse/count<12>/LOGIC_ZERO_2412 ),
    .IB(\milispulse/count<12>/LOGIC_ZERO_2412 ),
    .SEL(\milispulse/count<12>/CYSELF_2418 ),
    .O(\milispulse/count<12>/CYMUXF2_2413 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[11] ),
    .O(\milispulse/count<12>/CYINIT_2437 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CYSELF  (
    .I(\milispulse/count<12>/F ),
    .O(\milispulse/count<12>/CYSELF_2418 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/DYMUX  (
    .I(\milispulse/count<12>/XORG_2420 ),
    .O(\milispulse/count<12>/DYMUX_2422 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/XORG  (
    .I0(\milispulse/Mcount_count_cy[12] ),
    .I1(\milispulse/count<12>/G ),
    .O(\milispulse/count<12>/XORG_2420 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/COUTUSED  (
    .I(\milispulse/count<12>/CYMUXFAST_2417 ),
    .O(\milispulse/Mcount_count_cy[13] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[11] ),
    .O(\milispulse/count<12>/FASTCARRY_2415 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CYAND  (
    .I0(\milispulse/count<12>/CYSELG_2403 ),
    .I1(\milispulse/count<12>/CYSELF_2418 ),
    .O(\milispulse/count<12>/CYAND_2416 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CYMUXFAST  (
    .IA(\milispulse/count<12>/CYMUXG2_2414 ),
    .IB(\milispulse/count<12>/FASTCARRY_2415 ),
    .SEL(\milispulse/count<12>/CYAND_2416 ),
    .O(\milispulse/count<12>/CYMUXFAST_2417 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CYMUXG2  (
    .IA(\milispulse/count<12>/LOGIC_ZERO_2412 ),
    .IB(\milispulse/count<12>/CYMUXF2_2413 ),
    .SEL(\milispulse/count<12>/CYSELG_2403 ),
    .O(\milispulse/count<12>/CYMUXG2_2414 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CYSELG  (
    .I(\milispulse/count<12>/G ),
    .O(\milispulse/count<12>/CYSELG_2403 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<12>/SRINV_2401 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<12>/CLKINV_2400 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<12>/CEINV_2399 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/LOGIC_ZERO  (
    .O(\milispulse/count<14>/LOGIC_ZERO_2468 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/DXMUX  (
    .I(\milispulse/count<14>/XORF_2494 ),
    .O(\milispulse/count<14>/DXMUX_2496 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/XORF  (
    .I0(\milispulse/count<14>/CYINIT_2493 ),
    .I1(\milispulse/count<14>/F ),
    .O(\milispulse/count<14>/XORF_2494 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CYMUXF  (
    .IA(\milispulse/count<14>/LOGIC_ZERO_2468 ),
    .IB(\milispulse/count<14>/CYINIT_2493 ),
    .SEL(\milispulse/count<14>/CYSELF_2474 ),
    .O(\milispulse/Mcount_count_cy[14] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CYMUXF2  (
    .IA(\milispulse/count<14>/LOGIC_ZERO_2468 ),
    .IB(\milispulse/count<14>/LOGIC_ZERO_2468 ),
    .SEL(\milispulse/count<14>/CYSELF_2474 ),
    .O(\milispulse/count<14>/CYMUXF2_2469 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[13] ),
    .O(\milispulse/count<14>/CYINIT_2493 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CYSELF  (
    .I(\milispulse/count<14>/F ),
    .O(\milispulse/count<14>/CYSELF_2474 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/DYMUX  (
    .I(\milispulse/count<14>/XORG_2476 ),
    .O(\milispulse/count<14>/DYMUX_2478 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/XORG  (
    .I0(\milispulse/Mcount_count_cy[14] ),
    .I1(\milispulse/count<14>/G ),
    .O(\milispulse/count<14>/XORG_2476 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/COUTUSED  (
    .I(\milispulse/count<14>/CYMUXFAST_2473 ),
    .O(\milispulse/Mcount_count_cy[15] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[13] ),
    .O(\milispulse/count<14>/FASTCARRY_2471 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CYAND  (
    .I0(\milispulse/count<14>/CYSELG_2459 ),
    .I1(\milispulse/count<14>/CYSELF_2474 ),
    .O(\milispulse/count<14>/CYAND_2472 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CYMUXFAST  (
    .IA(\milispulse/count<14>/CYMUXG2_2470 ),
    .IB(\milispulse/count<14>/FASTCARRY_2471 ),
    .SEL(\milispulse/count<14>/CYAND_2472 ),
    .O(\milispulse/count<14>/CYMUXFAST_2473 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CYMUXG2  (
    .IA(\milispulse/count<14>/LOGIC_ZERO_2468 ),
    .IB(\milispulse/count<14>/CYMUXF2_2469 ),
    .SEL(\milispulse/count<14>/CYSELG_2459 ),
    .O(\milispulse/count<14>/CYMUXG2_2470 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CYSELG  (
    .I(\milispulse/count<14>/G ),
    .O(\milispulse/count<14>/CYSELG_2459 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<14>/SRINV_2457 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<14>/CLKINV_2456 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<14>/CEINV_2455 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/LOGIC_ZERO  (
    .O(\milispulse/count<16>/LOGIC_ZERO_2524 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/DXMUX  (
    .I(\milispulse/count<16>/XORF_2550 ),
    .O(\milispulse/count<16>/DXMUX_2552 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/XORF  (
    .I0(\milispulse/count<16>/CYINIT_2549 ),
    .I1(\milispulse/count<16>/F ),
    .O(\milispulse/count<16>/XORF_2550 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CYMUXF  (
    .IA(\milispulse/count<16>/LOGIC_ZERO_2524 ),
    .IB(\milispulse/count<16>/CYINIT_2549 ),
    .SEL(\milispulse/count<16>/CYSELF_2530 ),
    .O(\milispulse/Mcount_count_cy[16] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CYMUXF2  (
    .IA(\milispulse/count<16>/LOGIC_ZERO_2524 ),
    .IB(\milispulse/count<16>/LOGIC_ZERO_2524 ),
    .SEL(\milispulse/count<16>/CYSELF_2530 ),
    .O(\milispulse/count<16>/CYMUXF2_2525 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[15] ),
    .O(\milispulse/count<16>/CYINIT_2549 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CYSELF  (
    .I(\milispulse/count<16>/F ),
    .O(\milispulse/count<16>/CYSELF_2530 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/DYMUX  (
    .I(\milispulse/count<16>/XORG_2532 ),
    .O(\milispulse/count<16>/DYMUX_2534 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/XORG  (
    .I0(\milispulse/Mcount_count_cy[16] ),
    .I1(\milispulse/count<16>/G ),
    .O(\milispulse/count<16>/XORG_2532 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/COUTUSED  (
    .I(\milispulse/count<16>/CYMUXFAST_2529 ),
    .O(\milispulse/Mcount_count_cy[17] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[15] ),
    .O(\milispulse/count<16>/FASTCARRY_2527 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CYAND  (
    .I0(\milispulse/count<16>/CYSELG_2515 ),
    .I1(\milispulse/count<16>/CYSELF_2530 ),
    .O(\milispulse/count<16>/CYAND_2528 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CYMUXFAST  (
    .IA(\milispulse/count<16>/CYMUXG2_2526 ),
    .IB(\milispulse/count<16>/FASTCARRY_2527 ),
    .SEL(\milispulse/count<16>/CYAND_2528 ),
    .O(\milispulse/count<16>/CYMUXFAST_2529 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CYMUXG2  (
    .IA(\milispulse/count<16>/LOGIC_ZERO_2524 ),
    .IB(\milispulse/count<16>/CYMUXF2_2525 ),
    .SEL(\milispulse/count<16>/CYSELG_2515 ),
    .O(\milispulse/count<16>/CYMUXG2_2526 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CYSELG  (
    .I(\milispulse/count<16>/G ),
    .O(\milispulse/count<16>/CYSELG_2515 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<16>/SRINV_2513 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<16>/CLKINV_2512 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<16>/CEINV_2511 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/LOGIC_ZERO  (
    .O(\milispulse/count<18>/LOGIC_ZERO_2580 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/DXMUX  (
    .I(\milispulse/count<18>/XORF_2606 ),
    .O(\milispulse/count<18>/DXMUX_2608 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/XORF  (
    .I0(\milispulse/count<18>/CYINIT_2605 ),
    .I1(\milispulse/count<18>/F ),
    .O(\milispulse/count<18>/XORF_2606 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CYMUXF  (
    .IA(\milispulse/count<18>/LOGIC_ZERO_2580 ),
    .IB(\milispulse/count<18>/CYINIT_2605 ),
    .SEL(\milispulse/count<18>/CYSELF_2586 ),
    .O(\milispulse/Mcount_count_cy[18] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CYMUXF2  (
    .IA(\milispulse/count<18>/LOGIC_ZERO_2580 ),
    .IB(\milispulse/count<18>/LOGIC_ZERO_2580 ),
    .SEL(\milispulse/count<18>/CYSELF_2586 ),
    .O(\milispulse/count<18>/CYMUXF2_2581 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[17] ),
    .O(\milispulse/count<18>/CYINIT_2605 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CYSELF  (
    .I(\milispulse/count<18>/F ),
    .O(\milispulse/count<18>/CYSELF_2586 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/DYMUX  (
    .I(\milispulse/count<18>/XORG_2588 ),
    .O(\milispulse/count<18>/DYMUX_2590 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/XORG  (
    .I0(\milispulse/Mcount_count_cy[18] ),
    .I1(\milispulse/count<18>/G ),
    .O(\milispulse/count<18>/XORG_2588 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/COUTUSED  (
    .I(\milispulse/count<18>/CYMUXFAST_2585 ),
    .O(\milispulse/Mcount_count_cy[19] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[17] ),
    .O(\milispulse/count<18>/FASTCARRY_2583 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CYAND  (
    .I0(\milispulse/count<18>/CYSELG_2571 ),
    .I1(\milispulse/count<18>/CYSELF_2586 ),
    .O(\milispulse/count<18>/CYAND_2584 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CYMUXFAST  (
    .IA(\milispulse/count<18>/CYMUXG2_2582 ),
    .IB(\milispulse/count<18>/FASTCARRY_2583 ),
    .SEL(\milispulse/count<18>/CYAND_2584 ),
    .O(\milispulse/count<18>/CYMUXFAST_2585 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CYMUXG2  (
    .IA(\milispulse/count<18>/LOGIC_ZERO_2580 ),
    .IB(\milispulse/count<18>/CYMUXF2_2581 ),
    .SEL(\milispulse/count<18>/CYSELG_2571 ),
    .O(\milispulse/count<18>/CYMUXG2_2582 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CYSELG  (
    .I(\milispulse/count<18>/G ),
    .O(\milispulse/count<18>/CYSELG_2571 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<18>/SRINV_2569 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<18>/CLKINV_2568 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<18>/CEINV_2567 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/LOGIC_ZERO  (
    .O(\milispulse/count<20>/LOGIC_ZERO_2636 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/DXMUX  (
    .I(\milispulse/count<20>/XORF_2662 ),
    .O(\milispulse/count<20>/DXMUX_2664 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/XORF  (
    .I0(\milispulse/count<20>/CYINIT_2661 ),
    .I1(\milispulse/count<20>/F ),
    .O(\milispulse/count<20>/XORF_2662 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CYMUXF  (
    .IA(\milispulse/count<20>/LOGIC_ZERO_2636 ),
    .IB(\milispulse/count<20>/CYINIT_2661 ),
    .SEL(\milispulse/count<20>/CYSELF_2642 ),
    .O(\milispulse/Mcount_count_cy[20] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CYMUXF2  (
    .IA(\milispulse/count<20>/LOGIC_ZERO_2636 ),
    .IB(\milispulse/count<20>/LOGIC_ZERO_2636 ),
    .SEL(\milispulse/count<20>/CYSELF_2642 ),
    .O(\milispulse/count<20>/CYMUXF2_2637 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[19] ),
    .O(\milispulse/count<20>/CYINIT_2661 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CYSELF  (
    .I(\milispulse/count<20>/F ),
    .O(\milispulse/count<20>/CYSELF_2642 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/DYMUX  (
    .I(\milispulse/count<20>/XORG_2644 ),
    .O(\milispulse/count<20>/DYMUX_2646 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/XORG  (
    .I0(\milispulse/Mcount_count_cy[20] ),
    .I1(\milispulse/count<20>/G ),
    .O(\milispulse/count<20>/XORG_2644 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/COUTUSED  (
    .I(\milispulse/count<20>/CYMUXFAST_2641 ),
    .O(\milispulse/Mcount_count_cy[21] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[19] ),
    .O(\milispulse/count<20>/FASTCARRY_2639 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CYAND  (
    .I0(\milispulse/count<20>/CYSELG_2627 ),
    .I1(\milispulse/count<20>/CYSELF_2642 ),
    .O(\milispulse/count<20>/CYAND_2640 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CYMUXFAST  (
    .IA(\milispulse/count<20>/CYMUXG2_2638 ),
    .IB(\milispulse/count<20>/FASTCARRY_2639 ),
    .SEL(\milispulse/count<20>/CYAND_2640 ),
    .O(\milispulse/count<20>/CYMUXFAST_2641 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CYMUXG2  (
    .IA(\milispulse/count<20>/LOGIC_ZERO_2636 ),
    .IB(\milispulse/count<20>/CYMUXF2_2637 ),
    .SEL(\milispulse/count<20>/CYSELG_2627 ),
    .O(\milispulse/count<20>/CYMUXG2_2638 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CYSELG  (
    .I(\milispulse/count<20>/G ),
    .O(\milispulse/count<20>/CYSELG_2627 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<20>/SRINV_2625 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<20>/CLKINV_2624 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<20>/CEINV_2623 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/LOGIC_ZERO  (
    .O(\milispulse/count<22>/LOGIC_ZERO_2692 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/DXMUX  (
    .I(\milispulse/count<22>/XORF_2718 ),
    .O(\milispulse/count<22>/DXMUX_2720 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/XORF  (
    .I0(\milispulse/count<22>/CYINIT_2717 ),
    .I1(\milispulse/count<22>/F ),
    .O(\milispulse/count<22>/XORF_2718 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CYMUXF  (
    .IA(\milispulse/count<22>/LOGIC_ZERO_2692 ),
    .IB(\milispulse/count<22>/CYINIT_2717 ),
    .SEL(\milispulse/count<22>/CYSELF_2698 ),
    .O(\milispulse/Mcount_count_cy[22] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CYMUXF2  (
    .IA(\milispulse/count<22>/LOGIC_ZERO_2692 ),
    .IB(\milispulse/count<22>/LOGIC_ZERO_2692 ),
    .SEL(\milispulse/count<22>/CYSELF_2698 ),
    .O(\milispulse/count<22>/CYMUXF2_2693 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[21] ),
    .O(\milispulse/count<22>/CYINIT_2717 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CYSELF  (
    .I(\milispulse/count<22>/F ),
    .O(\milispulse/count<22>/CYSELF_2698 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/DYMUX  (
    .I(\milispulse/count<22>/XORG_2700 ),
    .O(\milispulse/count<22>/DYMUX_2702 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/XORG  (
    .I0(\milispulse/Mcount_count_cy[22] ),
    .I1(\milispulse/count<22>/G ),
    .O(\milispulse/count<22>/XORG_2700 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/COUTUSED  (
    .I(\milispulse/count<22>/CYMUXFAST_2697 ),
    .O(\milispulse/Mcount_count_cy[23] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[21] ),
    .O(\milispulse/count<22>/FASTCARRY_2695 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CYAND  (
    .I0(\milispulse/count<22>/CYSELG_2683 ),
    .I1(\milispulse/count<22>/CYSELF_2698 ),
    .O(\milispulse/count<22>/CYAND_2696 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CYMUXFAST  (
    .IA(\milispulse/count<22>/CYMUXG2_2694 ),
    .IB(\milispulse/count<22>/FASTCARRY_2695 ),
    .SEL(\milispulse/count<22>/CYAND_2696 ),
    .O(\milispulse/count<22>/CYMUXFAST_2697 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CYMUXG2  (
    .IA(\milispulse/count<22>/LOGIC_ZERO_2692 ),
    .IB(\milispulse/count<22>/CYMUXF2_2693 ),
    .SEL(\milispulse/count<22>/CYSELG_2683 ),
    .O(\milispulse/count<22>/CYMUXG2_2694 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CYSELG  (
    .I(\milispulse/count<22>/G ),
    .O(\milispulse/count<22>/CYSELG_2683 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<22>/SRINV_2681 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<22>/CLKINV_2680 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<22>/CEINV_2679 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/LOGIC_ZERO  (
    .O(\milispulse/count<24>/LOGIC_ZERO_2748 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/DXMUX  (
    .I(\milispulse/count<24>/XORF_2774 ),
    .O(\milispulse/count<24>/DXMUX_2776 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/XORF  (
    .I0(\milispulse/count<24>/CYINIT_2773 ),
    .I1(\milispulse/count<24>/F ),
    .O(\milispulse/count<24>/XORF_2774 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CYMUXF  (
    .IA(\milispulse/count<24>/LOGIC_ZERO_2748 ),
    .IB(\milispulse/count<24>/CYINIT_2773 ),
    .SEL(\milispulse/count<24>/CYSELF_2754 ),
    .O(\milispulse/Mcount_count_cy[24] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CYMUXF2  (
    .IA(\milispulse/count<24>/LOGIC_ZERO_2748 ),
    .IB(\milispulse/count<24>/LOGIC_ZERO_2748 ),
    .SEL(\milispulse/count<24>/CYSELF_2754 ),
    .O(\milispulse/count<24>/CYMUXF2_2749 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[23] ),
    .O(\milispulse/count<24>/CYINIT_2773 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CYSELF  (
    .I(\milispulse/count<24>/F ),
    .O(\milispulse/count<24>/CYSELF_2754 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/DYMUX  (
    .I(\milispulse/count<24>/XORG_2756 ),
    .O(\milispulse/count<24>/DYMUX_2758 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/XORG  (
    .I0(\milispulse/Mcount_count_cy[24] ),
    .I1(\milispulse/count<24>/G ),
    .O(\milispulse/count<24>/XORG_2756 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/COUTUSED  (
    .I(\milispulse/count<24>/CYMUXFAST_2753 ),
    .O(\milispulse/Mcount_count_cy[25] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[23] ),
    .O(\milispulse/count<24>/FASTCARRY_2751 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CYAND  (
    .I0(\milispulse/count<24>/CYSELG_2739 ),
    .I1(\milispulse/count<24>/CYSELF_2754 ),
    .O(\milispulse/count<24>/CYAND_2752 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CYMUXFAST  (
    .IA(\milispulse/count<24>/CYMUXG2_2750 ),
    .IB(\milispulse/count<24>/FASTCARRY_2751 ),
    .SEL(\milispulse/count<24>/CYAND_2752 ),
    .O(\milispulse/count<24>/CYMUXFAST_2753 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CYMUXG2  (
    .IA(\milispulse/count<24>/LOGIC_ZERO_2748 ),
    .IB(\milispulse/count<24>/CYMUXF2_2749 ),
    .SEL(\milispulse/count<24>/CYSELG_2739 ),
    .O(\milispulse/count<24>/CYMUXG2_2750 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CYSELG  (
    .I(\milispulse/count<24>/G ),
    .O(\milispulse/count<24>/CYSELG_2739 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<24>/SRINV_2737 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<24>/CLKINV_2736 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<24>/CEINV_2735 )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y85" ),
    .INIT ( 1'b0 ))
  \milispulse/count_26  (
    .I(\milispulse/count<26>/DXMUX_2832 ),
    .CE(\milispulse/count<26>/CEINV_2791 ),
    .CLK(\milispulse/count<26>/CLKINV_2792 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<26>/SRINV_2793 ),
    .O(\milispulse/count [26])
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/LOGIC_ZERO  (
    .O(\milispulse/count<26>/LOGIC_ZERO_2804 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/DXMUX  (
    .I(\milispulse/count<26>/XORF_2830 ),
    .O(\milispulse/count<26>/DXMUX_2832 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/XORF  (
    .I0(\milispulse/count<26>/CYINIT_2829 ),
    .I1(\milispulse/count<26>/F ),
    .O(\milispulse/count<26>/XORF_2830 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CYMUXF  (
    .IA(\milispulse/count<26>/LOGIC_ZERO_2804 ),
    .IB(\milispulse/count<26>/CYINIT_2829 ),
    .SEL(\milispulse/count<26>/CYSELF_2810 ),
    .O(\milispulse/Mcount_count_cy[26] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CYMUXF2  (
    .IA(\milispulse/count<26>/LOGIC_ZERO_2804 ),
    .IB(\milispulse/count<26>/LOGIC_ZERO_2804 ),
    .SEL(\milispulse/count<26>/CYSELF_2810 ),
    .O(\milispulse/count<26>/CYMUXF2_2805 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[25] ),
    .O(\milispulse/count<26>/CYINIT_2829 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CYSELF  (
    .I(\milispulse/count<26>/F ),
    .O(\milispulse/count<26>/CYSELF_2810 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/DYMUX  (
    .I(\milispulse/count<26>/XORG_2812 ),
    .O(\milispulse/count<26>/DYMUX_2814 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/XORG  (
    .I0(\milispulse/Mcount_count_cy[26] ),
    .I1(\milispulse/count<26>/G ),
    .O(\milispulse/count<26>/XORG_2812 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/COUTUSED  (
    .I(\milispulse/count<26>/CYMUXFAST_2809 ),
    .O(\milispulse/Mcount_count_cy[27] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[25] ),
    .O(\milispulse/count<26>/FASTCARRY_2807 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CYAND  (
    .I0(\milispulse/count<26>/CYSELG_2795 ),
    .I1(\milispulse/count<26>/CYSELF_2810 ),
    .O(\milispulse/count<26>/CYAND_2808 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CYMUXFAST  (
    .IA(\milispulse/count<26>/CYMUXG2_2806 ),
    .IB(\milispulse/count<26>/FASTCARRY_2807 ),
    .SEL(\milispulse/count<26>/CYAND_2808 ),
    .O(\milispulse/count<26>/CYMUXFAST_2809 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CYMUXG2  (
    .IA(\milispulse/count<26>/LOGIC_ZERO_2804 ),
    .IB(\milispulse/count<26>/CYMUXF2_2805 ),
    .SEL(\milispulse/count<26>/CYSELG_2795 ),
    .O(\milispulse/count<26>/CYMUXG2_2806 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CYSELG  (
    .I(\milispulse/count<26>/G ),
    .O(\milispulse/count<26>/CYSELG_2795 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<26>/SRINV_2793 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<26>/CLKINV_2792 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<26>/CEINV_2791 )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y86" ),
    .INIT ( 1'b0 ))
  \milispulse/count_29  (
    .I(\milispulse/count<28>/DYMUX_2870 ),
    .CE(\milispulse/count<28>/CEINV_2847 ),
    .CLK(\milispulse/count<28>/CLKINV_2848 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<28>/SRINV_2849 ),
    .O(\milispulse/count [29])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y86" ),
    .INIT ( 1'b0 ))
  \milispulse/count_28  (
    .I(\milispulse/count<28>/DXMUX_2888 ),
    .CE(\milispulse/count<28>/CEINV_2847 ),
    .CLK(\milispulse/count<28>/CLKINV_2848 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<28>/SRINV_2849 ),
    .O(\milispulse/count [28])
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/LOGIC_ZERO  (
    .O(\milispulse/count<28>/LOGIC_ZERO_2860 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/DXMUX  (
    .I(\milispulse/count<28>/XORF_2886 ),
    .O(\milispulse/count<28>/DXMUX_2888 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/XORF  (
    .I0(\milispulse/count<28>/CYINIT_2885 ),
    .I1(\milispulse/count<28>/F ),
    .O(\milispulse/count<28>/XORF_2886 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CYMUXF  (
    .IA(\milispulse/count<28>/LOGIC_ZERO_2860 ),
    .IB(\milispulse/count<28>/CYINIT_2885 ),
    .SEL(\milispulse/count<28>/CYSELF_2866 ),
    .O(\milispulse/Mcount_count_cy[28] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CYMUXF2  (
    .IA(\milispulse/count<28>/LOGIC_ZERO_2860 ),
    .IB(\milispulse/count<28>/LOGIC_ZERO_2860 ),
    .SEL(\milispulse/count<28>/CYSELF_2866 ),
    .O(\milispulse/count<28>/CYMUXF2_2861 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CYINIT  (
    .I(\milispulse/Mcount_count_cy[27] ),
    .O(\milispulse/count<28>/CYINIT_2885 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CYSELF  (
    .I(\milispulse/count<28>/F ),
    .O(\milispulse/count<28>/CYSELF_2866 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/DYMUX  (
    .I(\milispulse/count<28>/XORG_2868 ),
    .O(\milispulse/count<28>/DYMUX_2870 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/XORG  (
    .I0(\milispulse/Mcount_count_cy[28] ),
    .I1(\milispulse/count<28>/G ),
    .O(\milispulse/count<28>/XORG_2868 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/FASTCARRY  (
    .I(\milispulse/Mcount_count_cy[27] ),
    .O(\milispulse/count<28>/FASTCARRY_2863 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CYAND  (
    .I0(\milispulse/count<28>/CYSELG_2851 ),
    .I1(\milispulse/count<28>/CYSELF_2866 ),
    .O(\milispulse/count<28>/CYAND_2864 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CYMUXFAST  (
    .IA(\milispulse/count<28>/CYMUXG2_2862 ),
    .IB(\milispulse/count<28>/FASTCARRY_2863 ),
    .SEL(\milispulse/count<28>/CYAND_2864 ),
    .O(\milispulse/count<28>/CYMUXFAST_2865 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CYMUXG2  (
    .IA(\milispulse/count<28>/LOGIC_ZERO_2860 ),
    .IB(\milispulse/count<28>/CYMUXF2_2861 ),
    .SEL(\milispulse/count<28>/CYSELG_2851 ),
    .O(\milispulse/count<28>/CYMUXG2_2862 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CYSELG  (
    .I(\milispulse/count<28>/G ),
    .O(\milispulse/count<28>/CYSELG_2851 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<28>/SRINV_2849 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<28>/CLKINV_2848 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<28>/CEINV_2847 )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y87" ),
    .INIT ( 1'b0 ))
  \milispulse/count_31  (
    .I(\milispulse/count<30>/DYMUX_2917 ),
    .CE(\milispulse/count<30>/CEINV_2902 ),
    .CLK(\milispulse/count<30>/CLKINV_2903 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<30>/SRINV_2904 ),
    .O(\milispulse/count [31])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y87" ),
    .INIT ( 1'b0 ))
  \milispulse/count_30  (
    .I(\milispulse/count<30>/DXMUX_2937 ),
    .CE(\milispulse/count<30>/CEINV_2902 ),
    .CLK(\milispulse/count<30>/CLKINV_2903 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<30>/SRINV_2904 ),
    .O(\milispulse/count [30])
  );
  X_ZERO #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/LOGIC_ZERO  (
    .O(\milispulse/count<30>/LOGIC_ZERO_2934 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/DXMUX  (
    .I(\milispulse/count<30>/XORF_2935 ),
    .O(\milispulse/count<30>/DXMUX_2937 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/XORF  (
    .I0(\milispulse/count<30>/CYINIT_2933 ),
    .I1(\milispulse/count<30>/F ),
    .O(\milispulse/count<30>/XORF_2935 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/CYMUXF  (
    .IA(\milispulse/count<30>/LOGIC_ZERO_2934 ),
    .IB(\milispulse/count<30>/CYINIT_2933 ),
    .SEL(\milispulse/count<30>/CYSELF_2924 ),
    .O(\milispulse/Mcount_count_cy[30] )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/CYINIT  (
    .I(\milispulse/count<28>/CYMUXFAST_2865 ),
    .O(\milispulse/count<30>/CYINIT_2933 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/CYSELF  (
    .I(\milispulse/count<30>/F ),
    .O(\milispulse/count<30>/CYSELF_2924 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/DYMUX  (
    .I(\milispulse/count<30>/XORG_2915 ),
    .O(\milispulse/count<30>/DYMUX_2917 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/XORG  (
    .I0(\milispulse/Mcount_count_cy[30] ),
    .I1(\milispulse/count<31>_rt_2912 ),
    .O(\milispulse/count<30>/XORG_2915 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/SRINV  (
    .I(\milispulse/count_and0000_0 ),
    .O(\milispulse/count<30>/SRINV_2904 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/CLKINV  (
    .I(clk_BUFGP),
    .O(\milispulse/count<30>/CLKINV_2903 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/CEINV  (
    .I(\milispulse/started [0]),
    .O(\milispulse/count<30>/CEINV_2902 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<31>_rt  (
    .ADR0(\milispulse/count [31]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<31>_rt_2912 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y67" ),
    .INIT ( 1'b0 ))
  count_1 (
    .I(\count<0>/DYMUX_2966 ),
    .CE(VCC),
    .CLK(\count<0>/CLKINV_2950 ),
    .SET(GND),
    .RST(GND),
    .O(count[1])
  );
  X_LUT4 #(
    .INIT ( 16'h3333 ),
    .LOC ( "SLICE_X65Y67" ))
  \Mcount_count_lut<0>_INV_0  (
    .ADR0(VCC),
    .ADR1(count[0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Mcount_count_lut[0])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y67" ),
    .INIT ( 1'b0 ))
  count_0 (
    .I(\count<0>/DXMUX_2985 ),
    .CE(VCC),
    .CLK(\count<0>/CLKINV_2950 ),
    .SET(GND),
    .RST(GND),
    .O(count[0])
  );
  X_ZERO #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/LOGIC_ZERO  (
    .O(\count<0>/LOGIC_ZERO_2961 )
  );
  X_ONE #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/LOGIC_ONE  (
    .O(\count<0>/LOGIC_ONE_2982 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/DXMUX  (
    .I(\count<0>/XORF_2983 ),
    .O(\count<0>/DXMUX_2985 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/XORF  (
    .I0(\count<0>/CYINIT_2981 ),
    .I1(Mcount_count_lut[0]),
    .O(\count<0>/XORF_2983 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/CYMUXF  (
    .IA(\count<0>/LOGIC_ONE_2982 ),
    .IB(\count<0>/CYINIT_2981 ),
    .SEL(\count<0>/CYSELF_2972 ),
    .O(Mcount_count_cy[0])
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/CYINIT  (
    .I(\count<0>/BXINV_2970 ),
    .O(\count<0>/CYINIT_2981 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/CYSELF  (
    .I(Mcount_count_lut[0]),
    .O(\count<0>/CYSELF_2972 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/BXINV  (
    .I(1'b0),
    .O(\count<0>/BXINV_2970 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/DYMUX  (
    .I(\count<0>/XORG_2964 ),
    .O(\count<0>/DYMUX_2966 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/XORG  (
    .I0(Mcount_count_cy[0]),
    .I1(\count<0>/G ),
    .O(\count<0>/XORG_2964 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/COUTUSED  (
    .I(\count<0>/CYMUXG_2963 ),
    .O(Mcount_count_cy[1])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/CYMUXG  (
    .IA(\count<0>/LOGIC_ZERO_2961 ),
    .IB(Mcount_count_cy[0]),
    .SEL(\count<0>/CYSELG_2952 ),
    .O(\count<0>/CYMUXG_2963 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/CYSELG  (
    .I(\count<0>/G ),
    .O(\count<0>/CYSELG_2952 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<0>/CLKINV_2950 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y68" ),
    .INIT ( 1'b0 ))
  count_2 (
    .I(\count<2>/DXMUX_3033 ),
    .CE(VCC),
    .CLK(\count<2>/CLKINV_2996 ),
    .SET(GND),
    .RST(GND),
    .O(count[2])
  );
  X_ZERO #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/LOGIC_ZERO  (
    .O(\count<2>/LOGIC_ZERO_3007 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/DXMUX  (
    .I(\count<2>/XORF_3031 ),
    .O(\count<2>/DXMUX_3033 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/XORF  (
    .I0(\count<2>/CYINIT_3030 ),
    .I1(\count<2>/F ),
    .O(\count<2>/XORF_3031 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/CYMUXF  (
    .IA(\count<2>/LOGIC_ZERO_3007 ),
    .IB(\count<2>/CYINIT_3030 ),
    .SEL(\count<2>/CYSELF_3013 ),
    .O(Mcount_count_cy[2])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/CYMUXF2  (
    .IA(\count<2>/LOGIC_ZERO_3007 ),
    .IB(\count<2>/LOGIC_ZERO_3007 ),
    .SEL(\count<2>/CYSELF_3013 ),
    .O(\count<2>/CYMUXF2_3008 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/CYINIT  (
    .I(Mcount_count_cy[1]),
    .O(\count<2>/CYINIT_3030 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/CYSELF  (
    .I(\count<2>/F ),
    .O(\count<2>/CYSELF_3013 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/DYMUX  (
    .I(\count<2>/XORG_3015 ),
    .O(\count<2>/DYMUX_3017 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/XORG  (
    .I0(Mcount_count_cy[2]),
    .I1(\count<2>/G ),
    .O(\count<2>/XORG_3015 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/COUTUSED  (
    .I(\count<2>/CYMUXFAST_3012 ),
    .O(Mcount_count_cy[3])
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/FASTCARRY  (
    .I(Mcount_count_cy[1]),
    .O(\count<2>/FASTCARRY_3010 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/CYAND  (
    .I0(\count<2>/CYSELG_2998 ),
    .I1(\count<2>/CYSELF_3013 ),
    .O(\count<2>/CYAND_3011 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/CYMUXFAST  (
    .IA(\count<2>/CYMUXG2_3009 ),
    .IB(\count<2>/FASTCARRY_3010 ),
    .SEL(\count<2>/CYAND_3011 ),
    .O(\count<2>/CYMUXFAST_3012 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/CYMUXG2  (
    .IA(\count<2>/LOGIC_ZERO_3007 ),
    .IB(\count<2>/CYMUXF2_3008 ),
    .SEL(\count<2>/CYSELG_2998 ),
    .O(\count<2>/CYMUXG2_3009 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/CYSELG  (
    .I(\count<2>/G ),
    .O(\count<2>/CYSELG_2998 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<2>/CLKINV_2996 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/LOGIC_ZERO  (
    .O(\count<4>/LOGIC_ZERO_3055 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/DXMUX  (
    .I(\count<4>/XORF_3079 ),
    .O(\count<4>/DXMUX_3081 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/XORF  (
    .I0(\count<4>/CYINIT_3078 ),
    .I1(\count<4>/F ),
    .O(\count<4>/XORF_3079 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/CYMUXF  (
    .IA(\count<4>/LOGIC_ZERO_3055 ),
    .IB(\count<4>/CYINIT_3078 ),
    .SEL(\count<4>/CYSELF_3061 ),
    .O(Mcount_count_cy[4])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/CYMUXF2  (
    .IA(\count<4>/LOGIC_ZERO_3055 ),
    .IB(\count<4>/LOGIC_ZERO_3055 ),
    .SEL(\count<4>/CYSELF_3061 ),
    .O(\count<4>/CYMUXF2_3056 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/CYINIT  (
    .I(Mcount_count_cy[3]),
    .O(\count<4>/CYINIT_3078 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/CYSELF  (
    .I(\count<4>/F ),
    .O(\count<4>/CYSELF_3061 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/DYMUX  (
    .I(\count<4>/XORG_3063 ),
    .O(\count<4>/DYMUX_3065 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/XORG  (
    .I0(Mcount_count_cy[4]),
    .I1(\count<4>/G ),
    .O(\count<4>/XORG_3063 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/COUTUSED  (
    .I(\count<4>/CYMUXFAST_3060 ),
    .O(Mcount_count_cy[5])
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/FASTCARRY  (
    .I(Mcount_count_cy[3]),
    .O(\count<4>/FASTCARRY_3058 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/CYAND  (
    .I0(\count<4>/CYSELG_3046 ),
    .I1(\count<4>/CYSELF_3061 ),
    .O(\count<4>/CYAND_3059 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/CYMUXFAST  (
    .IA(\count<4>/CYMUXG2_3057 ),
    .IB(\count<4>/FASTCARRY_3058 ),
    .SEL(\count<4>/CYAND_3059 ),
    .O(\count<4>/CYMUXFAST_3060 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/CYMUXG2  (
    .IA(\count<4>/LOGIC_ZERO_3055 ),
    .IB(\count<4>/CYMUXF2_3056 ),
    .SEL(\count<4>/CYSELG_3046 ),
    .O(\count<4>/CYMUXG2_3057 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/CYSELG  (
    .I(\count<4>/G ),
    .O(\count<4>/CYSELG_3046 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<4>/CLKINV_3044 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/LOGIC_ZERO  (
    .O(\count<6>/LOGIC_ZERO_3103 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/DXMUX  (
    .I(\count<6>/XORF_3127 ),
    .O(\count<6>/DXMUX_3129 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/XORF  (
    .I0(\count<6>/CYINIT_3126 ),
    .I1(\count<6>/F ),
    .O(\count<6>/XORF_3127 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/CYMUXF  (
    .IA(\count<6>/LOGIC_ZERO_3103 ),
    .IB(\count<6>/CYINIT_3126 ),
    .SEL(\count<6>/CYSELF_3109 ),
    .O(Mcount_count_cy[6])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/CYMUXF2  (
    .IA(\count<6>/LOGIC_ZERO_3103 ),
    .IB(\count<6>/LOGIC_ZERO_3103 ),
    .SEL(\count<6>/CYSELF_3109 ),
    .O(\count<6>/CYMUXF2_3104 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/CYINIT  (
    .I(Mcount_count_cy[5]),
    .O(\count<6>/CYINIT_3126 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/CYSELF  (
    .I(\count<6>/F ),
    .O(\count<6>/CYSELF_3109 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/DYMUX  (
    .I(\count<6>/XORG_3111 ),
    .O(\count<6>/DYMUX_3113 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/XORG  (
    .I0(Mcount_count_cy[6]),
    .I1(\count<6>/G ),
    .O(\count<6>/XORG_3111 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/COUTUSED  (
    .I(\count<6>/CYMUXFAST_3108 ),
    .O(Mcount_count_cy[7])
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/FASTCARRY  (
    .I(Mcount_count_cy[5]),
    .O(\count<6>/FASTCARRY_3106 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/CYAND  (
    .I0(\count<6>/CYSELG_3094 ),
    .I1(\count<6>/CYSELF_3109 ),
    .O(\count<6>/CYAND_3107 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/CYMUXFAST  (
    .IA(\count<6>/CYMUXG2_3105 ),
    .IB(\count<6>/FASTCARRY_3106 ),
    .SEL(\count<6>/CYAND_3107 ),
    .O(\count<6>/CYMUXFAST_3108 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/CYMUXG2  (
    .IA(\count<6>/LOGIC_ZERO_3103 ),
    .IB(\count<6>/CYMUXF2_3104 ),
    .SEL(\count<6>/CYSELG_3094 ),
    .O(\count<6>/CYMUXG2_3105 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/CYSELG  (
    .I(\count<6>/G ),
    .O(\count<6>/CYSELG_3094 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<6>/CLKINV_3092 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/LOGIC_ZERO  (
    .O(\count<8>/LOGIC_ZERO_3151 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/DXMUX  (
    .I(\count<8>/XORF_3175 ),
    .O(\count<8>/DXMUX_3177 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/XORF  (
    .I0(\count<8>/CYINIT_3174 ),
    .I1(\count<8>/F ),
    .O(\count<8>/XORF_3175 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/CYMUXF  (
    .IA(\count<8>/LOGIC_ZERO_3151 ),
    .IB(\count<8>/CYINIT_3174 ),
    .SEL(\count<8>/CYSELF_3157 ),
    .O(Mcount_count_cy[8])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/CYMUXF2  (
    .IA(\count<8>/LOGIC_ZERO_3151 ),
    .IB(\count<8>/LOGIC_ZERO_3151 ),
    .SEL(\count<8>/CYSELF_3157 ),
    .O(\count<8>/CYMUXF2_3152 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/CYINIT  (
    .I(Mcount_count_cy[7]),
    .O(\count<8>/CYINIT_3174 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/CYSELF  (
    .I(\count<8>/F ),
    .O(\count<8>/CYSELF_3157 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/DYMUX  (
    .I(\count<8>/XORG_3159 ),
    .O(\count<8>/DYMUX_3161 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/XORG  (
    .I0(Mcount_count_cy[8]),
    .I1(\count<8>/G ),
    .O(\count<8>/XORG_3159 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/COUTUSED  (
    .I(\count<8>/CYMUXFAST_3156 ),
    .O(Mcount_count_cy[9])
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/FASTCARRY  (
    .I(Mcount_count_cy[7]),
    .O(\count<8>/FASTCARRY_3154 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/CYAND  (
    .I0(\count<8>/CYSELG_3142 ),
    .I1(\count<8>/CYSELF_3157 ),
    .O(\count<8>/CYAND_3155 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/CYMUXFAST  (
    .IA(\count<8>/CYMUXG2_3153 ),
    .IB(\count<8>/FASTCARRY_3154 ),
    .SEL(\count<8>/CYAND_3155 ),
    .O(\count<8>/CYMUXFAST_3156 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/CYMUXG2  (
    .IA(\count<8>/LOGIC_ZERO_3151 ),
    .IB(\count<8>/CYMUXF2_3152 ),
    .SEL(\count<8>/CYSELG_3142 ),
    .O(\count<8>/CYMUXG2_3153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/CYSELG  (
    .I(\count<8>/G ),
    .O(\count<8>/CYSELG_3142 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<8>/CLKINV_3140 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/LOGIC_ZERO  (
    .O(\count<10>/LOGIC_ZERO_3199 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/DXMUX  (
    .I(\count<10>/XORF_3223 ),
    .O(\count<10>/DXMUX_3225 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/XORF  (
    .I0(\count<10>/CYINIT_3222 ),
    .I1(\count<10>/F ),
    .O(\count<10>/XORF_3223 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/CYMUXF  (
    .IA(\count<10>/LOGIC_ZERO_3199 ),
    .IB(\count<10>/CYINIT_3222 ),
    .SEL(\count<10>/CYSELF_3205 ),
    .O(Mcount_count_cy[10])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/CYMUXF2  (
    .IA(\count<10>/LOGIC_ZERO_3199 ),
    .IB(\count<10>/LOGIC_ZERO_3199 ),
    .SEL(\count<10>/CYSELF_3205 ),
    .O(\count<10>/CYMUXF2_3200 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/CYINIT  (
    .I(Mcount_count_cy[9]),
    .O(\count<10>/CYINIT_3222 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/CYSELF  (
    .I(\count<10>/F ),
    .O(\count<10>/CYSELF_3205 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/DYMUX  (
    .I(\count<10>/XORG_3207 ),
    .O(\count<10>/DYMUX_3209 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/XORG  (
    .I0(Mcount_count_cy[10]),
    .I1(\count<10>/G ),
    .O(\count<10>/XORG_3207 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/COUTUSED  (
    .I(\count<10>/CYMUXFAST_3204 ),
    .O(Mcount_count_cy[11])
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/FASTCARRY  (
    .I(Mcount_count_cy[9]),
    .O(\count<10>/FASTCARRY_3202 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/CYAND  (
    .I0(\count<10>/CYSELG_3190 ),
    .I1(\count<10>/CYSELF_3205 ),
    .O(\count<10>/CYAND_3203 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/CYMUXFAST  (
    .IA(\count<10>/CYMUXG2_3201 ),
    .IB(\count<10>/FASTCARRY_3202 ),
    .SEL(\count<10>/CYAND_3203 ),
    .O(\count<10>/CYMUXFAST_3204 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/CYMUXG2  (
    .IA(\count<10>/LOGIC_ZERO_3199 ),
    .IB(\count<10>/CYMUXF2_3200 ),
    .SEL(\count<10>/CYSELG_3190 ),
    .O(\count<10>/CYMUXG2_3201 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/CYSELG  (
    .I(\count<10>/G ),
    .O(\count<10>/CYSELG_3190 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<10>/CLKINV_3188 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/LOGIC_ZERO  (
    .O(\count<12>/LOGIC_ZERO_3247 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/DXMUX  (
    .I(\count<12>/XORF_3271 ),
    .O(\count<12>/DXMUX_3273 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/XORF  (
    .I0(\count<12>/CYINIT_3270 ),
    .I1(\count<12>/F ),
    .O(\count<12>/XORF_3271 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/CYMUXF  (
    .IA(\count<12>/LOGIC_ZERO_3247 ),
    .IB(\count<12>/CYINIT_3270 ),
    .SEL(\count<12>/CYSELF_3253 ),
    .O(Mcount_count_cy[12])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/CYMUXF2  (
    .IA(\count<12>/LOGIC_ZERO_3247 ),
    .IB(\count<12>/LOGIC_ZERO_3247 ),
    .SEL(\count<12>/CYSELF_3253 ),
    .O(\count<12>/CYMUXF2_3248 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/CYINIT  (
    .I(Mcount_count_cy[11]),
    .O(\count<12>/CYINIT_3270 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/CYSELF  (
    .I(\count<12>/F ),
    .O(\count<12>/CYSELF_3253 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/DYMUX  (
    .I(\count<12>/XORG_3255 ),
    .O(\count<12>/DYMUX_3257 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/XORG  (
    .I0(Mcount_count_cy[12]),
    .I1(\count<12>/G ),
    .O(\count<12>/XORG_3255 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/FASTCARRY  (
    .I(Mcount_count_cy[11]),
    .O(\count<12>/FASTCARRY_3250 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/CYAND  (
    .I0(\count<12>/CYSELG_3238 ),
    .I1(\count<12>/CYSELF_3253 ),
    .O(\count<12>/CYAND_3251 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/CYMUXFAST  (
    .IA(\count<12>/CYMUXG2_3249 ),
    .IB(\count<12>/FASTCARRY_3250 ),
    .SEL(\count<12>/CYAND_3251 ),
    .O(\count<12>/CYMUXFAST_3252 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/CYMUXG2  (
    .IA(\count<12>/LOGIC_ZERO_3247 ),
    .IB(\count<12>/CYMUXF2_3248 ),
    .SEL(\count<12>/CYSELG_3238 ),
    .O(\count<12>/CYMUXG2_3249 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/CYSELG  (
    .I(\count<12>/G ),
    .O(\count<12>/CYSELG_3238 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<12>/CLKINV_3236 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y74" ))
  \count<14>/DXMUX  (
    .I(\count<14>/XORF_3292 ),
    .O(\count<14>/DXMUX_3294 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X65Y74" ))
  \count<14>/XORF  (
    .I0(\count<14>/CYINIT_3291 ),
    .I1(\count<14>_rt_3289 ),
    .O(\count<14>/XORF_3292 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y74" ))
  \count<14>/CYINIT  (
    .I(\count<12>/CYMUXFAST_3252 ),
    .O(\count<14>/CYINIT_3291 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y74" ))
  \count<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\count<14>/CLKINV_3281 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X53Y79" ))
  \milispulse/count_and00001_wg_cy<1>/LOGIC_ZERO  (
    .O(\milispulse/count_and00001_wg_cy<1>/LOGIC_ZERO_3315 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y79" ))
  \milispulse/count_and00001_wg_cy<1>/CYMUXF  (
    .IA(\milispulse/count_and00001_wg_cy<1>/LOGIC_ZERO_3315 ),
    .IB(\milispulse/count_and00001_wg_cy<1>/CYINIT_3326 ),
    .SEL(\milispulse/count_and00001_wg_cy<1>/CYSELF_3320 ),
    .O(\milispulse/count_and00001_wg_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y79" ))
  \milispulse/count_and00001_wg_cy<1>/CYINIT  (
    .I(\milispulse/count_and00001_wg_cy<1>/BXINV_3318 ),
    .O(\milispulse/count_and00001_wg_cy<1>/CYINIT_3326 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y79" ))
  \milispulse/count_and00001_wg_cy<1>/CYSELF  (
    .I(\milispulse/count_and00001_wg_lut [0]),
    .O(\milispulse/count_and00001_wg_cy<1>/CYSELF_3320 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y79" ))
  \milispulse/count_and00001_wg_cy<1>/BXINV  (
    .I(1'b1),
    .O(\milispulse/count_and00001_wg_cy<1>/BXINV_3318 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y79" ))
  \milispulse/count_and00001_wg_cy<1>/CYMUXG  (
    .IA(\milispulse/count_and00001_wg_cy<1>/LOGIC_ZERO_3315 ),
    .IB(\milispulse/count_and00001_wg_cy[0] ),
    .SEL(\milispulse/count_and00001_wg_cy<1>/CYSELG_3309 ),
    .O(\milispulse/count_and00001_wg_cy<1>/CYMUXG_3317 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y79" ))
  \milispulse/count_and00001_wg_cy<1>/CYSELG  (
    .I(\milispulse/count_and00001_wg_lut [1]),
    .O(\milispulse/count_and00001_wg_cy<1>/CYSELG_3309 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_cy<3>/LOGIC_ZERO  (
    .O(\milispulse/count_and00001_wg_cy<3>/LOGIC_ZERO_3344 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_cy<3>/CYMUXF2  (
    .IA(\milispulse/count_and00001_wg_cy<3>/LOGIC_ZERO_3344 ),
    .IB(\milispulse/count_and00001_wg_cy<3>/LOGIC_ZERO_3344 ),
    .SEL(\milispulse/count_and00001_wg_cy<3>/CYSELF_3350 ),
    .O(\milispulse/count_and00001_wg_cy<3>/CYMUXF2_3345 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_cy<3>/CYSELF  (
    .I(\milispulse/count_and00001_wg_lut [2]),
    .O(\milispulse/count_and00001_wg_cy<3>/CYSELF_3350 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_cy<3>/FASTCARRY  (
    .I(\milispulse/count_and00001_wg_cy<1>/CYMUXG_3317 ),
    .O(\milispulse/count_and00001_wg_cy<3>/FASTCARRY_3347 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_cy<3>/CYAND  (
    .I0(\milispulse/count_and00001_wg_cy<3>/CYSELG_3338 ),
    .I1(\milispulse/count_and00001_wg_cy<3>/CYSELF_3350 ),
    .O(\milispulse/count_and00001_wg_cy<3>/CYAND_3348 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_cy<3>/CYMUXFAST  (
    .IA(\milispulse/count_and00001_wg_cy<3>/CYMUXG2_3346 ),
    .IB(\milispulse/count_and00001_wg_cy<3>/FASTCARRY_3347 ),
    .SEL(\milispulse/count_and00001_wg_cy<3>/CYAND_3348 ),
    .O(\milispulse/count_and00001_wg_cy<3>/CYMUXFAST_3349 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_cy<3>/CYMUXG2  (
    .IA(\milispulse/count_and00001_wg_cy<3>/LOGIC_ZERO_3344 ),
    .IB(\milispulse/count_and00001_wg_cy<3>/CYMUXF2_3345 ),
    .SEL(\milispulse/count_and00001_wg_cy<3>/CYSELG_3338 ),
    .O(\milispulse/count_and00001_wg_cy<3>/CYMUXG2_3346 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_cy<3>/CYSELG  (
    .I(\milispulse/count_and00001_wg_lut [3]),
    .O(\milispulse/count_and00001_wg_cy<3>/CYSELG_3338 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_cy<5>/LOGIC_ZERO  (
    .O(\milispulse/count_and00001_wg_cy<5>/LOGIC_ZERO_3374 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_cy<5>/CYMUXF2  (
    .IA(\milispulse/count_and00001_wg_cy<5>/LOGIC_ZERO_3374 ),
    .IB(\milispulse/count_and00001_wg_cy<5>/LOGIC_ZERO_3374 ),
    .SEL(\milispulse/count_and00001_wg_cy<5>/CYSELF_3380 ),
    .O(\milispulse/count_and00001_wg_cy<5>/CYMUXF2_3375 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_cy<5>/CYSELF  (
    .I(\milispulse/count_and00001_wg_lut [4]),
    .O(\milispulse/count_and00001_wg_cy<5>/CYSELF_3380 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_cy<5>/FASTCARRY  (
    .I(\milispulse/count_and00001_wg_cy<3>/CYMUXFAST_3349 ),
    .O(\milispulse/count_and00001_wg_cy<5>/FASTCARRY_3377 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_cy<5>/CYAND  (
    .I0(\milispulse/count_and00001_wg_cy<5>/CYSELG_3368 ),
    .I1(\milispulse/count_and00001_wg_cy<5>/CYSELF_3380 ),
    .O(\milispulse/count_and00001_wg_cy<5>/CYAND_3378 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_cy<5>/CYMUXFAST  (
    .IA(\milispulse/count_and00001_wg_cy<5>/CYMUXG2_3376 ),
    .IB(\milispulse/count_and00001_wg_cy<5>/FASTCARRY_3377 ),
    .SEL(\milispulse/count_and00001_wg_cy<5>/CYAND_3378 ),
    .O(\milispulse/count_and00001_wg_cy<5>/CYMUXFAST_3379 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_cy<5>/CYMUXG2  (
    .IA(\milispulse/count_and00001_wg_cy<5>/LOGIC_ZERO_3374 ),
    .IB(\milispulse/count_and00001_wg_cy<5>/CYMUXF2_3375 ),
    .SEL(\milispulse/count_and00001_wg_cy<5>/CYSELG_3368 ),
    .O(\milispulse/count_and00001_wg_cy<5>/CYMUXG2_3376 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_cy<5>/CYSELG  (
    .I(\milispulse/count_and00001_wg_lut [5]),
    .O(\milispulse/count_and00001_wg_cy<5>/CYSELG_3368 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_cy<7>/LOGIC_ZERO  (
    .O(\milispulse/count_and00001_wg_cy<7>/LOGIC_ZERO_3404 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_cy<7>/CYMUXF2  (
    .IA(\milispulse/count_and00001_wg_cy<7>/LOGIC_ZERO_3404 ),
    .IB(\milispulse/count_and00001_wg_cy<7>/LOGIC_ZERO_3404 ),
    .SEL(\milispulse/count_and00001_wg_cy<7>/CYSELF_3410 ),
    .O(\milispulse/count_and00001_wg_cy<7>/CYMUXF2_3405 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_cy<7>/CYSELF  (
    .I(\milispulse/count_and00001_wg_lut [6]),
    .O(\milispulse/count_and00001_wg_cy<7>/CYSELF_3410 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_cy<7>/COUTUSED  (
    .I(\milispulse/count_and00001_wg_cy<7>/CYMUXFAST_3409 ),
    .O(\milispulse/count_and00001_wg_cy[7] )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_cy<7>/FASTCARRY  (
    .I(\milispulse/count_and00001_wg_cy<5>/CYMUXFAST_3379 ),
    .O(\milispulse/count_and00001_wg_cy<7>/FASTCARRY_3407 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_cy<7>/CYAND  (
    .I0(\milispulse/count_and00001_wg_cy<7>/CYSELG_3398 ),
    .I1(\milispulse/count_and00001_wg_cy<7>/CYSELF_3410 ),
    .O(\milispulse/count_and00001_wg_cy<7>/CYAND_3408 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_cy<7>/CYMUXFAST  (
    .IA(\milispulse/count_and00001_wg_cy<7>/CYMUXG2_3406 ),
    .IB(\milispulse/count_and00001_wg_cy<7>/FASTCARRY_3407 ),
    .SEL(\milispulse/count_and00001_wg_cy<7>/CYAND_3408 ),
    .O(\milispulse/count_and00001_wg_cy<7>/CYMUXFAST_3409 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_cy<7>/CYMUXG2  (
    .IA(\milispulse/count_and00001_wg_cy<7>/LOGIC_ZERO_3404 ),
    .IB(\milispulse/count_and00001_wg_cy<7>/CYMUXF2_3405 ),
    .SEL(\milispulse/count_and00001_wg_cy<7>/CYSELG_3398 ),
    .O(\milispulse/count_and00001_wg_cy<7>/CYMUXG2_3406 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_cy<7>/CYSELG  (
    .I(\milispulse/count_and00001_wg_lut [7]),
    .O(\milispulse/count_and00001_wg_cy<7>/CYSELG_3398 )
  );
  X_IPAD #(
    .LOC ( "IPAD64" ))
  \stop/PAD  (
    .PAD(stop)
  );
  X_BUF #(
    .LOC ( "IPAD64" ))
  stop_IBUF (
    .I(stop),
    .O(\stop/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD71" ))
  \an<0>/PAD  (
    .PAD(an[0])
  );
  X_OBUF #(
    .LOC ( "PAD71" ))
  an_0_OBUF (
    .I(\an<0>/O ),
    .O(an[0])
  );
  X_OPAD #(
    .LOC ( "PAD79" ))
  \an<1>/PAD  (
    .PAD(an[1])
  );
  X_OBUF #(
    .LOC ( "PAD79" ))
  an_1_OBUF (
    .I(\an<1>/O ),
    .O(an[1])
  );
  X_OPAD #(
    .LOC ( "PAD61" ))
  \an<2>/PAD  (
    .PAD(an[2])
  );
  X_OBUF #(
    .LOC ( "PAD61" ))
  an_2_OBUF (
    .I(\an<2>/O ),
    .O(an[2])
  );
  X_OPAD #(
    .LOC ( "PAD67" ))
  \an<3>/PAD  (
    .PAD(an[3])
  );
  X_OBUF #(
    .LOC ( "PAD67" ))
  an_3_OBUF (
    .I(\an<3>/O ),
    .O(an[3])
  );
  X_OPAD #(
    .LOC ( "PAD60" ))
  \dp/PAD  (
    .PAD(dp)
  );
  X_OBUF #(
    .LOC ( "PAD60" ))
  dp_OBUF (
    .I(\dp/O ),
    .O(dp)
  );
  X_IPAD #(
    .LOC ( "IPAD29" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IPAD29" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD77" ))
  \segment<0>/PAD  (
    .PAD(segment[0])
  );
  X_OBUF #(
    .LOC ( "PAD77" ))
  segment_0_OBUF (
    .I(\segment<0>/O ),
    .O(segment[0])
  );
  X_OPAD #(
    .LOC ( "PAD87" ))
  \segment<1>/PAD  (
    .PAD(segment[1])
  );
  X_OBUF #(
    .LOC ( "PAD87" ))
  segment_1_OBUF (
    .I(\segment<1>/O ),
    .O(segment[1])
  );
  X_OPAD #(
    .LOC ( "PAD70" ))
  \segment<2>/PAD  (
    .PAD(segment[2])
  );
  X_OBUF #(
    .LOC ( "PAD70" ))
  segment_2_OBUF (
    .I(\segment<2>/O ),
    .O(segment[2])
  );
  X_OPAD #(
    .LOC ( "PAD62" ))
  \segment<3>/PAD  (
    .PAD(segment[3])
  );
  X_OBUF #(
    .LOC ( "PAD62" ))
  segment_3_OBUF (
    .I(\segment<3>/O ),
    .O(segment[3])
  );
  X_OPAD #(
    .LOC ( "PAD63" ))
  \segment<4>/PAD  (
    .PAD(segment[4])
  );
  X_OBUF #(
    .LOC ( "PAD63" ))
  segment_4_OBUF (
    .I(\segment<4>/O ),
    .O(segment[4])
  );
  X_OPAD #(
    .LOC ( "PAD72" ))
  \segment<5>/PAD  (
    .PAD(segment[5])
  );
  X_OBUF #(
    .LOC ( "PAD72" ))
  segment_5_OBUF (
    .I(\segment<5>/O ),
    .O(segment[5])
  );
  X_OPAD #(
    .LOC ( "PAD95" ))
  \segment<6>/PAD  (
    .PAD(segment[6])
  );
  X_OBUF #(
    .LOC ( "PAD95" ))
  segment_6_OBUF (
    .I(\segment<6>/O ),
    .O(segment[6])
  );
  X_IPAD #(
    .LOC ( "IPAD59" ))
  \start/PAD  (
    .PAD(start)
  );
  X_BUF #(
    .LOC ( "IPAD59" ))
  start_IBUF (
    .I(start),
    .O(\start/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD68" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "IPAD68" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y63" ))
  \segment_1_OBUF/F5MUX  (
    .IA(Mmux_segment_41_3555),
    .IB(Mmux_segment_31_3563),
    .SEL(\segment_1_OBUF/BXINV_3557 ),
    .O(\segment_1_OBUF/F5MUX_3565 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y63" ))
  \segment_1_OBUF/BXINV  (
    .I(count[14]),
    .O(\segment_1_OBUF/BXINV_3557 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y75" ))
  \segment_2_OBUF/F5MUX  (
    .IA(Mmux_segment_42_3580),
    .IB(Mmux_segment_32_3588),
    .SEL(\segment_2_OBUF/BXINV_3582 ),
    .O(\segment_2_OBUF/F5MUX_3590 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y75" ))
  \segment_2_OBUF/BXINV  (
    .I(count[14]),
    .O(\segment_2_OBUF/BXINV_3582 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X66Y74" ))
  \segment_3_OBUF/F5MUX  (
    .IA(Mmux_segment_43_3605),
    .IB(Mmux_segment_33_3613),
    .SEL(\segment_3_OBUF/BXINV_3607 ),
    .O(\segment_3_OBUF/F5MUX_3615 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y74" ))
  \segment_3_OBUF/BXINV  (
    .I(count[14]),
    .O(\segment_3_OBUF/BXINV_3607 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y69" ))
  \segment_0_OBUF/F5MUX  (
    .IA(Mmux_segment_4_3630),
    .IB(Mmux_segment_3_3638),
    .SEL(\segment_0_OBUF/BXINV_3632 ),
    .O(\segment_0_OBUF/F5MUX_3640 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y69" ))
  \segment_0_OBUF/BXINV  (
    .I(count[14]),
    .O(\segment_0_OBUF/BXINV_3632 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X66Y73" ))
  Mmux_segment_45 (
    .ADR0(\bcds0/Mrom_segment5_0 ),
    .ADR1(VCC),
    .ADR2(count[13]),
    .ADR3(\bcds1/Mrom_segment5_0 ),
    .O(Mmux_segment_45_1056)
  );
  X_FF #(
    .LOC ( "SLICE_X64Y70" ),
    .INIT ( 1'b0 ))
  \digi_module_0/digit_3  (
    .I(\digi_module_0/digit<3>/DXMUX_1296 ),
    .CE(VCC),
    .CLK(\digi_module_0/digit<3>/CLKINV_1278 ),
    .SET(GND),
    .RST(\digi_module_0/digit<3>/FFX/RSTAND_1301 ),
    .O(\digi_module_0/digit [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y70" ))
  \digi_module_0/digit<3>/FFX/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_0/digit<3>/FFX/RSTAND_1301 )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y85" ),
    .INIT ( 1'b0 ))
  \milispulse/count_27  (
    .I(\milispulse/count<26>/DYMUX_2814 ),
    .CE(\milispulse/count<26>/CEINV_2791 ),
    .CLK(\milispulse/count<26>/CLKINV_2792 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<26>/SRINV_2793 ),
    .O(\milispulse/count [27])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y84" ),
    .INIT ( 1'b0 ))
  \milispulse/count_24  (
    .I(\milispulse/count<24>/DXMUX_2776 ),
    .CE(\milispulse/count<24>/CEINV_2735 ),
    .CLK(\milispulse/count<24>/CLKINV_2736 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<24>/SRINV_2737 ),
    .O(\milispulse/count [24])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y84" ),
    .INIT ( 1'b0 ))
  \milispulse/count_25  (
    .I(\milispulse/count<24>/DYMUX_2758 ),
    .CE(\milispulse/count<24>/CEINV_2735 ),
    .CLK(\milispulse/count<24>/CLKINV_2736 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<24>/SRINV_2737 ),
    .O(\milispulse/count [25])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y68" ),
    .INIT ( 1'b0 ))
  count_3 (
    .I(\count<2>/DYMUX_3017 ),
    .CE(VCC),
    .CLK(\count<2>/CLKINV_2996 ),
    .SET(GND),
    .RST(GND),
    .O(count[3])
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X66Y72" ))
  Mmux_segment_44 (
    .ADR0(\bcds1/Mrom_segment4_0 ),
    .ADR1(\bcds0/Mrom_segment4_0 ),
    .ADR2(count[13]),
    .ADR3(VCC),
    .O(Mmux_segment_44_1031)
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X66Y72" ))
  Mmux_segment_34 (
    .ADR0(\bcds3/Mrom_segment4_0 ),
    .ADR1(\bcds2/Mrom_segment4_0 ),
    .ADR2(count[13]),
    .ADR3(VCC),
    .O(Mmux_segment_34_1039)
  );
  X_LUT4 #(
    .INIT ( 16'hFFAA ),
    .LOC ( "SLICE_X64Y66" ))
  \digi_module_2/c_out_mux0000_SW0  (
    .ADR0(\digi_module_2/digit [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\digi_module_2/c_out_885 ),
    .O(\digi_module_2/c_out_mux0000_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA50 ),
    .LOC ( "SLICE_X66Y64" ))
  Mmux_segment_46 (
    .ADR0(count[13]),
    .ADR1(VCC),
    .ADR2(\bcds0/Mrom_segment6_0 ),
    .ADR3(\bcds1/Mrom_segment6_0 ),
    .O(Mmux_segment_46_1081)
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X66Y64" ))
  Mmux_segment_36 (
    .ADR0(VCC),
    .ADR1(\bcds3/Mrom_segment6_0 ),
    .ADR2(count[13]),
    .ADR3(\bcds2/Mrom_segment6_0 ),
    .O(Mmux_segment_36_1089)
  );
  X_LUT4 #(
    .INIT ( 16'h5F5F ),
    .LOC ( "SLICE_X66Y71" ))
  \digi_module_3/Mcount_digit_xor<3>1_SW0  (
    .ADR0(\digi_module_3/digit [1]),
    .ADR1(VCC),
    .ADR2(\digi_module_3/digit [0]),
    .ADR3(VCC),
    .O(\digi_module_3/Mcount_digit_xor<3>1_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h00A6 ),
    .LOC ( "SLICE_X66Y71" ))
  \digi_module_3/Mcount_digit_xor<3>1  (
    .ADR0(\digi_module_3/digit [3]),
    .ADR1(\digi_module_3/digit [2]),
    .ADR2(\digi_module_3/Mcount_digit_xor<3>1_SW0/O ),
    .ADR3(\digi_module_3/c_out_889 ),
    .O(\digi_module_3/Mcount_digit3 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y71" ),
    .INIT ( 1'b0 ))
  \digi_module_3/digit_3  (
    .I(\digi_module_3/digit<3>/DXMUX_1121 ),
    .CE(VCC),
    .CLK(\digi_module_3/digit<3>/CLKINV_1103 ),
    .SET(GND),
    .RST(\digi_module_3/digit<3>/FFX/RSTAND_1126 ),
    .O(\digi_module_3/digit [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y71" ))
  \digi_module_3/digit<3>/FFX/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_3/digit<3>/FFX/RSTAND_1126 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y66" ),
    .INIT ( 1'b0 ))
  \digi_module_2/c_out  (
    .I(\digi_module_2/c_out/DXMUX_1156 ),
    .CE(VCC),
    .CLK(\digi_module_2/c_out/CLKINV_1138 ),
    .SET(GND),
    .RST(\digi_module_2/c_out/FFX/RSTAND_1161 ),
    .O(\digi_module_2/c_out_885 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y66" ))
  \digi_module_2/c_out/FFX/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_2/c_out/FFX/RSTAND_1161 )
  );
  X_LUT4 #(
    .INIT ( 16'h5F5F ),
    .LOC ( "SLICE_X64Y68" ))
  \digi_module_2/Mcount_digit_xor<3>1_SW0  (
    .ADR0(\digi_module_2/digit [0]),
    .ADR1(VCC),
    .ADR2(\digi_module_2/digit [1]),
    .ADR3(VCC),
    .O(\digi_module_2/Mcount_digit_xor<3>1_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h5014 ),
    .LOC ( "SLICE_X64Y68" ))
  \digi_module_2/Mcount_digit_xor<3>1  (
    .ADR0(\digi_module_2/c_out_885 ),
    .ADR1(\digi_module_2/digit [2]),
    .ADR2(\digi_module_2/digit [3]),
    .ADR3(\digi_module_2/Mcount_digit_xor<3>1_SW0/O ),
    .O(\digi_module_2/Mcount_digit3 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y68" ),
    .INIT ( 1'b0 ))
  \digi_module_2/digit_3  (
    .I(\digi_module_2/digit<3>/DXMUX_1191 ),
    .CE(VCC),
    .CLK(\digi_module_2/digit<3>/CLKINV_1173 ),
    .SET(GND),
    .RST(\digi_module_2/digit<3>/FFX/RSTAND_1196 ),
    .O(\digi_module_2/digit [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y68" ))
  \digi_module_2/digit<3>/FFX/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_2/digit<3>/FFX/RSTAND_1196 )
  );
  X_LUT4 #(
    .INIT ( 16'h3012 ),
    .LOC ( "SLICE_X66Y76" ))
  \digi_module_1/Mcount_digit_xor<3>1  (
    .ADR0(\digi_module_1/digit [2]),
    .ADR1(\digi_module_1/c_out_893 ),
    .ADR2(\digi_module_1/digit [3]),
    .ADR3(\digi_module_1/Mcount_digit_xor<3>1_SW0/O ),
    .O(\digi_module_1/Mcount_digit3 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y76" ),
    .INIT ( 1'b0 ))
  \digi_module_1/digit_3  (
    .I(\digi_module_1/digit<3>/DXMUX_1226 ),
    .CE(VCC),
    .CLK(\digi_module_1/digit<3>/CLKINV_1208 ),
    .SET(GND),
    .RST(\digi_module_1/digit<3>/FFX/RSTAND_1231 ),
    .O(\digi_module_1/digit [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y76" ))
  \digi_module_1/digit<3>/FFX/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_1/digit<3>/FFX/RSTAND_1231 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF0 ),
    .LOC ( "SLICE_X66Y70" ))
  \digi_module_3/c_out_mux0000_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\digi_module_3/digit [0]),
    .ADR3(\digi_module_3/c_out_889 ),
    .O(\digi_module_3/c_out_mux0000_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X66Y70" ))
  \digi_module_3/c_out_mux0000  (
    .ADR0(\digi_module_3/digit [3]),
    .ADR1(\digi_module_3/digit [1]),
    .ADR2(\digi_module_3/digit [2]),
    .ADR3(\digi_module_3/c_out_mux0000_SW0/O ),
    .O(\digi_module_3/c_out_mux0000_1258 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y70" ),
    .INIT ( 1'b0 ))
  \digi_module_3/c_out  (
    .I(\digi_module_3/c_out/DXMUX_1261 ),
    .CE(VCC),
    .CLK(\digi_module_3/c_out/CLKINV_1243 ),
    .SET(GND),
    .RST(\digi_module_3/c_out/FFX/RSTAND_1266 ),
    .O(\digi_module_3/c_out_889 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y70" ))
  \digi_module_3/c_out/FFX/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_3/c_out/FFX/RSTAND_1266 )
  );
  X_LUT4 #(
    .INIT ( 16'h55FF ),
    .LOC ( "SLICE_X64Y70" ))
  \digi_module_0/Mcount_digit_xor<3>1_SW0  (
    .ADR0(\digi_module_0/digit [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\digi_module_0/digit [0]),
    .O(\digi_module_0/Mcount_digit_xor<3>1_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAFA ),
    .LOC ( "SLICE_X64Y72" ))
  \digi_module_0/c_out_mux0000_SW0  (
    .ADR0(\digi_module_0/c_out_900 ),
    .ADR1(VCC),
    .ADR2(\digi_module_0/digit [0]),
    .ADR3(VCC),
    .O(\digi_module_0/c_out_mux0000_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X64Y72" ))
  \digi_module_0/c_out_mux0000  (
    .ADR0(\digi_module_0/digit [3]),
    .ADR1(\digi_module_0/digit [2]),
    .ADR2(\digi_module_0/digit [1]),
    .ADR3(\digi_module_0/c_out_mux0000_SW0/O ),
    .O(\digi_module_0/c_out_mux0000_1328 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y72" ),
    .INIT ( 1'b0 ))
  \digi_module_0/c_out  (
    .I(\digi_module_0/c_out/DXMUX_1331 ),
    .CE(VCC),
    .CLK(\digi_module_0/c_out/CLKINV_1313 ),
    .SET(GND),
    .RST(\digi_module_0/c_out/FFX/RSTAND_1336 ),
    .O(\digi_module_0/c_out_900 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y72" ))
  \digi_module_0/c_out/FFX/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_0/c_out/FFX/RSTAND_1336 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFC ),
    .LOC ( "SLICE_X67Y76" ))
  \digi_module_1/c_out_mux0000_SW0  (
    .ADR0(VCC),
    .ADR1(\digi_module_1/digit [0]),
    .ADR2(\digi_module_1/c_out_893 ),
    .ADR3(VCC),
    .O(\digi_module_1/c_out_mux0000_SW0/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X67Y76" ))
  \digi_module_1/c_out_mux0000  (
    .ADR0(\digi_module_1/digit [3]),
    .ADR1(\digi_module_1/digit [1]),
    .ADR2(\digi_module_1/c_out_mux0000_SW0/O ),
    .ADR3(\digi_module_1/digit [2]),
    .O(\digi_module_1/c_out_mux0000_1363 )
  );
  X_LUT4 #(
    .INIT ( 16'h0033 ),
    .LOC ( "SLICE_X64Y71" ))
  \digi_module_0/Mcount_digit_xor<0>11  (
    .ADR0(VCC),
    .ADR1(\digi_module_0/c_out_900 ),
    .ADR2(VCC),
    .ADR3(\digi_module_0/digit [0]),
    .O(\digi_module_0/Mcount_digit )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y71" ),
    .INIT ( 1'b0 ))
  \digi_module_0/digit_0  (
    .I(\digi_module_0/digit<1>/DYMUX_1393 ),
    .CE(VCC),
    .CLK(\digi_module_0/digit<1>/CLKINV_1382 ),
    .SET(GND),
    .RST(\digi_module_0/digit<1>/SRINV_1383 ),
    .O(\digi_module_0/digit [0])
  );
  X_LUT4 #(
    .INIT ( 16'h1212 ),
    .LOC ( "SLICE_X64Y71" ))
  \digi_module_0/Mcount_digit_xor<1>11  (
    .ADR0(\digi_module_0/digit [1]),
    .ADR1(\digi_module_0/c_out_900 ),
    .ADR2(\digi_module_0/digit [0]),
    .ADR3(VCC),
    .O(\digi_module_0/Mcount_digit1 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y71" ),
    .INIT ( 1'b0 ))
  \digi_module_0/digit_1  (
    .I(\digi_module_0/digit<1>/DXMUX_1408 ),
    .CE(VCC),
    .CLK(\digi_module_0/digit<1>/CLKINV_1382 ),
    .SET(GND),
    .RST(\digi_module_0/digit<1>/SRINV_1383 ),
    .O(\digi_module_0/digit [1])
  );
  X_LUT4 #(
    .INIT ( 16'hE9CA ),
    .LOC ( "SLICE_X65Y75" ))
  \bcds0/Mrom_segment31  (
    .ADR0(\digi_module_0/digit [2]),
    .ADR1(\digi_module_0/digit [3]),
    .ADR2(\digi_module_0/digit [1]),
    .ADR3(\digi_module_0/digit [0]),
    .O(\bcds0/Mrom_segment3 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y75" ),
    .INIT ( 1'b0 ))
  \digi_module_0/digit_2  (
    .I(\digi_module_0/digit<2>/DYMUX_1436 ),
    .CE(VCC),
    .CLK(\digi_module_0/digit<2>/CLKINV_1427 ),
    .SET(GND),
    .RST(\digi_module_0/digit<2>/FFY/RSTAND_1441 ),
    .O(\digi_module_0/digit [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y75" ))
  \digi_module_0/digit<2>/FFY/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_0/digit<2>/FFY/RSTAND_1441 )
  );
  X_LUT4 #(
    .INIT ( 16'h1111 ),
    .LOC ( "SLICE_X64Y67" ))
  \digi_module_2/Mcount_digit_xor<0>11  (
    .ADR0(\digi_module_2/digit [0]),
    .ADR1(\digi_module_2/c_out_885 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\digi_module_2/Mcount_digit )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y67" ),
    .INIT ( 1'b0 ))
  \digi_module_2/digit_0  (
    .I(\digi_module_2/digit<1>/DYMUX_1470 ),
    .CE(VCC),
    .CLK(\digi_module_2/digit<1>/CLKINV_1459 ),
    .SET(GND),
    .RST(\digi_module_2/digit<1>/SRINV_1460 ),
    .O(\digi_module_2/digit [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0606 ),
    .LOC ( "SLICE_X64Y67" ))
  \digi_module_2/Mcount_digit_xor<1>11  (
    .ADR0(\digi_module_2/digit [0]),
    .ADR1(\digi_module_2/digit [1]),
    .ADR2(\digi_module_2/c_out_885 ),
    .ADR3(VCC),
    .O(\digi_module_2/Mcount_digit1 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y67" ),
    .INIT ( 1'b0 ))
  \digi_module_2/digit_1  (
    .I(\digi_module_2/digit<1>/DXMUX_1485 ),
    .CE(VCC),
    .CLK(\digi_module_2/digit<1>/CLKINV_1459 ),
    .SET(GND),
    .RST(\digi_module_2/digit<1>/SRINV_1460 ),
    .O(\digi_module_2/digit [1])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y69" ),
    .INIT ( 1'b0 ))
  \digi_module_2/digit_2  (
    .I(\digi_module_2/digit<2>/DYMUX_1513 ),
    .CE(VCC),
    .CLK(\digi_module_2/digit<2>/CLKINV_1504 ),
    .SET(GND),
    .RST(\digi_module_2/digit<2>/FFY/RSTAND_1518 ),
    .O(\digi_module_2/digit [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y69" ))
  \digi_module_2/digit<2>/FFY/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_2/digit<2>/FFY/RSTAND_1518 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA86 ),
    .LOC ( "SLICE_X66Y69" ))
  \bcds2/Mrom_segment31  (
    .ADR0(\digi_module_2/digit [2]),
    .ADR1(\digi_module_2/digit [0]),
    .ADR2(\digi_module_2/digit [1]),
    .ADR3(\digi_module_2/digit [3]),
    .O(\bcds2/Mrom_segment3 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y74" ),
    .INIT ( 1'b0 ))
  \digi_module_1/digit_2  (
    .I(\digi_module_1/digit<2>/DYMUX_1590 ),
    .CE(VCC),
    .CLK(\digi_module_1/digit<2>/CLKINV_1581 ),
    .SET(GND),
    .RST(\digi_module_1/digit<2>/FFY/RSTAND_1595 ),
    .O(\digi_module_1/digit [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y74" ))
  \digi_module_1/digit<2>/FFY/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_1/digit<2>/FFY/RSTAND_1595 )
  );
  X_LUT4 #(
    .INIT ( 16'h0303 ),
    .LOC ( "SLICE_X67Y77" ))
  \digi_module_1/Mcount_digit_xor<0>11  (
    .ADR0(VCC),
    .ADR1(\digi_module_1/digit [0]),
    .ADR2(\digi_module_1/c_out_893 ),
    .ADR3(VCC),
    .O(\digi_module_1/Mcount_digit )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y77" ),
    .INIT ( 1'b0 ))
  \digi_module_1/digit_0  (
    .I(\digi_module_1/digit<1>/DYMUX_1547 ),
    .CE(VCC),
    .CLK(\digi_module_1/digit<1>/CLKINV_1536 ),
    .SET(GND),
    .RST(\digi_module_1/digit<1>/SRINV_1537 ),
    .O(\digi_module_1/digit [0])
  );
  X_LUT4 #(
    .INIT ( 16'h030C ),
    .LOC ( "SLICE_X67Y77" ))
  \digi_module_1/Mcount_digit_xor<1>11  (
    .ADR0(VCC),
    .ADR1(\digi_module_1/digit [0]),
    .ADR2(\digi_module_1/c_out_893 ),
    .ADR3(\digi_module_1/digit [1]),
    .O(\digi_module_1/Mcount_digit1 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y77" ),
    .INIT ( 1'b0 ))
  \digi_module_1/digit_1  (
    .I(\digi_module_1/digit<1>/DXMUX_1562 ),
    .CE(VCC),
    .CLK(\digi_module_1/digit<1>/CLKINV_1536 ),
    .SET(GND),
    .RST(\digi_module_1/digit<1>/SRINV_1537 ),
    .O(\digi_module_1/digit [1])
  );
  X_LUT4 #(
    .INIT ( 16'hE9E2 ),
    .LOC ( "SLICE_X67Y74" ))
  \bcds1/Mrom_segment31  (
    .ADR0(\digi_module_1/digit [2]),
    .ADR1(\digi_module_1/digit [1]),
    .ADR2(\digi_module_1/digit [3]),
    .ADR3(\digi_module_1/digit [0]),
    .O(\bcds1/Mrom_segment3 )
  );
  X_LUT4 #(
    .INIT ( 16'h1111 ),
    .LOC ( "SLICE_X67Y71" ))
  \digi_module_3/Mcount_digit_xor<0>11  (
    .ADR0(\digi_module_3/c_out_889 ),
    .ADR1(\digi_module_3/digit [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\digi_module_3/Mcount_digit )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y71" ),
    .INIT ( 1'b0 ))
  \digi_module_3/digit_0  (
    .I(\digi_module_3/digit<1>/DYMUX_1624 ),
    .CE(VCC),
    .CLK(\digi_module_3/digit<1>/CLKINV_1613 ),
    .SET(GND),
    .RST(\digi_module_3/digit<1>/SRINV_1614 ),
    .O(\digi_module_3/digit [0])
  );
  X_LUT4 #(
    .INIT ( 16'h1144 ),
    .LOC ( "SLICE_X67Y71" ))
  \digi_module_3/Mcount_digit_xor<1>11  (
    .ADR0(\digi_module_3/c_out_889 ),
    .ADR1(\digi_module_3/digit [0]),
    .ADR2(VCC),
    .ADR3(\digi_module_3/digit [1]),
    .O(\digi_module_3/Mcount_digit1 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y71" ),
    .INIT ( 1'b0 ))
  \digi_module_3/digit_1  (
    .I(\digi_module_3/digit<1>/DXMUX_1639 ),
    .CE(VCC),
    .CLK(\digi_module_3/digit<1>/CLKINV_1613 ),
    .SET(GND),
    .RST(\digi_module_3/digit<1>/SRINV_1614 ),
    .O(\digi_module_3/digit [1])
  );
  X_LUT4 #(
    .INIT ( 16'h1450 ),
    .LOC ( "SLICE_X67Y70" ))
  \digi_module_3/Mcount_digit_xor<2>11  (
    .ADR0(\digi_module_3/c_out_889 ),
    .ADR1(\digi_module_3/digit [0]),
    .ADR2(\digi_module_3/digit [2]),
    .ADR3(\digi_module_3/digit [1]),
    .O(\digi_module_3/Mcount_digit2 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y70" ),
    .INIT ( 1'b0 ))
  \digi_module_3/digit_2  (
    .I(\digi_module_3/digit<2>/DYMUX_1667 ),
    .CE(VCC),
    .CLK(\digi_module_3/digit<2>/CLKINV_1658 ),
    .SET(GND),
    .RST(\digi_module_3/digit<2>/FFY/RSTAND_1672 ),
    .O(\digi_module_3/digit [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y70" ))
  \digi_module_3/digit<2>/FFY/RSTAND  (
    .I(reset_IBUF_886),
    .O(\digi_module_3/digit<2>/FFY/RSTAND_1672 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC92 ),
    .LOC ( "SLICE_X67Y70" ))
  \bcds3/Mrom_segment31  (
    .ADR0(\digi_module_3/digit [0]),
    .ADR1(\digi_module_3/digit [1]),
    .ADR2(\digi_module_3/digit [2]),
    .ADR3(\digi_module_3/digit [3]),
    .O(\bcds3/Mrom_segment3 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC04 ),
    .LOC ( "SLICE_X67Y66" ))
  \bcds2/Mrom_segment411  (
    .ADR0(\digi_module_2/digit [0]),
    .ADR1(\digi_module_2/digit [1]),
    .ADR2(\digi_module_2/digit [2]),
    .ADR3(\digi_module_2/digit [3]),
    .O(\bcds2/Mrom_segment4 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC12 ),
    .LOC ( "SLICE_X67Y66" ))
  \bcds2/Mrom_segment61  (
    .ADR0(\digi_module_2/digit [0]),
    .ADR1(\digi_module_2/digit [1]),
    .ADR2(\digi_module_2/digit [2]),
    .ADR3(\digi_module_2/digit [3]),
    .O(\bcds2/Mrom_segment6 )
  );
  X_LUT4 #(
    .INIT ( 16'hEDE4 ),
    .LOC ( "SLICE_X67Y65" ))
  \bcds1/Mrom_segment111  (
    .ADR0(\digi_module_1/digit [2]),
    .ADR1(\digi_module_1/digit [1]),
    .ADR2(\digi_module_1/digit [3]),
    .ADR3(\digi_module_1/digit [0]),
    .O(\bcds1/Mrom_segment1_1719 )
  );
  X_LUT4 #(
    .INIT ( 16'hE1E2 ),
    .LOC ( "SLICE_X67Y65" ))
  \bcds1/Mrom_segment61  (
    .ADR0(\digi_module_1/digit [2]),
    .ADR1(\digi_module_1/digit [1]),
    .ADR2(\digi_module_1/digit [3]),
    .ADR3(\digi_module_1/digit [0]),
    .O(\bcds1/Mrom_segment6 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E8 ),
    .LOC ( "SLICE_X67Y72" ))
  \bcds0/Mrom_segment511  (
    .ADR0(\digi_module_0/digit [1]),
    .ADR1(\digi_module_0/digit [2]),
    .ADR2(\digi_module_0/digit [3]),
    .ADR3(\digi_module_0/digit [0]),
    .O(\bcds0/Mrom_segment5 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y78" ),
    .INIT ( 1'b0 ))
  \milispulse/msclock  (
    .I(\milispulse/msclock/DYMUX_1760 ),
    .CE(\milispulse/msclock/CEINV_1757 ),
    .CLK(\milispulse/msclock/CLKINV_1758 ),
    .SET(GND),
    .RST(GND),
    .O(\milispulse/msclock_907 )
  );
  X_LUT4 #(
    .INIT ( 16'hE0E2 ),
    .LOC ( "SLICE_X67Y73" ))
  \bcds1/Mrom_segment411  (
    .ADR0(\digi_module_1/digit [1]),
    .ADR1(\digi_module_1/digit [2]),
    .ADR2(\digi_module_1/digit [3]),
    .ADR3(\digi_module_1/digit [0]),
    .O(\bcds1/Mrom_segment4 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E8 ),
    .LOC ( "SLICE_X67Y73" ))
  \bcds1/Mrom_segment511  (
    .ADR0(\digi_module_1/digit [1]),
    .ADR1(\digi_module_1/digit [2]),
    .ADR2(\digi_module_1/digit [3]),
    .ADR3(\digi_module_1/digit [0]),
    .O(\bcds1/Mrom_segment5 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC8E ),
    .LOC ( "SLICE_X67Y64" ))
  \bcds0/Mrom_segment111  (
    .ADR0(\digi_module_0/digit [0]),
    .ADR1(\digi_module_0/digit [1]),
    .ADR2(\digi_module_0/digit [2]),
    .ADR3(\digi_module_0/digit [3]),
    .O(\bcds0/Mrom_segment1_1803 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC12 ),
    .LOC ( "SLICE_X67Y64" ))
  \bcds0/Mrom_segment61  (
    .ADR0(\digi_module_0/digit [0]),
    .ADR1(\digi_module_0/digit [1]),
    .ADR2(\digi_module_0/digit [2]),
    .ADR3(\digi_module_0/digit [3]),
    .O(\bcds0/Mrom_segment6 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEAE ),
    .LOC ( "SLICE_X67Y67" ))
  \bcds3/Mrom_segment21  (
    .ADR0(\digi_module_3/digit [0]),
    .ADR1(\digi_module_3/digit [2]),
    .ADR2(\digi_module_3/digit [1]),
    .ADR3(\digi_module_3/digit [3]),
    .O(\bcds3/Mrom_segment2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC06 ),
    .LOC ( "SLICE_X67Y67" ))
  \bcds3/Mrom_segment61  (
    .ADR0(\digi_module_3/digit [0]),
    .ADR1(\digi_module_3/digit [2]),
    .ADR2(\digi_module_3/digit [1]),
    .ADR3(\digi_module_3/digit [3]),
    .O(\bcds3/Mrom_segment6 )
  );
  X_LUT4 #(
    .INIT ( 16'hEFEA ),
    .LOC ( "SLICE_X66Y65" ))
  \bcds1/Mrom_segment21  (
    .ADR0(\digi_module_1/digit [0]),
    .ADR1(\digi_module_1/digit [3]),
    .ADR2(\digi_module_1/digit [1]),
    .ADR3(\digi_module_1/digit [2]),
    .O(\bcds1/Mrom_segment2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECC3 ),
    .LOC ( "SLICE_X66Y65" ))
  \bcds1/Mrom_segment1  (
    .ADR0(\digi_module_1/digit [0]),
    .ADR1(\digi_module_1/digit [3]),
    .ADR2(\digi_module_1/digit [1]),
    .ADR3(\digi_module_1/digit [2]),
    .O(\bcds1/Mrom_segment )
  );
  X_LUT4 #(
    .INIT ( 16'hFC83 ),
    .LOC ( "SLICE_X67Y68" ))
  \bcds3/Mrom_segment1  (
    .ADR0(\digi_module_3/digit [0]),
    .ADR1(\digi_module_3/digit [2]),
    .ADR2(\digi_module_3/digit [1]),
    .ADR3(\digi_module_3/digit [3]),
    .O(\bcds3/Mrom_segment )
  );
  X_LUT4 #(
    .INIT ( 16'hFC48 ),
    .LOC ( "SLICE_X67Y68" ))
  \bcds3/Mrom_segment511  (
    .ADR0(\digi_module_3/digit [0]),
    .ADR1(\digi_module_3/digit [2]),
    .ADR2(\digi_module_3/digit [1]),
    .ADR3(\digi_module_3/digit [3]),
    .O(\bcds3/Mrom_segment5 )
  );
  X_SFF #(
    .LOC ( "SLICE_X67Y86" ),
    .INIT ( 1'b0 ))
  \milispulse/started_0  (
    .I(\milispulse/started<0>/DYMUX_1918 ),
    .CE(\milispulse/started<0>/CEINV_1914 ),
    .CLK(\milispulse/started<0>/CLKINV_1915 ),
    .SET(GND),
    .RST(GND),
    .SSET(\milispulse/started<0>/SRINV_1916 ),
    .SRST(GND),
    .O(\milispulse/started [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFFF0 ),
    .LOC ( "SLICE_X66Y63" ))
  Mdecod_an01 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(count[13]),
    .ADR3(count[14]),
    .O(an_0_OBUF_1948)
  );
  X_LUT4 #(
    .INIT ( 16'hFF0F ),
    .LOC ( "SLICE_X66Y63" ))
  Mdecod_an11 (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(count[13]),
    .ADR3(count[14]),
    .O(an_1_OBUF_1957)
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X67Y78" ))
  Mdecod_an21 (
    .ADR0(VCC),
    .ADR1(count[14]),
    .ADR2(count[13]),
    .ADR3(VCC),
    .O(an_2_OBUF_1972)
  );
  X_LUT4 #(
    .INIT ( 16'h3F3F ),
    .LOC ( "SLICE_X67Y78" ))
  Mdecod_an31 (
    .ADR0(VCC),
    .ADR1(count[14]),
    .ADR2(count[13]),
    .ADR3(VCC),
    .O(an_3_OBUF_1981)
  );
  X_LUT4 #(
    .INIT ( 16'hEC99 ),
    .LOC ( "SLICE_X66Y75" ))
  \bcds0/Mrom_segment1  (
    .ADR0(\digi_module_0/digit [2]),
    .ADR1(\digi_module_0/digit [3]),
    .ADR2(\digi_module_0/digit [0]),
    .ADR3(\digi_module_0/digit [1]),
    .O(\bcds0/Mrom_segment )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFA ),
    .LOC ( "SLICE_X66Y75" ))
  \bcds0/Mrom_segment21  (
    .ADR0(\digi_module_0/digit [2]),
    .ADR1(\digi_module_0/digit [3]),
    .ADR2(\digi_module_0/digit [0]),
    .ADR3(\digi_module_0/digit [1]),
    .O(\bcds0/Mrom_segment2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFDA4 ),
    .LOC ( "SLICE_X66Y66" ))
  \bcds2/Mrom_segment111  (
    .ADR0(\digi_module_2/digit [2]),
    .ADR1(\digi_module_2/digit [0]),
    .ADR2(\digi_module_2/digit [3]),
    .ADR3(\digi_module_2/digit [1]),
    .O(\bcds2/Mrom_segment1_2029 )
  );
  X_LUT4 #(
    .INIT ( 16'hEDAC ),
    .LOC ( "SLICE_X66Y67" ))
  \bcds3/Mrom_segment111  (
    .ADR0(\digi_module_3/digit [3]),
    .ADR1(\digi_module_3/digit [1]),
    .ADR2(\digi_module_3/digit [2]),
    .ADR3(\digi_module_3/digit [0]),
    .O(\bcds3/Mrom_segment1_2046 )
  );
  X_LUT4 #(
    .INIT ( 16'hA8AC ),
    .LOC ( "SLICE_X66Y67" ))
  \bcds3/Mrom_segment411  (
    .ADR0(\digi_module_3/digit [3]),
    .ADR1(\digi_module_3/digit [1]),
    .ADR2(\digi_module_3/digit [2]),
    .ADR3(\digi_module_3/digit [0]),
    .O(\bcds3/Mrom_segment4 )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y72" ),
    .INIT ( 1'b0 ))
  \milispulse/count_1  (
    .I(\milispulse/count<0>/DYMUX_2083 ),
    .CE(\milispulse/count<0>/CEINV_2065 ),
    .CLK(\milispulse/count<0>/CLKINV_2066 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<0>/SRINV_2067 ),
    .O(\milispulse/count [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0F0F ),
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/Mcount_count_lut<0>_INV_0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\milispulse/count [0]),
    .ADR3(VCC),
    .O(\milispulse/Mcount_count_lut [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y72" ),
    .INIT ( 1'b0 ))
  \milispulse/count_0  (
    .I(\milispulse/count<0>/DXMUX_2104 ),
    .CE(\milispulse/count<0>/CEINV_2065 ),
    .CLK(\milispulse/count<0>/CLKINV_2066 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<0>/SRINV_2067 ),
    .O(\milispulse/count [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y73" ),
    .INIT ( 1'b0 ))
  \milispulse/count_3  (
    .I(\milispulse/count<2>/DYMUX_2142 ),
    .CE(\milispulse/count<2>/CEINV_2119 ),
    .CLK(\milispulse/count<2>/CLKINV_2120 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<2>/SRINV_2121 ),
    .O(\milispulse/count [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y73" ),
    .INIT ( 1'b0 ))
  \milispulse/count_2  (
    .I(\milispulse/count<2>/DXMUX_2160 ),
    .CE(\milispulse/count<2>/CEINV_2119 ),
    .CLK(\milispulse/count<2>/CLKINV_2120 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<2>/SRINV_2121 ),
    .O(\milispulse/count [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y74" ),
    .INIT ( 1'b0 ))
  \milispulse/count_5  (
    .I(\milispulse/count<4>/DYMUX_2198 ),
    .CE(\milispulse/count<4>/CEINV_2175 ),
    .CLK(\milispulse/count<4>/CLKINV_2176 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<4>/SRINV_2177 ),
    .O(\milispulse/count [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y74" ),
    .INIT ( 1'b0 ))
  \milispulse/count_4  (
    .I(\milispulse/count<4>/DXMUX_2216 ),
    .CE(\milispulse/count<4>/CEINV_2175 ),
    .CLK(\milispulse/count<4>/CLKINV_2176 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<4>/SRINV_2177 ),
    .O(\milispulse/count [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y75" ),
    .INIT ( 1'b0 ))
  \milispulse/count_7  (
    .I(\milispulse/count<6>/DYMUX_2254 ),
    .CE(\milispulse/count<6>/CEINV_2231 ),
    .CLK(\milispulse/count<6>/CLKINV_2232 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<6>/SRINV_2233 ),
    .O(\milispulse/count [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y75" ),
    .INIT ( 1'b0 ))
  \milispulse/count_6  (
    .I(\milispulse/count<6>/DXMUX_2272 ),
    .CE(\milispulse/count<6>/CEINV_2231 ),
    .CLK(\milispulse/count<6>/CLKINV_2232 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<6>/SRINV_2233 ),
    .O(\milispulse/count [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y76" ),
    .INIT ( 1'b0 ))
  \milispulse/count_9  (
    .I(\milispulse/count<8>/DYMUX_2310 ),
    .CE(\milispulse/count<8>/CEINV_2287 ),
    .CLK(\milispulse/count<8>/CLKINV_2288 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<8>/SRINV_2289 ),
    .O(\milispulse/count [9])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y76" ),
    .INIT ( 1'b0 ))
  \milispulse/count_8  (
    .I(\milispulse/count<8>/DXMUX_2328 ),
    .CE(\milispulse/count<8>/CEINV_2287 ),
    .CLK(\milispulse/count<8>/CLKINV_2288 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<8>/SRINV_2289 ),
    .O(\milispulse/count [8])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y77" ),
    .INIT ( 1'b0 ))
  \milispulse/count_11  (
    .I(\milispulse/count<10>/DYMUX_2366 ),
    .CE(\milispulse/count<10>/CEINV_2343 ),
    .CLK(\milispulse/count<10>/CLKINV_2344 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<10>/SRINV_2345 ),
    .O(\milispulse/count [11])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y77" ),
    .INIT ( 1'b0 ))
  \milispulse/count_10  (
    .I(\milispulse/count<10>/DXMUX_2384 ),
    .CE(\milispulse/count<10>/CEINV_2343 ),
    .CLK(\milispulse/count<10>/CLKINV_2344 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<10>/SRINV_2345 ),
    .O(\milispulse/count [10])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y78" ),
    .INIT ( 1'b0 ))
  \milispulse/count_13  (
    .I(\milispulse/count<12>/DYMUX_2422 ),
    .CE(\milispulse/count<12>/CEINV_2399 ),
    .CLK(\milispulse/count<12>/CLKINV_2400 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<12>/SRINV_2401 ),
    .O(\milispulse/count [13])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y78" ),
    .INIT ( 1'b0 ))
  \milispulse/count_12  (
    .I(\milispulse/count<12>/DXMUX_2440 ),
    .CE(\milispulse/count<12>/CEINV_2399 ),
    .CLK(\milispulse/count<12>/CLKINV_2400 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<12>/SRINV_2401 ),
    .O(\milispulse/count [12])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y79" ),
    .INIT ( 1'b0 ))
  \milispulse/count_15  (
    .I(\milispulse/count<14>/DYMUX_2478 ),
    .CE(\milispulse/count<14>/CEINV_2455 ),
    .CLK(\milispulse/count<14>/CLKINV_2456 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<14>/SRINV_2457 ),
    .O(\milispulse/count [15])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y79" ),
    .INIT ( 1'b0 ))
  \milispulse/count_14  (
    .I(\milispulse/count<14>/DXMUX_2496 ),
    .CE(\milispulse/count<14>/CEINV_2455 ),
    .CLK(\milispulse/count<14>/CLKINV_2456 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<14>/SRINV_2457 ),
    .O(\milispulse/count [14])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y80" ),
    .INIT ( 1'b0 ))
  \milispulse/count_17  (
    .I(\milispulse/count<16>/DYMUX_2534 ),
    .CE(\milispulse/count<16>/CEINV_2511 ),
    .CLK(\milispulse/count<16>/CLKINV_2512 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<16>/SRINV_2513 ),
    .O(\milispulse/count [17])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y80" ),
    .INIT ( 1'b0 ))
  \milispulse/count_16  (
    .I(\milispulse/count<16>/DXMUX_2552 ),
    .CE(\milispulse/count<16>/CEINV_2511 ),
    .CLK(\milispulse/count<16>/CLKINV_2512 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<16>/SRINV_2513 ),
    .O(\milispulse/count [16])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y81" ),
    .INIT ( 1'b0 ))
  \milispulse/count_19  (
    .I(\milispulse/count<18>/DYMUX_2590 ),
    .CE(\milispulse/count<18>/CEINV_2567 ),
    .CLK(\milispulse/count<18>/CLKINV_2568 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<18>/SRINV_2569 ),
    .O(\milispulse/count [19])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y81" ),
    .INIT ( 1'b0 ))
  \milispulse/count_18  (
    .I(\milispulse/count<18>/DXMUX_2608 ),
    .CE(\milispulse/count<18>/CEINV_2567 ),
    .CLK(\milispulse/count<18>/CLKINV_2568 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<18>/SRINV_2569 ),
    .O(\milispulse/count [18])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y82" ),
    .INIT ( 1'b0 ))
  \milispulse/count_21  (
    .I(\milispulse/count<20>/DYMUX_2646 ),
    .CE(\milispulse/count<20>/CEINV_2623 ),
    .CLK(\milispulse/count<20>/CLKINV_2624 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<20>/SRINV_2625 ),
    .O(\milispulse/count [21])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y82" ),
    .INIT ( 1'b0 ))
  \milispulse/count_20  (
    .I(\milispulse/count<20>/DXMUX_2664 ),
    .CE(\milispulse/count<20>/CEINV_2623 ),
    .CLK(\milispulse/count<20>/CLKINV_2624 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<20>/SRINV_2625 ),
    .O(\milispulse/count [20])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y83" ),
    .INIT ( 1'b0 ))
  \milispulse/count_23  (
    .I(\milispulse/count<22>/DYMUX_2702 ),
    .CE(\milispulse/count<22>/CEINV_2679 ),
    .CLK(\milispulse/count<22>/CLKINV_2680 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<22>/SRINV_2681 ),
    .O(\milispulse/count [23])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y83" ),
    .INIT ( 1'b0 ))
  \milispulse/count_22  (
    .I(\milispulse/count<22>/DXMUX_2720 ),
    .CE(\milispulse/count<22>/CEINV_2679 ),
    .CLK(\milispulse/count<22>/CLKINV_2680 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\milispulse/count<22>/SRINV_2681 ),
    .O(\milispulse/count [22])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y69" ),
    .INIT ( 1'b0 ))
  count_5 (
    .I(\count<4>/DYMUX_3065 ),
    .CE(VCC),
    .CLK(\count<4>/CLKINV_3044 ),
    .SET(GND),
    .RST(GND),
    .O(count[5])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y69" ),
    .INIT ( 1'b0 ))
  count_4 (
    .I(\count<4>/DXMUX_3081 ),
    .CE(VCC),
    .CLK(\count<4>/CLKINV_3044 ),
    .SET(GND),
    .RST(GND),
    .O(count[4])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y70" ),
    .INIT ( 1'b0 ))
  count_7 (
    .I(\count<6>/DYMUX_3113 ),
    .CE(VCC),
    .CLK(\count<6>/CLKINV_3092 ),
    .SET(GND),
    .RST(GND),
    .O(count[7])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y70" ),
    .INIT ( 1'b0 ))
  count_6 (
    .I(\count<6>/DXMUX_3129 ),
    .CE(VCC),
    .CLK(\count<6>/CLKINV_3092 ),
    .SET(GND),
    .RST(GND),
    .O(count[6])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y71" ),
    .INIT ( 1'b0 ))
  count_9 (
    .I(\count<8>/DYMUX_3161 ),
    .CE(VCC),
    .CLK(\count<8>/CLKINV_3140 ),
    .SET(GND),
    .RST(GND),
    .O(count[9])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y71" ),
    .INIT ( 1'b0 ))
  count_8 (
    .I(\count<8>/DXMUX_3177 ),
    .CE(VCC),
    .CLK(\count<8>/CLKINV_3140 ),
    .SET(GND),
    .RST(GND),
    .O(count[8])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y72" ),
    .INIT ( 1'b0 ))
  count_11 (
    .I(\count<10>/DYMUX_3209 ),
    .CE(VCC),
    .CLK(\count<10>/CLKINV_3188 ),
    .SET(GND),
    .RST(GND),
    .O(count[11])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y72" ),
    .INIT ( 1'b0 ))
  count_10 (
    .I(\count<10>/DXMUX_3225 ),
    .CE(VCC),
    .CLK(\count<10>/CLKINV_3188 ),
    .SET(GND),
    .RST(GND),
    .O(count[10])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y73" ),
    .INIT ( 1'b0 ))
  count_13 (
    .I(\count<12>/DYMUX_3257 ),
    .CE(VCC),
    .CLK(\count<12>/CLKINV_3236 ),
    .SET(GND),
    .RST(GND),
    .O(count[13])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y73" ),
    .INIT ( 1'b0 ))
  count_12 (
    .I(\count<12>/DXMUX_3273 ),
    .CE(VCC),
    .CLK(\count<12>/CLKINV_3236 ),
    .SET(GND),
    .RST(GND),
    .O(count[12])
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X65Y74" ))
  \count<14>_rt  (
    .ADR0(count[14]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\count<14>_rt_3289 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y74" ),
    .INIT ( 1'b0 ))
  count_14 (
    .I(\count<14>/DXMUX_3294 ),
    .CE(VCC),
    .CLK(\count<14>/CLKINV_3281 ),
    .SET(GND),
    .RST(GND),
    .O(count[14])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X53Y79" ))
  \milispulse/count_and00001_wg_lut<1>  (
    .ADR0(\milispulse/count [12]),
    .ADR1(\milispulse/count [13]),
    .ADR2(\milispulse/count [14]),
    .ADR3(\milispulse/count [7]),
    .O(\milispulse/count_and00001_wg_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X53Y79" ))
  \milispulse/count_and00001_wg_lut<0>  (
    .ADR0(\milispulse/count [8]),
    .ADR1(\milispulse/count [9]),
    .ADR2(\milispulse/count [10]),
    .ADR3(\milispulse/count [11]),
    .O(\milispulse/count_and00001_wg_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_lut<3>  (
    .ADR0(\milispulse/count [20]),
    .ADR1(\milispulse/count [5]),
    .ADR2(\milispulse/count [19]),
    .ADR3(\milispulse/count [18]),
    .O(\milispulse/count_and00001_wg_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ),
    .LOC ( "SLICE_X53Y80" ))
  \milispulse/count_and00001_wg_lut<2>  (
    .ADR0(\milispulse/count [17]),
    .ADR1(\milispulse/count [15]),
    .ADR2(\milispulse/count [16]),
    .ADR3(\milispulse/count [6]),
    .O(\milispulse/count_and00001_wg_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_lut<5>  (
    .ADR0(\milispulse/count [25]),
    .ADR1(\milispulse/count [26]),
    .ADR2(\milispulse/count [24]),
    .ADR3(\milispulse/count [3]),
    .O(\milispulse/count_and00001_wg_lut [5])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X53Y81" ))
  \milispulse/count_and00001_wg_lut<4>  (
    .ADR0(\milispulse/count [21]),
    .ADR1(\milispulse/count [22]),
    .ADR2(\milispulse/count [4]),
    .ADR3(\milispulse/count [23]),
    .O(\milispulse/count_and00001_wg_lut [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ),
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_lut<7>  (
    .ADR0(\milispulse/count [1]),
    .ADR1(\milispulse/count [30]),
    .ADR2(\milispulse/count [31]),
    .ADR3(\milispulse/count [0]),
    .O(\milispulse/count_and00001_wg_lut [7])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X53Y82" ))
  \milispulse/count_and00001_wg_lut<6>  (
    .ADR0(\milispulse/count [28]),
    .ADR1(\milispulse/count [29]),
    .ADR2(\milispulse/count [2]),
    .ADR3(\milispulse/count [27]),
    .O(\milispulse/count_and00001_wg_lut [6])
  );
  X_BUF #(
    .LOC ( "IPAD68" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF_886)
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X67Y63" ))
  Mmux_segment_41 (
    .ADR0(\bcds0/Mrom_segment1_0 ),
    .ADR1(count[13]),
    .ADR2(\bcds1/Mrom_segment1_0 ),
    .ADR3(VCC),
    .O(Mmux_segment_41_3555)
  );
  X_LUT4 #(
    .INIT ( 16'hEE44 ),
    .LOC ( "SLICE_X67Y63" ))
  Mmux_segment_31 (
    .ADR0(count[13]),
    .ADR1(\bcds2/Mrom_segment1_0 ),
    .ADR2(VCC),
    .ADR3(\bcds3/Mrom_segment1_0 ),
    .O(Mmux_segment_31_3563)
  );
  X_LUT4 #(
    .INIT ( 16'hFA50 ),
    .LOC ( "SLICE_X67Y75" ))
  Mmux_segment_42 (
    .ADR0(count[13]),
    .ADR1(VCC),
    .ADR2(\bcds0/Mrom_segment2_0 ),
    .ADR3(\bcds1/Mrom_segment2_0 ),
    .O(Mmux_segment_42_3580)
  );
  X_LUT4 #(
    .INIT ( 16'hFA50 ),
    .LOC ( "SLICE_X67Y75" ))
  Mmux_segment_32 (
    .ADR0(count[13]),
    .ADR1(VCC),
    .ADR2(\bcds2/Mrom_segment2_0 ),
    .ADR3(\bcds3/Mrom_segment2_0 ),
    .O(Mmux_segment_32_3588)
  );
  X_LUT4 #(
    .INIT ( 16'hF0CC ),
    .LOC ( "SLICE_X66Y74" ))
  Mmux_segment_43 (
    .ADR0(VCC),
    .ADR1(\bcds0/Mrom_segment3_0 ),
    .ADR2(\bcds1/Mrom_segment3_0 ),
    .ADR3(count[13]),
    .O(Mmux_segment_43_3605)
  );
  X_LUT4 #(
    .INIT ( 16'hF0AA ),
    .LOC ( "SLICE_X66Y74" ))
  Mmux_segment_33 (
    .ADR0(\bcds2/Mrom_segment3_0 ),
    .ADR1(VCC),
    .ADR2(\bcds3/Mrom_segment3_0 ),
    .ADR3(count[13]),
    .O(Mmux_segment_33_3613)
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X67Y69" ))
  Mmux_segment_4 (
    .ADR0(\bcds0/Mrom_segment_0 ),
    .ADR1(count[13]),
    .ADR2(VCC),
    .ADR3(\bcds1/Mrom_segment_0 ),
    .O(Mmux_segment_4_3630)
  );
  X_LUT4 #(
    .INIT ( 16'hF3C0 ),
    .LOC ( "SLICE_X67Y69" ))
  Mmux_segment_3 (
    .ADR0(VCC),
    .ADR1(count[13]),
    .ADR2(\bcds3/Mrom_segment_0 ),
    .ADR3(\bcds2/Mrom_segment_0 ),
    .O(Mmux_segment_3_3638)
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X55Y72" ))
  \milispulse/count<0>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\milispulse/count [1]),
    .O(\milispulse/count<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/F/X_LUT4  (
    .ADR0(\milispulse/count [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X55Y73" ))
  \milispulse/count<2>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\milispulse/count [3]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\milispulse/count [4]),
    .ADR3(VCC),
    .O(\milispulse/count<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X55Y74" ))
  \milispulse/count<4>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\milispulse/count [5]),
    .ADR3(VCC),
    .O(\milispulse/count<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\milispulse/count [6]),
    .O(\milispulse/count<6>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X55Y75" ))
  \milispulse/count<6>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\milispulse/count [7]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<6>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/F/X_LUT4  (
    .ADR0(\milispulse/count [8]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<8>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X55Y76" ))
  \milispulse/count<8>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\milispulse/count [9]),
    .O(\milispulse/count<8>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/F/X_LUT4  (
    .ADR0(\milispulse/count [10]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<10>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X55Y77" ))
  \milispulse/count<10>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\milispulse/count [11]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<10>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/F/X_LUT4  (
    .ADR0(\milispulse/count [12]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<12>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X55Y78" ))
  \milispulse/count<12>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\milispulse/count [13]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<12>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\milispulse/count [14]),
    .ADR3(VCC),
    .O(\milispulse/count<14>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X55Y79" ))
  \milispulse/count<14>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\milispulse/count [15]),
    .O(\milispulse/count<14>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\milispulse/count [16]),
    .ADR3(VCC),
    .O(\milispulse/count<16>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X55Y80" ))
  \milispulse/count<16>/G/X_LUT4  (
    .ADR0(\milispulse/count [17]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<16>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\milispulse/count [18]),
    .O(\milispulse/count<18>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X55Y81" ))
  \milispulse/count<18>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\milispulse/count [19]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<18>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\milispulse/count [20]),
    .O(\milispulse/count<20>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X55Y82" ))
  \milispulse/count<20>/G/X_LUT4  (
    .ADR0(\milispulse/count [21]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<20>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\milispulse/count [22]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<22>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X55Y83" ))
  \milispulse/count<22>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\milispulse/count [23]),
    .ADR3(VCC),
    .O(\milispulse/count<22>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\milispulse/count [24]),
    .ADR3(VCC),
    .O(\milispulse/count<24>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X55Y84" ))
  \milispulse/count<24>/G/X_LUT4  (
    .ADR0(\milispulse/count [25]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<24>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\milispulse/count [26]),
    .O(\milispulse/count<26>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X55Y85" ))
  \milispulse/count<26>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\milispulse/count [27]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<26>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\milispulse/count [28]),
    .ADR3(VCC),
    .O(\milispulse/count<28>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X55Y86" ))
  \milispulse/count<28>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(\milispulse/count [29]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\milispulse/count<28>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X55Y87" ))
  \milispulse/count<30>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\milispulse/count [30]),
    .O(\milispulse/count<30>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X65Y67" ))
  \count<0>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(count[1]),
    .ADR3(VCC),
    .O(\count<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(count[2]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\count<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X65Y68" ))
  \count<2>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(count[3]),
    .ADR3(VCC),
    .O(\count<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(count[4]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\count<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFF00 ),
    .LOC ( "SLICE_X65Y69" ))
  \count<4>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(count[5]),
    .O(\count<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(count[6]),
    .ADR3(VCC),
    .O(\count<6>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X65Y70" ))
  \count<6>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(count[7]),
    .ADR3(VCC),
    .O(\count<6>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/F/X_LUT4  (
    .ADR0(count[8]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\count<8>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X65Y71" ))
  \count<8>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(count[9]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\count<8>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/F/X_LUT4  (
    .ADR0(count[10]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\count<10>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ),
    .LOC ( "SLICE_X65Y72" ))
  \count<10>/G/X_LUT4  (
    .ADR0(count[11]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\count<10>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hF0F0 ),
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(count[12]),
    .ADR3(VCC),
    .O(\count<12>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCC ),
    .LOC ( "SLICE_X65Y73" ))
  \count<12>/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(count[13]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\count<12>/G )
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  \an<0>/OUTPUT/OFF/OMUX  (
    .I(an_0_OBUF_1948),
    .O(\an<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  \an<1>/OUTPUT/OFF/OMUX  (
    .I(an_1_OBUF_1957),
    .O(\an<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD61" ))
  \an<2>/OUTPUT/OFF/OMUX  (
    .I(an_2_OBUF_1972),
    .O(\an<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD67" ))
  \an<3>/OUTPUT/OFF/OMUX  (
    .I(an_3_OBUF_1981),
    .O(\an<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD60" ))
  \dp/OUTPUT/OFF/OMUX  (
    .I(\dp/OUTPUT/OFF/O1INV_3462 ),
    .O(\dp/O )
  );
  X_BUF #(
    .LOC ( "PAD60" ))
  \dp/OUTPUT/OFF/O1INV  (
    .I(1'b1),
    .O(\dp/OUTPUT/OFF/O1INV_3462 )
  );
  X_BUF #(
    .LOC ( "PAD77" ))
  \segment<0>/OUTPUT/OFF/OMUX  (
    .I(\segment_0_OBUF/F5MUX_3640 ),
    .O(\segment<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD87" ))
  \segment<1>/OUTPUT/OFF/OMUX  (
    .I(\segment_1_OBUF/F5MUX_3565 ),
    .O(\segment<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \segment<2>/OUTPUT/OFF/OMUX  (
    .I(\segment_2_OBUF/F5MUX_3590 ),
    .O(\segment<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD62" ))
  \segment<3>/OUTPUT/OFF/OMUX  (
    .I(\segment_3_OBUF/F5MUX_3615 ),
    .O(\segment<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  \segment<4>/OUTPUT/OFF/OMUX  (
    .I(\segment_4_OBUF/F5MUX_1041 ),
    .O(\segment<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \segment<5>/OUTPUT/OFF/OMUX  (
    .I(\segment_5_OBUF/F5MUX_1066 ),
    .O(\segment<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \segment<6>/OUTPUT/OFF/OMUX  (
    .I(\segment_6_OBUF/F5MUX_1091 ),
    .O(\segment<6>/O )
  );
  X_ONE   NlwBlock_StopWatch_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_StopWatch_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

