/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Sep  2 02:38:44 2022
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module CTRL_RX_test_1 ( CLK, RST, RF_RdData, RF_RdData_VLD, ALU_OUT, 
        ALU_OUT_VLD, UART_RX_DATA, UART_RX_VLD, ALU_EN, ALU_FUN, CLKG_EN, 
        CLKDIV_EN, RF_WrEn, RF_RdEn, RF_Address, RF_WrData, UART_RF_SEND, 
        UART_ALU_SEND, UART_SEND_RF_DATA, UART_SEND_ALU_DATA, test_so, test_se
 );
  input [7:0] RF_RdData;
  input [15:0] ALU_OUT;
  input [7:0] UART_RX_DATA;
  output [3:0] ALU_FUN;
  output [3:0] RF_Address;
  output [7:0] RF_WrData;
  output [7:0] UART_SEND_RF_DATA;
  output [15:0] UART_SEND_ALU_DATA;
  input CLK, RST, RF_RdData_VLD, ALU_OUT_VLD, UART_RX_VLD, test_se;
  output ALU_EN, CLKG_EN, CLKDIV_EN, RF_WrEn, RF_RdEn, UART_RF_SEND,
         UART_ALU_SEND, test_so;
  wire   n120, n45, n46, n47, n48, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n49, n51, n52, n53, n54, n55, n56, n115,
         n116, n117, n118, n119, n121, n122, n123, n124;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  assign test_so = current_state[3];

  SDFFRX1M \RF_ADDR_REG_reg[3]  ( .D(n114), .SI(n122), .SE(test_se), .CK(CLK), 
        .RN(n36), .Q(n121), .QN(n45) );
  SDFFRX1M \RF_ADDR_REG_reg[2]  ( .D(n113), .SI(n123), .SE(test_se), .CK(CLK), 
        .RN(n36), .Q(n122), .QN(n46) );
  SDFFRX1M \RF_ADDR_REG_reg[1]  ( .D(n112), .SI(n124), .SE(test_se), .CK(CLK), 
        .RN(n36), .Q(n123), .QN(n47) );
  SDFFRX1M \RF_ADDR_REG_reg[0]  ( .D(n111), .SI(ALU_OUT_VLD), .SE(test_se), 
        .CK(CLK), .RN(n36), .Q(n124), .QN(n48) );
  SDFFRQX2M \UART_SEND_RF_DATA_reg[7]  ( .D(n110), .SI(UART_SEND_RF_DATA[6]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(UART_SEND_RF_DATA[7]) );
  SDFFRQX2M \UART_SEND_RF_DATA_reg[6]  ( .D(n109), .SI(UART_SEND_RF_DATA[5]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(UART_SEND_RF_DATA[6]) );
  SDFFRQX2M \UART_SEND_RF_DATA_reg[5]  ( .D(n108), .SI(UART_SEND_RF_DATA[4]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(UART_SEND_RF_DATA[5]) );
  SDFFRQX2M \UART_SEND_RF_DATA_reg[4]  ( .D(n107), .SI(UART_SEND_RF_DATA[3]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(UART_SEND_RF_DATA[4]) );
  SDFFRQX2M \UART_SEND_RF_DATA_reg[3]  ( .D(n106), .SI(UART_SEND_RF_DATA[2]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(UART_SEND_RF_DATA[3]) );
  SDFFRQX2M \UART_SEND_RF_DATA_reg[2]  ( .D(n105), .SI(UART_SEND_RF_DATA[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(UART_SEND_RF_DATA[2]) );
  SDFFRQX2M \UART_SEND_RF_DATA_reg[1]  ( .D(n104), .SI(UART_SEND_RF_DATA[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(UART_SEND_RF_DATA[1]) );
  SDFFRQX2M \UART_SEND_RF_DATA_reg[0]  ( .D(n103), .SI(UART_SEND_ALU_DATA[15]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(UART_SEND_RF_DATA[0]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[7]  ( .D(n94), .SI(UART_SEND_ALU_DATA[6]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[7]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[6]  ( .D(n93), .SI(UART_SEND_ALU_DATA[5]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[6]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[5]  ( .D(n92), .SI(UART_SEND_ALU_DATA[4]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[5]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[4]  ( .D(n91), .SI(UART_SEND_ALU_DATA[3]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[4]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[3]  ( .D(n90), .SI(UART_SEND_ALU_DATA[2]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[3]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[2]  ( .D(n89), .SI(UART_SEND_ALU_DATA[1]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[2]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[1]  ( .D(n88), .SI(UART_SEND_ALU_DATA[0]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[1]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[0]  ( .D(n87), .SI(n121), .SE(test_se), 
        .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[0]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[15]  ( .D(n102), .SI(
        UART_SEND_ALU_DATA[14]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[15]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[14]  ( .D(n101), .SI(
        UART_SEND_ALU_DATA[13]), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[14]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[13]  ( .D(n100), .SI(
        UART_SEND_ALU_DATA[12]), .SE(test_se), .CK(CLK), .RN(n36), .Q(
        UART_SEND_ALU_DATA[13]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[12]  ( .D(n99), .SI(UART_SEND_ALU_DATA[11]), .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[12]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[11]  ( .D(n98), .SI(UART_SEND_ALU_DATA[10]), .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[11]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[10]  ( .D(n97), .SI(UART_SEND_ALU_DATA[9]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[10]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[9]  ( .D(n96), .SI(UART_SEND_ALU_DATA[8]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[9]) );
  SDFFRQX2M \UART_SEND_ALU_DATA_reg[8]  ( .D(n95), .SI(UART_SEND_ALU_DATA[7]), 
        .SE(test_se), .CK(CLK), .RN(n36), .Q(UART_SEND_ALU_DATA[8]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(
        UART_SEND_RF_DATA[7]), .SE(test_se), .CK(CLK), .RN(n36), .Q(
        current_state[0]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(current_state[2]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[3]) );
  NOR2X2M U37 ( .A(n116), .B(n59), .Y(ALU_FUN[2]) );
  NOR2X2M U38 ( .A(n118), .B(n59), .Y(ALU_FUN[0]) );
  NOR2X2M U39 ( .A(n85), .B(n46), .Y(RF_Address[2]) );
  NOR4X1M U40 ( .A(n51), .B(n53), .C(current_state[0]), .D(current_state[3]), 
        .Y(RF_RdEn) );
  NOR4X1M U41 ( .A(n51), .B(n42), .C(current_state[2]), .D(current_state[3]), 
        .Y(n84) );
  INVX2M U42 ( .A(n37), .Y(n36) );
  INVX2M U43 ( .A(n75), .Y(n49) );
  INVX2M U44 ( .A(UART_ALU_SEND), .Y(n44) );
  INVX2M U45 ( .A(RST), .Y(n37) );
  INVX2M U46 ( .A(n63), .Y(n40) );
  AND3X2M U47 ( .A(n57), .B(n62), .C(n41), .Y(n83) );
  NOR2X2M U48 ( .A(n84), .B(RF_RdEn), .Y(n85) );
  NOR2X2M U49 ( .A(n83), .B(n118), .Y(RF_WrData[0]) );
  NOR2X2M U50 ( .A(n83), .B(n117), .Y(RF_WrData[1]) );
  NOR2X2M U51 ( .A(n83), .B(n116), .Y(RF_WrData[2]) );
  NOR2X2M U52 ( .A(n83), .B(n115), .Y(RF_WrData[3]) );
  NOR2X2M U53 ( .A(n83), .B(n56), .Y(RF_WrData[4]) );
  NOR2X2M U54 ( .A(n83), .B(n55), .Y(RF_WrData[7]) );
  NOR2X2M U55 ( .A(n117), .B(n59), .Y(ALU_FUN[1]) );
  NOR2X2M U56 ( .A(n59), .B(n54), .Y(ALU_EN) );
  NAND4X2M U57 ( .A(n51), .B(n52), .C(n61), .D(n79), .Y(n75) );
  NOR3X2M U58 ( .A(n54), .B(n115), .C(n55), .Y(n79) );
  NAND2X2M U59 ( .A(n86), .B(n42), .Y(n57) );
  INVX2M U60 ( .A(n81), .Y(n39) );
  NAND2X2M U61 ( .A(n82), .B(n51), .Y(n63) );
  NOR2X2M U62 ( .A(n83), .B(n54), .Y(RF_WrEn) );
  BUFX2M U63 ( .A(n120), .Y(UART_ALU_SEND) );
  NOR3X2M U64 ( .A(n69), .B(n52), .C(n119), .Y(n120) );
  NOR2X2M U65 ( .A(n115), .B(n59), .Y(ALU_FUN[3]) );
  INVX2M U66 ( .A(n80), .Y(UART_RF_SEND) );
  INVX2M U67 ( .A(n84), .Y(n41) );
  INVX2M U68 ( .A(n69), .Y(n43) );
  NOR2X4M U69 ( .A(n85), .B(n45), .Y(RF_Address[3]) );
  OAI21X2M U70 ( .A0(n65), .A1(n40), .B0(UART_RX_VLD), .Y(n81) );
  NOR3X2M U71 ( .A(n42), .B(current_state[3]), .C(n53), .Y(n82) );
  NOR3X2M U72 ( .A(current_state[1]), .B(current_state[2]), .C(n52), .Y(n86)
         );
  NAND2X2M U73 ( .A(current_state[0]), .B(n86), .Y(n59) );
  AOI31X2M U74 ( .A0(n70), .A1(UART_RX_DATA[0]), .A2(UART_RX_DATA[4]), .B0(n68), .Y(n64) );
  NOR2X2M U75 ( .A(current_state[0]), .B(current_state[2]), .Y(n61) );
  NOR2BX2M U76 ( .AN(UART_RX_DATA[5]), .B(n83), .Y(RF_WrData[5]) );
  NOR2BX2M U77 ( .AN(UART_RX_DATA[6]), .B(n83), .Y(RF_WrData[6]) );
  OAI22X1M U78 ( .A0(n118), .A1(n81), .B0(n39), .B1(n48), .Y(n111) );
  OAI22X1M U79 ( .A0(n117), .A1(n81), .B0(n39), .B1(n47), .Y(n112) );
  OAI22X1M U80 ( .A0(n116), .A1(n81), .B0(n39), .B1(n46), .Y(n113) );
  OAI22X1M U81 ( .A0(n115), .A1(n81), .B0(n39), .B1(n45), .Y(n114) );
  NAND2X2M U82 ( .A(RF_RdData_VLD), .B(RF_RdEn), .Y(n80) );
  OAI2B11X2M U83 ( .A1N(RF_RdEn), .A0(RF_RdData_VLD), .B0(n63), .C0(n64), .Y(
        next_state[2]) );
  NAND2X2M U84 ( .A(current_state[1]), .B(n61), .Y(n69) );
  OAI21X2M U85 ( .A0(UART_RX_VLD), .A1(n62), .B0(n76), .Y(n68) );
  NAND4X2M U86 ( .A(UART_RX_DATA[2]), .B(n49), .C(UART_RX_DATA[6]), .D(n77), 
        .Y(n76) );
  NOR4X1M U87 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[4]), .C(UART_RX_DATA[1]), 
        .D(UART_RX_DATA[0]), .Y(n77) );
  NOR2X2M U88 ( .A(n69), .B(current_state[3]), .Y(n65) );
  INVX2M U89 ( .A(current_state[3]), .Y(n52) );
  INVX2M U90 ( .A(current_state[1]), .Y(n51) );
  NAND4X2M U91 ( .A(UART_RX_DATA[4]), .B(UART_RX_DATA[2]), .C(UART_RX_DATA[6]), 
        .D(n74), .Y(n58) );
  NOR4X1M U92 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[1]), .C(n75), .D(n118), 
        .Y(n74) );
  NAND2X2M U93 ( .A(current_state[1]), .B(n82), .Y(n62) );
  INVX2M U94 ( .A(current_state[0]), .Y(n42) );
  INVX2M U95 ( .A(UART_RX_DATA[0]), .Y(n118) );
  INVX2M U96 ( .A(current_state[2]), .Y(n53) );
  NAND4BBX1M U97 ( .AN(n65), .BN(ALU_EN), .C(n66), .D(n67), .Y(next_state[1])
         );
  AOI33X2M U98 ( .A0(n118), .A1(n56), .A2(n70), .B0(n71), .B1(n52), .B2(
        current_state[1]), .Y(n66) );
  AOI221XLM U99 ( .A0(n43), .A1(n119), .B0(n40), .B1(UART_RX_VLD), .C0(n68), 
        .Y(n67) );
  OAI22X1M U100 ( .A0(current_state[2]), .A1(UART_RX_VLD), .B0(
        current_state[0]), .B1(RF_RdData_VLD), .Y(n71) );
  INVX2M U101 ( .A(UART_RX_DATA[1]), .Y(n117) );
  INVX2M U102 ( .A(UART_RX_VLD), .Y(n54) );
  NAND4BX1M U103 ( .AN(n72), .B(n64), .C(n73), .D(n58), .Y(next_state[0]) );
  OAI2B1X2M U104 ( .A1N(n57), .A0(n65), .B0(UART_RX_VLD), .Y(n73) );
  AOI31X2M U105 ( .A0(n41), .A1(n59), .A2(n63), .B0(UART_RX_VLD), .Y(n72) );
  NAND4X2M U106 ( .A(n57), .B(n58), .C(n59), .D(n60), .Y(next_state[3]) );
  AOI32X1M U107 ( .A0(n61), .A1(n119), .A2(current_state[3]), .B0(n38), .B1(
        UART_RX_VLD), .Y(n60) );
  INVX2M U108 ( .A(n62), .Y(n38) );
  INVX2M U109 ( .A(UART_RX_DATA[2]), .Y(n116) );
  INVX2M U110 ( .A(UART_RX_DATA[3]), .Y(n115) );
  INVX2M U111 ( .A(UART_RX_DATA[4]), .Y(n56) );
  AND4X2M U112 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[1]), .C(n78), .D(n49), 
        .Y(n70) );
  NOR2X2M U113 ( .A(UART_RX_DATA[6]), .B(UART_RX_DATA[2]), .Y(n78) );
  INVX2M U114 ( .A(UART_RX_DATA[7]), .Y(n55) );
  INVX2M U115 ( .A(ALU_OUT_VLD), .Y(n119) );
  AO22X1M U116 ( .A0(ALU_OUT[0]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[0]), .B1(n44), .Y(n87) );
  AO22X1M U117 ( .A0(ALU_OUT[1]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[1]), .B1(n44), .Y(n88) );
  AO22X1M U118 ( .A0(ALU_OUT[2]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[2]), .B1(n44), .Y(n89) );
  AO22X1M U119 ( .A0(ALU_OUT[3]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[3]), .B1(n44), .Y(n90) );
  AO22X1M U120 ( .A0(ALU_OUT[4]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[4]), .B1(n44), .Y(n91) );
  AO22X1M U121 ( .A0(ALU_OUT[5]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[5]), .B1(n44), .Y(n92) );
  AO22X1M U122 ( .A0(ALU_OUT[6]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[6]), .B1(n44), .Y(n93) );
  AO22X1M U123 ( .A0(ALU_OUT[7]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[7]), .B1(n44), .Y(n94) );
  AO22X1M U124 ( .A0(ALU_OUT[8]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[8]), .B1(n44), .Y(n95) );
  AO22X1M U125 ( .A0(ALU_OUT[9]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[9]), .B1(n44), .Y(n96) );
  AO22X1M U126 ( .A0(ALU_OUT[10]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[10]), .B1(n44), .Y(n97) );
  AO22X1M U127 ( .A0(ALU_OUT[11]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[11]), .B1(n44), .Y(n98) );
  AO22X1M U128 ( .A0(ALU_OUT[12]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[12]), .B1(n44), .Y(n99) );
  AO22X1M U129 ( .A0(ALU_OUT[13]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[13]), .B1(n44), .Y(n100) );
  AO22X1M U130 ( .A0(ALU_OUT[14]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[14]), .B1(n44), .Y(n101) );
  AO22X1M U131 ( .A0(ALU_OUT[15]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[15]), .B1(n44), .Y(n102) );
  AO22X1M U132 ( .A0(RF_RdData[0]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[0]), .B1(n80), .Y(n103) );
  AO22X1M U133 ( .A0(RF_RdData[1]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[1]), .B1(n80), .Y(n104) );
  AO22X1M U134 ( .A0(RF_RdData[2]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[2]), .B1(n80), .Y(n105) );
  AO22X1M U135 ( .A0(RF_RdData[3]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[3]), .B1(n80), .Y(n106) );
  AO22X1M U136 ( .A0(RF_RdData[4]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[4]), .B1(n80), .Y(n107) );
  AO22X1M U137 ( .A0(RF_RdData[5]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[5]), .B1(n80), .Y(n108) );
  AO22X1M U138 ( .A0(RF_RdData[6]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[6]), .B1(n80), .Y(n109) );
  AO22X1M U139 ( .A0(RF_RdData[7]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[7]), .B1(n80), .Y(n110) );
  OAI21X2M U140 ( .A0(n85), .A1(n48), .B0(n57), .Y(RF_Address[0]) );
  NOR2X2M U141 ( .A(n85), .B(n47), .Y(RF_Address[1]) );
  OAI21X2M U142 ( .A0(n52), .A1(n69), .B0(n59), .Y(CLKG_EN) );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
endmodule


module CTRL_TX_test_1 ( CLK, RST, UART_RF_SEND, UART_SEND_RF_DATA, 
        UART_ALU_SEND, UART_SEND_ALU_DATA, UART_TX_Busy, UART_TX_DATA, 
        UART_TX_VLD, test_si, test_so, test_se );
  input [7:0] UART_SEND_RF_DATA;
  input [15:0] UART_SEND_ALU_DATA;
  output [7:0] UART_TX_DATA;
  input CLK, RST, UART_RF_SEND, UART_ALU_SEND, UART_TX_Busy, test_si, test_se;
  output UART_TX_VLD, test_so;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n4, n5, n6;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  NOR2X2M U6 ( .A(n5), .B(n4), .Y(n9) );
  NAND3BX2M U7 ( .AN(n10), .B(n11), .C(n12), .Y(next_state[1]) );
  NAND4BX1M U8 ( .AN(UART_RF_SEND), .B(UART_ALU_SEND), .C(n4), .D(n6), .Y(n12)
         );
  NOR3X2M U9 ( .A(current_state[0]), .B(current_state[2]), .C(n5), .Y(n10) );
  NOR3X2M U10 ( .A(current_state[0]), .B(current_state[1]), .C(n6), .Y(n17) );
  XNOR2X2M U11 ( .A(current_state[0]), .B(n5), .Y(n7) );
  NOR3X2M U12 ( .A(current_state[1]), .B(current_state[2]), .C(n4), .Y(n13) );
  OAI2B11X2M U13 ( .A1N(n13), .A0(UART_TX_Busy), .B0(n14), .C0(n11), .Y(
        next_state[0]) );
  NAND4X2M U14 ( .A(UART_RF_SEND), .B(n4), .C(n5), .D(n6), .Y(n14) );
  NOR3X2M U15 ( .A(n7), .B(UART_TX_Busy), .C(n8), .Y(next_state[2]) );
  XNOR2X2M U16 ( .A(n9), .B(current_state[2]), .Y(n8) );
  INVX2M U17 ( .A(current_state[1]), .Y(n5) );
  INVX2M U18 ( .A(current_state[2]), .Y(n6) );
  INVX2M U19 ( .A(current_state[0]), .Y(n4) );
  NAND3X2M U20 ( .A(current_state[1]), .B(n6), .C(UART_TX_Busy), .Y(n11) );
  NOR2X2M U21 ( .A(n9), .B(n15), .Y(UART_TX_VLD) );
  XNOR2X2M U22 ( .A(n7), .B(current_state[2]), .Y(n15) );
  OAI2BB1X2M U23 ( .A0N(UART_SEND_RF_DATA[0]), .A1N(n13), .B0(n24), .Y(
        UART_TX_DATA[0]) );
  AOI22X1M U24 ( .A0(UART_SEND_ALU_DATA[8]), .A1(n17), .B0(
        UART_SEND_ALU_DATA[0]), .B1(n10), .Y(n24) );
  OAI2BB1X2M U25 ( .A0N(UART_SEND_RF_DATA[1]), .A1N(n13), .B0(n23), .Y(
        UART_TX_DATA[1]) );
  AOI22X1M U26 ( .A0(UART_SEND_ALU_DATA[9]), .A1(n17), .B0(
        UART_SEND_ALU_DATA[1]), .B1(n10), .Y(n23) );
  OAI2BB1X2M U27 ( .A0N(UART_SEND_RF_DATA[2]), .A1N(n13), .B0(n22), .Y(
        UART_TX_DATA[2]) );
  AOI22X1M U28 ( .A0(UART_SEND_ALU_DATA[10]), .A1(n17), .B0(
        UART_SEND_ALU_DATA[2]), .B1(n10), .Y(n22) );
  OAI2BB1X2M U29 ( .A0N(UART_SEND_RF_DATA[3]), .A1N(n13), .B0(n21), .Y(
        UART_TX_DATA[3]) );
  AOI22X1M U30 ( .A0(UART_SEND_ALU_DATA[11]), .A1(n17), .B0(
        UART_SEND_ALU_DATA[3]), .B1(n10), .Y(n21) );
  OAI2BB1X2M U31 ( .A0N(UART_SEND_RF_DATA[4]), .A1N(n13), .B0(n20), .Y(
        UART_TX_DATA[4]) );
  AOI22X1M U32 ( .A0(UART_SEND_ALU_DATA[12]), .A1(n17), .B0(
        UART_SEND_ALU_DATA[4]), .B1(n10), .Y(n20) );
  OAI2BB1X2M U33 ( .A0N(UART_SEND_RF_DATA[5]), .A1N(n13), .B0(n19), .Y(
        UART_TX_DATA[5]) );
  AOI22X1M U34 ( .A0(UART_SEND_ALU_DATA[13]), .A1(n17), .B0(
        UART_SEND_ALU_DATA[5]), .B1(n10), .Y(n19) );
  OAI2BB1X2M U35 ( .A0N(UART_SEND_RF_DATA[6]), .A1N(n13), .B0(n18), .Y(
        UART_TX_DATA[6]) );
  AOI22X1M U36 ( .A0(UART_SEND_ALU_DATA[14]), .A1(n17), .B0(
        UART_SEND_ALU_DATA[6]), .B1(n10), .Y(n18) );
  OAI2BB1X2M U37 ( .A0N(UART_SEND_RF_DATA[7]), .A1N(n13), .B0(n16), .Y(
        UART_TX_DATA[7]) );
  AOI22X1M U38 ( .A0(UART_SEND_ALU_DATA[15]), .A1(n17), .B0(
        UART_SEND_ALU_DATA[7]), .B1(n10), .Y(n16) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, RF_RdData, RF_RdData_VLD, RF_WrEn, RF_RdEn, 
        RF_Address, RF_WrData, ALU_OUT, ALU_OUT_VLD, ALU_EN, ALU_FUN, CLKG_EN, 
        CLKDIV_EN, UART_RX_DATA, UART_RX_VLD, UART_TX_Busy, UART_TX_DATA, 
        UART_TX_VLD, test_so, test_se );
  input [7:0] RF_RdData;
  output [3:0] RF_Address;
  output [7:0] RF_WrData;
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  input [7:0] UART_RX_DATA;
  output [7:0] UART_TX_DATA;
  input CLK, RST, RF_RdData_VLD, ALU_OUT_VLD, UART_RX_VLD, UART_TX_Busy,
         test_se;
  output RF_WrEn, RF_RdEn, ALU_EN, CLKG_EN, CLKDIV_EN, UART_TX_VLD, test_so;
  wire   UART_RF_SEND, UART_ALU_SEND, n3, n4, n5, n6, n9;
  wire   [7:0] UART_SEND_RF_DATA;
  wire   [15:0] UART_SEND_ALU_DATA;

  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(RST), .Y(n4) );
  INVX2M U5 ( .A(n6), .Y(n5) );
  INVX2M U6 ( .A(CLK), .Y(n6) );
  CTRL_RX_test_1 U0_CTRL_RX ( .CLK(n5), .RST(n3), .RF_RdData(RF_RdData), 
        .RF_RdData_VLD(RF_RdData_VLD), .ALU_OUT(ALU_OUT), .ALU_OUT_VLD(
        ALU_OUT_VLD), .UART_RX_DATA(UART_RX_DATA), .UART_RX_VLD(UART_RX_VLD), 
        .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .CLKG_EN(CLKG_EN), .RF_WrEn(
        RF_WrEn), .RF_RdEn(RF_RdEn), .RF_Address(RF_Address), .RF_WrData(
        RF_WrData), .UART_RF_SEND(UART_RF_SEND), .UART_ALU_SEND(UART_ALU_SEND), 
        .UART_SEND_RF_DATA(UART_SEND_RF_DATA), .UART_SEND_ALU_DATA(
        UART_SEND_ALU_DATA), .test_so(n9), .test_se(test_se) );
  CTRL_TX_test_1 U0_CTRL_TX ( .CLK(n5), .RST(n3), .UART_RF_SEND(UART_RF_SEND), 
        .UART_SEND_RF_DATA(UART_SEND_RF_DATA), .UART_ALU_SEND(UART_ALU_SEND), 
        .UART_SEND_ALU_DATA(UART_SEND_ALU_DATA), .UART_TX_Busy(UART_TX_Busy), 
        .UART_TX_DATA(UART_TX_DATA), .UART_TX_VLD(UART_TX_VLD), .test_si(n9), 
        .test_so(test_so), .test_se(test_se) );
  INVX2M U1 ( .A(1'b0), .Y(CLKDIV_EN) );
endmodule


module RegFile_test_1 ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, 
        RdData_VLD, REG0, REG1, REG2, REG3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output RdData_VLD, test_so2, test_so1;
  wire   N11, N12, N13, N14, \regArr[15][7] , \regArr[15][6] , \regArr[15][5] ,
         \regArr[15][4] , \regArr[15][3] , \regArr[15][2] , \regArr[15][1] ,
         \regArr[15][0] , \regArr[14][7] , \regArr[14][6] , \regArr[14][5] ,
         \regArr[14][4] , \regArr[14][3] , \regArr[14][2] , \regArr[14][1] ,
         \regArr[14][0] , \regArr[13][7] , \regArr[13][6] , \regArr[13][5] ,
         \regArr[13][4] , \regArr[13][3] , \regArr[13][2] , \regArr[13][1] ,
         \regArr[13][0] , \regArr[12][7] , \regArr[12][6] , \regArr[12][5] ,
         \regArr[12][4] , \regArr[12][3] , \regArr[12][2] , \regArr[12][1] ,
         \regArr[12][0] , \regArr[11][7] , \regArr[11][6] , \regArr[11][5] ,
         \regArr[11][4] , \regArr[11][3] , \regArr[11][2] , \regArr[11][1] ,
         \regArr[11][0] , \regArr[10][7] , \regArr[10][6] , \regArr[10][5] ,
         \regArr[10][4] , \regArr[10][3] , \regArr[10][2] , \regArr[10][1] ,
         \regArr[10][0] , \regArr[9][7] , \regArr[9][6] , \regArr[9][5] ,
         \regArr[9][4] , \regArr[9][3] , \regArr[9][2] , \regArr[9][1] ,
         \regArr[9][0] , \regArr[8][7] , \regArr[8][6] , \regArr[8][5] ,
         \regArr[8][4] , \regArr[8][3] , \regArr[8][2] , \regArr[8][1] ,
         \regArr[8][0] , \regArr[7][7] , \regArr[7][6] , \regArr[7][5] ,
         \regArr[7][4] , \regArr[7][3] , \regArr[7][2] , \regArr[7][1] ,
         \regArr[7][0] , \regArr[6][7] , \regArr[6][6] , \regArr[6][5] ,
         \regArr[6][4] , \regArr[6][3] , \regArr[6][2] , \regArr[6][1] ,
         \regArr[6][0] , \regArr[5][7] , \regArr[5][6] , \regArr[5][5] ,
         \regArr[5][4] , \regArr[5][3] , \regArr[5][2] , \regArr[5][1] ,
         \regArr[5][0] , \regArr[4][7] , \regArr[4][6] , \regArr[4][5] ,
         \regArr[4][4] , \regArr[4][3] , \regArr[4][2] , \regArr[4][1] ,
         \regArr[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \regArr[15][7] ;
  assign test_so1 = \regArr[4][4] ;

  SDFFSQX2M \regArr_reg[3][3]  ( .D(n213), .SI(REG3[2]), .SE(test_se), .CK(
        n359), .SN(n342), .Q(REG3[3]) );
  SDFFRQX2M \regArr_reg[13][7]  ( .D(n297), .SI(\regArr[13][6] ), .SE(test_se), 
        .CK(n368), .RN(n350), .Q(\regArr[13][7] ) );
  SDFFRQX2M \regArr_reg[13][6]  ( .D(n296), .SI(\regArr[13][5] ), .SE(test_se), 
        .CK(n368), .RN(n350), .Q(\regArr[13][6] ) );
  SDFFRQX2M \regArr_reg[13][5]  ( .D(n295), .SI(\regArr[13][4] ), .SE(test_se), 
        .CK(n368), .RN(n350), .Q(\regArr[13][5] ) );
  SDFFRQX2M \regArr_reg[13][4]  ( .D(n294), .SI(\regArr[13][3] ), .SE(test_se), 
        .CK(n368), .RN(n350), .Q(\regArr[13][4] ) );
  SDFFRQX2M \regArr_reg[13][3]  ( .D(n293), .SI(\regArr[13][2] ), .SE(test_se), 
        .CK(n368), .RN(n350), .Q(\regArr[13][3] ) );
  SDFFRQX2M \regArr_reg[13][2]  ( .D(n292), .SI(\regArr[13][1] ), .SE(test_se), 
        .CK(n367), .RN(n350), .Q(\regArr[13][2] ) );
  SDFFRQX2M \regArr_reg[13][1]  ( .D(n291), .SI(\regArr[13][0] ), .SE(test_se), 
        .CK(n367), .RN(n350), .Q(\regArr[13][1] ) );
  SDFFRQX2M \regArr_reg[13][0]  ( .D(n290), .SI(\regArr[12][7] ), .SE(test_se), 
        .CK(n367), .RN(n350), .Q(\regArr[13][0] ) );
  SDFFRQX2M \regArr_reg[9][7]  ( .D(n265), .SI(\regArr[9][6] ), .SE(test_se), 
        .CK(n365), .RN(n348), .Q(\regArr[9][7] ) );
  SDFFRQX2M \regArr_reg[9][6]  ( .D(n264), .SI(\regArr[9][5] ), .SE(test_se), 
        .CK(n365), .RN(n348), .Q(\regArr[9][6] ) );
  SDFFRQX2M \regArr_reg[9][5]  ( .D(n263), .SI(\regArr[9][4] ), .SE(test_se), 
        .CK(n365), .RN(n348), .Q(\regArr[9][5] ) );
  SDFFRQX2M \regArr_reg[9][4]  ( .D(n262), .SI(\regArr[9][3] ), .SE(test_se), 
        .CK(n365), .RN(n348), .Q(\regArr[9][4] ) );
  SDFFRQX2M \regArr_reg[9][3]  ( .D(n261), .SI(\regArr[9][2] ), .SE(test_se), 
        .CK(n365), .RN(n348), .Q(\regArr[9][3] ) );
  SDFFRQX2M \regArr_reg[9][2]  ( .D(n260), .SI(\regArr[9][1] ), .SE(test_se), 
        .CK(n365), .RN(n348), .Q(\regArr[9][2] ) );
  SDFFRQX2M \regArr_reg[9][1]  ( .D(n259), .SI(\regArr[9][0] ), .SE(test_se), 
        .CK(n365), .RN(n348), .Q(\regArr[9][1] ) );
  SDFFRQX2M \regArr_reg[9][0]  ( .D(n258), .SI(\regArr[8][7] ), .SE(test_se), 
        .CK(n365), .RN(n347), .Q(\regArr[9][0] ) );
  SDFFRQX2M \regArr_reg[5][7]  ( .D(n233), .SI(\regArr[5][6] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[5][7] ) );
  SDFFRQX2M \regArr_reg[5][6]  ( .D(n232), .SI(\regArr[5][5] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[5][6] ) );
  SDFFRQX2M \regArr_reg[5][5]  ( .D(n231), .SI(\regArr[5][4] ), .SE(test_se), 
        .CK(n363), .RN(n345), .Q(\regArr[5][5] ) );
  SDFFRQX2M \regArr_reg[5][4]  ( .D(n230), .SI(\regArr[5][3] ), .SE(test_se), 
        .CK(n363), .RN(n345), .Q(\regArr[5][4] ) );
  SDFFRQX2M \regArr_reg[5][3]  ( .D(n229), .SI(\regArr[5][2] ), .SE(test_se), 
        .CK(n363), .RN(n345), .Q(\regArr[5][3] ) );
  SDFFRQX2M \regArr_reg[5][2]  ( .D(n228), .SI(\regArr[5][1] ), .SE(test_se), 
        .CK(n362), .RN(n345), .Q(\regArr[5][2] ) );
  SDFFRQX2M \regArr_reg[5][1]  ( .D(n227), .SI(\regArr[5][0] ), .SE(test_se), 
        .CK(n362), .RN(n345), .Q(\regArr[5][1] ) );
  SDFFRQX2M \regArr_reg[5][0]  ( .D(n226), .SI(\regArr[4][7] ), .SE(test_se), 
        .CK(n362), .RN(n345), .Q(\regArr[5][0] ) );
  SDFFRQX2M \regArr_reg[15][7]  ( .D(n313), .SI(\regArr[15][6] ), .SE(test_se), 
        .CK(n359), .RN(n342), .Q(\regArr[15][7] ) );
  SDFFRQX2M \regArr_reg[11][7]  ( .D(n281), .SI(\regArr[11][6] ), .SE(test_se), 
        .CK(n367), .RN(n349), .Q(\regArr[11][7] ) );
  SDFFRQX2M \regArr_reg[11][6]  ( .D(n280), .SI(\regArr[11][5] ), .SE(test_se), 
        .CK(n367), .RN(n349), .Q(\regArr[11][6] ) );
  SDFFRQX2M \regArr_reg[11][5]  ( .D(n279), .SI(\regArr[11][4] ), .SE(test_se), 
        .CK(n366), .RN(n349), .Q(\regArr[11][5] ) );
  SDFFRQX2M \regArr_reg[11][4]  ( .D(n278), .SI(\regArr[11][3] ), .SE(test_se), 
        .CK(n366), .RN(n349), .Q(\regArr[11][4] ) );
  SDFFRQX2M \regArr_reg[11][3]  ( .D(n277), .SI(\regArr[11][2] ), .SE(test_se), 
        .CK(n366), .RN(n349), .Q(\regArr[11][3] ) );
  SDFFRQX2M \regArr_reg[11][2]  ( .D(n276), .SI(\regArr[11][1] ), .SE(test_se), 
        .CK(n366), .RN(n349), .Q(\regArr[11][2] ) );
  SDFFRQX2M \regArr_reg[11][1]  ( .D(n275), .SI(\regArr[11][0] ), .SE(test_se), 
        .CK(n366), .RN(n349), .Q(\regArr[11][1] ) );
  SDFFRQX2M \regArr_reg[11][0]  ( .D(n274), .SI(\regArr[10][7] ), .SE(test_se), 
        .CK(n366), .RN(n349), .Q(\regArr[11][0] ) );
  SDFFRQX2M \regArr_reg[7][7]  ( .D(n249), .SI(\regArr[7][6] ), .SE(test_se), 
        .CK(n364), .RN(n347), .Q(\regArr[7][7] ) );
  SDFFRQX2M \regArr_reg[7][6]  ( .D(n248), .SI(\regArr[7][5] ), .SE(test_se), 
        .CK(n364), .RN(n347), .Q(\regArr[7][6] ) );
  SDFFRQX2M \regArr_reg[7][5]  ( .D(n247), .SI(\regArr[7][4] ), .SE(test_se), 
        .CK(n364), .RN(n347), .Q(\regArr[7][5] ) );
  SDFFRQX2M \regArr_reg[7][4]  ( .D(n246), .SI(\regArr[7][3] ), .SE(test_se), 
        .CK(n364), .RN(n347), .Q(\regArr[7][4] ) );
  SDFFRQX2M \regArr_reg[7][3]  ( .D(n245), .SI(\regArr[7][2] ), .SE(test_se), 
        .CK(n364), .RN(n347), .Q(\regArr[7][3] ) );
  SDFFRQX2M \regArr_reg[7][2]  ( .D(n244), .SI(\regArr[7][1] ), .SE(test_se), 
        .CK(n364), .RN(n346), .Q(\regArr[7][2] ) );
  SDFFRQX2M \regArr_reg[7][1]  ( .D(n243), .SI(\regArr[7][0] ), .SE(test_se), 
        .CK(n364), .RN(n346), .Q(\regArr[7][1] ) );
  SDFFRQX2M \regArr_reg[7][0]  ( .D(n242), .SI(\regArr[6][7] ), .SE(test_se), 
        .CK(n364), .RN(n346), .Q(\regArr[7][0] ) );
  SDFFRQX2M \regArr_reg[3][7]  ( .D(n217), .SI(REG3[6]), .SE(test_se), .CK(
        n362), .RN(n344), .Q(REG3[7]) );
  SDFFRQX2M \regArr_reg[3][6]  ( .D(n216), .SI(REG3[5]), .SE(test_se), .CK(
        n362), .RN(n344), .Q(REG3[6]) );
  SDFFRQX2M \regArr_reg[3][5]  ( .D(n215), .SI(REG3[4]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG3[5]) );
  SDFFRQX2M \regArr_reg[15][6]  ( .D(n312), .SI(\regArr[15][5] ), .SE(test_se), 
        .CK(n369), .RN(n351), .Q(\regArr[15][6] ) );
  SDFFRQX2M \regArr_reg[15][5]  ( .D(n311), .SI(\regArr[15][4] ), .SE(test_se), 
        .CK(n369), .RN(n351), .Q(\regArr[15][5] ) );
  SDFFRQX2M \regArr_reg[15][4]  ( .D(n310), .SI(\regArr[15][3] ), .SE(test_se), 
        .CK(n369), .RN(n351), .Q(\regArr[15][4] ) );
  SDFFRQX2M \regArr_reg[15][3]  ( .D(n309), .SI(\regArr[15][2] ), .SE(test_se), 
        .CK(n369), .RN(n351), .Q(\regArr[15][3] ) );
  SDFFRQX2M \regArr_reg[15][2]  ( .D(n308), .SI(\regArr[15][1] ), .SE(test_se), 
        .CK(n369), .RN(n351), .Q(\regArr[15][2] ) );
  SDFFRQX2M \regArr_reg[15][1]  ( .D(n307), .SI(\regArr[15][0] ), .SE(test_se), 
        .CK(n369), .RN(n351), .Q(\regArr[15][1] ) );
  SDFFRQX2M \regArr_reg[15][0]  ( .D(n306), .SI(\regArr[14][7] ), .SE(test_se), 
        .CK(n369), .RN(n351), .Q(\regArr[15][0] ) );
  SDFFRQX2M \regArr_reg[14][7]  ( .D(n305), .SI(\regArr[14][6] ), .SE(test_se), 
        .CK(n368), .RN(n351), .Q(\regArr[14][7] ) );
  SDFFRQX2M \regArr_reg[14][6]  ( .D(n304), .SI(\regArr[14][5] ), .SE(test_se), 
        .CK(n368), .RN(n351), .Q(\regArr[14][6] ) );
  SDFFRQX2M \regArr_reg[14][5]  ( .D(n303), .SI(\regArr[14][4] ), .SE(test_se), 
        .CK(n368), .RN(n351), .Q(\regArr[14][5] ) );
  SDFFRQX2M \regArr_reg[14][4]  ( .D(n302), .SI(\regArr[14][3] ), .SE(test_se), 
        .CK(n368), .RN(n351), .Q(\regArr[14][4] ) );
  SDFFRQX2M \regArr_reg[14][3]  ( .D(n301), .SI(\regArr[14][2] ), .SE(test_se), 
        .CK(n368), .RN(n351), .Q(\regArr[14][3] ) );
  SDFFRQX2M \regArr_reg[14][2]  ( .D(n300), .SI(\regArr[14][1] ), .SE(test_se), 
        .CK(n368), .RN(n350), .Q(\regArr[14][2] ) );
  SDFFRQX2M \regArr_reg[14][1]  ( .D(n299), .SI(\regArr[14][0] ), .SE(test_se), 
        .CK(n368), .RN(n350), .Q(\regArr[14][1] ) );
  SDFFRQX2M \regArr_reg[14][0]  ( .D(n298), .SI(\regArr[13][7] ), .SE(test_se), 
        .CK(n368), .RN(n350), .Q(\regArr[14][0] ) );
  SDFFRQX2M \regArr_reg[10][7]  ( .D(n273), .SI(\regArr[10][6] ), .SE(test_se), 
        .CK(n366), .RN(n349), .Q(\regArr[10][7] ) );
  SDFFRQX2M \regArr_reg[10][6]  ( .D(n272), .SI(\regArr[10][5] ), .SE(test_se), 
        .CK(n366), .RN(n348), .Q(\regArr[10][6] ) );
  SDFFRQX2M \regArr_reg[10][5]  ( .D(n271), .SI(\regArr[10][4] ), .SE(test_se), 
        .CK(n366), .RN(n348), .Q(\regArr[10][5] ) );
  SDFFRQX2M \regArr_reg[10][4]  ( .D(n270), .SI(\regArr[10][3] ), .SE(test_se), 
        .CK(n366), .RN(n348), .Q(\regArr[10][4] ) );
  SDFFRQX2M \regArr_reg[10][3]  ( .D(n269), .SI(\regArr[10][2] ), .SE(test_se), 
        .CK(n366), .RN(n348), .Q(\regArr[10][3] ) );
  SDFFRQX2M \regArr_reg[10][2]  ( .D(n268), .SI(\regArr[10][1] ), .SE(test_se), 
        .CK(n366), .RN(n348), .Q(\regArr[10][2] ) );
  SDFFRQX2M \regArr_reg[10][1]  ( .D(n267), .SI(\regArr[10][0] ), .SE(test_se), 
        .CK(n366), .RN(n348), .Q(\regArr[10][1] ) );
  SDFFRQX2M \regArr_reg[10][0]  ( .D(n266), .SI(\regArr[9][7] ), .SE(test_se), 
        .CK(n365), .RN(n348), .Q(\regArr[10][0] ) );
  SDFFRQX2M \regArr_reg[6][7]  ( .D(n241), .SI(\regArr[6][6] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[6][7] ) );
  SDFFRQX2M \regArr_reg[6][6]  ( .D(n240), .SI(\regArr[6][5] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[6][6] ) );
  SDFFRQX2M \regArr_reg[6][5]  ( .D(n239), .SI(\regArr[6][4] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[6][5] ) );
  SDFFRQX2M \regArr_reg[6][4]  ( .D(n238), .SI(\regArr[6][3] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[6][4] ) );
  SDFFRQX2M \regArr_reg[6][3]  ( .D(n237), .SI(\regArr[6][2] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[6][3] ) );
  SDFFRQX2M \regArr_reg[6][2]  ( .D(n236), .SI(\regArr[6][1] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[6][2] ) );
  SDFFRQX2M \regArr_reg[6][1]  ( .D(n235), .SI(\regArr[6][0] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[6][1] ) );
  SDFFRQX2M \regArr_reg[6][0]  ( .D(n234), .SI(\regArr[5][7] ), .SE(test_se), 
        .CK(n363), .RN(n346), .Q(\regArr[6][0] ) );
  SDFFRQX2M \regArr_reg[2][7]  ( .D(n209), .SI(REG2[6]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG2[7]) );
  SDFFRQX2M \regArr_reg[12][7]  ( .D(n289), .SI(\regArr[12][6] ), .SE(test_se), 
        .CK(n367), .RN(n350), .Q(\regArr[12][7] ) );
  SDFFRQX2M \regArr_reg[12][6]  ( .D(n288), .SI(\regArr[12][5] ), .SE(test_se), 
        .CK(n367), .RN(n350), .Q(\regArr[12][6] ) );
  SDFFRQX2M \regArr_reg[12][5]  ( .D(n287), .SI(\regArr[12][4] ), .SE(test_se), 
        .CK(n367), .RN(n350), .Q(\regArr[12][5] ) );
  SDFFRQX2M \regArr_reg[12][4]  ( .D(n286), .SI(\regArr[12][3] ), .SE(test_se), 
        .CK(n367), .RN(n349), .Q(\regArr[12][4] ) );
  SDFFRQX2M \regArr_reg[12][3]  ( .D(n285), .SI(\regArr[12][2] ), .SE(test_se), 
        .CK(n367), .RN(n349), .Q(\regArr[12][3] ) );
  SDFFRQX2M \regArr_reg[12][2]  ( .D(n284), .SI(\regArr[12][1] ), .SE(test_se), 
        .CK(n367), .RN(n349), .Q(\regArr[12][2] ) );
  SDFFRQX2M \regArr_reg[12][1]  ( .D(n283), .SI(\regArr[12][0] ), .SE(test_se), 
        .CK(n367), .RN(n349), .Q(\regArr[12][1] ) );
  SDFFRQX2M \regArr_reg[12][0]  ( .D(n282), .SI(\regArr[11][7] ), .SE(test_se), 
        .CK(n367), .RN(n349), .Q(\regArr[12][0] ) );
  SDFFRQX2M \regArr_reg[8][7]  ( .D(n257), .SI(\regArr[8][6] ), .SE(test_se), 
        .CK(n365), .RN(n347), .Q(\regArr[8][7] ) );
  SDFFRQX2M \regArr_reg[8][6]  ( .D(n256), .SI(\regArr[8][5] ), .SE(test_se), 
        .CK(n365), .RN(n347), .Q(\regArr[8][6] ) );
  SDFFRQX2M \regArr_reg[8][5]  ( .D(n255), .SI(\regArr[8][4] ), .SE(test_se), 
        .CK(n365), .RN(n347), .Q(\regArr[8][5] ) );
  SDFFRQX2M \regArr_reg[8][4]  ( .D(n254), .SI(\regArr[8][3] ), .SE(test_se), 
        .CK(n365), .RN(n347), .Q(\regArr[8][4] ) );
  SDFFRQX2M \regArr_reg[8][3]  ( .D(n253), .SI(\regArr[8][2] ), .SE(test_se), 
        .CK(n364), .RN(n347), .Q(\regArr[8][3] ) );
  SDFFRQX2M \regArr_reg[8][2]  ( .D(n252), .SI(\regArr[8][1] ), .SE(test_se), 
        .CK(n364), .RN(n347), .Q(\regArr[8][2] ) );
  SDFFRQX2M \regArr_reg[8][1]  ( .D(n251), .SI(\regArr[8][0] ), .SE(test_se), 
        .CK(n364), .RN(n347), .Q(\regArr[8][1] ) );
  SDFFRQX2M \regArr_reg[8][0]  ( .D(n250), .SI(\regArr[7][7] ), .SE(test_se), 
        .CK(n364), .RN(n347), .Q(\regArr[8][0] ) );
  SDFFRQX2M \regArr_reg[4][7]  ( .D(n225), .SI(\regArr[4][6] ), .SE(test_se), 
        .CK(n362), .RN(n345), .Q(\regArr[4][7] ) );
  SDFFRQX2M \regArr_reg[4][6]  ( .D(n224), .SI(\regArr[4][5] ), .SE(test_se), 
        .CK(n362), .RN(n345), .Q(\regArr[4][6] ) );
  SDFFRQX2M \regArr_reg[4][5]  ( .D(n223), .SI(test_si2), .SE(test_se), .CK(
        n362), .RN(n345), .Q(\regArr[4][5] ) );
  SDFFRQX2M \regArr_reg[4][4]  ( .D(n222), .SI(\regArr[4][3] ), .SE(test_se), 
        .CK(n362), .RN(n345), .Q(\regArr[4][4] ) );
  SDFFRQX2M \regArr_reg[4][3]  ( .D(n221), .SI(\regArr[4][2] ), .SE(test_se), 
        .CK(n362), .RN(n345), .Q(\regArr[4][3] ) );
  SDFFRQX2M \regArr_reg[4][2]  ( .D(n220), .SI(\regArr[4][1] ), .SE(test_se), 
        .CK(n362), .RN(n345), .Q(\regArr[4][2] ) );
  SDFFRQX2M \regArr_reg[4][1]  ( .D(n219), .SI(\regArr[4][0] ), .SE(test_se), 
        .CK(n362), .RN(n345), .Q(\regArr[4][1] ) );
  SDFFRQX2M \regArr_reg[4][0]  ( .D(n218), .SI(REG3[7]), .SE(test_se), .CK(
        n362), .RN(n345), .Q(\regArr[4][0] ) );
  SDFFRQX2M \regArr_reg[3][2]  ( .D(n212), .SI(REG3[1]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG3[2]) );
  SDFFRQX2M \regArr_reg[3][0]  ( .D(n210), .SI(REG2[7]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG3[0]) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(test_se), .CK(n359), .RN(n342), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(test_se), .CK(n359), .RN(n342), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(test_se), .CK(n359), .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(test_se), .CK(n359), .RN(n342), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(test_se), .CK(n359), .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(test_se), .CK(n359), .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(test_se), .CK(n359), .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(RdData_VLD), .SE(test_se), .CK(
        n364), .RN(n346), .Q(RdData[0]) );
  SDFFRQX2M \regArr_reg[3][4]  ( .D(n214), .SI(REG3[3]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG3[4]) );
  SDFFRQX2M \regArr_reg[3][1]  ( .D(n211), .SI(REG3[0]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG3[1]) );
  SDFFRQX2M \regArr_reg[1][6]  ( .D(n200), .SI(REG1[5]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG1[6]) );
  SDFFRQX2M \regArr_reg[0][7]  ( .D(n193), .SI(REG0[6]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG0[7]) );
  SDFFRQX2M \regArr_reg[0][6]  ( .D(n192), .SI(REG0[5]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG0[6]) );
  SDFFRQX2M \regArr_reg[0][5]  ( .D(n191), .SI(REG0[4]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG0[5]) );
  SDFFRQX2M \regArr_reg[0][4]  ( .D(n190), .SI(REG0[3]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG0[4]) );
  SDFFRQX2M \regArr_reg[0][3]  ( .D(n189), .SI(REG0[2]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG0[3]) );
  SDFFRQX2M \regArr_reg[0][2]  ( .D(n188), .SI(REG0[1]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG0[2]) );
  SDFFRQX2M \regArr_reg[0][1]  ( .D(n187), .SI(REG0[0]), .SE(test_se), .CK(
        n359), .RN(n342), .Q(REG0[1]) );
  SDFFRQX2M \regArr_reg[0][0]  ( .D(n186), .SI(RdData[7]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG0[0]) );
  SDFFRQX2M \regArr_reg[2][1]  ( .D(n203), .SI(REG2[0]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG2[1]) );
  SDFFRQX2M RdData_VLD_reg ( .D(n185), .SI(test_si1), .SE(test_se), .CK(n359), 
        .RN(n342), .Q(RdData_VLD) );
  SDFFSQX2M \regArr_reg[2][0]  ( .D(n202), .SI(REG1[7]), .SE(test_se), .CK(
        n359), .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M \regArr_reg[2][2]  ( .D(n204), .SI(REG2[1]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG2[2]) );
  SDFFSQX2M \regArr_reg[2][5]  ( .D(n207), .SI(REG2[4]), .SE(test_se), .CK(
        n359), .SN(n342), .Q(REG2[5]) );
  SDFFRQX2M \regArr_reg[2][3]  ( .D(n205), .SI(REG2[2]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG2[3]) );
  SDFFRQX2M \regArr_reg[2][6]  ( .D(n208), .SI(REG2[5]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG2[6]) );
  SDFFRQX2M \regArr_reg[2][4]  ( .D(n206), .SI(REG2[3]), .SE(test_se), .CK(
        n361), .RN(n344), .Q(REG2[4]) );
  SDFFRQX2M \regArr_reg[1][1]  ( .D(n195), .SI(REG1[0]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG1[1]) );
  SDFFRQX2M \regArr_reg[1][5]  ( .D(n199), .SI(REG1[4]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG1[5]) );
  SDFFRQX2M \regArr_reg[1][4]  ( .D(n198), .SI(REG1[3]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG1[4]) );
  SDFFRQX2M \regArr_reg[1][7]  ( .D(n201), .SI(REG1[6]), .SE(test_se), .CK(
        n361), .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M \regArr_reg[1][3]  ( .D(n197), .SI(REG1[2]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG1[3]) );
  SDFFRQX2M \regArr_reg[1][2]  ( .D(n196), .SI(REG1[1]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG1[2]) );
  SDFFRQX2M \regArr_reg[1][0]  ( .D(n194), .SI(REG0[7]), .SE(test_se), .CK(
        n360), .RN(n343), .Q(REG1[0]) );
  NOR2BX2M U140 ( .AN(n175), .B(n340), .Y(n169) );
  NOR2BX2M U141 ( .AN(N13), .B(N12), .Y(n160) );
  NOR2BX2M U142 ( .AN(N13), .B(n341), .Y(n163) );
  NOR2BX2M U143 ( .AN(n164), .B(n340), .Y(n155) );
  NOR2X2M U144 ( .A(n341), .B(N13), .Y(n157) );
  NOR2X2M U145 ( .A(N12), .B(N13), .Y(n152) );
  INVX2M U146 ( .A(n337), .Y(n339) );
  INVX2M U147 ( .A(n337), .Y(n338) );
  INVX2M U148 ( .A(n335), .Y(n336) );
  BUFX2M U149 ( .A(n340), .Y(n337) );
  BUFX2M U150 ( .A(n341), .Y(n335) );
  BUFX2M U151 ( .A(n373), .Y(n359) );
  BUFX2M U152 ( .A(n372), .Y(n361) );
  BUFX2M U153 ( .A(n372), .Y(n362) );
  BUFX2M U154 ( .A(n372), .Y(n363) );
  BUFX2M U155 ( .A(n371), .Y(n364) );
  BUFX2M U156 ( .A(n371), .Y(n365) );
  BUFX2M U157 ( .A(n371), .Y(n366) );
  BUFX2M U158 ( .A(n370), .Y(n367) );
  BUFX2M U159 ( .A(n370), .Y(n368) );
  BUFX2M U160 ( .A(n373), .Y(n360) );
  BUFX2M U161 ( .A(n370), .Y(n369) );
  NOR2BX2M U162 ( .AN(n164), .B(N11), .Y(n153) );
  NOR2BX2M U163 ( .AN(n175), .B(N11), .Y(n167) );
  NAND2X2M U164 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U165 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U166 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U167 ( .A(n167), .B(n157), .Y(n170) );
  NAND2X2M U168 ( .A(n169), .B(n157), .Y(n171) );
  NAND2X2M U169 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U170 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U171 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U172 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U173 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U174 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U175 ( .A(n167), .B(n160), .Y(n172) );
  NAND2X2M U176 ( .A(n169), .B(n160), .Y(n173) );
  NAND2X2M U177 ( .A(n167), .B(n163), .Y(n174) );
  NAND2X2M U178 ( .A(n169), .B(n163), .Y(n176) );
  NAND2X2M U179 ( .A(n152), .B(n153), .Y(n151) );
  INVX2M U180 ( .A(n149), .Y(n382) );
  BUFX2M U181 ( .A(n356), .Y(n343) );
  BUFX2M U182 ( .A(n355), .Y(n344) );
  BUFX2M U183 ( .A(n355), .Y(n345) );
  BUFX2M U184 ( .A(n354), .Y(n346) );
  BUFX2M U185 ( .A(n354), .Y(n347) );
  BUFX2M U186 ( .A(n353), .Y(n348) );
  BUFX2M U187 ( .A(n353), .Y(n349) );
  BUFX2M U188 ( .A(n352), .Y(n350) );
  BUFX2M U189 ( .A(n356), .Y(n342) );
  BUFX2M U190 ( .A(n358), .Y(n372) );
  BUFX2M U191 ( .A(n357), .Y(n371) );
  BUFX2M U192 ( .A(n357), .Y(n370) );
  BUFX2M U193 ( .A(n352), .Y(n351) );
  BUFX2M U194 ( .A(n358), .Y(n373) );
  INVX2M U195 ( .A(WrData[0]), .Y(n374) );
  INVX2M U196 ( .A(WrData[1]), .Y(n375) );
  INVX2M U197 ( .A(WrData[2]), .Y(n376) );
  INVX2M U198 ( .A(WrData[3]), .Y(n377) );
  INVX2M U199 ( .A(WrData[4]), .Y(n378) );
  INVX2M U200 ( .A(WrData[7]), .Y(n381) );
  NAND2BX2M U201 ( .AN(WrEn), .B(RdEn), .Y(n149) );
  NOR2BX2M U202 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  NOR2BX2M U203 ( .AN(n150), .B(N14), .Y(n164) );
  AND2X2M U204 ( .A(N14), .B(n150), .Y(n175) );
  BUFX2M U205 ( .A(RST), .Y(n355) );
  BUFX2M U206 ( .A(RST), .Y(n354) );
  BUFX2M U207 ( .A(RST), .Y(n353) );
  BUFX2M U208 ( .A(RST), .Y(n352) );
  BUFX2M U209 ( .A(RST), .Y(n356) );
  BUFX2M U210 ( .A(CLK), .Y(n357) );
  BUFX2M U211 ( .A(CLK), .Y(n358) );
  INVX2M U212 ( .A(WrData[5]), .Y(n379) );
  INVX2M U213 ( .A(WrData[6]), .Y(n380) );
  OAI2BB2X1M U214 ( .B0(n151), .B1(n374), .A0N(REG0[0]), .A1N(n151), .Y(n186)
         );
  OAI2BB2X1M U215 ( .B0(n151), .B1(n375), .A0N(REG0[1]), .A1N(n151), .Y(n187)
         );
  OAI2BB2X1M U216 ( .B0(n151), .B1(n376), .A0N(REG0[2]), .A1N(n151), .Y(n188)
         );
  OAI2BB2X1M U217 ( .B0(n151), .B1(n377), .A0N(REG0[3]), .A1N(n151), .Y(n189)
         );
  OAI2BB2X1M U218 ( .B0(n151), .B1(n378), .A0N(REG0[4]), .A1N(n151), .Y(n190)
         );
  OAI2BB2X1M U219 ( .B0(n151), .B1(n379), .A0N(REG0[5]), .A1N(n151), .Y(n191)
         );
  OAI2BB2X1M U220 ( .B0(n151), .B1(n380), .A0N(REG0[6]), .A1N(n151), .Y(n192)
         );
  OAI2BB2X1M U221 ( .B0(n151), .B1(n381), .A0N(REG0[7]), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U222 ( .B0(n374), .B1(n154), .A0N(REG1[0]), .A1N(n154), .Y(n194)
         );
  OAI2BB2X1M U223 ( .B0(n375), .B1(n154), .A0N(REG1[1]), .A1N(n154), .Y(n195)
         );
  OAI2BB2X1M U224 ( .B0(n376), .B1(n154), .A0N(REG1[2]), .A1N(n154), .Y(n196)
         );
  OAI2BB2X1M U225 ( .B0(n377), .B1(n154), .A0N(REG1[3]), .A1N(n154), .Y(n197)
         );
  OAI2BB2X1M U226 ( .B0(n378), .B1(n154), .A0N(REG1[4]), .A1N(n154), .Y(n198)
         );
  OAI2BB2X1M U227 ( .B0(n379), .B1(n154), .A0N(REG1[5]), .A1N(n154), .Y(n199)
         );
  OAI2BB2X1M U228 ( .B0(n380), .B1(n154), .A0N(REG1[6]), .A1N(n154), .Y(n200)
         );
  OAI2BB2X1M U229 ( .B0(n381), .B1(n154), .A0N(REG1[7]), .A1N(n154), .Y(n201)
         );
  OAI2BB2X1M U230 ( .B0(n374), .B1(n159), .A0N(\regArr[4][0] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U231 ( .B0(n375), .B1(n159), .A0N(\regArr[4][1] ), .A1N(n159), 
        .Y(n219) );
  OAI2BB2X1M U232 ( .B0(n376), .B1(n159), .A0N(\regArr[4][2] ), .A1N(n159), 
        .Y(n220) );
  OAI2BB2X1M U233 ( .B0(n377), .B1(n159), .A0N(\regArr[4][3] ), .A1N(n159), 
        .Y(n221) );
  OAI2BB2X1M U234 ( .B0(n378), .B1(n159), .A0N(\regArr[4][4] ), .A1N(n159), 
        .Y(n222) );
  OAI2BB2X1M U235 ( .B0(n379), .B1(n159), .A0N(\regArr[4][5] ), .A1N(n159), 
        .Y(n223) );
  OAI2BB2X1M U236 ( .B0(n380), .B1(n159), .A0N(\regArr[4][6] ), .A1N(n159), 
        .Y(n224) );
  OAI2BB2X1M U237 ( .B0(n381), .B1(n159), .A0N(\regArr[4][7] ), .A1N(n159), 
        .Y(n225) );
  OAI2BB2X1M U238 ( .B0(n374), .B1(n161), .A0N(\regArr[5][0] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U239 ( .B0(n375), .B1(n161), .A0N(\regArr[5][1] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U240 ( .B0(n376), .B1(n161), .A0N(\regArr[5][2] ), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U241 ( .B0(n377), .B1(n161), .A0N(\regArr[5][3] ), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U242 ( .B0(n378), .B1(n161), .A0N(\regArr[5][4] ), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U243 ( .B0(n379), .B1(n161), .A0N(\regArr[5][5] ), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U244 ( .B0(n380), .B1(n161), .A0N(\regArr[5][6] ), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U245 ( .B0(n381), .B1(n161), .A0N(\regArr[5][7] ), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U246 ( .B0(n374), .B1(n162), .A0N(\regArr[6][0] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U247 ( .B0(n375), .B1(n162), .A0N(\regArr[6][1] ), .A1N(n162), 
        .Y(n235) );
  OAI2BB2X1M U248 ( .B0(n376), .B1(n162), .A0N(\regArr[6][2] ), .A1N(n162), 
        .Y(n236) );
  OAI2BB2X1M U249 ( .B0(n377), .B1(n162), .A0N(\regArr[6][3] ), .A1N(n162), 
        .Y(n237) );
  OAI2BB2X1M U250 ( .B0(n378), .B1(n162), .A0N(\regArr[6][4] ), .A1N(n162), 
        .Y(n238) );
  OAI2BB2X1M U251 ( .B0(n379), .B1(n162), .A0N(\regArr[6][5] ), .A1N(n162), 
        .Y(n239) );
  OAI2BB2X1M U252 ( .B0(n380), .B1(n162), .A0N(\regArr[6][6] ), .A1N(n162), 
        .Y(n240) );
  OAI2BB2X1M U253 ( .B0(n381), .B1(n162), .A0N(\regArr[6][7] ), .A1N(n162), 
        .Y(n241) );
  OAI2BB2X1M U254 ( .B0(n374), .B1(n165), .A0N(\regArr[7][0] ), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U255 ( .B0(n375), .B1(n165), .A0N(\regArr[7][1] ), .A1N(n165), 
        .Y(n243) );
  OAI2BB2X1M U256 ( .B0(n376), .B1(n165), .A0N(\regArr[7][2] ), .A1N(n165), 
        .Y(n244) );
  OAI2BB2X1M U257 ( .B0(n377), .B1(n165), .A0N(\regArr[7][3] ), .A1N(n165), 
        .Y(n245) );
  OAI2BB2X1M U258 ( .B0(n378), .B1(n165), .A0N(\regArr[7][4] ), .A1N(n165), 
        .Y(n246) );
  OAI2BB2X1M U259 ( .B0(n379), .B1(n165), .A0N(\regArr[7][5] ), .A1N(n165), 
        .Y(n247) );
  OAI2BB2X1M U260 ( .B0(n380), .B1(n165), .A0N(\regArr[7][6] ), .A1N(n165), 
        .Y(n248) );
  OAI2BB2X1M U261 ( .B0(n381), .B1(n165), .A0N(\regArr[7][7] ), .A1N(n165), 
        .Y(n249) );
  OAI2BB2X1M U262 ( .B0(n374), .B1(n166), .A0N(\regArr[8][0] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U263 ( .B0(n375), .B1(n166), .A0N(\regArr[8][1] ), .A1N(n166), 
        .Y(n251) );
  OAI2BB2X1M U264 ( .B0(n376), .B1(n166), .A0N(\regArr[8][2] ), .A1N(n166), 
        .Y(n252) );
  OAI2BB2X1M U265 ( .B0(n377), .B1(n166), .A0N(\regArr[8][3] ), .A1N(n166), 
        .Y(n253) );
  OAI2BB2X1M U266 ( .B0(n378), .B1(n166), .A0N(\regArr[8][4] ), .A1N(n166), 
        .Y(n254) );
  OAI2BB2X1M U267 ( .B0(n379), .B1(n166), .A0N(\regArr[8][5] ), .A1N(n166), 
        .Y(n255) );
  OAI2BB2X1M U268 ( .B0(n380), .B1(n166), .A0N(\regArr[8][6] ), .A1N(n166), 
        .Y(n256) );
  OAI2BB2X1M U269 ( .B0(n381), .B1(n166), .A0N(\regArr[8][7] ), .A1N(n166), 
        .Y(n257) );
  OAI2BB2X1M U270 ( .B0(n374), .B1(n168), .A0N(\regArr[9][0] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U271 ( .B0(n375), .B1(n168), .A0N(\regArr[9][1] ), .A1N(n168), 
        .Y(n259) );
  OAI2BB2X1M U272 ( .B0(n376), .B1(n168), .A0N(\regArr[9][2] ), .A1N(n168), 
        .Y(n260) );
  OAI2BB2X1M U273 ( .B0(n377), .B1(n168), .A0N(\regArr[9][3] ), .A1N(n168), 
        .Y(n261) );
  OAI2BB2X1M U274 ( .B0(n378), .B1(n168), .A0N(\regArr[9][4] ), .A1N(n168), 
        .Y(n262) );
  OAI2BB2X1M U275 ( .B0(n379), .B1(n168), .A0N(\regArr[9][5] ), .A1N(n168), 
        .Y(n263) );
  OAI2BB2X1M U276 ( .B0(n380), .B1(n168), .A0N(\regArr[9][6] ), .A1N(n168), 
        .Y(n264) );
  OAI2BB2X1M U277 ( .B0(n381), .B1(n168), .A0N(\regArr[9][7] ), .A1N(n168), 
        .Y(n265) );
  OAI2BB2X1M U278 ( .B0(n374), .B1(n170), .A0N(\regArr[10][0] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U279 ( .B0(n375), .B1(n170), .A0N(\regArr[10][1] ), .A1N(n170), 
        .Y(n267) );
  OAI2BB2X1M U280 ( .B0(n376), .B1(n170), .A0N(\regArr[10][2] ), .A1N(n170), 
        .Y(n268) );
  OAI2BB2X1M U281 ( .B0(n377), .B1(n170), .A0N(\regArr[10][3] ), .A1N(n170), 
        .Y(n269) );
  OAI2BB2X1M U282 ( .B0(n378), .B1(n170), .A0N(\regArr[10][4] ), .A1N(n170), 
        .Y(n270) );
  OAI2BB2X1M U283 ( .B0(n379), .B1(n170), .A0N(\regArr[10][5] ), .A1N(n170), 
        .Y(n271) );
  OAI2BB2X1M U284 ( .B0(n380), .B1(n170), .A0N(\regArr[10][6] ), .A1N(n170), 
        .Y(n272) );
  OAI2BB2X1M U285 ( .B0(n381), .B1(n170), .A0N(\regArr[10][7] ), .A1N(n170), 
        .Y(n273) );
  OAI2BB2X1M U286 ( .B0(n374), .B1(n171), .A0N(\regArr[11][0] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U287 ( .B0(n375), .B1(n171), .A0N(\regArr[11][1] ), .A1N(n171), 
        .Y(n275) );
  OAI2BB2X1M U288 ( .B0(n376), .B1(n171), .A0N(\regArr[11][2] ), .A1N(n171), 
        .Y(n276) );
  OAI2BB2X1M U289 ( .B0(n377), .B1(n171), .A0N(\regArr[11][3] ), .A1N(n171), 
        .Y(n277) );
  OAI2BB2X1M U290 ( .B0(n378), .B1(n171), .A0N(\regArr[11][4] ), .A1N(n171), 
        .Y(n278) );
  OAI2BB2X1M U291 ( .B0(n379), .B1(n171), .A0N(\regArr[11][5] ), .A1N(n171), 
        .Y(n279) );
  OAI2BB2X1M U292 ( .B0(n380), .B1(n171), .A0N(\regArr[11][6] ), .A1N(n171), 
        .Y(n280) );
  OAI2BB2X1M U293 ( .B0(n381), .B1(n171), .A0N(\regArr[11][7] ), .A1N(n171), 
        .Y(n281) );
  OAI2BB2X1M U294 ( .B0(n374), .B1(n172), .A0N(\regArr[12][0] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U295 ( .B0(n375), .B1(n172), .A0N(\regArr[12][1] ), .A1N(n172), 
        .Y(n283) );
  OAI2BB2X1M U296 ( .B0(n376), .B1(n172), .A0N(\regArr[12][2] ), .A1N(n172), 
        .Y(n284) );
  OAI2BB2X1M U297 ( .B0(n377), .B1(n172), .A0N(\regArr[12][3] ), .A1N(n172), 
        .Y(n285) );
  OAI2BB2X1M U298 ( .B0(n378), .B1(n172), .A0N(\regArr[12][4] ), .A1N(n172), 
        .Y(n286) );
  OAI2BB2X1M U299 ( .B0(n379), .B1(n172), .A0N(\regArr[12][5] ), .A1N(n172), 
        .Y(n287) );
  OAI2BB2X1M U300 ( .B0(n380), .B1(n172), .A0N(\regArr[12][6] ), .A1N(n172), 
        .Y(n288) );
  OAI2BB2X1M U301 ( .B0(n381), .B1(n172), .A0N(\regArr[12][7] ), .A1N(n172), 
        .Y(n289) );
  OAI2BB2X1M U302 ( .B0(n374), .B1(n173), .A0N(\regArr[13][0] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U303 ( .B0(n375), .B1(n173), .A0N(\regArr[13][1] ), .A1N(n173), 
        .Y(n291) );
  OAI2BB2X1M U304 ( .B0(n376), .B1(n173), .A0N(\regArr[13][2] ), .A1N(n173), 
        .Y(n292) );
  OAI2BB2X1M U305 ( .B0(n377), .B1(n173), .A0N(\regArr[13][3] ), .A1N(n173), 
        .Y(n293) );
  OAI2BB2X1M U306 ( .B0(n378), .B1(n173), .A0N(\regArr[13][4] ), .A1N(n173), 
        .Y(n294) );
  OAI2BB2X1M U307 ( .B0(n379), .B1(n173), .A0N(\regArr[13][5] ), .A1N(n173), 
        .Y(n295) );
  OAI2BB2X1M U308 ( .B0(n380), .B1(n173), .A0N(\regArr[13][6] ), .A1N(n173), 
        .Y(n296) );
  OAI2BB2X1M U309 ( .B0(n381), .B1(n173), .A0N(\regArr[13][7] ), .A1N(n173), 
        .Y(n297) );
  OAI2BB2X1M U310 ( .B0(n374), .B1(n174), .A0N(\regArr[14][0] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U311 ( .B0(n375), .B1(n174), .A0N(\regArr[14][1] ), .A1N(n174), 
        .Y(n299) );
  OAI2BB2X1M U312 ( .B0(n376), .B1(n174), .A0N(\regArr[14][2] ), .A1N(n174), 
        .Y(n300) );
  OAI2BB2X1M U313 ( .B0(n377), .B1(n174), .A0N(\regArr[14][3] ), .A1N(n174), 
        .Y(n301) );
  OAI2BB2X1M U314 ( .B0(n378), .B1(n174), .A0N(\regArr[14][4] ), .A1N(n174), 
        .Y(n302) );
  OAI2BB2X1M U315 ( .B0(n379), .B1(n174), .A0N(\regArr[14][5] ), .A1N(n174), 
        .Y(n303) );
  OAI2BB2X1M U316 ( .B0(n380), .B1(n174), .A0N(\regArr[14][6] ), .A1N(n174), 
        .Y(n304) );
  OAI2BB2X1M U317 ( .B0(n381), .B1(n174), .A0N(\regArr[14][7] ), .A1N(n174), 
        .Y(n305) );
  OAI2BB2X1M U318 ( .B0(n374), .B1(n176), .A0N(\regArr[15][0] ), .A1N(n176), 
        .Y(n306) );
  OAI2BB2X1M U319 ( .B0(n375), .B1(n176), .A0N(\regArr[15][1] ), .A1N(n176), 
        .Y(n307) );
  OAI2BB2X1M U320 ( .B0(n376), .B1(n176), .A0N(\regArr[15][2] ), .A1N(n176), 
        .Y(n308) );
  OAI2BB2X1M U321 ( .B0(n377), .B1(n176), .A0N(\regArr[15][3] ), .A1N(n176), 
        .Y(n309) );
  OAI2BB2X1M U322 ( .B0(n378), .B1(n176), .A0N(\regArr[15][4] ), .A1N(n176), 
        .Y(n310) );
  OAI2BB2X1M U323 ( .B0(n379), .B1(n176), .A0N(\regArr[15][5] ), .A1N(n176), 
        .Y(n311) );
  OAI2BB2X1M U324 ( .B0(n380), .B1(n176), .A0N(\regArr[15][6] ), .A1N(n176), 
        .Y(n312) );
  OAI2BB2X1M U325 ( .B0(n381), .B1(n176), .A0N(\regArr[15][7] ), .A1N(n176), 
        .Y(n313) );
  OAI2BB2X1M U326 ( .B0(n375), .B1(n156), .A0N(REG2[1]), .A1N(n156), .Y(n203)
         );
  OAI2BB2X1M U327 ( .B0(n376), .B1(n156), .A0N(REG2[2]), .A1N(n156), .Y(n204)
         );
  OAI2BB2X1M U328 ( .B0(n377), .B1(n156), .A0N(REG2[3]), .A1N(n156), .Y(n205)
         );
  OAI2BB2X1M U329 ( .B0(n378), .B1(n156), .A0N(REG2[4]), .A1N(n156), .Y(n206)
         );
  OAI2BB2X1M U330 ( .B0(n380), .B1(n156), .A0N(REG2[6]), .A1N(n156), .Y(n208)
         );
  OAI2BB2X1M U331 ( .B0(n381), .B1(n156), .A0N(REG2[7]), .A1N(n156), .Y(n209)
         );
  OAI2BB2X1M U332 ( .B0(n374), .B1(n158), .A0N(REG3[0]), .A1N(n158), .Y(n210)
         );
  OAI2BB2X1M U333 ( .B0(n375), .B1(n158), .A0N(REG3[1]), .A1N(n158), .Y(n211)
         );
  OAI2BB2X1M U334 ( .B0(n376), .B1(n158), .A0N(REG3[2]), .A1N(n158), .Y(n212)
         );
  OAI2BB2X1M U335 ( .B0(n378), .B1(n158), .A0N(REG3[4]), .A1N(n158), .Y(n214)
         );
  OAI2BB2X1M U336 ( .B0(n379), .B1(n158), .A0N(REG3[5]), .A1N(n158), .Y(n215)
         );
  OAI2BB2X1M U337 ( .B0(n380), .B1(n158), .A0N(REG3[6]), .A1N(n158), .Y(n216)
         );
  OAI2BB2X1M U338 ( .B0(n381), .B1(n158), .A0N(REG3[7]), .A1N(n158), .Y(n217)
         );
  OAI2BB2X1M U339 ( .B0(n374), .B1(n156), .A0N(REG2[0]), .A1N(n156), .Y(n202)
         );
  OAI2BB2X1M U340 ( .B0(n379), .B1(n156), .A0N(REG2[5]), .A1N(n156), .Y(n207)
         );
  OAI2BB2X1M U341 ( .B0(n377), .B1(n158), .A0N(REG3[3]), .A1N(n158), .Y(n213)
         );
  MX4X1M U342 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n338), 
        .S1(N12), .Y(n141) );
  MX4X1M U343 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n339), 
        .S1(n336), .Y(n318) );
  MX4X1M U344 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(N11), 
        .S1(N12), .Y(n326) );
  MX4X1M U345 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(N11), 
        .S1(N12), .Y(n330) );
  MX4X1M U346 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(N11), 
        .S1(n336), .Y(n334) );
  MX4X1M U347 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n339), 
        .S1(n336), .Y(n314) );
  MX4X1M U348 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n339), 
        .S1(N12), .Y(n145) );
  MX4X1M U349 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(N11), 
        .S1(n336), .Y(n322) );
  MX4X1M U350 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(n338), .S1(N12), .Y(n140) );
  MX4X1M U351 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n339), .S1(N12), .Y(n144) );
  MX4X1M U352 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n339), .S1(n336), .Y(n148) );
  MX4X1M U353 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n339), .S1(n336), .Y(n317) );
  MX4X1M U354 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n339), .S1(n336), .Y(n321) );
  MX4X1M U355 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(N11), .S1(N12), .Y(n325) );
  MX4X1M U356 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(N11), .S1(n336), .Y(n329) );
  MX4X1M U357 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(n338), .S1(N12), .Y(n333) );
  OAI2BB1X2M U358 ( .A0N(RdData_VLD), .A1N(n150), .B0(n149), .Y(n185) );
  AO22X1M U359 ( .A0(N43), .A1(n382), .B0(RdData[0]), .B1(n149), .Y(n177) );
  MX4X1M U360 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U361 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(n338), .S1(N12), .Y(n139) );
  MX4X1M U362 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n338), .S1(N12), .Y(n138) );
  AO22X1M U363 ( .A0(N42), .A1(n382), .B0(RdData[1]), .B1(n149), .Y(n178) );
  MX4X1M U364 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U365 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(n338), .S1(N12), .Y(n143) );
  MX4X1M U366 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n338), .S1(N12), .Y(n142) );
  AO22X1M U367 ( .A0(N41), .A1(n382), .B0(RdData[2]), .B1(n149), .Y(n179) );
  MX4X1M U368 ( .A(n314), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U369 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n339), .S1(n336), .Y(n147) );
  MX4X1M U370 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n339), .S1(n336), .Y(n146) );
  AO22X1M U371 ( .A0(N40), .A1(n382), .B0(RdData[3]), .B1(n149), .Y(n180) );
  MX4X1M U372 ( .A(n318), .B(n316), .C(n317), .D(n315), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U373 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n339), .S1(n336), .Y(n316) );
  MX4X1M U374 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n339), .S1(n336), .Y(n315) );
  AO22X1M U375 ( .A0(N39), .A1(n382), .B0(RdData[4]), .B1(n149), .Y(n181) );
  MX4X1M U376 ( .A(n322), .B(n320), .C(n321), .D(n319), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U377 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n339), .S1(n336), .Y(n320) );
  MX4X1M U378 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n339), .S1(n336), .Y(n319) );
  AO22X1M U379 ( .A0(N38), .A1(n382), .B0(RdData[5]), .B1(n149), .Y(n182) );
  MX4X1M U380 ( .A(n326), .B(n324), .C(n325), .D(n323), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U381 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(n338), .S1(N12), .Y(n324) );
  MX4X1M U382 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(N11), .S1(n336), .Y(n323) );
  AO22X1M U383 ( .A0(N37), .A1(n382), .B0(RdData[6]), .B1(n149), .Y(n183) );
  MX4X1M U384 ( .A(n330), .B(n328), .C(n329), .D(n327), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U385 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n338), .S1(N12), .Y(n328) );
  MX4X1M U386 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(N11), .S1(n336), .Y(n327) );
  AO22X1M U387 ( .A0(N36), .A1(n382), .B0(RdData[7]), .B1(n149), .Y(n184) );
  MX4X1M U388 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U389 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(n338), .S1(N12), .Y(n332) );
  MX4X1M U390 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(N11), .S1(n336), .Y(n331) );
  INVX2M U391 ( .A(N11), .Y(n340) );
  INVX2M U392 ( .A(N12), .Y(n341) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID, test_si, 
        test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST, test_si, test_se;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [15:0] ALU_OUT_Comb;

  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  OAI2BB1X2M U23 ( .A0N(n146), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U24 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U25 ( .AN(n123), .B(n143), .Y(n54) );
  AND2X2M U26 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U27 ( .AN(n52), .B(n141), .Y(n48) );
  AND2X2M U28 ( .A(n123), .B(n122), .Y(n67) );
  BUFX2M U29 ( .A(n58), .Y(n30) );
  NOR2X2M U30 ( .A(n124), .B(n143), .Y(n58) );
  INVX2M U31 ( .A(n117), .Y(n143) );
  INVX2M U32 ( .A(n108), .Y(n144) );
  OAI2BB1X2M U33 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U34 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U35 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U36 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U37 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U38 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U39 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  INVX2M U40 ( .A(n124), .Y(n146) );
  NOR3BX2M U41 ( .AN(n122), .B(n145), .C(ALU_FUN[2]), .Y(n66) );
  NOR3X2M U42 ( .A(n143), .B(ALU_FUN[2]), .C(n145), .Y(n52) );
  NOR2X2M U43 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  AND3X2M U44 ( .A(n123), .B(n142), .C(n3), .Y(n63) );
  NAND3X2M U45 ( .A(n146), .B(n142), .C(n3), .Y(n53) );
  NAND2X2M U46 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U47 ( .A(ALU_FUN[0]), .Y(n142) );
  NOR2X2M U48 ( .A(n142), .B(n3), .Y(n122) );
  NOR2X2M U49 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NAND3X2M U50 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U51 ( .A(ALU_FUN[1]), .Y(n145) );
  NAND2X2M U52 ( .A(EN), .B(n140), .Y(n49) );
  INVX2M U53 ( .A(EN), .Y(n141) );
  NAND3X2M U54 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  AND2X2M U55 ( .A(ALU_FUN[2]), .B(n145), .Y(n116) );
  AND4X2M U56 ( .A(N159), .B(n116), .C(n3), .D(n142), .Y(n107) );
  INVX2M U57 ( .A(n4), .Y(n139) );
  OAI222X1M U58 ( .A0(n72), .A1(n139), .B0(n4), .B1(n73), .C0(n53), .C1(n152), 
        .Y(n71) );
  AOI221XLM U59 ( .A0(n28), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n73)
         );
  AOI221XLM U60 ( .A0(n63), .A1(n151), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  AOI31X2M U61 ( .A0(n92), .A1(n93), .A2(n94), .B0(n141), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U62 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n92) );
  AOI221XLM U63 ( .A0(n8), .A1(n144), .B0(n30), .B1(n155), .C0(n95), .Y(n94)
         );
  AOI222X1M U64 ( .A0(N111), .A1(n52), .B0(n7), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n93) );
  AOI31X2M U65 ( .A0(n86), .A1(n87), .A2(n88), .B0(n141), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U66 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n86) );
  AOI221XLM U67 ( .A0(n9), .A1(n144), .B0(n30), .B1(n154), .C0(n89), .Y(n88)
         );
  AOI222X1M U68 ( .A0(N112), .A1(n52), .B0(n8), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n87) );
  AOI31X2M U69 ( .A0(n80), .A1(n81), .A2(n82), .B0(n141), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U70 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n80) );
  AOI221XLM U71 ( .A0(n144), .A1(n27), .B0(n30), .B1(n153), .C0(n83), .Y(n82)
         );
  AOI222X1M U72 ( .A0(N113), .A1(n52), .B0(n9), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n81) );
  AOI31X2M U73 ( .A0(n74), .A1(n75), .A2(n76), .B0(n141), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U74 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n74) );
  AOI221XLM U75 ( .A0(n144), .A1(n28), .B0(n30), .B1(n152), .C0(n77), .Y(n76)
         );
  AOI222X1M U76 ( .A0(N114), .A1(n52), .B0(n27), .B1(n59), .C0(N130), .C1(n66), 
        .Y(n75) );
  AOI31X2M U77 ( .A0(n68), .A1(n69), .A2(n70), .B0(n141), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U78 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n68) );
  AOI221XLM U79 ( .A0(n144), .A1(n29), .B0(n30), .B1(n151), .C0(n71), .Y(n70)
         );
  AOI222X1M U80 ( .A0(N115), .A1(n52), .B0(n59), .B1(n28), .C0(N131), .C1(n66), 
        .Y(n69) );
  AOI31X2M U81 ( .A0(n55), .A1(n56), .A2(n57), .B0(n141), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U82 ( .A0(N132), .A1(n66), .B0(N116), .B1(n52), .Y(n56) );
  AOI22X1M U83 ( .A0(N107), .A1(n67), .B0(N98), .B1(n54), .Y(n55) );
  AOI221XLM U84 ( .A0(n30), .A1(n150), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U85 ( .A0(n110), .A1(n111), .A2(n112), .B0(n141), .Y(
        ALU_OUT_Comb[0]) );
  AOI22X1M U86 ( .A0(N100), .A1(n67), .B0(N91), .B1(n54), .Y(n110) );
  AOI211X2M U87 ( .A0(n30), .A1(n157), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U88 ( .A0(N109), .A1(n52), .B0(n5), .B1(n59), .C0(N125), .C1(n66), 
        .Y(n111) );
  AOI31X2M U89 ( .A0(n98), .A1(n99), .A2(n100), .B0(n141), .Y(ALU_OUT_Comb[1])
         );
  AOI211X2M U90 ( .A0(n7), .A1(n144), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U91 ( .A0(N126), .A1(n66), .B0(n30), .B1(n156), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U92 ( .A0(N92), .A1(n54), .B0(N110), .B1(n52), .C0(N101), .C1(n67), 
        .Y(n98) );
  INVX2M U93 ( .A(n109), .Y(n140) );
  AOI211X2M U94 ( .A0(N108), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  AOI21X2M U95 ( .A0(n50), .A1(n51), .B0(n141), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U96 ( .A0(N99), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U97 ( .B0(N117), .B1(n52), .A0N(n150), .A1N(n53), .Y(n51) );
  BUFX2M U98 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U99 ( .A(n6), .Y(n156) );
  INVX2M U100 ( .A(n5), .Y(n157) );
  INVX2M U101 ( .A(n28), .Y(n151) );
  INVX2M U102 ( .A(n29), .Y(n150) );
  INVX2M U103 ( .A(n8), .Y(n154) );
  INVX2M U104 ( .A(n7), .Y(n155) );
  INVX2M U105 ( .A(n27), .Y(n152) );
  INVX2M U106 ( .A(n9), .Y(n153) );
  OAI222X1M U107 ( .A0(n96), .A1(n136), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n156), .Y(n95) );
  AOI221XLM U108 ( .A0(n7), .A1(n63), .B0(n64), .B1(n155), .C0(n30), .Y(n97)
         );
  AOI221XLM U109 ( .A0(n63), .A1(n155), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U110 ( .A0(n90), .A1(n138), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n155), .Y(n89) );
  AOI221XLM U111 ( .A0(n8), .A1(n63), .B0(n64), .B1(n154), .C0(n30), .Y(n91)
         );
  AOI221XLM U112 ( .A0(n63), .A1(n154), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U113 ( .A0(n84), .A1(n149), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n154), .Y(n83) );
  INVX2M U114 ( .A(B[4]), .Y(n149) );
  AOI221XLM U115 ( .A0(n9), .A1(n63), .B0(n64), .B1(n153), .C0(n30), .Y(n85)
         );
  AOI221XLM U116 ( .A0(n63), .A1(n153), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U117 ( .A0(n78), .A1(n148), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n153), .Y(n77) );
  INVX2M U118 ( .A(B[5]), .Y(n148) );
  AOI221XLM U119 ( .A0(n27), .A1(n63), .B0(n64), .B1(n152), .C0(n30), .Y(n79)
         );
  AOI221XLM U120 ( .A0(n63), .A1(n152), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U121 ( .A0(n61), .A1(n147), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n151), .Y(n60) );
  INVX2M U122 ( .A(B[7]), .Y(n147) );
  AOI221XLM U123 ( .A0(n63), .A1(n29), .B0(n64), .B1(n150), .C0(n30), .Y(n62)
         );
  AOI221XLM U124 ( .A0(n63), .A1(n150), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U125 ( .A(n31), .Y(n135) );
  OAI2B2X1M U126 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n156), .Y(n114) );
  AOI221XLM U127 ( .A0(n63), .A1(n157), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U128 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n157), .Y(n102) );
  AOI221XLM U129 ( .A0(n63), .A1(n156), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U130 ( .A(n42), .Y(n137) );
  OAI21X2M U131 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U132 ( .A0(N157), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U133 ( .A0(n5), .A1(n63), .B0(n64), .B1(n157), .C0(n30), .Y(n119)
         );
  NOR3X2M U134 ( .A(n145), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U135 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U136 ( .A0(N158), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U137 ( .A0(n6), .A1(n63), .B0(n64), .B1(n156), .C0(n30), .Y(n104)
         );
  NOR3X2M U138 ( .A(n142), .B(ALU_FUN[2]), .C(n145), .Y(n106) );
  BUFX2M U139 ( .A(A[7]), .Y(n29) );
  BUFX2M U140 ( .A(A[1]), .Y(n6) );
  BUFX2M U141 ( .A(A[0]), .Y(n5) );
  BUFX2M U142 ( .A(A[3]), .Y(n8) );
  BUFX2M U143 ( .A(A[2]), .Y(n7) );
  BUFX2M U144 ( .A(A[5]), .Y(n27) );
  BUFX2M U145 ( .A(A[4]), .Y(n9) );
  BUFX2M U146 ( .A(B[6]), .Y(n4) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n136) );
  INVX2M U149 ( .A(B[3]), .Y(n138) );
  NOR2X1M U150 ( .A(n150), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n138), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n136), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n136), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n156), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n135), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n138), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n151), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n150), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N159) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n156), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n156), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n137), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n139), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N158) );
  NOR2X1M U178 ( .A(N159), .B(N158), .Y(N157) );
  ALU_DW_div_uns_0 div_52 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}) );
  ALU_DW01_sub_0 sub_46 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_43 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_49 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module Tx_FSM_test_1 ( Data_Valid, CLK, parity_enable, ser_done, RST, ser_en, 
        busy, mux_sel, test_si, test_se );
  output [1:0] mux_sel;
  input Data_Valid, CLK, parity_enable, ser_done, RST, test_si, test_se;
  output ser_en, busy;
  wire   N57, n10, n11, n12, n13, n14, n15, n5, n6, n7, n8, n9;
  wire   [2:0] PS;
  wire   [2:0] NS;
  assign ser_en = N57;

  SDFFRQX2M \PS_reg[2]  ( .D(NS[2]), .SI(PS[1]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(PS[2]) );
  SDFFRQX2M \PS_reg[1]  ( .D(NS[1]), .SI(PS[0]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(PS[1]) );
  SDFFRQX2M \PS_reg[0]  ( .D(NS[0]), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(PS[0]) );
  SDFFRQX2M busy_reg ( .D(n15), .SI(PS[2]), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(busy) );
  INVX2M U7 ( .A(ser_done), .Y(n6) );
  INVX2M U8 ( .A(n12), .Y(mux_sel[1]) );
  OAI33X2M U9 ( .A0(n5), .A1(PS[1]), .A2(PS[0]), .B0(n9), .B1(n6), .B2(n7), 
        .Y(NS[0]) );
  INVX2M U10 ( .A(N57), .Y(n7) );
  NOR2X2M U11 ( .A(n12), .B(PS[0]), .Y(N57) );
  OAI31X1M U12 ( .A0(n5), .A1(PS[2]), .A2(n10), .B0(n11), .Y(n15) );
  OAI31X1M U13 ( .A0(n8), .A1(Data_Valid), .A2(n10), .B0(busy), .Y(n11) );
  OR2X2M U14 ( .A(PS[1]), .B(PS[0]), .Y(n10) );
  NAND2X2M U15 ( .A(PS[1]), .B(n8), .Y(n12) );
  OAI2B1X2M U16 ( .A1N(mux_sel[0]), .A0(PS[1]), .B0(n14), .Y(NS[1]) );
  OAI21X2M U17 ( .A0(parity_enable), .A1(n6), .B0(N57), .Y(n14) );
  AND2X2M U18 ( .A(PS[0]), .B(n8), .Y(mux_sel[0]) );
  NOR2X2M U19 ( .A(n13), .B(n12), .Y(NS[2]) );
  AOI21X2M U20 ( .A0(ser_done), .A1(n9), .B0(PS[0]), .Y(n13) );
  INVX2M U21 ( .A(PS[2]), .Y(n8) );
  INVX2M U22 ( .A(parity_enable), .Y(n9) );
  INVX2M U23 ( .A(Data_Valid), .Y(n5) );
endmodule


module mux ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n4, n1, n2;

  NOR2BX2M U3 ( .AN(mux_sel[1]), .B(ser_data), .Y(n1) );
  CLKBUFX8M U4 ( .A(n4), .Y(TX_OUT) );
  OAI21X2M U5 ( .A0(mux_sel[0]), .A1(n1), .B0(n2), .Y(n4) );
  NAND3X2M U6 ( .A(mux_sel[1]), .B(mux_sel[0]), .C(par_bit), .Y(n2) );
endmodule


module Serializer_test_1 ( CLK, P_DATA, ser_en, Data_Valid, busy, RST, 
        ser_done, ser_data, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, ser_en, Data_Valid, busy, RST, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   N31, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n12, n13, n14,
         n15;
  wire   [7:1] INT_REG;
  wire   [2:0] Counter;
  assign test_so = INT_REG[7];
  assign ser_done = N31;

  SDFFRQX2M \INT_REG_reg[6]  ( .D(n34), .SI(INT_REG[5]), .SE(test_se), .CK(CLK), .RN(RST), .Q(INT_REG[6]) );
  SDFFRQX2M \INT_REG_reg[5]  ( .D(n35), .SI(INT_REG[4]), .SE(test_se), .CK(CLK), .RN(RST), .Q(INT_REG[5]) );
  SDFFRQX2M \INT_REG_reg[4]  ( .D(n36), .SI(INT_REG[3]), .SE(test_se), .CK(CLK), .RN(RST), .Q(INT_REG[4]) );
  SDFFRQX2M \INT_REG_reg[3]  ( .D(n37), .SI(INT_REG[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(INT_REG[3]) );
  SDFFRQX2M \INT_REG_reg[2]  ( .D(n38), .SI(INT_REG[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(INT_REG[2]) );
  SDFFRQX2M \INT_REG_reg[1]  ( .D(n39), .SI(ser_data), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(INT_REG[1]) );
  SDFFRQX2M \INT_REG_reg[7]  ( .D(n33), .SI(INT_REG[6]), .SE(test_se), .CK(CLK), .RN(RST), .Q(INT_REG[7]) );
  SDFFRQX2M \INT_REG_reg[0]  ( .D(n32), .SI(Counter[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ser_data) );
  SDFFRQX2M \Counter_reg[2]  ( .D(n30), .SI(Counter[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Counter[2]) );
  SDFFRQX2M \Counter_reg[1]  ( .D(n29), .SI(Counter[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Counter[1]) );
  SDFFRQX2M \Counter_reg[0]  ( .D(n31), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Counter[0]) );
  NOR2X2M U14 ( .A(n15), .B(n22), .Y(n21) );
  NOR2X2M U15 ( .A(n18), .B(n14), .Y(N31) );
  NOR2X2M U16 ( .A(n22), .B(n21), .Y(n19) );
  INVX2M U17 ( .A(ser_en), .Y(n15) );
  INVX2M U18 ( .A(n18), .Y(n13) );
  NOR2BX2M U19 ( .AN(Data_Valid), .B(busy), .Y(n22) );
  OAI32X1M U20 ( .A0(n15), .A1(Counter[2]), .A2(n18), .B0(n13), .B1(n14), .Y(
        n30) );
  OAI31X1M U21 ( .A0(n12), .A1(Counter[1]), .A2(n16), .B0(n17), .Y(n29) );
  OAI21X2M U22 ( .A0(n16), .A1(n12), .B0(Counter[1]), .Y(n17) );
  INVX2M U23 ( .A(Counter[0]), .Y(n12) );
  AOI21X2M U24 ( .A0(n13), .A1(Counter[2]), .B0(ser_en), .Y(n16) );
  XNOR2X2M U25 ( .A(n16), .B(Counter[0]), .Y(n31) );
  NAND2X2M U26 ( .A(Counter[1]), .B(Counter[0]), .Y(n18) );
  OAI2BB1X2M U27 ( .A0N(ser_data), .A1N(n19), .B0(n20), .Y(n32) );
  AOI22X1M U28 ( .A0(INT_REG[1]), .A1(n21), .B0(P_DATA[0]), .B1(n22), .Y(n20)
         );
  OAI2BB1X2M U29 ( .A0N(INT_REG[1]), .A1N(n19), .B0(n28), .Y(n39) );
  AOI22X1M U30 ( .A0(INT_REG[2]), .A1(n21), .B0(P_DATA[1]), .B1(n22), .Y(n28)
         );
  OAI2BB1X2M U31 ( .A0N(n19), .A1N(INT_REG[2]), .B0(n27), .Y(n38) );
  AOI22X1M U32 ( .A0(INT_REG[3]), .A1(n21), .B0(P_DATA[2]), .B1(n22), .Y(n27)
         );
  OAI2BB1X2M U33 ( .A0N(n19), .A1N(INT_REG[3]), .B0(n26), .Y(n37) );
  AOI22X1M U34 ( .A0(INT_REG[4]), .A1(n21), .B0(P_DATA[3]), .B1(n22), .Y(n26)
         );
  OAI2BB1X2M U35 ( .A0N(n19), .A1N(INT_REG[4]), .B0(n25), .Y(n36) );
  AOI22X1M U36 ( .A0(INT_REG[5]), .A1(n21), .B0(P_DATA[4]), .B1(n22), .Y(n25)
         );
  OAI2BB1X2M U37 ( .A0N(n19), .A1N(INT_REG[5]), .B0(n24), .Y(n35) );
  AOI22X1M U38 ( .A0(INT_REG[6]), .A1(n21), .B0(P_DATA[5]), .B1(n22), .Y(n24)
         );
  OAI2BB1X2M U39 ( .A0N(n19), .A1N(INT_REG[6]), .B0(n23), .Y(n34) );
  AOI22X1M U40 ( .A0(INT_REG[7]), .A1(n21), .B0(P_DATA[6]), .B1(n22), .Y(n23)
         );
  INVX2M U41 ( .A(Counter[2]), .Y(n14) );
  AO22X1M U42 ( .A0(n19), .A1(INT_REG[7]), .B0(P_DATA[7]), .B1(n22), .Y(n33)
         );
endmodule


module parity_calc_test_1 ( P_DATA, parity_type, Data_Valid, CLK, par_bit, 
        test_si, test_se );
  input [7:0] P_DATA;
  input parity_type, Data_Valid, CLK, test_si, test_se;
  output par_bit;
  wire   n3, n4, n5, n6, n7, n8, n2;

  SDFFQX2M par_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), .Q(
        par_bit) );
  XOR3XLM U4 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n5) );
  XNOR2X2M U5 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
  OAI2BB2X1M U6 ( .B0(n3), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  INVX2M U7 ( .A(Data_Valid), .Y(n2) );
  XOR3XLM U8 ( .A(n4), .B(parity_type), .C(n5), .Y(n3) );
  XOR3XLM U9 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n7), .Y(n4) );
  CLKXOR2X2M U10 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n7) );
endmodule


module UART_TX_test_1 ( Data_Valid, CLK, parity_enable, P_DATA, RST, 
        parity_type, busy, TX_OUT, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input Data_Valid, CLK, parity_enable, RST, parity_type, test_si, test_se;
  output busy, TX_OUT, test_so;
  wire   ser_done_int, ser_en_int, ser_data_int, par_bit_int;
  wire   [1:0] mux_sel_int;

  Tx_FSM_test_1 FSM_Module ( .Data_Valid(Data_Valid), .CLK(CLK), 
        .parity_enable(parity_enable), .ser_done(ser_done_int), .RST(RST), 
        .ser_en(ser_en_int), .busy(busy), .mux_sel(mux_sel_int), .test_si(
        test_si), .test_se(test_se) );
  mux MUX_Module ( .mux_sel(mux_sel_int), .ser_data(ser_data_int), .par_bit(
        par_bit_int), .TX_OUT(TX_OUT) );
  Serializer_test_1 serializer_Module ( .CLK(CLK), .P_DATA(P_DATA), .ser_en(
        ser_en_int), .Data_Valid(Data_Valid), .busy(busy), .RST(RST), 
        .ser_done(ser_done_int), .ser_data(ser_data_int), .test_si(par_bit_int), .test_so(test_so), .test_se(test_se) );
  parity_calc_test_1 Parity_Calc_Module ( .P_DATA(P_DATA), .parity_type(
        parity_type), .Data_Valid(Data_Valid), .CLK(CLK), .par_bit(par_bit_int), .test_si(busy), .test_se(test_se) );
endmodule


module FSM_test_1 ( edge_cnt, bit_cnt, RX_in, par_en, par_err, strt_err, 
        stp_err, prescale, clk, rst, data_samp_en, deser_en, data_valid, 
        stp_chk_en, strt_chk_en, par_chk_en, counter_en, test_si, test_so, 
        test_se );
  input [4:0] edge_cnt;
  input [3:0] bit_cnt;
  input [4:0] prescale;
  input RX_in, par_en, par_err, strt_err, stp_err, clk, rst, test_si, test_se;
  output data_samp_en, deser_en, data_valid, stp_chk_en, strt_chk_en,
         par_chk_en, counter_en, test_so;
  wire   N46, N47, N48, N49, N50, N51, N52, N82, N83, N84, N85, N86, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         \r91/carry[3] , n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n47, n48;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];
  assign N82 = prescale[1];

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[2]) );
  NOR3BX2M U6 ( .AN(stp_chk_en), .B(stp_err), .C(par_err), .Y(data_valid) );
  AOI2BB1X2M U7 ( .A0N(N86), .A1N(n19), .B0(n18), .Y(n1) );
  NOR3X2M U8 ( .A(n37), .B(n1), .C(n47), .Y(stp_chk_en) );
  INVX2M U9 ( .A(N52), .Y(n27) );
  NOR2X2M U10 ( .A(n1), .B(n34), .Y(par_chk_en) );
  NAND2X2M U11 ( .A(n32), .B(n47), .Y(n33) );
  INVX2M U12 ( .A(n37), .Y(n30) );
  INVX2M U13 ( .A(N84), .Y(n25) );
  INVX2M U14 ( .A(N85), .Y(n26) );
  NAND4BX1M U15 ( .AN(strt_err), .B(n29), .C(bit_cnt[0]), .D(n38), .Y(n40) );
  NOR3X2M U16 ( .A(n31), .B(n33), .C(n1), .Y(strt_chk_en) );
  NOR4BX1M U17 ( .AN(bit_cnt[1]), .B(n29), .C(bit_cnt[0]), .D(bit_cnt[2]), .Y(
        n35) );
  OAI221X1M U18 ( .A0(n43), .A1(n33), .B0(n35), .B1(n34), .C0(n44), .Y(
        next_state[0]) );
  AOI2BB2XLM U19 ( .B0(n48), .B1(n31), .A0N(n45), .A1N(n31), .Y(n43) );
  NAND4X2M U20 ( .A(N52), .B(current_state[2]), .C(n30), .D(n48), .Y(n44) );
  INVX2M U21 ( .A(RX_in), .Y(n48) );
  OAI2B2X1M U22 ( .A1N(n35), .A0(n34), .B0(n36), .B1(n37), .Y(next_state[2])
         );
  AOI32X1M U23 ( .A0(n38), .A1(n47), .A2(n39), .B0(current_state[2]), .B1(n27), 
        .Y(n36) );
  NOR2X2M U24 ( .A(n28), .B(n29), .Y(n39) );
  INVX2M U25 ( .A(edge_cnt[4]), .Y(n19) );
  OAI211X2M U26 ( .A0(n40), .A1(n41), .B0(n34), .C0(n42), .Y(next_state[1]) );
  NAND2BX2M U27 ( .AN(n33), .B(current_state[0]), .Y(n41) );
  OAI21X2M U28 ( .A0(n47), .A1(n27), .B0(n30), .Y(n42) );
  NAND3X2M U29 ( .A(current_state[0]), .B(n47), .C(current_state[1]), .Y(n34)
         );
  NAND2X2M U30 ( .A(current_state[1]), .B(n31), .Y(n37) );
  NOR2X2M U31 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .Y(n38) );
  INVX2M U32 ( .A(current_state[2]), .Y(n47) );
  OR2X2M U33 ( .A(N82), .B(prescale[0]), .Y(n3) );
  NOR2X2M U34 ( .A(par_en), .B(n40), .Y(n45) );
  INVX2M U35 ( .A(current_state[0]), .Y(n31) );
  NOR4X1M U36 ( .A(current_state[2]), .B(n46), .C(n32), .D(n27), .Y(deser_en)
         );
  AOI211X2M U37 ( .A0(n38), .A1(n28), .B0(n29), .C0(n31), .Y(n46) );
  INVX2M U38 ( .A(current_state[1]), .Y(n32) );
  INVX2M U39 ( .A(bit_cnt[0]), .Y(n28) );
  INVX2M U40 ( .A(bit_cnt[3]), .Y(n29) );
  INVX2M U41 ( .A(prescale[2]), .Y(N83) );
  INVX2M U42 ( .A(edge_cnt[2]), .Y(n24) );
  INVX2M U43 ( .A(edge_cnt[3]), .Y(n20) );
  BUFX2M U44 ( .A(data_samp_en), .Y(counter_en) );
  OAI21X2M U45 ( .A0(current_state[2]), .A1(n31), .B0(n37), .Y(data_samp_en)
         );
  AND2X1M U46 ( .A(\r91/carry[3] ), .B(prescale[4]), .Y(N86) );
  CLKXOR2X2M U47 ( .A(prescale[4]), .B(\r91/carry[3] ), .Y(N85) );
  AND2X1M U48 ( .A(prescale[2]), .B(prescale[3]), .Y(\r91/carry[3] ) );
  CLKXOR2X2M U49 ( .A(prescale[3]), .B(prescale[2]), .Y(N84) );
  CLKINVX1M U50 ( .A(prescale[0]), .Y(N46) );
  OAI2BB1X1M U51 ( .A0N(prescale[0]), .A1N(N82), .B0(n3), .Y(N47) );
  OR2X1M U52 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U53 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N48) );
  XNOR2X1M U54 ( .A(prescale[3]), .B(n4), .Y(N49) );
  NOR3X1M U55 ( .A(prescale[3]), .B(prescale[4]), .C(n4), .Y(N51) );
  OAI21X1M U56 ( .A0(prescale[3]), .A1(n4), .B0(prescale[4]), .Y(n5) );
  NAND2BX1M U57 ( .AN(N51), .B(n5), .Y(N50) );
  NOR2BX1M U58 ( .AN(N46), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U59 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N47), .B1(n6), .Y(n9) );
  NOR2BX1M U60 ( .AN(edge_cnt[0]), .B(N46), .Y(n7) );
  OAI2B2X1M U61 ( .A1N(N47), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n8) );
  NAND3BX1M U62 ( .AN(N51), .B(n9), .C(n8), .Y(n13) );
  CLKXOR2X2M U63 ( .A(N50), .B(edge_cnt[4]), .Y(n12) );
  CLKXOR2X2M U64 ( .A(N48), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U65 ( .A(N49), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U66 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N52) );
  NAND2BX1M U67 ( .AN(N82), .B(edge_cnt[0]), .Y(n15) );
  AOI2BB1X1M U68 ( .A0N(n15), .A1N(N83), .B0(edge_cnt[1]), .Y(n14) );
  AOI221XLM U69 ( .A0(N84), .A1(n24), .B0(N83), .B1(n15), .C0(n14), .Y(n16) );
  AOI221XLM U70 ( .A0(edge_cnt[3]), .A1(n26), .B0(edge_cnt[2]), .B1(n25), .C0(
        n16), .Y(n17) );
  AOI221XLM U71 ( .A0(N86), .A1(n19), .B0(N85), .B1(n20), .C0(n17), .Y(n18) );
endmodule


module data_sampling_test_1 ( data_in, prescale, edge_cnt, en_sampler, clk, 
        rst, sampled_bit, test_si, test_so, test_se );
  input [4:0] prescale;
  input [4:0] edge_cnt;
  input data_in, en_sampler, clk, rst, test_si, test_se;
  output sampled_bit, test_so;
  wire   N7, N8, N9, N10, N13, N14, N15, N16, N17, n20, n21, n22,
         \add_22/carry[3] , \add_22/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n14, n15, n16, n17, n18, n19, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36;
  wire   [2:0] register;
  assign test_so = register[2];

  SDFFRQX2M \register_reg[1]  ( .D(n21), .SI(register[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(register[1]) );
  SDFFRQX2M \register_reg[0]  ( .D(n20), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(register[0]) );
  SDFFRQX2M \register_reg[2]  ( .D(n22), .SI(register[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(register[2]) );
  OR4X1M U4 ( .A(n8), .B(n7), .C(N10), .D(edge_cnt[4]), .Y(n1) );
  OR2X2M U5 ( .A(prescale[2]), .B(prescale[1]), .Y(n2) );
  ADDHX1M U6 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_22/carry[2] ), .S(
        N14) );
  ADDHX1M U7 ( .A(prescale[3]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), 
        .S(N15) );
  ADDHX1M U8 ( .A(prescale[4]), .B(\add_22/carry[3] ), .CO(N17), .S(N16) );
  OAI2BB1X1M U11 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n2), .Y(N7) );
  OR2X1M U12 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U13 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N8) );
  NOR2X1M U14 ( .A(n3), .B(prescale[4]), .Y(N10) );
  AO21XLM U15 ( .A0(n3), .A1(prescale[4]), .B0(N10), .Y(N9) );
  CLKINVX1M U16 ( .A(prescale[1]), .Y(N13) );
  XNOR2X1M U17 ( .A(N9), .B(edge_cnt[3]), .Y(n6) );
  XNOR2X1M U18 ( .A(N8), .B(edge_cnt[2]), .Y(n5) );
  XNOR2X1M U19 ( .A(N13), .B(edge_cnt[0]), .Y(n4) );
  NAND3X1M U20 ( .A(n6), .B(n5), .C(n4), .Y(n8) );
  CLKXOR2X2M U21 ( .A(N7), .B(edge_cnt[1]), .Y(n7) );
  OAI21X1M U22 ( .A0(n9), .A1(n10), .B0(n14), .Y(sampled_bit) );
  OAI21X1M U23 ( .A0(register[0]), .A1(register[1]), .B0(register[2]), .Y(n14)
         );
  CLKMX2X2M U24 ( .A(register[2]), .B(data_in), .S0(n15), .Y(n22) );
  NOR4X1M U25 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  CLKXOR2X2M U26 ( .A(edge_cnt[3]), .B(N16), .Y(n19) );
  CLKXOR2X2M U27 ( .A(edge_cnt[2]), .B(N15), .Y(n18) );
  MXI2X1M U28 ( .A(n23), .B(N17), .S0(edge_cnt[4]), .Y(n17) );
  AOI31X1M U29 ( .A0(n24), .A1(n25), .A2(n26), .B0(N17), .Y(n23) );
  CLKINVX1M U30 ( .A(n27), .Y(n26) );
  NAND4X1M U31 ( .A(n28), .B(n29), .C(en_sampler), .D(n1), .Y(n16) );
  XNOR2X1M U32 ( .A(edge_cnt[0]), .B(N13), .Y(n29) );
  XNOR2X1M U33 ( .A(edge_cnt[1]), .B(N14), .Y(n28) );
  MXI2X1M U34 ( .A(n10), .B(n30), .S0(n31), .Y(n21) );
  NOR4BX1M U35 ( .AN(n24), .B(n32), .C(n33), .D(n27), .Y(n31) );
  CLKNAND2X2M U36 ( .A(n34), .B(n35), .Y(n27) );
  XNOR2X1M U37 ( .A(edge_cnt[0]), .B(prescale[1]), .Y(n35) );
  XNOR2X1M U38 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n34) );
  NAND3BX1M U39 ( .AN(edge_cnt[4]), .B(n1), .C(n25), .Y(n32) );
  XNOR2X1M U40 ( .A(edge_cnt[1]), .B(prescale[2]), .Y(n25) );
  XNOR2X1M U41 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n24) );
  CLKINVX1M U42 ( .A(register[1]), .Y(n10) );
  MXI2X1M U43 ( .A(n9), .B(n30), .S0(n36), .Y(n20) );
  NOR2X1M U44 ( .A(n33), .B(n1), .Y(n36) );
  CLKINVX1M U45 ( .A(en_sampler), .Y(n33) );
  CLKINVX1M U46 ( .A(data_in), .Y(n30) );
  CLKINVX1M U47 ( .A(register[0]), .Y(n9) );
endmodule


module edge_bit_counter_test_1 ( prescale, en_counter, data_valid, clk, rst, 
        bit_cnt, edge_cnt, test_si, test_se );
  input [4:0] prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input en_counter, data_valid, clk, rst, test_si, test_se;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, n16, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, \add_24/carry[4] , \add_24/carry[3] ,
         \add_24/carry[2] , n1, n2, n3, n4, n14, n15, n17, n18, n19, n20, n39,
         n40, n41, n42, n43, n44, n45;

  SDFFRX1M \bit_cnt_reg[3]  ( .D(n31), .SI(bit_cnt[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(bit_cnt[3]), .QN(n16) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(n38), .SI(bit_cnt[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(n34), .SI(edge_cnt[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(n37), .SI(edge_cnt[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n33), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(bit_cnt[0]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n40), .SI(bit_cnt[1]), .SE(test_se), .CK(clk), .RN(rst), .Q(bit_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(n35), .SI(edge_cnt[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(n36), .SI(edge_cnt[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(edge_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n32), .SI(bit_cnt[0]), .SE(test_se), .CK(clk), .RN(rst), .Q(bit_cnt[1]) );
  NOR2X2M U7 ( .A(data_valid), .B(n24), .Y(n29) );
  INVX2M U8 ( .A(n24), .Y(n41) );
  AOI21X2M U14 ( .A0(n24), .A1(N18), .B0(data_valid), .Y(n28) );
  NOR3X2M U15 ( .A(N18), .B(data_valid), .C(n29), .Y(n30) );
  NOR2BX2M U16 ( .AN(en_counter), .B(data_valid), .Y(n24) );
  NOR3X2M U17 ( .A(n41), .B(n28), .C(n43), .Y(n23) );
  AOI21X2M U18 ( .A0(n43), .A1(n24), .B0(n28), .Y(n27) );
  OAI32X1M U19 ( .A0(n41), .A1(bit_cnt[0]), .A2(n28), .B0(n43), .B1(n42), .Y(
        n33) );
  INVX2M U20 ( .A(n28), .Y(n42) );
  OAI21X2M U21 ( .A0(bit_cnt[1]), .A1(n41), .B0(n27), .Y(n25) );
  OAI2BB2X1M U22 ( .B0(n27), .B1(n44), .A0N(n44), .A1N(n23), .Y(n32) );
  INVX2M U23 ( .A(bit_cnt[1]), .Y(n44) );
  OR2X2M U24 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  OAI21X2M U25 ( .A0(n21), .A1(n16), .B0(n22), .Y(n31) );
  NAND4X2M U26 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(n23), .D(n16), .Y(n22) );
  AOI21X2M U27 ( .A0(n24), .A1(n45), .B0(n25), .Y(n21) );
  INVX2M U28 ( .A(bit_cnt[0]), .Y(n43) );
  INVX2M U29 ( .A(n26), .Y(n40) );
  AOI32X1M U30 ( .A0(bit_cnt[1]), .A1(n45), .A2(n23), .B0(n25), .B1(bit_cnt[2]), .Y(n26) );
  INVX2M U31 ( .A(bit_cnt[2]), .Y(n45) );
  ADDHX1M U32 ( .A(edge_cnt[2]), .B(\add_24/carry[2] ), .CO(\add_24/carry[3] ), 
        .S(N9) );
  ADDHX1M U33 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_24/carry[2] ), .S(
        N8) );
  AO22X1M U34 ( .A0(edge_cnt[4]), .A1(n29), .B0(N11), .B1(n30), .Y(n34) );
  AO22X1M U35 ( .A0(edge_cnt[3]), .A1(n29), .B0(N10), .B1(n30), .Y(n35) );
  AO22X1M U36 ( .A0(edge_cnt[2]), .A1(n29), .B0(N9), .B1(n30), .Y(n36) );
  AO22X1M U37 ( .A0(edge_cnt[1]), .A1(n29), .B0(N8), .B1(n30), .Y(n37) );
  AO22X1M U38 ( .A0(edge_cnt[0]), .A1(n29), .B0(N7), .B1(n30), .Y(n38) );
  ADDHX1M U39 ( .A(edge_cnt[3]), .B(\add_24/carry[3] ), .CO(\add_24/carry[4] ), 
        .S(N10) );
  CLKINVX1M U40 ( .A(edge_cnt[0]), .Y(N7) );
  CLKXOR2X2M U41 ( .A(\add_24/carry[4] ), .B(edge_cnt[4]), .Y(N11) );
  CLKINVX1M U42 ( .A(prescale[0]), .Y(N12) );
  OAI2BB1X1M U43 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N13) );
  OR2X1M U44 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U45 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N14) );
  XNOR2X1M U46 ( .A(prescale[3]), .B(n2), .Y(N15) );
  NOR3X1M U47 ( .A(prescale[3]), .B(prescale[4]), .C(n2), .Y(N17) );
  OAI21X1M U48 ( .A0(prescale[3]), .A1(n2), .B0(prescale[4]), .Y(n3) );
  NAND2BX1M U49 ( .AN(N17), .B(n3), .Y(N16) );
  NOR2BX1M U50 ( .AN(N12), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U51 ( .A1N(edge_cnt[1]), .A0(n4), .B0(N13), .B1(n4), .Y(n17) );
  NOR2BX1M U52 ( .AN(edge_cnt[0]), .B(N12), .Y(n14) );
  OAI2B2X1M U53 ( .A1N(N13), .A0(n14), .B0(edge_cnt[1]), .B1(n14), .Y(n15) );
  NAND3BX1M U54 ( .AN(N17), .B(n17), .C(n15), .Y(n39) );
  CLKXOR2X2M U55 ( .A(N16), .B(edge_cnt[4]), .Y(n20) );
  CLKXOR2X2M U56 ( .A(N14), .B(edge_cnt[2]), .Y(n19) );
  CLKXOR2X2M U57 ( .A(N15), .B(edge_cnt[3]), .Y(n18) );
  NOR4X1M U58 ( .A(n39), .B(n20), .C(n19), .D(n18), .Y(N18) );
endmodule


module deserializer_test_1 ( sampled_bit, data_valid, deser_en, clk, rst, 
        p_data, test_si2, test_si1, test_so2, test_so1, test_se );
  output [7:0] p_data;
  input sampled_bit, data_valid, deser_en, clk, rst, test_si2, test_si1,
         test_se;
  output test_so2, test_so1;
  wire   n12, n14, n16, n18, n20, n22, n24, n26, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n27;
  wire   [7:0] register;
  assign test_so2 = register[7];
  assign test_so1 = register[3];

  SDFFRQX2M \register_reg[7]  ( .D(n26), .SI(register[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(register[7]) );
  SDFFRQX2M \register_reg[6]  ( .D(n24), .SI(register[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(register[6]) );
  SDFFRQX2M \register_reg[5]  ( .D(n22), .SI(register[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(register[5]) );
  SDFFRQX2M \register_reg[4]  ( .D(n20), .SI(test_si2), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(register[4]) );
  SDFFRQX2M \register_reg[3]  ( .D(n18), .SI(register[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(register[3]) );
  SDFFRQX2M \register_reg[2]  ( .D(n16), .SI(register[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(register[2]) );
  SDFFRQX2M \register_reg[1]  ( .D(n14), .SI(register[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(register[1]) );
  SDFFRQX2M \register_reg[0]  ( .D(n12), .SI(test_si1), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(register[0]) );
  INVX2M U2 ( .A(data_valid), .Y(n2) );
  OAI22X1M U3 ( .A0(n9), .A1(n27), .B0(n1), .B1(n10), .Y(n12) );
  OAI22X1M U4 ( .A0(n8), .A1(n27), .B0(n1), .B1(n9), .Y(n14) );
  OAI22X1M U5 ( .A0(n7), .A1(n27), .B0(n1), .B1(n8), .Y(n16) );
  OAI22X1M U6 ( .A0(n6), .A1(n27), .B0(n1), .B1(n7), .Y(n18) );
  OAI22X1M U7 ( .A0(n5), .A1(n27), .B0(n1), .B1(n6), .Y(n20) );
  OAI22X1M U8 ( .A0(n4), .A1(n27), .B0(n1), .B1(n5), .Y(n22) );
  OAI22X1M U9 ( .A0(n3), .A1(n27), .B0(n1), .B1(n4), .Y(n24) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n3), .A0N(sampled_bit), .A1N(n1), .Y(n26) );
  INVX2M U11 ( .A(n1), .Y(n27) );
  BUFX2M U12 ( .A(deser_en), .Y(n1) );
  INVX2M U13 ( .A(register[7]), .Y(n3) );
  INVX2M U14 ( .A(register[1]), .Y(n9) );
  INVX2M U15 ( .A(register[2]), .Y(n8) );
  INVX2M U16 ( .A(register[3]), .Y(n7) );
  INVX2M U17 ( .A(register[4]), .Y(n6) );
  INVX2M U18 ( .A(register[5]), .Y(n5) );
  INVX2M U19 ( .A(register[6]), .Y(n4) );
  INVX2M U20 ( .A(register[0]), .Y(n10) );
  NOR2X2M U21 ( .A(n2), .B(n10), .Y(p_data[0]) );
  NOR2X2M U22 ( .A(n2), .B(n9), .Y(p_data[1]) );
  NOR2X2M U23 ( .A(n2), .B(n8), .Y(p_data[2]) );
  NOR2X2M U24 ( .A(n2), .B(n7), .Y(p_data[3]) );
  NOR2X2M U25 ( .A(n2), .B(n6), .Y(p_data[4]) );
  NOR2X2M U26 ( .A(n2), .B(n5), .Y(p_data[5]) );
  NOR2X2M U27 ( .A(n2), .B(n4), .Y(p_data[6]) );
  NOR2X2M U36 ( .A(n2), .B(n3), .Y(p_data[7]) );
endmodule


module parity_check_test_1 ( sampled_bit, par_typ, clk, rst, par_check_en, 
        par_err, test_si, test_so, test_se );
  input sampled_bit, par_typ, clk, rst, par_check_en, test_si, test_se;
  output par_err, test_so;
  wire   n10, n11, n12, n13, n14, n15;
  wire   [8:0] register;
  assign test_so = register[8];

  SDFFRQX2M \register_reg[1]  ( .D(register[0]), .SI(register[0]), .SE(test_se), .CK(clk), .RN(rst), .Q(register[1]) );
  SDFFRQX2M \register_reg[6]  ( .D(register[5]), .SI(register[5]), .SE(test_se), .CK(clk), .RN(rst), .Q(register[6]) );
  SDFFRQX2M \register_reg[0]  ( .D(sampled_bit), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(register[0]) );
  SDFFRQX2M \register_reg[5]  ( .D(register[4]), .SI(register[4]), .SE(test_se), .CK(clk), .RN(rst), .Q(register[5]) );
  SDFFRQX2M \register_reg[8]  ( .D(register[7]), .SI(register[7]), .SE(test_se), .CK(clk), .RN(rst), .Q(register[8]) );
  SDFFRQX2M \register_reg[2]  ( .D(register[1]), .SI(register[1]), .SE(test_se), .CK(clk), .RN(rst), .Q(register[2]) );
  SDFFRQX2M \register_reg[4]  ( .D(register[3]), .SI(register[3]), .SE(test_se), .CK(clk), .RN(rst), .Q(register[4]) );
  SDFFRQX2M \register_reg[3]  ( .D(register[2]), .SI(register[2]), .SE(test_se), .CK(clk), .RN(rst), .Q(register[3]) );
  SDFFRQX2M \register_reg[7]  ( .D(register[6]), .SI(register[6]), .SE(test_se), .CK(clk), .RN(rst), .Q(register[7]) );
  NOR2BX2M U12 ( .AN(par_check_en), .B(n10), .Y(par_err) );
  XNOR2X2M U13 ( .A(register[8]), .B(register[7]), .Y(n14) );
  XNOR2X2M U14 ( .A(register[4]), .B(register[3]), .Y(n15) );
  XOR3XLM U15 ( .A(n11), .B(n12), .C(n13), .Y(n10) );
  XOR3XLM U16 ( .A(register[1]), .B(register[0]), .C(n15), .Y(n11) );
  XOR3XLM U17 ( .A(register[6]), .B(register[5]), .C(n14), .Y(n12) );
  XNOR2X2M U18 ( .A(register[2]), .B(par_typ), .Y(n13) );
endmodule


module strt_check ( sampled_bit, strt_check_en, strt_err );
  input sampled_bit, strt_check_en;
  output strt_err;


  AND2X2M U2 ( .A(strt_check_en), .B(sampled_bit), .Y(strt_err) );
endmodule


module stop_check ( sampled_bit, stop_check_en, stop_err );
  input sampled_bit, stop_check_en;
  output stop_err;


  NOR2BX2M U2 ( .AN(stop_check_en), .B(sampled_bit), .Y(stop_err) );
endmodule


module UART_Rx_test_1 ( prescale, RX_IN, PAR_EN, PAR_TYP, CLK, RST, P_DATA, 
        data_valid, test_si2, test_si1, test_so2, test_so1, test_se );
  input [4:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST, test_si2, test_si1, test_se;
  output data_valid, test_so2, test_so1;
  wire   par_error, strt_error, stp_error, data_samp_enable, deser_enable,
         stp_chk_enable, strt_chk_enable, par_chk_enable, counter_enable,
         sampled_bit, n1, n2, n4, n6, n7;
  wire   [4:0] edge_count;
  wire   [3:0] bit_count;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  FSM_test_1 U0_FSM ( .edge_cnt(edge_count), .bit_cnt(bit_count), .RX_in(RX_IN), .par_en(PAR_EN), .par_err(par_error), .strt_err(strt_error), .stp_err(
        stp_error), .prescale(prescale), .clk(CLK), .rst(n1), .data_samp_en(
        data_samp_enable), .deser_en(deser_enable), .data_valid(data_valid), 
        .stp_chk_en(stp_chk_enable), .strt_chk_en(strt_chk_enable), 
        .par_chk_en(par_chk_enable), .counter_en(counter_enable), .test_si(
        test_si1), .test_so(n7), .test_se(test_se) );
  data_sampling_test_1 U0_data_sampling ( .data_in(RX_IN), .prescale(prescale), 
        .edge_cnt(edge_count), .en_sampler(data_samp_enable), .clk(CLK), .rst(
        n1), .sampled_bit(sampled_bit), .test_si(n7), .test_so(n6), .test_se(
        test_se) );
  edge_bit_counter_test_1 U0_edge_bit_counter ( .prescale(prescale), 
        .en_counter(counter_enable), .data_valid(data_valid), .clk(CLK), .rst(
        n1), .bit_cnt(bit_count), .edge_cnt(edge_count), .test_si(n4), 
        .test_se(test_se) );
  deserializer_test_1 U0_deserializer ( .sampled_bit(sampled_bit), 
        .data_valid(data_valid), .deser_en(deser_enable), .clk(CLK), .rst(n1), 
        .p_data(P_DATA), .test_si2(test_si2), .test_si1(n6), .test_so2(n4), 
        .test_so1(test_so1), .test_se(test_se) );
  parity_check_test_1 U0_parity_check ( .sampled_bit(sampled_bit), .par_typ(
        PAR_TYP), .clk(CLK), .rst(n1), .par_check_en(par_chk_enable), 
        .par_err(par_error), .test_si(edge_count[4]), .test_so(test_so2), 
        .test_se(test_se) );
  strt_check U0_strt_check ( .sampled_bit(sampled_bit), .strt_check_en(
        strt_chk_enable), .strt_err(strt_error) );
  stop_check U0_stop_check ( .sampled_bit(sampled_bit), .stop_check_en(
        stp_chk_enable), .stop_err(stp_error) );
endmodule


module UART_TOP_test_1 ( TX_IN_DATA, RX_IN_DATA, TX_IN_valid, CLK_RX, CLK_TX, 
        parity_enable, RST, parity_type, prescale, TX_out_valid, RX_out_valid, 
        TX_out_DATA, RX_out_DATA, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [7:0] TX_IN_DATA;
  input [4:0] prescale;
  output [7:0] RX_out_DATA;
  input RX_IN_DATA, TX_IN_valid, CLK_RX, CLK_TX, parity_enable, RST,
         parity_type, test_si2, test_si1, test_se;
  output TX_out_valid, RX_out_valid, TX_out_DATA, test_so2, test_so1;
  wire   n1, n2, n3, n4, n6;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  BUFX2M U3 ( .A(CLK_RX), .Y(n4) );
  BUFX2M U4 ( .A(CLK_TX), .Y(n3) );
  UART_TX_test_1 TX_module ( .Data_Valid(TX_IN_valid), .CLK(n3), 
        .parity_enable(parity_enable), .P_DATA(TX_IN_DATA), .RST(n1), 
        .parity_type(parity_type), .busy(TX_out_valid), .TX_OUT(TX_out_DATA), 
        .test_si(n6), .test_so(test_so2), .test_se(test_se) );
  UART_Rx_test_1 RX_module ( .prescale(prescale), .RX_IN(RX_IN_DATA), .PAR_EN(
        parity_enable), .PAR_TYP(parity_type), .CLK(n4), .RST(n1), .P_DATA(
        RX_out_DATA), .data_valid(RX_out_valid), .test_si2(test_si2), 
        .test_si1(test_si1), .test_so2(n6), .test_so1(test_so1), .test_se(
        test_se) );
endmodule


module clock_divider_test_1 ( I_div_ratio, I_ref_clk, I_clk_en, I_rst_n, 
        o_div_clk, test_si, test_so, test_se );
  input [4:0] I_div_ratio;
  input I_ref_clk, I_clk_en, I_rst_n, test_si, test_se;
  output o_div_clk, test_so;
  wire   N7, N9, N10, N11, N12, N13, N14, N15, N16, N17, N24,
         \add_23_aco/carry[4] , \add_23_aco/carry[3] , \add_23_aco/carry[2] ,
         \mult_add_23_aco/PROD_not[0] , n1, n2, n3, n4, n5, n6, n7, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [4:0] count;
  assign test_so = count[4];

  SDFFRQX2M \count_reg[4]  ( .D(N17), .SI(count[3]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(count[4]) );
  SDFFRQX2M \count_reg[2]  ( .D(N15), .SI(count[1]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(count[2]) );
  SDFFRQX2M \count_reg[3]  ( .D(N16), .SI(count[2]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(count[3]) );
  SDFFRQX2M \count_reg[0]  ( .D(N13), .SI(test_si), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(count[0]) );
  SDFFRQX2M \count_reg[1]  ( .D(N14), .SI(count[0]), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(count[1]) );
  AND2X2M U5 ( .A(count[1]), .B(N7), .Y(n1) );
  AND2X2M U6 ( .A(count[2]), .B(N7), .Y(n2) );
  AND2X2M U7 ( .A(count[3]), .B(N7), .Y(n3) );
  AND2X2M U11 ( .A(N7), .B(count[4]), .Y(n4) );
  ADDHX1M U12 ( .A(n1), .B(N24), .CO(\add_23_aco/carry[2] ), .S(N9) );
  ADDHX1M U13 ( .A(n2), .B(\add_23_aco/carry[2] ), .CO(\add_23_aco/carry[3] ), 
        .S(N10) );
  ADDHX1M U14 ( .A(n3), .B(\add_23_aco/carry[3] ), .CO(\add_23_aco/carry[4] ), 
        .S(N11) );
  CLKNAND2X2M U15 ( .A(count[0]), .B(N7), .Y(\mult_add_23_aco/PROD_not[0] ) );
  CLKINVX1M U16 ( .A(\mult_add_23_aco/PROD_not[0] ), .Y(N24) );
  CLKXOR2X2M U17 ( .A(\add_23_aco/carry[4] ), .B(n4), .Y(N12) );
  NOR3X1M U18 ( .A(n5), .B(count[4]), .C(n6), .Y(o_div_clk) );
  NOR4X1M U19 ( .A(count[3]), .B(count[2]), .C(count[1]), .D(count[0]), .Y(n6)
         );
  AOI2BB1X1M U20 ( .A0N(count[3]), .A1N(n7), .B0(n13), .Y(n5) );
  AOI221XLM U21 ( .A0(count[3]), .A1(n7), .B0(count[2]), .B1(n14), .C0(n15), 
        .Y(n13) );
  AOI2BB2XLM U22 ( .B0(n16), .B1(n17), .A0N(n14), .A1N(count[2]), .Y(n15) );
  OAI211X1M U23 ( .A0(count[1]), .A1(n18), .B0(n19), .C0(count[0]), .Y(n17) );
  CLKINVX1M U24 ( .A(I_div_ratio[1]), .Y(n19) );
  CLKNAND2X2M U25 ( .A(count[1]), .B(n18), .Y(n16) );
  CLKINVX1M U26 ( .A(I_div_ratio[3]), .Y(n14) );
  CLKINVX1M U27 ( .A(I_div_ratio[4]), .Y(n7) );
  NAND4X1M U28 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(N7) );
  XNOR2X1M U29 ( .A(I_div_ratio[1]), .B(count[1]), .Y(n23) );
  NOR2X1M U30 ( .A(n24), .B(n25), .Y(n22) );
  CLKXOR2X2M U31 ( .A(count[0]), .B(I_div_ratio[0]), .Y(n25) );
  XNOR2X1M U32 ( .A(count[2]), .B(n18), .Y(n24) );
  CLKINVX1M U33 ( .A(I_div_ratio[2]), .Y(n18) );
  XNOR2X1M U34 ( .A(I_div_ratio[3]), .B(count[3]), .Y(n21) );
  XNOR2X1M U35 ( .A(I_div_ratio[4]), .B(count[4]), .Y(n20) );
  AND2X1M U36 ( .A(N12), .B(I_clk_en), .Y(N17) );
  AND2X1M U37 ( .A(N11), .B(I_clk_en), .Y(N16) );
  AND2X1M U38 ( .A(N10), .B(I_clk_en), .Y(N15) );
  AND2X1M U39 ( .A(N9), .B(I_clk_en), .Y(N14) );
  AND2X1M U40 ( .A(\mult_add_23_aco/PROD_not[0] ), .B(I_clk_en), .Y(N13) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module data_synchronizer_test_0 ( unsync_bus, bus_enable, clk, rst, sync_bus, 
        enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst, test_si, test_se;
  output enable_pulse;
  wire   n1, n3, n5, n7, n9, n11, n13, n15, n17, n22;
  wire   [2:0] ff;

  SDFFRQX2M \ff_reg[0]  ( .D(ff[1]), .SI(enable_pulse), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(ff[0]) );
  SDFFRQX2M \ff_reg[1]  ( .D(ff[2]), .SI(ff[0]), .SE(test_se), .CK(clk), .RN(
        rst), .Q(ff[1]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(ff[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[5]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(enable_pulse) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[1]) );
  SDFFRQX1M \ff_reg[2]  ( .D(bus_enable), .SI(ff[1]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(ff[2]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(ff[0]), .B(ff[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n11) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module data_synchronizer_test_1 ( unsync_bus, bus_enable, clk, rst, sync_bus, 
        enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst, test_si, test_se;
  output enable_pulse;
  wire   n22, n27, n29, n31, n33, n35, n37, n39, n41, n43;
  wire   [2:0] ff;

  SDFFRQX2M \ff_reg[0]  ( .D(ff[1]), .SI(enable_pulse), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(ff[0]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n31), .SI(sync_bus[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n39), .SI(sync_bus[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n33), .SI(sync_bus[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n41), .SI(ff[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n35), .SI(sync_bus[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[3]) );
  SDFFRQX2M \ff_reg[1]  ( .D(ff[2]), .SI(ff[0]), .SE(test_se), .CK(clk), .RN(
        rst), .Q(ff[1]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n37), .SI(sync_bus[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n27), .SI(sync_bus[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n29), .SI(sync_bus[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(sync_bus[6]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(enable_pulse) );
  SDFFRQX2M \ff_reg[2]  ( .D(bus_enable), .SI(ff[1]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(ff[2]) );
  INVX2M U3 ( .A(n43), .Y(n22) );
  NAND2BX2M U4 ( .AN(ff[0]), .B(ff[1]), .Y(n43) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n43), .Y(
        n41) );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n43), .Y(
        n39) );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n43), .Y(
        n37) );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n43), .Y(
        n35) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n43), .Y(
        n33) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n43), .Y(
        n31) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n43), .Y(
        n29) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n43), .Y(
        n27) );
endmodule


module RST_synchronizer_test_1 ( RST, clk, SYNC_RST, test_si, test_so, test_se
 );
  input RST, clk, test_si, test_se;
  output SYNC_RST, test_so;

  wire   [2:1] ff;
  assign test_so = ff[2];

  SDFFRQX2M \ff_reg[0]  ( .D(ff[1]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \ff_reg[2]  ( .D(1'b1), .SI(ff[1]), .SE(test_se), .CK(clk), .RN(
        RST), .Q(ff[2]) );
  SDFFRQX2M \ff_reg[1]  ( .D(ff[2]), .SI(SYNC_RST), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(ff[1]) );
endmodule


module RST_synchronizer_test_0 ( RST, clk, SYNC_RST, test_si, test_so, test_se
 );
  input RST, clk, test_si, test_se;
  output SYNC_RST, test_so;

  wire   [2:1] ff;
  assign test_so = ff[2];

  SDFFRQX2M \ff_reg[0]  ( .D(ff[1]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \ff_reg[2]  ( .D(1'b1), .SI(ff[1]), .SE(test_se), .CK(clk), .RN(
        RST), .Q(ff[2]) );
  SDFFRQX2M \ff_reg[1]  ( .D(ff[2]), .SI(SYNC_RST), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(ff[1]) );
endmodule


module bit_synchronizer_test_1 ( ASYNC, RST, clk, SYNC, test_si, test_so, 
        test_se );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input RST, clk, test_si, test_se;
  output test_so;
  wire   \register[0][1] , \register[0][0] ;
  assign test_so = \register[0][1] ;

  SDFFRQX2M \SYNC_reg[0]  ( .D(\register[0][0] ), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \register_reg[0][1]  ( .D(ASYNC[0]), .SI(\register[0][0] ), .SE(
        test_se), .CK(clk), .RN(RST), .Q(\register[0][1] ) );
  SDFFRQX2M \register_reg[0][0]  ( .D(\register[0][1] ), .SI(SYNC[0]), .SE(
        test_se), .CK(clk), .RN(RST), .Q(\register[0][0] ) );
endmodule


module system_top ( REF_CLK, UART_CLK, RST, RX_IN, SI, SE, test_mode, scan_clk, 
        scan_rst, SO, TX_OUT );
  input [2:0] SI;
  output [2:0] SO;
  input REF_CLK, UART_CLK, RST, RX_IN, SE, test_mode, scan_clk, scan_rst;
  output TX_OUT;
  wire   REF_CLK_M, UART_CLK_M, CLK_TX_top, CLK_TX_top_M, RST_M,
         SYNC_RST_REF_CLK, SYNC_RST_REF_CLK_M, SYNC_RST_UART_CLK,
         SYNC_RST_UART_CLK_M, sync_RX_OUT_V, EN_top, Gate_EN, WrEn_top,
         RdEn_top, OUT_VALID_top, RdData_VLD_top, TX_busy, CTRL_out_V, ALU_CLK,
         TX_IN_valid_top, RX_out_valid_top, _0_net_, n2, n3, n4, n5, n6, n7,
         n8, n9, n14, n15, n16, n19, n20, n21;
  wire   [7:0] sync_RX_OUT_DATA;
  wire   [3:0] ALU_FUN_top;
  wire   [3:0] Address_top;
  wire   [7:0] WrData_top;
  wire   [15:0] ALU_OUT_top;
  wire   [7:0] RdData_top;
  wire   [7:0] CTRL_out_DATA;
  wire   [7:0] REG0_OP_A;
  wire   [7:0] REG1_OP_B;
  wire   [7:0] REG2_UART_convig;
  wire   [7:0] REG3_div;
  wire   [7:0] TX_IN_DATA_top;
  wire   [7:0] RX_out_DATA_top;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX2M U2 ( .A(n9), .Y(n8) );
  INVX4M U3 ( .A(n7), .Y(n6) );
  INVX2M U4 ( .A(SYNC_RST_REF_CLK_M), .Y(n7) );
  INVX2M U5 ( .A(REF_CLK_M), .Y(n9) );
  INVX2M U6 ( .A(n5), .Y(n4) );
  INVX2M U7 ( .A(SYNC_RST_UART_CLK_M), .Y(n5) );
  BUFX2M U8 ( .A(Address_top[0]), .Y(n2) );
  BUFX2M U9 ( .A(Address_top[1]), .Y(n3) );
  OR2X2M U10 ( .A(Gate_EN), .B(test_mode), .Y(_0_net_) );
  mux2X1_0 U0_DFT_MUX_REF_CLK ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(
        test_mode), .OUT(REF_CLK_M) );
  mux2X1_5 U0_DFT_MUX_UART_CLK ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(
        test_mode), .OUT(UART_CLK_M) );
  mux2X1_4 U0_DFT_MUX_UART_TX_CLK ( .IN_0(CLK_TX_top), .IN_1(scan_clk), .SEL(
        test_mode), .OUT(CLK_TX_top_M) );
  mux2X1_3 U0_DFT_MUX_RST ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(RST_M) );
  mux2X1_2 U0_DFT_MUX_RST_REF ( .IN_0(SYNC_RST_REF_CLK), .IN_1(scan_rst), 
        .SEL(test_mode), .OUT(SYNC_RST_REF_CLK_M) );
  mux2X1_1 U0_DFT_MUX_RST_UART ( .IN_0(SYNC_RST_UART_CLK), .IN_1(scan_rst), 
        .SEL(test_mode), .OUT(SYNC_RST_UART_CLK_M) );
  SYS_CTRL_test_1 U0_CTRL_TOP ( .CLK(n8), .RST(n6), .RF_RdData(RdData_top), 
        .RF_RdData_VLD(RdData_VLD_top), .RF_WrEn(WrEn_top), .RF_RdEn(RdEn_top), 
        .RF_Address(Address_top), .RF_WrData(WrData_top), .ALU_OUT(ALU_OUT_top), .ALU_OUT_VLD(OUT_VALID_top), .ALU_EN(EN_top), .ALU_FUN(ALU_FUN_top), 
        .CLKG_EN(Gate_EN), .UART_RX_DATA(sync_RX_OUT_DATA), .UART_RX_VLD(
        sync_RX_OUT_V), .UART_TX_Busy(TX_busy), .UART_TX_DATA(CTRL_out_DATA), 
        .UART_TX_VLD(CTRL_out_V), .test_so(n21), .test_se(SE) );
  RegFile_test_1 UO_RegFile ( .CLK(n8), .RST(n6), .WrEn(WrEn_top), .RdEn(
        RdEn_top), .Address({Address_top[3:2], n3, n2}), .WrData(WrData_top), 
        .RdData(RdData_top), .RdData_VLD(RdData_VLD_top), .REG0(REG0_OP_A), 
        .REG1(REG1_OP_B), .REG2({SYNOPSYS_UNCONNECTED__0, 
        REG2_UART_convig[6:0]}), .REG3({SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, REG3_div[4:0]}), 
        .test_si2(SI[0]), .test_si1(n14), .test_so2(SO[0]), .test_so1(SO[1]), 
        .test_se(SE) );
  ALU_test_1 U0_ALU ( .A(REG0_OP_A), .B(REG1_OP_B), .EN(EN_top), .ALU_FUN(
        ALU_FUN_top), .CLK(ALU_CLK), .RST(n6), .ALU_OUT(ALU_OUT_top), 
        .OUT_VALID(OUT_VALID_top), .test_si(SI[2]), .test_se(SE) );
  UART_TOP_test_1 U0_UART ( .TX_IN_DATA(TX_IN_DATA_top), .RX_IN_DATA(RX_IN), 
        .TX_IN_valid(TX_IN_valid_top), .CLK_RX(UART_CLK_M), .CLK_TX(
        CLK_TX_top_M), .parity_enable(REG2_UART_convig[0]), .RST(n4), 
        .parity_type(REG2_UART_convig[1]), .prescale(REG2_UART_convig[6:2]), 
        .TX_out_valid(TX_busy), .RX_out_valid(RX_out_valid_top), .TX_out_DATA(
        TX_OUT), .RX_out_DATA(RX_out_DATA_top), .test_si2(SI[1]), .test_si1(
        n19), .test_so2(n16), .test_so1(SO[2]), .test_se(SE) );
  clock_divider_test_1 U0_clock_divider ( .I_div_ratio(REG3_div[4:0]), 
        .I_ref_clk(UART_CLK_M), .I_clk_en(1'b1), .I_rst_n(n4), .o_div_clk(
        CLK_TX_top), .test_si(n15), .test_so(n14), .test_se(SE) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(_0_net_), .CLK(n8), .GATED_CLK(ALU_CLK) );
  data_synchronizer_test_0 U0_Data_Sync_of_RX ( .unsync_bus(RX_out_DATA_top), 
        .bus_enable(RX_out_valid_top), .clk(n8), .rst(n6), .sync_bus(
        sync_RX_OUT_DATA), .enable_pulse(sync_RX_OUT_V), .test_si(n21), 
        .test_se(SE) );
  data_synchronizer_test_1 U0_Data_Sync_of_TX ( .unsync_bus(CTRL_out_DATA), 
        .bus_enable(CTRL_out_V), .clk(CLK_TX_top_M), .rst(n4), .sync_bus(
        TX_IN_DATA_top), .enable_pulse(TX_IN_valid_top), .test_si(
        sync_RX_OUT_DATA[7]), .test_se(SE) );
  RST_synchronizer_test_1 U0_SYNC_RST_UART_CLK ( .RST(RST_M), .clk(UART_CLK_M), 
        .SYNC_RST(SYNC_RST_UART_CLK), .test_si(n20), .test_so(n19), .test_se(
        SE) );
  RST_synchronizer_test_0 U0_SYNC_RST_REF_CLK ( .RST(RST_M), .clk(n8), 
        .SYNC_RST(SYNC_RST_REF_CLK), .test_si(TX_IN_DATA_top[7]), .test_so(n20), .test_se(SE) );
  bit_synchronizer_test_1 U0_bit_synchronizer ( .ASYNC(TX_busy), .RST(n6), 
        .clk(n8), .test_si(n16), .test_so(n15), .test_se(SE) );
endmodule

