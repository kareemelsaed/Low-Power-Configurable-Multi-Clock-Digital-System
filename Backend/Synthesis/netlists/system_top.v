/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Sep  2 02:36:14 2022
/////////////////////////////////////////////////////////////


module CTRL_RX ( CLK, RST, RF_RdData, RF_RdData_VLD, ALU_OUT, ALU_OUT_VLD, 
        UART_RX_DATA, UART_RX_VLD, ALU_EN, ALU_FUN, CLKG_EN, CLKDIV_EN, 
        RF_WrEn, RF_RdEn, RF_Address, RF_WrData, UART_RF_SEND, UART_ALU_SEND, 
        UART_SEND_RF_DATA, UART_SEND_ALU_DATA );
  input [7:0] RF_RdData;
  input [15:0] ALU_OUT;
  input [7:0] UART_RX_DATA;
  output [3:0] ALU_FUN;
  output [3:0] RF_Address;
  output [7:0] RF_WrData;
  output [7:0] UART_SEND_RF_DATA;
  output [15:0] UART_SEND_ALU_DATA;
  input CLK, RST, RF_RdData_VLD, ALU_OUT_VLD, UART_RX_VLD;
  output ALU_EN, CLKG_EN, CLKDIV_EN, RF_WrEn, RF_RdEn, UART_RF_SEND,
         UART_ALU_SEND;
  wire   n88, n13, n14, n15, n16, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n17, n19, n20, n21, n22, n23, n24, n83, n84, n85, n86, n87;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  DFFRQX2M \UART_SEND_RF_DATA_reg[7]  ( .D(n78), .CK(CLK), .RN(n4), .Q(
        UART_SEND_RF_DATA[7]) );
  DFFRQX2M \UART_SEND_RF_DATA_reg[6]  ( .D(n77), .CK(CLK), .RN(n4), .Q(
        UART_SEND_RF_DATA[6]) );
  DFFRQX2M \UART_SEND_RF_DATA_reg[5]  ( .D(n76), .CK(CLK), .RN(n4), .Q(
        UART_SEND_RF_DATA[5]) );
  DFFRQX2M \UART_SEND_RF_DATA_reg[4]  ( .D(n75), .CK(CLK), .RN(n4), .Q(
        UART_SEND_RF_DATA[4]) );
  DFFRQX2M \UART_SEND_RF_DATA_reg[3]  ( .D(n74), .CK(CLK), .RN(n4), .Q(
        UART_SEND_RF_DATA[3]) );
  DFFRQX2M \UART_SEND_RF_DATA_reg[2]  ( .D(n73), .CK(CLK), .RN(n4), .Q(
        UART_SEND_RF_DATA[2]) );
  DFFRQX2M \UART_SEND_RF_DATA_reg[1]  ( .D(n72), .CK(CLK), .RN(n4), .Q(
        UART_SEND_RF_DATA[1]) );
  DFFRQX2M \UART_SEND_RF_DATA_reg[0]  ( .D(n71), .CK(CLK), .RN(n4), .Q(
        UART_SEND_RF_DATA[0]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[7]  ( .D(n62), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[7]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[6]  ( .D(n61), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[6]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[5]  ( .D(n60), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[5]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[4]  ( .D(n59), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[4]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[3]  ( .D(n58), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[3]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[2]  ( .D(n57), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[2]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[1]  ( .D(n56), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[1]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[0]  ( .D(n55), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[0]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[15]  ( .D(n70), .CK(CLK), .RN(n4), .Q(
        UART_SEND_ALU_DATA[15]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[14]  ( .D(n69), .CK(CLK), .RN(n4), .Q(
        UART_SEND_ALU_DATA[14]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[13]  ( .D(n68), .CK(CLK), .RN(n4), .Q(
        UART_SEND_ALU_DATA[13]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[12]  ( .D(n67), .CK(CLK), .RN(n4), .Q(
        UART_SEND_ALU_DATA[12]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[11]  ( .D(n66), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[11]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[10]  ( .D(n65), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[10]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[9]  ( .D(n64), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[9]) );
  DFFRQX2M \UART_SEND_ALU_DATA_reg[8]  ( .D(n63), .CK(CLK), .RN(RST), .Q(
        UART_SEND_ALU_DATA[8]) );
  DFFRX1M \RF_ADDR_REG_reg[2]  ( .D(n81), .CK(CLK), .RN(RST), .QN(n14) );
  DFFRX1M \RF_ADDR_REG_reg[0]  ( .D(n79), .CK(CLK), .RN(RST), .QN(n16) );
  DFFRX1M \RF_ADDR_REG_reg[3]  ( .D(n82), .CK(CLK), .RN(RST), .QN(n13) );
  DFFRX1M \RF_ADDR_REG_reg[1]  ( .D(n80), .CK(CLK), .RN(RST), .QN(n15) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n4), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n4), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n4), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(n4), .Q(
        current_state[3]) );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
  NOR2X2M U5 ( .A(n84), .B(n27), .Y(ALU_FUN[2]) );
  NOR2X2M U6 ( .A(n86), .B(n27), .Y(ALU_FUN[0]) );
  NOR4X1M U7 ( .A(n19), .B(n21), .C(current_state[0]), .D(current_state[3]), 
        .Y(RF_RdEn) );
  NOR4X1M U8 ( .A(n19), .B(n10), .C(current_state[2]), .D(current_state[3]), 
        .Y(n52) );
  NOR2X2M U9 ( .A(n53), .B(n14), .Y(RF_Address[2]) );
  INVX2M U10 ( .A(n5), .Y(n4) );
  INVX2M U11 ( .A(n43), .Y(n17) );
  INVX2M U12 ( .A(UART_ALU_SEND), .Y(n12) );
  INVX2M U13 ( .A(n31), .Y(n8) );
  INVX2M U14 ( .A(RST), .Y(n5) );
  AND3X2M U15 ( .A(n25), .B(n30), .C(n9), .Y(n51) );
  NOR2X2M U16 ( .A(n52), .B(RF_RdEn), .Y(n53) );
  NOR2X2M U17 ( .A(n85), .B(n27), .Y(ALU_FUN[1]) );
  NAND2X2M U18 ( .A(n54), .B(n10), .Y(n25) );
  NOR2X2M U19 ( .A(n51), .B(n22), .Y(RF_WrEn) );
  NOR2X2M U20 ( .A(n83), .B(n27), .Y(ALU_FUN[3]) );
  NOR2X2M U21 ( .A(n51), .B(n86), .Y(RF_WrData[0]) );
  NOR2X2M U22 ( .A(n51), .B(n85), .Y(RF_WrData[1]) );
  NOR2X2M U23 ( .A(n51), .B(n84), .Y(RF_WrData[2]) );
  NOR2X2M U24 ( .A(n51), .B(n83), .Y(RF_WrData[3]) );
  NOR2X2M U25 ( .A(n51), .B(n24), .Y(RF_WrData[4]) );
  NOR2X2M U26 ( .A(n51), .B(n23), .Y(RF_WrData[7]) );
  NOR2X2M U27 ( .A(n27), .B(n22), .Y(ALU_EN) );
  INVX2M U28 ( .A(n52), .Y(n9) );
  NAND4X2M U29 ( .A(n19), .B(n20), .C(n29), .D(n47), .Y(n43) );
  NOR3X2M U30 ( .A(n22), .B(n83), .C(n23), .Y(n47) );
  OAI21X2M U31 ( .A0(n20), .A1(n37), .B0(n27), .Y(CLKG_EN) );
  INVX2M U32 ( .A(n49), .Y(n7) );
  NAND2X2M U33 ( .A(n50), .B(n19), .Y(n31) );
  BUFX2M U34 ( .A(n88), .Y(UART_ALU_SEND) );
  NOR3X2M U35 ( .A(n37), .B(n20), .C(n87), .Y(n88) );
  INVX2M U36 ( .A(n48), .Y(UART_RF_SEND) );
  NOR3X2M U37 ( .A(current_state[1]), .B(current_state[2]), .C(n20), .Y(n54)
         );
  NAND2X2M U38 ( .A(current_state[0]), .B(n54), .Y(n27) );
  INVX2M U39 ( .A(current_state[3]), .Y(n20) );
  INVX2M U40 ( .A(current_state[1]), .Y(n19) );
  INVX2M U41 ( .A(current_state[2]), .Y(n21) );
  OAI21X2M U42 ( .A0(n53), .A1(n16), .B0(n25), .Y(RF_Address[0]) );
  NOR2X4M U43 ( .A(n53), .B(n13), .Y(RF_Address[3]) );
  NOR3X2M U44 ( .A(n10), .B(current_state[3]), .C(n21), .Y(n50) );
  NOR2BX2M U45 ( .AN(UART_RX_DATA[5]), .B(n51), .Y(RF_WrData[5]) );
  NOR2BX2M U46 ( .AN(UART_RX_DATA[6]), .B(n51), .Y(RF_WrData[6]) );
  NAND2X2M U47 ( .A(current_state[1]), .B(n50), .Y(n30) );
  INVX2M U48 ( .A(current_state[0]), .Y(n10) );
  INVX2M U49 ( .A(UART_RX_DATA[0]), .Y(n86) );
  NAND4BBX1M U50 ( .AN(n33), .BN(ALU_EN), .C(n34), .D(n35), .Y(next_state[1])
         );
  AOI221XLM U51 ( .A0(n11), .A1(n87), .B0(n8), .B1(UART_RX_VLD), .C0(n36), .Y(
        n35) );
  AOI33X2M U52 ( .A0(n86), .A1(n24), .A2(n38), .B0(n39), .B1(n20), .B2(
        current_state[1]), .Y(n34) );
  INVX2M U53 ( .A(n37), .Y(n11) );
  INVX2M U54 ( .A(UART_RX_DATA[1]), .Y(n85) );
  INVX2M U55 ( .A(UART_RX_VLD), .Y(n22) );
  NAND4BX1M U56 ( .AN(n40), .B(n32), .C(n41), .D(n26), .Y(next_state[0]) );
  OAI2B1X2M U57 ( .A1N(n25), .A0(n33), .B0(UART_RX_VLD), .Y(n41) );
  AOI31X2M U58 ( .A0(n9), .A1(n27), .A2(n31), .B0(UART_RX_VLD), .Y(n40) );
  INVX2M U59 ( .A(UART_RX_DATA[2]), .Y(n84) );
  INVX2M U60 ( .A(UART_RX_DATA[3]), .Y(n83) );
  NOR2X2M U61 ( .A(n53), .B(n15), .Y(RF_Address[1]) );
  OAI21X2M U62 ( .A0(n33), .A1(n8), .B0(UART_RX_VLD), .Y(n49) );
  AOI31X2M U63 ( .A0(n38), .A1(UART_RX_DATA[0]), .A2(UART_RX_DATA[4]), .B0(n36), .Y(n32) );
  OAI22X1M U64 ( .A0(current_state[2]), .A1(UART_RX_VLD), .B0(current_state[0]), .B1(RF_RdData_VLD), .Y(n39) );
  NOR2X2M U65 ( .A(current_state[0]), .B(current_state[2]), .Y(n29) );
  OAI22X1M U66 ( .A0(n85), .A1(n49), .B0(n7), .B1(n15), .Y(n80) );
  OAI22X1M U67 ( .A0(n84), .A1(n49), .B0(n7), .B1(n14), .Y(n81) );
  OAI22X1M U68 ( .A0(n83), .A1(n49), .B0(n7), .B1(n13), .Y(n82) );
  OAI22X1M U69 ( .A0(n86), .A1(n49), .B0(n7), .B1(n16), .Y(n79) );
  NAND2X2M U70 ( .A(RF_RdData_VLD), .B(RF_RdEn), .Y(n48) );
  OAI2B11X2M U71 ( .A1N(RF_RdEn), .A0(RF_RdData_VLD), .B0(n31), .C0(n32), .Y(
        next_state[2]) );
  NAND2X2M U72 ( .A(current_state[1]), .B(n29), .Y(n37) );
  OAI21X2M U73 ( .A0(UART_RX_VLD), .A1(n30), .B0(n44), .Y(n36) );
  NAND4X2M U74 ( .A(UART_RX_DATA[2]), .B(n17), .C(UART_RX_DATA[6]), .D(n45), 
        .Y(n44) );
  NOR4X1M U75 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[4]), .C(UART_RX_DATA[1]), 
        .D(UART_RX_DATA[0]), .Y(n45) );
  NOR2X2M U76 ( .A(n37), .B(current_state[3]), .Y(n33) );
  NAND4X2M U77 ( .A(UART_RX_DATA[4]), .B(UART_RX_DATA[2]), .C(UART_RX_DATA[6]), 
        .D(n42), .Y(n26) );
  NOR4X1M U78 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[1]), .C(n43), .D(n86), 
        .Y(n42) );
  NAND4X2M U79 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(next_state[3]) );
  AOI32X1M U80 ( .A0(n29), .A1(n87), .A2(current_state[3]), .B0(n6), .B1(
        UART_RX_VLD), .Y(n28) );
  INVX2M U81 ( .A(n30), .Y(n6) );
  INVX2M U82 ( .A(UART_RX_DATA[4]), .Y(n24) );
  AND4X2M U83 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[1]), .C(n46), .D(n17), 
        .Y(n38) );
  NOR2X2M U84 ( .A(UART_RX_DATA[6]), .B(UART_RX_DATA[2]), .Y(n46) );
  INVX2M U85 ( .A(UART_RX_DATA[7]), .Y(n23) );
  INVX2M U86 ( .A(ALU_OUT_VLD), .Y(n87) );
  AO22X1M U87 ( .A0(ALU_OUT[0]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[0]), .B1(n12), .Y(n55) );
  AO22X1M U88 ( .A0(ALU_OUT[1]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[1]), .B1(n12), .Y(n56) );
  AO22X1M U89 ( .A0(ALU_OUT[2]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[2]), .B1(n12), .Y(n57) );
  AO22X1M U90 ( .A0(ALU_OUT[3]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[3]), .B1(n12), .Y(n58) );
  AO22X1M U91 ( .A0(ALU_OUT[4]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[4]), .B1(n12), .Y(n59) );
  AO22X1M U92 ( .A0(ALU_OUT[5]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[5]), .B1(n12), .Y(n60) );
  AO22X1M U93 ( .A0(ALU_OUT[6]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[6]), .B1(n12), .Y(n61) );
  AO22X1M U94 ( .A0(ALU_OUT[7]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[7]), .B1(n12), .Y(n62) );
  AO22X1M U95 ( .A0(ALU_OUT[8]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[8]), .B1(n12), .Y(n63) );
  AO22X1M U96 ( .A0(ALU_OUT[9]), .A1(UART_ALU_SEND), .B0(UART_SEND_ALU_DATA[9]), .B1(n12), .Y(n64) );
  AO22X1M U97 ( .A0(ALU_OUT[10]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[10]), .B1(n12), .Y(n65) );
  AO22X1M U98 ( .A0(ALU_OUT[11]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[11]), .B1(n12), .Y(n66) );
  AO22X1M U99 ( .A0(ALU_OUT[12]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[12]), .B1(n12), .Y(n67) );
  AO22X1M U100 ( .A0(ALU_OUT[13]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[13]), .B1(n12), .Y(n68) );
  AO22X1M U101 ( .A0(ALU_OUT[14]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[14]), .B1(n12), .Y(n69) );
  AO22X1M U102 ( .A0(ALU_OUT[15]), .A1(UART_ALU_SEND), .B0(
        UART_SEND_ALU_DATA[15]), .B1(n12), .Y(n70) );
  AO22X1M U103 ( .A0(RF_RdData[0]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[0]), .B1(n48), .Y(n71) );
  AO22X1M U104 ( .A0(RF_RdData[1]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[1]), .B1(n48), .Y(n72) );
  AO22X1M U105 ( .A0(RF_RdData[2]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[2]), .B1(n48), .Y(n73) );
  AO22X1M U106 ( .A0(RF_RdData[3]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[3]), .B1(n48), .Y(n74) );
  AO22X1M U107 ( .A0(RF_RdData[4]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[4]), .B1(n48), .Y(n75) );
  AO22X1M U108 ( .A0(RF_RdData[5]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[5]), .B1(n48), .Y(n76) );
  AO22X1M U109 ( .A0(RF_RdData[6]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[6]), .B1(n48), .Y(n77) );
  AO22X1M U110 ( .A0(RF_RdData[7]), .A1(UART_RF_SEND), .B0(
        UART_SEND_RF_DATA[7]), .B1(n48), .Y(n78) );
endmodule


module CTRL_TX ( CLK, RST, UART_RF_SEND, UART_SEND_RF_DATA, UART_ALU_SEND, 
        UART_SEND_ALU_DATA, UART_TX_Busy, UART_TX_DATA, UART_TX_VLD );
  input [7:0] UART_SEND_RF_DATA;
  input [15:0] UART_SEND_ALU_DATA;
  output [7:0] UART_TX_DATA;
  input CLK, RST, UART_RF_SEND, UART_ALU_SEND, UART_TX_Busy;
  output UART_TX_VLD;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n1, n2, n3;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  NOR3X2M U3 ( .A(current_state[0]), .B(current_state[1]), .C(n3), .Y(n14) );
  NOR2X2M U4 ( .A(n2), .B(n1), .Y(n6) );
  NAND3BX2M U5 ( .AN(n7), .B(n8), .C(n9), .Y(next_state[1]) );
  NAND4BX1M U6 ( .AN(UART_RF_SEND), .B(UART_ALU_SEND), .C(n1), .D(n3), .Y(n9)
         );
  NOR3X2M U7 ( .A(current_state[0]), .B(current_state[2]), .C(n2), .Y(n7) );
  XNOR2X2M U8 ( .A(current_state[0]), .B(n2), .Y(n4) );
  NOR3X2M U9 ( .A(current_state[1]), .B(current_state[2]), .C(n1), .Y(n10) );
  OAI2B11X2M U10 ( .A1N(n10), .A0(UART_TX_Busy), .B0(n11), .C0(n8), .Y(
        next_state[0]) );
  NAND4X2M U11 ( .A(UART_RF_SEND), .B(n1), .C(n2), .D(n3), .Y(n11) );
  NOR3X2M U12 ( .A(n4), .B(UART_TX_Busy), .C(n5), .Y(next_state[2]) );
  XNOR2X2M U13 ( .A(n6), .B(current_state[2]), .Y(n5) );
  INVX2M U14 ( .A(current_state[1]), .Y(n2) );
  INVX2M U15 ( .A(current_state[2]), .Y(n3) );
  INVX2M U16 ( .A(current_state[0]), .Y(n1) );
  NAND3X2M U17 ( .A(current_state[1]), .B(n3), .C(UART_TX_Busy), .Y(n8) );
  OAI2BB1X2M U18 ( .A0N(UART_SEND_RF_DATA[0]), .A1N(n10), .B0(n21), .Y(
        UART_TX_DATA[0]) );
  AOI22X1M U19 ( .A0(UART_SEND_ALU_DATA[8]), .A1(n14), .B0(
        UART_SEND_ALU_DATA[0]), .B1(n7), .Y(n21) );
  OAI2BB1X2M U20 ( .A0N(UART_SEND_RF_DATA[1]), .A1N(n10), .B0(n20), .Y(
        UART_TX_DATA[1]) );
  AOI22X1M U21 ( .A0(UART_SEND_ALU_DATA[9]), .A1(n14), .B0(
        UART_SEND_ALU_DATA[1]), .B1(n7), .Y(n20) );
  OAI2BB1X2M U22 ( .A0N(UART_SEND_RF_DATA[2]), .A1N(n10), .B0(n19), .Y(
        UART_TX_DATA[2]) );
  AOI22X1M U23 ( .A0(UART_SEND_ALU_DATA[10]), .A1(n14), .B0(
        UART_SEND_ALU_DATA[2]), .B1(n7), .Y(n19) );
  OAI2BB1X2M U24 ( .A0N(UART_SEND_RF_DATA[3]), .A1N(n10), .B0(n18), .Y(
        UART_TX_DATA[3]) );
  AOI22X1M U25 ( .A0(UART_SEND_ALU_DATA[11]), .A1(n14), .B0(
        UART_SEND_ALU_DATA[3]), .B1(n7), .Y(n18) );
  OAI2BB1X2M U26 ( .A0N(UART_SEND_RF_DATA[4]), .A1N(n10), .B0(n17), .Y(
        UART_TX_DATA[4]) );
  AOI22X1M U27 ( .A0(UART_SEND_ALU_DATA[12]), .A1(n14), .B0(
        UART_SEND_ALU_DATA[4]), .B1(n7), .Y(n17) );
  OAI2BB1X2M U28 ( .A0N(UART_SEND_RF_DATA[5]), .A1N(n10), .B0(n16), .Y(
        UART_TX_DATA[5]) );
  AOI22X1M U29 ( .A0(UART_SEND_ALU_DATA[13]), .A1(n14), .B0(
        UART_SEND_ALU_DATA[5]), .B1(n7), .Y(n16) );
  OAI2BB1X2M U30 ( .A0N(UART_SEND_RF_DATA[6]), .A1N(n10), .B0(n15), .Y(
        UART_TX_DATA[6]) );
  AOI22X1M U31 ( .A0(UART_SEND_ALU_DATA[14]), .A1(n14), .B0(
        UART_SEND_ALU_DATA[6]), .B1(n7), .Y(n15) );
  OAI2BB1X2M U32 ( .A0N(UART_SEND_RF_DATA[7]), .A1N(n10), .B0(n13), .Y(
        UART_TX_DATA[7]) );
  AOI22X1M U33 ( .A0(UART_SEND_ALU_DATA[15]), .A1(n14), .B0(
        UART_SEND_ALU_DATA[7]), .B1(n7), .Y(n13) );
  NOR2X2M U34 ( .A(n6), .B(n12), .Y(UART_TX_VLD) );
  XNOR2X2M U35 ( .A(n4), .B(current_state[2]), .Y(n12) );
endmodule


module SYS_CTRL ( CLK, RST, RF_RdData, RF_RdData_VLD, RF_WrEn, RF_RdEn, 
        RF_Address, RF_WrData, ALU_OUT, ALU_OUT_VLD, ALU_EN, ALU_FUN, CLKG_EN, 
        CLKDIV_EN, UART_RX_DATA, UART_RX_VLD, UART_TX_Busy, UART_TX_DATA, 
        UART_TX_VLD );
  input [7:0] RF_RdData;
  output [3:0] RF_Address;
  output [7:0] RF_WrData;
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  input [7:0] UART_RX_DATA;
  output [7:0] UART_TX_DATA;
  input CLK, RST, RF_RdData_VLD, ALU_OUT_VLD, UART_RX_VLD, UART_TX_Busy;
  output RF_WrEn, RF_RdEn, ALU_EN, CLKG_EN, CLKDIV_EN, UART_TX_VLD;
  wire   UART_RF_SEND, UART_ALU_SEND, n3, n4;
  wire   [7:0] UART_SEND_RF_DATA;
  wire   [15:0] UART_SEND_ALU_DATA;

  CTRL_RX U0_CTRL_RX ( .CLK(CLK), .RST(n3), .RF_RdData(RF_RdData), 
        .RF_RdData_VLD(RF_RdData_VLD), .ALU_OUT(ALU_OUT), .ALU_OUT_VLD(
        ALU_OUT_VLD), .UART_RX_DATA(UART_RX_DATA), .UART_RX_VLD(UART_RX_VLD), 
        .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .CLKG_EN(CLKG_EN), .RF_WrEn(
        RF_WrEn), .RF_RdEn(RF_RdEn), .RF_Address(RF_Address), .RF_WrData(
        RF_WrData), .UART_RF_SEND(UART_RF_SEND), .UART_ALU_SEND(UART_ALU_SEND), 
        .UART_SEND_RF_DATA(UART_SEND_RF_DATA), .UART_SEND_ALU_DATA(
        UART_SEND_ALU_DATA) );
  CTRL_TX U0_CTRL_TX ( .CLK(CLK), .RST(n3), .UART_RF_SEND(UART_RF_SEND), 
        .UART_SEND_RF_DATA(UART_SEND_RF_DATA), .UART_ALU_SEND(UART_ALU_SEND), 
        .UART_SEND_ALU_DATA(UART_SEND_ALU_DATA), .UART_TX_Busy(UART_TX_Busy), 
        .UART_TX_DATA(UART_TX_DATA), .UART_TX_VLD(UART_TX_VLD) );
  INVX2M U1 ( .A(1'b0), .Y(CLKDIV_EN) );
  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(RST), .Y(n4) );
endmodule


module RegFile ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, RdData_VLD, 
        REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_VLD;
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
         \regArr[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(CLK), .RN(n204), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(CLK), .RN(n204), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(CLK), .RN(n204), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(CLK), .RN(n204), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(CLK), .RN(n204), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(CLK), .RN(n204), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(CLK), .RN(n204), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(CLK), .RN(n208), .Q(RdData[0]) );
  DFFSQX2M \regArr_reg[3][3]  ( .D(n76), .CK(CLK), .SN(n204), .Q(REG3[3]) );
  DFFRQX2M \regArr_reg[13][7]  ( .D(n160), .CK(CLK), .RN(n212), .Q(
        \regArr[13][7] ) );
  DFFRQX2M \regArr_reg[13][6]  ( .D(n159), .CK(CLK), .RN(n212), .Q(
        \regArr[13][6] ) );
  DFFRQX2M \regArr_reg[13][5]  ( .D(n158), .CK(CLK), .RN(n211), .Q(
        \regArr[13][5] ) );
  DFFRQX2M \regArr_reg[13][4]  ( .D(n157), .CK(CLK), .RN(n211), .Q(
        \regArr[13][4] ) );
  DFFRQX2M \regArr_reg[13][3]  ( .D(n156), .CK(CLK), .RN(n211), .Q(
        \regArr[13][3] ) );
  DFFRQX2M \regArr_reg[13][2]  ( .D(n155), .CK(CLK), .RN(n211), .Q(
        \regArr[13][2] ) );
  DFFRQX2M \regArr_reg[13][1]  ( .D(n154), .CK(CLK), .RN(n211), .Q(
        \regArr[13][1] ) );
  DFFRQX2M \regArr_reg[13][0]  ( .D(n153), .CK(CLK), .RN(n211), .Q(
        \regArr[13][0] ) );
  DFFRQX2M \regArr_reg[9][7]  ( .D(n128), .CK(CLK), .RN(n209), .Q(
        \regArr[9][7] ) );
  DFFRQX2M \regArr_reg[9][6]  ( .D(n127), .CK(CLK), .RN(n209), .Q(
        \regArr[9][6] ) );
  DFFRQX2M \regArr_reg[9][5]  ( .D(n126), .CK(CLK), .RN(n209), .Q(
        \regArr[9][5] ) );
  DFFRQX2M \regArr_reg[9][4]  ( .D(n125), .CK(CLK), .RN(n209), .Q(
        \regArr[9][4] ) );
  DFFRQX2M \regArr_reg[9][3]  ( .D(n124), .CK(CLK), .RN(n209), .Q(
        \regArr[9][3] ) );
  DFFRQX2M \regArr_reg[9][2]  ( .D(n123), .CK(CLK), .RN(n209), .Q(
        \regArr[9][2] ) );
  DFFRQX2M \regArr_reg[9][1]  ( .D(n122), .CK(CLK), .RN(n209), .Q(
        \regArr[9][1] ) );
  DFFRQX2M \regArr_reg[9][0]  ( .D(n121), .CK(CLK), .RN(n209), .Q(
        \regArr[9][0] ) );
  DFFRQX2M \regArr_reg[5][7]  ( .D(n96), .CK(CLK), .RN(n207), .Q(
        \regArr[5][7] ) );
  DFFRQX2M \regArr_reg[5][6]  ( .D(n95), .CK(CLK), .RN(n207), .Q(
        \regArr[5][6] ) );
  DFFRQX2M \regArr_reg[5][5]  ( .D(n94), .CK(CLK), .RN(n207), .Q(
        \regArr[5][5] ) );
  DFFRQX2M \regArr_reg[5][4]  ( .D(n93), .CK(CLK), .RN(n207), .Q(
        \regArr[5][4] ) );
  DFFRQX2M \regArr_reg[5][3]  ( .D(n92), .CK(CLK), .RN(n207), .Q(
        \regArr[5][3] ) );
  DFFRQX2M \regArr_reg[5][2]  ( .D(n91), .CK(CLK), .RN(n207), .Q(
        \regArr[5][2] ) );
  DFFRQX2M \regArr_reg[5][1]  ( .D(n90), .CK(CLK), .RN(n207), .Q(
        \regArr[5][1] ) );
  DFFRQX2M \regArr_reg[5][0]  ( .D(n89), .CK(CLK), .RN(n207), .Q(
        \regArr[5][0] ) );
  DFFRQX2M \regArr_reg[15][7]  ( .D(n176), .CK(CLK), .RN(n204), .Q(
        \regArr[15][7] ) );
  DFFRQX2M \regArr_reg[15][6]  ( .D(n175), .CK(CLK), .RN(n213), .Q(
        \regArr[15][6] ) );
  DFFRQX2M \regArr_reg[15][5]  ( .D(n174), .CK(CLK), .RN(n213), .Q(
        \regArr[15][5] ) );
  DFFRQX2M \regArr_reg[15][4]  ( .D(n173), .CK(CLK), .RN(n212), .Q(
        \regArr[15][4] ) );
  DFFRQX2M \regArr_reg[15][3]  ( .D(n172), .CK(CLK), .RN(n212), .Q(
        \regArr[15][3] ) );
  DFFRQX2M \regArr_reg[15][2]  ( .D(n171), .CK(CLK), .RN(n212), .Q(
        \regArr[15][2] ) );
  DFFRQX2M \regArr_reg[15][1]  ( .D(n170), .CK(CLK), .RN(n212), .Q(
        \regArr[15][1] ) );
  DFFRQX2M \regArr_reg[15][0]  ( .D(n169), .CK(CLK), .RN(n212), .Q(
        \regArr[15][0] ) );
  DFFRQX2M \regArr_reg[11][7]  ( .D(n144), .CK(CLK), .RN(n211), .Q(
        \regArr[11][7] ) );
  DFFRQX2M \regArr_reg[11][6]  ( .D(n143), .CK(CLK), .RN(n210), .Q(
        \regArr[11][6] ) );
  DFFRQX2M \regArr_reg[11][5]  ( .D(n142), .CK(CLK), .RN(n210), .Q(
        \regArr[11][5] ) );
  DFFRQX2M \regArr_reg[11][4]  ( .D(n141), .CK(CLK), .RN(n210), .Q(
        \regArr[11][4] ) );
  DFFRQX2M \regArr_reg[11][3]  ( .D(n140), .CK(CLK), .RN(n210), .Q(
        \regArr[11][3] ) );
  DFFRQX2M \regArr_reg[11][2]  ( .D(n139), .CK(CLK), .RN(n210), .Q(
        \regArr[11][2] ) );
  DFFRQX2M \regArr_reg[11][1]  ( .D(n138), .CK(CLK), .RN(n210), .Q(
        \regArr[11][1] ) );
  DFFRQX2M \regArr_reg[11][0]  ( .D(n137), .CK(CLK), .RN(n210), .Q(
        \regArr[11][0] ) );
  DFFRQX2M \regArr_reg[7][7]  ( .D(n112), .CK(CLK), .RN(n208), .Q(
        \regArr[7][7] ) );
  DFFRQX2M \regArr_reg[7][6]  ( .D(n111), .CK(CLK), .RN(n208), .Q(
        \regArr[7][6] ) );
  DFFRQX2M \regArr_reg[7][5]  ( .D(n110), .CK(CLK), .RN(n208), .Q(
        \regArr[7][5] ) );
  DFFRQX2M \regArr_reg[7][4]  ( .D(n109), .CK(CLK), .RN(n208), .Q(
        \regArr[7][4] ) );
  DFFRQX2M \regArr_reg[7][3]  ( .D(n108), .CK(CLK), .RN(n208), .Q(
        \regArr[7][3] ) );
  DFFRQX2M \regArr_reg[7][2]  ( .D(n107), .CK(CLK), .RN(n208), .Q(
        \regArr[7][2] ) );
  DFFRQX2M \regArr_reg[7][1]  ( .D(n106), .CK(CLK), .RN(n208), .Q(
        \regArr[7][1] ) );
  DFFRQX2M \regArr_reg[7][0]  ( .D(n105), .CK(CLK), .RN(n208), .Q(
        \regArr[7][0] ) );
  DFFRQX2M \regArr_reg[3][7]  ( .D(n80), .CK(CLK), .RN(n206), .Q(REG3[7]) );
  DFFRQX2M \regArr_reg[3][6]  ( .D(n79), .CK(CLK), .RN(n206), .Q(REG3[6]) );
  DFFRQX2M \regArr_reg[3][5]  ( .D(n78), .CK(CLK), .RN(n206), .Q(REG3[5]) );
  DFFRQX2M \regArr_reg[14][7]  ( .D(n168), .CK(CLK), .RN(n212), .Q(
        \regArr[14][7] ) );
  DFFRQX2M \regArr_reg[14][6]  ( .D(n167), .CK(CLK), .RN(n212), .Q(
        \regArr[14][6] ) );
  DFFRQX2M \regArr_reg[14][5]  ( .D(n166), .CK(CLK), .RN(n212), .Q(
        \regArr[14][5] ) );
  DFFRQX2M \regArr_reg[14][4]  ( .D(n165), .CK(CLK), .RN(n212), .Q(
        \regArr[14][4] ) );
  DFFRQX2M \regArr_reg[14][3]  ( .D(n164), .CK(CLK), .RN(n212), .Q(
        \regArr[14][3] ) );
  DFFRQX2M \regArr_reg[14][2]  ( .D(n163), .CK(CLK), .RN(n212), .Q(
        \regArr[14][2] ) );
  DFFRQX2M \regArr_reg[14][1]  ( .D(n162), .CK(CLK), .RN(n212), .Q(
        \regArr[14][1] ) );
  DFFRQX2M \regArr_reg[14][0]  ( .D(n161), .CK(CLK), .RN(n212), .Q(
        \regArr[14][0] ) );
  DFFRQX2M \regArr_reg[10][7]  ( .D(n136), .CK(CLK), .RN(n210), .Q(
        \regArr[10][7] ) );
  DFFRQX2M \regArr_reg[10][6]  ( .D(n135), .CK(CLK), .RN(n210), .Q(
        \regArr[10][6] ) );
  DFFRQX2M \regArr_reg[10][5]  ( .D(n134), .CK(CLK), .RN(n210), .Q(
        \regArr[10][5] ) );
  DFFRQX2M \regArr_reg[10][4]  ( .D(n133), .CK(CLK), .RN(n210), .Q(
        \regArr[10][4] ) );
  DFFRQX2M \regArr_reg[10][3]  ( .D(n132), .CK(CLK), .RN(n210), .Q(
        \regArr[10][3] ) );
  DFFRQX2M \regArr_reg[10][2]  ( .D(n131), .CK(CLK), .RN(n210), .Q(
        \regArr[10][2] ) );
  DFFRQX2M \regArr_reg[10][1]  ( .D(n130), .CK(CLK), .RN(n210), .Q(
        \regArr[10][1] ) );
  DFFRQX2M \regArr_reg[10][0]  ( .D(n129), .CK(CLK), .RN(n210), .Q(
        \regArr[10][0] ) );
  DFFRQX2M \regArr_reg[6][7]  ( .D(n104), .CK(CLK), .RN(n208), .Q(
        \regArr[6][7] ) );
  DFFRQX2M \regArr_reg[6][6]  ( .D(n103), .CK(CLK), .RN(n208), .Q(
        \regArr[6][6] ) );
  DFFRQX2M \regArr_reg[6][5]  ( .D(n102), .CK(CLK), .RN(n208), .Q(
        \regArr[6][5] ) );
  DFFRQX2M \regArr_reg[6][4]  ( .D(n101), .CK(CLK), .RN(n208), .Q(
        \regArr[6][4] ) );
  DFFRQX2M \regArr_reg[6][3]  ( .D(n100), .CK(CLK), .RN(n208), .Q(
        \regArr[6][3] ) );
  DFFRQX2M \regArr_reg[6][2]  ( .D(n99), .CK(CLK), .RN(n207), .Q(
        \regArr[6][2] ) );
  DFFRQX2M \regArr_reg[6][1]  ( .D(n98), .CK(CLK), .RN(n207), .Q(
        \regArr[6][1] ) );
  DFFRQX2M \regArr_reg[6][0]  ( .D(n97), .CK(CLK), .RN(n207), .Q(
        \regArr[6][0] ) );
  DFFRQX2M \regArr_reg[2][7]  ( .D(n72), .CK(CLK), .RN(n206), .Q(REG2[7]) );
  DFFRQX2M \regArr_reg[12][7]  ( .D(n152), .CK(CLK), .RN(n211), .Q(
        \regArr[12][7] ) );
  DFFRQX2M \regArr_reg[12][6]  ( .D(n151), .CK(CLK), .RN(n211), .Q(
        \regArr[12][6] ) );
  DFFRQX2M \regArr_reg[12][5]  ( .D(n150), .CK(CLK), .RN(n211), .Q(
        \regArr[12][5] ) );
  DFFRQX2M \regArr_reg[12][4]  ( .D(n149), .CK(CLK), .RN(n211), .Q(
        \regArr[12][4] ) );
  DFFRQX2M \regArr_reg[12][3]  ( .D(n148), .CK(CLK), .RN(n211), .Q(
        \regArr[12][3] ) );
  DFFRQX2M \regArr_reg[12][2]  ( .D(n147), .CK(CLK), .RN(n211), .Q(
        \regArr[12][2] ) );
  DFFRQX2M \regArr_reg[12][1]  ( .D(n146), .CK(CLK), .RN(n211), .Q(
        \regArr[12][1] ) );
  DFFRQX2M \regArr_reg[12][0]  ( .D(n145), .CK(CLK), .RN(n211), .Q(
        \regArr[12][0] ) );
  DFFRQX2M \regArr_reg[8][7]  ( .D(n120), .CK(CLK), .RN(n209), .Q(
        \regArr[8][7] ) );
  DFFRQX2M \regArr_reg[8][6]  ( .D(n119), .CK(CLK), .RN(n209), .Q(
        \regArr[8][6] ) );
  DFFRQX2M \regArr_reg[8][5]  ( .D(n118), .CK(CLK), .RN(n209), .Q(
        \regArr[8][5] ) );
  DFFRQX2M \regArr_reg[8][4]  ( .D(n117), .CK(CLK), .RN(n209), .Q(
        \regArr[8][4] ) );
  DFFRQX2M \regArr_reg[8][3]  ( .D(n116), .CK(CLK), .RN(n209), .Q(
        \regArr[8][3] ) );
  DFFRQX2M \regArr_reg[8][2]  ( .D(n115), .CK(CLK), .RN(n209), .Q(
        \regArr[8][2] ) );
  DFFRQX2M \regArr_reg[8][1]  ( .D(n114), .CK(CLK), .RN(n209), .Q(
        \regArr[8][1] ) );
  DFFRQX2M \regArr_reg[8][0]  ( .D(n113), .CK(CLK), .RN(n208), .Q(
        \regArr[8][0] ) );
  DFFRQX2M \regArr_reg[4][7]  ( .D(n88), .CK(CLK), .RN(n207), .Q(
        \regArr[4][7] ) );
  DFFRQX2M \regArr_reg[4][6]  ( .D(n87), .CK(CLK), .RN(n207), .Q(
        \regArr[4][6] ) );
  DFFRQX2M \regArr_reg[4][5]  ( .D(n86), .CK(CLK), .RN(n207), .Q(
        \regArr[4][5] ) );
  DFFRQX2M \regArr_reg[4][4]  ( .D(n85), .CK(CLK), .RN(n207), .Q(
        \regArr[4][4] ) );
  DFFRQX2M \regArr_reg[4][3]  ( .D(n84), .CK(CLK), .RN(n206), .Q(
        \regArr[4][3] ) );
  DFFRQX2M \regArr_reg[4][2]  ( .D(n83), .CK(CLK), .RN(n206), .Q(
        \regArr[4][2] ) );
  DFFRQX2M \regArr_reg[4][1]  ( .D(n82), .CK(CLK), .RN(n206), .Q(
        \regArr[4][1] ) );
  DFFRQX2M \regArr_reg[4][0]  ( .D(n81), .CK(CLK), .RN(n206), .Q(
        \regArr[4][0] ) );
  DFFRQX2M \regArr_reg[3][2]  ( .D(n75), .CK(CLK), .RN(n206), .Q(REG3[2]) );
  DFFRQX2M \regArr_reg[3][0]  ( .D(n73), .CK(CLK), .RN(n206), .Q(REG3[0]) );
  DFFRQX2M \regArr_reg[3][4]  ( .D(n77), .CK(CLK), .RN(n206), .Q(REG3[4]) );
  DFFRQX2M \regArr_reg[3][1]  ( .D(n74), .CK(CLK), .RN(n206), .Q(REG3[1]) );
  DFFRQX2M RdData_VLD_reg ( .D(n48), .CK(CLK), .RN(n204), .Q(RdData_VLD) );
  DFFSQX2M \regArr_reg[2][0]  ( .D(n65), .CK(CLK), .SN(n204), .Q(REG2[0]) );
  DFFRQX2M \regArr_reg[2][2]  ( .D(n67), .CK(CLK), .RN(n205), .Q(REG2[2]) );
  DFFRQX2M \regArr_reg[2][1]  ( .D(n66), .CK(CLK), .RN(n205), .Q(REG2[1]) );
  DFFRQX2M \regArr_reg[2][3]  ( .D(n68), .CK(CLK), .RN(n206), .Q(REG2[3]) );
  DFFSQX2M \regArr_reg[2][5]  ( .D(n70), .CK(CLK), .SN(n204), .Q(REG2[5]) );
  DFFRQX2M \regArr_reg[2][6]  ( .D(n71), .CK(CLK), .RN(n206), .Q(REG2[6]) );
  DFFRQX2M \regArr_reg[2][4]  ( .D(n69), .CK(CLK), .RN(n206), .Q(REG2[4]) );
  DFFRQX2M \regArr_reg[0][1]  ( .D(n50), .CK(CLK), .RN(n204), .Q(REG0[1]) );
  DFFRQX2M \regArr_reg[0][0]  ( .D(n49), .CK(CLK), .RN(n204), .Q(REG0[0]) );
  DFFRQX2M \regArr_reg[0][2]  ( .D(n51), .CK(CLK), .RN(n205), .Q(REG0[2]) );
  DFFRQX2M \regArr_reg[0][3]  ( .D(n52), .CK(CLK), .RN(n204), .Q(REG0[3]) );
  DFFRQX2M \regArr_reg[0][4]  ( .D(n53), .CK(CLK), .RN(n205), .Q(REG0[4]) );
  DFFRQX2M \regArr_reg[0][5]  ( .D(n54), .CK(CLK), .RN(n205), .Q(REG0[5]) );
  DFFRQX2M \regArr_reg[0][6]  ( .D(n55), .CK(CLK), .RN(n205), .Q(REG0[6]) );
  DFFRQX2M \regArr_reg[0][7]  ( .D(n56), .CK(CLK), .RN(n205), .Q(REG0[7]) );
  DFFRQX2M \regArr_reg[1][1]  ( .D(n58), .CK(CLK), .RN(n205), .Q(REG1[1]) );
  DFFRQX2M \regArr_reg[1][2]  ( .D(n59), .CK(CLK), .RN(n205), .Q(REG1[2]) );
  DFFRQX2M \regArr_reg[1][6]  ( .D(n63), .CK(CLK), .RN(n205), .Q(REG1[6]) );
  DFFRQX2M \regArr_reg[1][5]  ( .D(n62), .CK(CLK), .RN(n205), .Q(REG1[5]) );
  DFFRQX2M \regArr_reg[1][4]  ( .D(n61), .CK(CLK), .RN(n205), .Q(REG1[4]) );
  DFFRQX2M \regArr_reg[1][7]  ( .D(n64), .CK(CLK), .RN(n205), .Q(REG1[7]) );
  DFFRQX2M \regArr_reg[1][3]  ( .D(n60), .CK(CLK), .RN(n205), .Q(REG1[3]) );
  DFFRQX2M \regArr_reg[1][0]  ( .D(n57), .CK(CLK), .RN(n205), .Q(REG1[0]) );
  NOR2BX2M U3 ( .AN(n27), .B(n202), .Y(n18) );
  NOR2BX2M U4 ( .AN(n38), .B(n202), .Y(n32) );
  NOR2BX2M U5 ( .AN(N13), .B(N12), .Y(n23) );
  NOR2BX2M U6 ( .AN(N13), .B(n203), .Y(n26) );
  NOR2X2M U7 ( .A(n203), .B(N13), .Y(n20) );
  NOR2X2M U8 ( .A(N12), .B(N13), .Y(n15) );
  INVX2M U9 ( .A(n202), .Y(n200) );
  INVX2M U10 ( .A(n198), .Y(n199) );
  BUFX2M U11 ( .A(n203), .Y(n198) );
  NOR2BX2M U12 ( .AN(n27), .B(n201), .Y(n16) );
  NAND2X2M U13 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U14 ( .A(n20), .B(n18), .Y(n21) );
  NOR2BX2M U15 ( .AN(n38), .B(n201), .Y(n30) );
  NAND2X2M U16 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U17 ( .A(n30), .B(n15), .Y(n29) );
  NAND2X2M U18 ( .A(n32), .B(n15), .Y(n31) );
  NAND2X2M U19 ( .A(n30), .B(n20), .Y(n33) );
  NAND2X2M U20 ( .A(n32), .B(n20), .Y(n34) );
  NAND2X2M U21 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U22 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U23 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U24 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U25 ( .A(n30), .B(n23), .Y(n35) );
  NAND2X2M U26 ( .A(n32), .B(n23), .Y(n36) );
  NAND2X2M U27 ( .A(n30), .B(n26), .Y(n37) );
  NAND2X2M U28 ( .A(n32), .B(n26), .Y(n39) );
  NAND2X2M U29 ( .A(n15), .B(n16), .Y(n14) );
  INVX2M U30 ( .A(n12), .Y(n227) );
  BUFX2M U31 ( .A(n218), .Y(n204) );
  BUFX2M U32 ( .A(n218), .Y(n205) );
  BUFX2M U33 ( .A(n217), .Y(n206) );
  BUFX2M U34 ( .A(n217), .Y(n207) );
  BUFX2M U35 ( .A(n216), .Y(n208) );
  BUFX2M U36 ( .A(n216), .Y(n209) );
  BUFX2M U37 ( .A(n215), .Y(n210) );
  BUFX2M U38 ( .A(n215), .Y(n211) );
  BUFX2M U39 ( .A(n214), .Y(n212) );
  BUFX2M U40 ( .A(n214), .Y(n213) );
  NOR2BX2M U41 ( .AN(WrEn), .B(RdEn), .Y(n13) );
  NOR2BX2M U42 ( .AN(n13), .B(N14), .Y(n27) );
  INVX2M U43 ( .A(n202), .Y(n201) );
  INVX2M U44 ( .A(WrData[0]), .Y(n219) );
  INVX2M U45 ( .A(WrData[1]), .Y(n220) );
  INVX2M U46 ( .A(WrData[2]), .Y(n221) );
  INVX2M U47 ( .A(WrData[3]), .Y(n222) );
  INVX2M U48 ( .A(WrData[4]), .Y(n223) );
  INVX2M U49 ( .A(WrData[7]), .Y(n226) );
  NAND2BX2M U50 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  AND2X2M U51 ( .A(N14), .B(n13), .Y(n38) );
  BUFX2M U52 ( .A(RST), .Y(n217) );
  BUFX2M U53 ( .A(RST), .Y(n216) );
  BUFX2M U54 ( .A(RST), .Y(n215) );
  BUFX2M U55 ( .A(RST), .Y(n214) );
  BUFX2M U56 ( .A(RST), .Y(n218) );
  OAI2BB2X1M U57 ( .B0(n219), .B1(n19), .A0N(REG2[0]), .A1N(n19), .Y(n65) );
  OAI2BB2X1M U58 ( .B0(n224), .B1(n19), .A0N(REG2[5]), .A1N(n19), .Y(n70) );
  OAI2BB2X1M U59 ( .B0(n222), .B1(n21), .A0N(REG3[3]), .A1N(n21), .Y(n76) );
  AO22X1M U60 ( .A0(N43), .A1(n227), .B0(RdData[0]), .B1(n12), .Y(n40) );
  MX4X1M U61 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U62 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(N12), .Y(n4) );
  MX4X1M U63 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(N11), .S1(N12), .Y(n2) );
  AO22X1M U64 ( .A0(N41), .A1(n227), .B0(RdData[2]), .B1(n12), .Y(n42) );
  MX4X1M U65 ( .A(n177), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4X1M U66 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n200), 
        .S1(n199), .Y(n177) );
  MX4X1M U67 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n200), .S1(n199), .Y(n10) );
  AO22X1M U68 ( .A0(N40), .A1(n227), .B0(RdData[3]), .B1(n12), .Y(n43) );
  MX4X1M U69 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N14), .S1(N13), .Y(
        N40) );
  MX4X1M U70 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n200), 
        .S1(n199), .Y(n181) );
  MX4X1M U71 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n200), .S1(n199), .Y(n179) );
  AO22X1M U72 ( .A0(N39), .A1(n227), .B0(RdData[4]), .B1(n12), .Y(n44) );
  MX4X1M U73 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), .Y(
        N39) );
  MX4X1M U74 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(N11), 
        .S1(n199), .Y(n185) );
  MX4X1M U75 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n200), .S1(n199), .Y(n183) );
  AO22X1M U76 ( .A0(N38), .A1(n227), .B0(RdData[5]), .B1(n12), .Y(n45) );
  MX4X1M U77 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), .Y(
        N38) );
  MX4X1M U78 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(N11), 
        .S1(N12), .Y(n189) );
  MX4X1M U79 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(N11), .S1(N12), .Y(n187) );
  AO22X1M U80 ( .A0(N37), .A1(n227), .B0(RdData[6]), .B1(n12), .Y(n46) );
  MX4X1M U81 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), .Y(
        N37) );
  MX4X1M U82 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n201), 
        .S1(N12), .Y(n193) );
  MX4X1M U83 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(N11), .S1(N12), .Y(n191) );
  AO22X1M U84 ( .A0(N36), .A1(n227), .B0(RdData[7]), .B1(n12), .Y(n47) );
  MX4X1M U85 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), .Y(
        N36) );
  MX4X1M U86 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n201), 
        .S1(N12), .Y(n197) );
  MX4X1M U87 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(N11), .S1(N12), .Y(n195) );
  MX4X1M U88 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n200), 
        .S1(N12), .Y(n8) );
  MX4X1M U89 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), .D(
        \regArr[7][0] ), .S0(n201), .S1(N12), .Y(n3) );
  MX4X1M U90 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), .D(
        \regArr[7][1] ), .S0(n200), .S1(N12), .Y(n7) );
  MX4X1M U91 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), .D(
        \regArr[7][2] ), .S0(n200), .S1(n199), .Y(n11) );
  MX4X1M U92 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), .D(
        \regArr[7][3] ), .S0(n200), .S1(n199), .Y(n180) );
  MX4X1M U93 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), .D(
        \regArr[7][4] ), .S0(n200), .S1(n199), .Y(n184) );
  MX4X1M U94 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), .D(
        \regArr[7][5] ), .S0(N11), .S1(n199), .Y(n188) );
  MX4X1M U95 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), .D(
        \regArr[7][6] ), .S0(N11), .S1(N12), .Y(n192) );
  MX4X1M U96 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), .D(
        \regArr[7][7] ), .S0(N11), .S1(N12), .Y(n196) );
  MX4X1M U97 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n201), .S1(N12), .Y(n1) );
  MX4X1M U98 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n200), .S1(n199), .Y(n9) );
  MX4X1M U99 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n200), .S1(n199), .Y(n178) );
  MX4X1M U100 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n200), .S1(n199), .Y(n182) );
  MX4X1M U101 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(N11), .S1(n199), .Y(n186) );
  MX4X1M U102 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(N11), .S1(N12), .Y(n190) );
  MX4X1M U103 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(N11), .S1(N12), .Y(n194) );
  AO22X1M U104 ( .A0(N42), .A1(n227), .B0(RdData[1]), .B1(n12), .Y(n41) );
  MX4X1M U105 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U106 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(N11), .S1(N12), .Y(n6) );
  MX4X1M U107 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n200), .S1(N12), .Y(n5) );
  INVX2M U108 ( .A(N11), .Y(n202) );
  INVX2M U109 ( .A(WrData[5]), .Y(n224) );
  INVX2M U110 ( .A(WrData[6]), .Y(n225) );
  OAI2BB2X1M U111 ( .B0(n14), .B1(n219), .A0N(REG0[0]), .A1N(n14), .Y(n49) );
  OAI2BB2X1M U112 ( .B0(n14), .B1(n220), .A0N(REG0[1]), .A1N(n14), .Y(n50) );
  OAI2BB2X1M U113 ( .B0(n14), .B1(n221), .A0N(REG0[2]), .A1N(n14), .Y(n51) );
  OAI2BB2X1M U114 ( .B0(n14), .B1(n222), .A0N(REG0[3]), .A1N(n14), .Y(n52) );
  OAI2BB2X1M U115 ( .B0(n14), .B1(n223), .A0N(REG0[4]), .A1N(n14), .Y(n53) );
  OAI2BB2X1M U116 ( .B0(n14), .B1(n224), .A0N(REG0[5]), .A1N(n14), .Y(n54) );
  OAI2BB2X1M U117 ( .B0(n14), .B1(n225), .A0N(REG0[6]), .A1N(n14), .Y(n55) );
  OAI2BB2X1M U118 ( .B0(n14), .B1(n226), .A0N(REG0[7]), .A1N(n14), .Y(n56) );
  OAI2BB2X1M U119 ( .B0(n219), .B1(n17), .A0N(REG1[0]), .A1N(n17), .Y(n57) );
  OAI2BB2X1M U120 ( .B0(n220), .B1(n17), .A0N(REG1[1]), .A1N(n17), .Y(n58) );
  OAI2BB2X1M U121 ( .B0(n221), .B1(n17), .A0N(REG1[2]), .A1N(n17), .Y(n59) );
  OAI2BB2X1M U122 ( .B0(n222), .B1(n17), .A0N(REG1[3]), .A1N(n17), .Y(n60) );
  OAI2BB2X1M U123 ( .B0(n223), .B1(n17), .A0N(REG1[4]), .A1N(n17), .Y(n61) );
  OAI2BB2X1M U124 ( .B0(n224), .B1(n17), .A0N(REG1[5]), .A1N(n17), .Y(n62) );
  OAI2BB2X1M U125 ( .B0(n225), .B1(n17), .A0N(REG1[6]), .A1N(n17), .Y(n63) );
  OAI2BB2X1M U126 ( .B0(n226), .B1(n17), .A0N(REG1[7]), .A1N(n17), .Y(n64) );
  OAI2BB2X1M U127 ( .B0(n219), .B1(n22), .A0N(\regArr[4][0] ), .A1N(n22), .Y(
        n81) );
  OAI2BB2X1M U128 ( .B0(n220), .B1(n22), .A0N(\regArr[4][1] ), .A1N(n22), .Y(
        n82) );
  OAI2BB2X1M U129 ( .B0(n221), .B1(n22), .A0N(\regArr[4][2] ), .A1N(n22), .Y(
        n83) );
  OAI2BB2X1M U130 ( .B0(n222), .B1(n22), .A0N(\regArr[4][3] ), .A1N(n22), .Y(
        n84) );
  OAI2BB2X1M U131 ( .B0(n223), .B1(n22), .A0N(\regArr[4][4] ), .A1N(n22), .Y(
        n85) );
  OAI2BB2X1M U132 ( .B0(n224), .B1(n22), .A0N(\regArr[4][5] ), .A1N(n22), .Y(
        n86) );
  OAI2BB2X1M U133 ( .B0(n225), .B1(n22), .A0N(\regArr[4][6] ), .A1N(n22), .Y(
        n87) );
  OAI2BB2X1M U134 ( .B0(n226), .B1(n22), .A0N(\regArr[4][7] ), .A1N(n22), .Y(
        n88) );
  OAI2BB2X1M U135 ( .B0(n219), .B1(n24), .A0N(\regArr[5][0] ), .A1N(n24), .Y(
        n89) );
  OAI2BB2X1M U136 ( .B0(n220), .B1(n24), .A0N(\regArr[5][1] ), .A1N(n24), .Y(
        n90) );
  OAI2BB2X1M U137 ( .B0(n221), .B1(n24), .A0N(\regArr[5][2] ), .A1N(n24), .Y(
        n91) );
  OAI2BB2X1M U138 ( .B0(n222), .B1(n24), .A0N(\regArr[5][3] ), .A1N(n24), .Y(
        n92) );
  OAI2BB2X1M U139 ( .B0(n223), .B1(n24), .A0N(\regArr[5][4] ), .A1N(n24), .Y(
        n93) );
  OAI2BB2X1M U140 ( .B0(n224), .B1(n24), .A0N(\regArr[5][5] ), .A1N(n24), .Y(
        n94) );
  OAI2BB2X1M U141 ( .B0(n225), .B1(n24), .A0N(\regArr[5][6] ), .A1N(n24), .Y(
        n95) );
  OAI2BB2X1M U142 ( .B0(n226), .B1(n24), .A0N(\regArr[5][7] ), .A1N(n24), .Y(
        n96) );
  OAI2BB2X1M U143 ( .B0(n219), .B1(n25), .A0N(\regArr[6][0] ), .A1N(n25), .Y(
        n97) );
  OAI2BB2X1M U144 ( .B0(n220), .B1(n25), .A0N(\regArr[6][1] ), .A1N(n25), .Y(
        n98) );
  OAI2BB2X1M U145 ( .B0(n221), .B1(n25), .A0N(\regArr[6][2] ), .A1N(n25), .Y(
        n99) );
  OAI2BB2X1M U146 ( .B0(n222), .B1(n25), .A0N(\regArr[6][3] ), .A1N(n25), .Y(
        n100) );
  OAI2BB2X1M U147 ( .B0(n223), .B1(n25), .A0N(\regArr[6][4] ), .A1N(n25), .Y(
        n101) );
  OAI2BB2X1M U148 ( .B0(n224), .B1(n25), .A0N(\regArr[6][5] ), .A1N(n25), .Y(
        n102) );
  OAI2BB2X1M U149 ( .B0(n225), .B1(n25), .A0N(\regArr[6][6] ), .A1N(n25), .Y(
        n103) );
  OAI2BB2X1M U150 ( .B0(n226), .B1(n25), .A0N(\regArr[6][7] ), .A1N(n25), .Y(
        n104) );
  OAI2BB2X1M U151 ( .B0(n219), .B1(n28), .A0N(\regArr[7][0] ), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U152 ( .B0(n220), .B1(n28), .A0N(\regArr[7][1] ), .A1N(n28), .Y(
        n106) );
  OAI2BB2X1M U153 ( .B0(n221), .B1(n28), .A0N(\regArr[7][2] ), .A1N(n28), .Y(
        n107) );
  OAI2BB2X1M U154 ( .B0(n222), .B1(n28), .A0N(\regArr[7][3] ), .A1N(n28), .Y(
        n108) );
  OAI2BB2X1M U155 ( .B0(n223), .B1(n28), .A0N(\regArr[7][4] ), .A1N(n28), .Y(
        n109) );
  OAI2BB2X1M U156 ( .B0(n224), .B1(n28), .A0N(\regArr[7][5] ), .A1N(n28), .Y(
        n110) );
  OAI2BB2X1M U157 ( .B0(n225), .B1(n28), .A0N(\regArr[7][6] ), .A1N(n28), .Y(
        n111) );
  OAI2BB2X1M U158 ( .B0(n226), .B1(n28), .A0N(\regArr[7][7] ), .A1N(n28), .Y(
        n112) );
  OAI2BB2X1M U159 ( .B0(n219), .B1(n29), .A0N(\regArr[8][0] ), .A1N(n29), .Y(
        n113) );
  OAI2BB2X1M U160 ( .B0(n220), .B1(n29), .A0N(\regArr[8][1] ), .A1N(n29), .Y(
        n114) );
  OAI2BB2X1M U161 ( .B0(n221), .B1(n29), .A0N(\regArr[8][2] ), .A1N(n29), .Y(
        n115) );
  OAI2BB2X1M U162 ( .B0(n222), .B1(n29), .A0N(\regArr[8][3] ), .A1N(n29), .Y(
        n116) );
  OAI2BB2X1M U163 ( .B0(n223), .B1(n29), .A0N(\regArr[8][4] ), .A1N(n29), .Y(
        n117) );
  OAI2BB2X1M U164 ( .B0(n224), .B1(n29), .A0N(\regArr[8][5] ), .A1N(n29), .Y(
        n118) );
  OAI2BB2X1M U165 ( .B0(n225), .B1(n29), .A0N(\regArr[8][6] ), .A1N(n29), .Y(
        n119) );
  OAI2BB2X1M U166 ( .B0(n226), .B1(n29), .A0N(\regArr[8][7] ), .A1N(n29), .Y(
        n120) );
  OAI2BB2X1M U167 ( .B0(n219), .B1(n31), .A0N(\regArr[9][0] ), .A1N(n31), .Y(
        n121) );
  OAI2BB2X1M U168 ( .B0(n220), .B1(n31), .A0N(\regArr[9][1] ), .A1N(n31), .Y(
        n122) );
  OAI2BB2X1M U169 ( .B0(n221), .B1(n31), .A0N(\regArr[9][2] ), .A1N(n31), .Y(
        n123) );
  OAI2BB2X1M U170 ( .B0(n222), .B1(n31), .A0N(\regArr[9][3] ), .A1N(n31), .Y(
        n124) );
  OAI2BB2X1M U171 ( .B0(n223), .B1(n31), .A0N(\regArr[9][4] ), .A1N(n31), .Y(
        n125) );
  OAI2BB2X1M U172 ( .B0(n224), .B1(n31), .A0N(\regArr[9][5] ), .A1N(n31), .Y(
        n126) );
  OAI2BB2X1M U173 ( .B0(n225), .B1(n31), .A0N(\regArr[9][6] ), .A1N(n31), .Y(
        n127) );
  OAI2BB2X1M U174 ( .B0(n226), .B1(n31), .A0N(\regArr[9][7] ), .A1N(n31), .Y(
        n128) );
  OAI2BB2X1M U175 ( .B0(n219), .B1(n33), .A0N(\regArr[10][0] ), .A1N(n33), .Y(
        n129) );
  OAI2BB2X1M U176 ( .B0(n220), .B1(n33), .A0N(\regArr[10][1] ), .A1N(n33), .Y(
        n130) );
  OAI2BB2X1M U177 ( .B0(n221), .B1(n33), .A0N(\regArr[10][2] ), .A1N(n33), .Y(
        n131) );
  OAI2BB2X1M U178 ( .B0(n222), .B1(n33), .A0N(\regArr[10][3] ), .A1N(n33), .Y(
        n132) );
  OAI2BB2X1M U179 ( .B0(n223), .B1(n33), .A0N(\regArr[10][4] ), .A1N(n33), .Y(
        n133) );
  OAI2BB2X1M U180 ( .B0(n224), .B1(n33), .A0N(\regArr[10][5] ), .A1N(n33), .Y(
        n134) );
  OAI2BB2X1M U181 ( .B0(n225), .B1(n33), .A0N(\regArr[10][6] ), .A1N(n33), .Y(
        n135) );
  OAI2BB2X1M U182 ( .B0(n226), .B1(n33), .A0N(\regArr[10][7] ), .A1N(n33), .Y(
        n136) );
  OAI2BB2X1M U183 ( .B0(n219), .B1(n34), .A0N(\regArr[11][0] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U184 ( .B0(n220), .B1(n34), .A0N(\regArr[11][1] ), .A1N(n34), .Y(
        n138) );
  OAI2BB2X1M U185 ( .B0(n221), .B1(n34), .A0N(\regArr[11][2] ), .A1N(n34), .Y(
        n139) );
  OAI2BB2X1M U186 ( .B0(n222), .B1(n34), .A0N(\regArr[11][3] ), .A1N(n34), .Y(
        n140) );
  OAI2BB2X1M U187 ( .B0(n223), .B1(n34), .A0N(\regArr[11][4] ), .A1N(n34), .Y(
        n141) );
  OAI2BB2X1M U188 ( .B0(n224), .B1(n34), .A0N(\regArr[11][5] ), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U189 ( .B0(n225), .B1(n34), .A0N(\regArr[11][6] ), .A1N(n34), .Y(
        n143) );
  OAI2BB2X1M U190 ( .B0(n226), .B1(n34), .A0N(\regArr[11][7] ), .A1N(n34), .Y(
        n144) );
  OAI2BB2X1M U191 ( .B0(n219), .B1(n35), .A0N(\regArr[12][0] ), .A1N(n35), .Y(
        n145) );
  OAI2BB2X1M U192 ( .B0(n220), .B1(n35), .A0N(\regArr[12][1] ), .A1N(n35), .Y(
        n146) );
  OAI2BB2X1M U193 ( .B0(n221), .B1(n35), .A0N(\regArr[12][2] ), .A1N(n35), .Y(
        n147) );
  OAI2BB2X1M U194 ( .B0(n222), .B1(n35), .A0N(\regArr[12][3] ), .A1N(n35), .Y(
        n148) );
  OAI2BB2X1M U195 ( .B0(n223), .B1(n35), .A0N(\regArr[12][4] ), .A1N(n35), .Y(
        n149) );
  OAI2BB2X1M U196 ( .B0(n224), .B1(n35), .A0N(\regArr[12][5] ), .A1N(n35), .Y(
        n150) );
  OAI2BB2X1M U197 ( .B0(n225), .B1(n35), .A0N(\regArr[12][6] ), .A1N(n35), .Y(
        n151) );
  OAI2BB2X1M U198 ( .B0(n226), .B1(n35), .A0N(\regArr[12][7] ), .A1N(n35), .Y(
        n152) );
  OAI2BB2X1M U199 ( .B0(n219), .B1(n36), .A0N(\regArr[13][0] ), .A1N(n36), .Y(
        n153) );
  OAI2BB2X1M U200 ( .B0(n220), .B1(n36), .A0N(\regArr[13][1] ), .A1N(n36), .Y(
        n154) );
  OAI2BB2X1M U201 ( .B0(n221), .B1(n36), .A0N(\regArr[13][2] ), .A1N(n36), .Y(
        n155) );
  OAI2BB2X1M U202 ( .B0(n222), .B1(n36), .A0N(\regArr[13][3] ), .A1N(n36), .Y(
        n156) );
  OAI2BB2X1M U203 ( .B0(n223), .B1(n36), .A0N(\regArr[13][4] ), .A1N(n36), .Y(
        n157) );
  OAI2BB2X1M U204 ( .B0(n224), .B1(n36), .A0N(\regArr[13][5] ), .A1N(n36), .Y(
        n158) );
  OAI2BB2X1M U205 ( .B0(n225), .B1(n36), .A0N(\regArr[13][6] ), .A1N(n36), .Y(
        n159) );
  OAI2BB2X1M U206 ( .B0(n226), .B1(n36), .A0N(\regArr[13][7] ), .A1N(n36), .Y(
        n160) );
  OAI2BB2X1M U207 ( .B0(n219), .B1(n37), .A0N(\regArr[14][0] ), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U208 ( .B0(n220), .B1(n37), .A0N(\regArr[14][1] ), .A1N(n37), .Y(
        n162) );
  OAI2BB2X1M U209 ( .B0(n221), .B1(n37), .A0N(\regArr[14][2] ), .A1N(n37), .Y(
        n163) );
  OAI2BB2X1M U210 ( .B0(n222), .B1(n37), .A0N(\regArr[14][3] ), .A1N(n37), .Y(
        n164) );
  OAI2BB2X1M U211 ( .B0(n223), .B1(n37), .A0N(\regArr[14][4] ), .A1N(n37), .Y(
        n165) );
  OAI2BB2X1M U212 ( .B0(n224), .B1(n37), .A0N(\regArr[14][5] ), .A1N(n37), .Y(
        n166) );
  OAI2BB2X1M U213 ( .B0(n225), .B1(n37), .A0N(\regArr[14][6] ), .A1N(n37), .Y(
        n167) );
  OAI2BB2X1M U214 ( .B0(n226), .B1(n37), .A0N(\regArr[14][7] ), .A1N(n37), .Y(
        n168) );
  OAI2BB2X1M U215 ( .B0(n219), .B1(n39), .A0N(\regArr[15][0] ), .A1N(n39), .Y(
        n169) );
  OAI2BB2X1M U216 ( .B0(n220), .B1(n39), .A0N(\regArr[15][1] ), .A1N(n39), .Y(
        n170) );
  OAI2BB2X1M U217 ( .B0(n221), .B1(n39), .A0N(\regArr[15][2] ), .A1N(n39), .Y(
        n171) );
  OAI2BB2X1M U218 ( .B0(n222), .B1(n39), .A0N(\regArr[15][3] ), .A1N(n39), .Y(
        n172) );
  OAI2BB2X1M U219 ( .B0(n223), .B1(n39), .A0N(\regArr[15][4] ), .A1N(n39), .Y(
        n173) );
  OAI2BB2X1M U220 ( .B0(n224), .B1(n39), .A0N(\regArr[15][5] ), .A1N(n39), .Y(
        n174) );
  OAI2BB2X1M U221 ( .B0(n225), .B1(n39), .A0N(\regArr[15][6] ), .A1N(n39), .Y(
        n175) );
  OAI2BB2X1M U222 ( .B0(n226), .B1(n39), .A0N(\regArr[15][7] ), .A1N(n39), .Y(
        n176) );
  OAI2BB2X1M U223 ( .B0(n220), .B1(n19), .A0N(REG2[1]), .A1N(n19), .Y(n66) );
  OAI2BB2X1M U224 ( .B0(n221), .B1(n19), .A0N(REG2[2]), .A1N(n19), .Y(n67) );
  OAI2BB2X1M U225 ( .B0(n222), .B1(n19), .A0N(REG2[3]), .A1N(n19), .Y(n68) );
  OAI2BB2X1M U226 ( .B0(n223), .B1(n19), .A0N(REG2[4]), .A1N(n19), .Y(n69) );
  OAI2BB2X1M U227 ( .B0(n225), .B1(n19), .A0N(REG2[6]), .A1N(n19), .Y(n71) );
  OAI2BB2X1M U228 ( .B0(n226), .B1(n19), .A0N(REG2[7]), .A1N(n19), .Y(n72) );
  OAI2BB2X1M U229 ( .B0(n219), .B1(n21), .A0N(REG3[0]), .A1N(n21), .Y(n73) );
  OAI2BB2X1M U230 ( .B0(n220), .B1(n21), .A0N(REG3[1]), .A1N(n21), .Y(n74) );
  OAI2BB2X1M U231 ( .B0(n221), .B1(n21), .A0N(REG3[2]), .A1N(n21), .Y(n75) );
  OAI2BB2X1M U232 ( .B0(n223), .B1(n21), .A0N(REG3[4]), .A1N(n21), .Y(n77) );
  OAI2BB2X1M U233 ( .B0(n224), .B1(n21), .A0N(REG3[5]), .A1N(n21), .Y(n78) );
  OAI2BB2X1M U234 ( .B0(n225), .B1(n21), .A0N(REG3[6]), .A1N(n21), .Y(n79) );
  OAI2BB2X1M U235 ( .B0(n226), .B1(n21), .A0N(REG3[7]), .A1N(n21), .Y(n80) );
  OAI2BB1X2M U236 ( .A0N(RdData_VLD), .A1N(n13), .B0(n12), .Y(n48) );
  INVX2M U237 ( .A(N12), .Y(n203) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  INVX2M U26 ( .A(b[6]), .Y(n12) );
  XNOR2X2M U27 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U28 ( .A(b[3]), .Y(n15) );
  INVX2M U29 ( .A(b[4]), .Y(n14) );
  INVX2M U30 ( .A(b[5]), .Y(n13) );
  INVX2M U31 ( .A(b[1]), .Y(n17) );
  INVX2M U32 ( .A(b[2]), .Y(n16) );
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
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n12, n14, n11, n13, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n8), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n7), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U19 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U20 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U21 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n12) );
  AND2X2M U22 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n13) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U24 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U35 ( .A(A[0]), .Y(n39) );
  INVX2M U36 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U37 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  XNOR2X2M U38 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[3]), .Y(n36) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[7]), .Y(n32) );
  INVX2M U43 ( .A(A[6]), .Y(n33) );
  INVX2M U44 ( .A(A[5]), .Y(n34) );
  INVX2M U45 ( .A(A[4]), .Y(n35) );
  INVX2M U46 ( .A(B[7]), .Y(n24) );
  INVX2M U47 ( .A(B[4]), .Y(n27) );
  INVX2M U48 ( .A(B[5]), .Y(n26) );
  INVX2M U49 ( .A(B[0]), .Y(n31) );
  INVX2M U50 ( .A(B[2]), .Y(n29) );
  INVX2M U51 ( .A(B[3]), .Y(n28) );
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
endmodule


module ALU ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140;
  wire   [15:0] ALU_OUT_Comb;

  ALU_DW_div_uns_0 div_52 ( .a({n12, n11, n10, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}) );
  ALU_DW01_sub_0 sub_46 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_43 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_49 ( .A({n12, n11, n10, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  BUFX2M U3 ( .A(A[6]), .Y(n11) );
  OAI2BB1X2M U4 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U7 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U8 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U9 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U10 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U11 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U12 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U13 ( .A0N(n129), .A1N(n105), .B0(n101), .Y(n47) );
  OAI2BB1X2M U14 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  AND2X2M U15 ( .A(n99), .B(n105), .Y(n42) );
  INVX2M U16 ( .A(n107), .Y(n129) );
  NOR2BX2M U17 ( .AN(n106), .B(n126), .Y(n37) );
  NOR2BX2M U18 ( .AN(n35), .B(n124), .Y(n31) );
  BUFX2M U19 ( .A(n41), .Y(n13) );
  NOR2X2M U20 ( .A(n107), .B(n126), .Y(n41) );
  AND2X2M U21 ( .A(n106), .B(n105), .Y(n50) );
  INVX2M U22 ( .A(n100), .Y(n126) );
  INVX2M U23 ( .A(n91), .Y(n127) );
  NOR3BX2M U24 ( .AN(n105), .B(n128), .C(ALU_FUN[2]), .Y(n49) );
  NOR2X2M U25 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  AND3X2M U26 ( .A(n106), .B(n125), .C(n3), .Y(n46) );
  NAND2X2M U27 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U28 ( .A(ALU_FUN[0]), .Y(n125) );
  NOR2X2M U29 ( .A(n125), .B(n3), .Y(n105) );
  NOR2X2M U30 ( .A(n3), .B(ALU_FUN[0]), .Y(n100) );
  INVX2M U31 ( .A(ALU_FUN[1]), .Y(n128) );
  NAND3X2M U32 ( .A(n106), .B(ALU_FUN[0]), .C(n3), .Y(n101) );
  AND2X2M U33 ( .A(ALU_FUN[2]), .B(n128), .Y(n99) );
  NOR3X2M U34 ( .A(n126), .B(ALU_FUN[2]), .C(n128), .Y(n35) );
  NAND3X2M U35 ( .A(n129), .B(n125), .C(n3), .Y(n36) );
  NAND3X2M U36 ( .A(n3), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  NAND2X2M U37 ( .A(EN), .B(n123), .Y(n32) );
  INVX2M U38 ( .A(EN), .Y(n124) );
  AND4X2M U39 ( .A(N159), .B(n99), .C(n3), .D(n125), .Y(n90) );
  AOI31X2M U40 ( .A0(n93), .A1(n94), .A2(n95), .B0(n124), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U41 ( .A0(N100), .A1(n50), .B0(N91), .B1(n37), .Y(n93) );
  AOI211X2M U42 ( .A0(n13), .A1(n140), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U43 ( .A0(N109), .A1(n35), .B0(n5), .B1(n42), .C0(N125), .C1(n49), 
        .Y(n94) );
  AOI31X2M U44 ( .A0(n81), .A1(n82), .A2(n83), .B0(n124), .Y(ALU_OUT_Comb[1])
         );
  AOI222X1M U45 ( .A0(N92), .A1(n37), .B0(N110), .B1(n35), .C0(N101), .C1(n50), 
        .Y(n81) );
  AOI211X2M U46 ( .A0(n7), .A1(n127), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U47 ( .A0(N126), .A1(n49), .B0(n13), .B1(n139), .C0(n6), .C1(n42), 
        .Y(n82) );
  AOI31X2M U48 ( .A0(n75), .A1(n76), .A2(n77), .B0(n124), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U49 ( .A0(N102), .A1(n50), .B0(N93), .B1(n37), .Y(n75) );
  AOI221XLM U50 ( .A0(n8), .A1(n127), .B0(n13), .B1(n138), .C0(n78), .Y(n77)
         );
  AOI222X1M U51 ( .A0(N111), .A1(n35), .B0(n7), .B1(n42), .C0(N127), .C1(n49), 
        .Y(n76) );
  AOI31X2M U52 ( .A0(n69), .A1(n70), .A2(n71), .B0(n124), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U53 ( .A0(N103), .A1(n50), .B0(N94), .B1(n37), .Y(n69) );
  AOI221XLM U54 ( .A0(n9), .A1(n127), .B0(n13), .B1(n137), .C0(n72), .Y(n71)
         );
  AOI222X1M U55 ( .A0(N112), .A1(n35), .B0(n8), .B1(n42), .C0(N128), .C1(n49), 
        .Y(n70) );
  AOI31X2M U56 ( .A0(n63), .A1(n64), .A2(n65), .B0(n124), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U57 ( .A0(N104), .A1(n50), .B0(N95), .B1(n37), .Y(n63) );
  AOI221XLM U58 ( .A0(n127), .A1(n10), .B0(n13), .B1(n136), .C0(n66), .Y(n65)
         );
  AOI222X1M U59 ( .A0(N113), .A1(n35), .B0(n9), .B1(n42), .C0(N129), .C1(n49), 
        .Y(n64) );
  AOI21X2M U60 ( .A0(n33), .A1(n34), .B0(n124), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U61 ( .A0(N99), .A1(n37), .B0(n123), .Y(n33) );
  AOI2BB2XLM U62 ( .B0(N117), .B1(n35), .A0N(n133), .A1N(n36), .Y(n34) );
  AOI31X2M U63 ( .A0(n57), .A1(n58), .A2(n59), .B0(n124), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U64 ( .A0(N105), .A1(n50), .B0(N96), .B1(n37), .Y(n57) );
  AOI221XLM U65 ( .A0(n127), .A1(n11), .B0(n13), .B1(n135), .C0(n60), .Y(n59)
         );
  AOI222X1M U66 ( .A0(N114), .A1(n35), .B0(n10), .B1(n42), .C0(N130), .C1(n49), 
        .Y(n58) );
  AOI31X2M U67 ( .A0(n38), .A1(n39), .A2(n40), .B0(n124), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U68 ( .A0(N107), .A1(n50), .B0(N98), .B1(n37), .Y(n38) );
  AOI221XLM U69 ( .A0(n13), .A1(n133), .B0(n42), .B1(n12), .C0(n43), .Y(n40)
         );
  AOI22X1M U70 ( .A0(N132), .A1(n49), .B0(N116), .B1(n35), .Y(n39) );
  OAI222X1M U71 ( .A0(n55), .A1(n122), .B0(n4), .B1(n56), .C0(n36), .C1(n135), 
        .Y(n54) );
  AOI221XLM U72 ( .A0(n11), .A1(n46), .B0(n47), .B1(n134), .C0(n13), .Y(n56)
         );
  AOI221XLM U73 ( .A0(n46), .A1(n134), .B0(n11), .B1(n48), .C0(n42), .Y(n55)
         );
  INVX2M U74 ( .A(n4), .Y(n122) );
  AOI31X2M U75 ( .A0(n51), .A1(n52), .A2(n53), .B0(n124), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U76 ( .A0(N106), .A1(n50), .B0(N97), .B1(n37), .Y(n51) );
  AOI221XLM U77 ( .A0(n127), .A1(n12), .B0(n13), .B1(n134), .C0(n54), .Y(n53)
         );
  AOI222X1M U78 ( .A0(N115), .A1(n35), .B0(n42), .B1(n11), .C0(N131), .C1(n49), 
        .Y(n52) );
  BUFX2M U79 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U80 ( .A(n92), .Y(n123) );
  AOI211X2M U81 ( .A0(N108), .A1(n50), .B0(n13), .C0(n47), .Y(n92) );
  INVX2M U82 ( .A(n6), .Y(n139) );
  INVX2M U83 ( .A(n5), .Y(n140) );
  INVX2M U84 ( .A(n11), .Y(n134) );
  INVX2M U85 ( .A(n12), .Y(n133) );
  INVX2M U86 ( .A(n8), .Y(n137) );
  INVX2M U87 ( .A(n7), .Y(n138) );
  INVX2M U88 ( .A(n10), .Y(n135) );
  INVX2M U89 ( .A(n9), .Y(n136) );
  BUFX2M U90 ( .A(B[6]), .Y(n4) );
  BUFX2M U91 ( .A(A[7]), .Y(n12) );
  BUFX2M U92 ( .A(A[5]), .Y(n10) );
  BUFX2M U93 ( .A(A[4]), .Y(n9) );
  BUFX2M U94 ( .A(A[3]), .Y(n8) );
  BUFX2M U95 ( .A(A[2]), .Y(n7) );
  BUFX2M U96 ( .A(A[0]), .Y(n5) );
  BUFX2M U97 ( .A(A[1]), .Y(n6) );
  INVX2M U98 ( .A(n25), .Y(n120) );
  OAI222X1M U99 ( .A0(n79), .A1(n119), .B0(B[2]), .B1(n80), .C0(n36), .C1(n139), .Y(n78) );
  AOI221XLM U100 ( .A0(n7), .A1(n46), .B0(n47), .B1(n138), .C0(n13), .Y(n80)
         );
  AOI221XLM U101 ( .A0(n46), .A1(n138), .B0(n7), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U102 ( .A0(n73), .A1(n121), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n138), .Y(n72) );
  AOI221XLM U103 ( .A0(n8), .A1(n46), .B0(n47), .B1(n137), .C0(n13), .Y(n74)
         );
  AOI221XLM U104 ( .A0(n46), .A1(n137), .B0(n8), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U105 ( .A0(n67), .A1(n132), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n137), .Y(n66) );
  INVX2M U106 ( .A(B[4]), .Y(n132) );
  AOI221XLM U107 ( .A0(n9), .A1(n46), .B0(n47), .B1(n136), .C0(n13), .Y(n68)
         );
  AOI221XLM U108 ( .A0(n46), .A1(n136), .B0(n9), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U109 ( .A0(n61), .A1(n131), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n136), .Y(n60) );
  INVX2M U110 ( .A(B[5]), .Y(n131) );
  AOI221XLM U111 ( .A0(n10), .A1(n46), .B0(n47), .B1(n135), .C0(n13), .Y(n62)
         );
  AOI221XLM U112 ( .A0(n46), .A1(n135), .B0(n10), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U113 ( .A0(n44), .A1(n130), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n134), .Y(n43) );
  INVX2M U114 ( .A(B[7]), .Y(n130) );
  AOI221XLM U115 ( .A0(n46), .A1(n12), .B0(n47), .B1(n133), .C0(n13), .Y(n45)
         );
  AOI221XLM U116 ( .A0(n46), .A1(n133), .B0(n12), .B1(n48), .C0(n42), .Y(n44)
         );
  INVX2M U117 ( .A(n14), .Y(n118) );
  OAI2B2X1M U118 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n139), .Y(n97) );
  AOI221XLM U119 ( .A0(n46), .A1(n140), .B0(n5), .B1(n48), .C0(n42), .Y(n98)
         );
  OAI2B2X1M U120 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n140), .Y(n85) );
  AOI221XLM U121 ( .A0(n46), .A1(n139), .B0(n6), .B1(n48), .C0(n42), .Y(n86)
         );
  OAI21X2M U122 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI221XLM U123 ( .A0(n5), .A1(n46), .B0(n47), .B1(n140), .C0(n13), .Y(n102)
         );
  AOI31X2M U124 ( .A0(N157), .A1(n3), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U125 ( .A(n128), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U126 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI221XLM U127 ( .A0(n6), .A1(n46), .B0(n47), .B1(n139), .C0(n13), .Y(n87)
         );
  AOI31X2M U128 ( .A0(N158), .A1(n3), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U129 ( .A(n125), .B(ALU_FUN[2]), .C(n128), .Y(n89) );
  INVX2M U130 ( .A(B[0]), .Y(n117) );
  INVX2M U131 ( .A(B[2]), .Y(n119) );
  INVX2M U132 ( .A(B[3]), .Y(n121) );
  NOR2X1M U133 ( .A(n133), .B(B[7]), .Y(n113) );
  NAND2BX1M U134 ( .AN(B[4]), .B(n9), .Y(n29) );
  NAND2BX1M U135 ( .AN(n9), .B(B[4]), .Y(n18) );
  CLKNAND2X2M U136 ( .A(n29), .B(n18), .Y(n108) );
  NOR2X1M U137 ( .A(n121), .B(n8), .Y(n26) );
  NOR2X1M U138 ( .A(n119), .B(n7), .Y(n17) );
  NOR2X1M U139 ( .A(n117), .B(n5), .Y(n14) );
  CLKNAND2X2M U140 ( .A(n7), .B(n119), .Y(n28) );
  NAND2BX1M U141 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U142 ( .A0(n14), .A1(n139), .B0(B[1]), .Y(n15) );
  AOI211X1M U143 ( .A0(n6), .A1(n118), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U144 ( .A(n8), .B(n121), .Y(n27) );
  OAI31X1M U145 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U146 ( .AN(n10), .B(B[5]), .Y(n111) );
  OAI211X1M U147 ( .A0(n108), .A1(n19), .B0(n18), .C0(n111), .Y(n20) );
  NAND2BX1M U148 ( .AN(B[5]), .B(n10), .Y(n30) );
  XNOR2X1M U149 ( .A(n11), .B(n4), .Y(n110) );
  AOI32X1M U150 ( .A0(n20), .A1(n30), .A2(n110), .B0(n4), .B1(n134), .Y(n21)
         );
  CLKNAND2X2M U151 ( .A(B[7]), .B(n133), .Y(n114) );
  OAI21X1M U152 ( .A0(n113), .A1(n21), .B0(n114), .Y(N159) );
  CLKNAND2X2M U153 ( .A(n5), .B(n117), .Y(n24) );
  OA21X1M U154 ( .A0(n24), .A1(n139), .B0(B[1]), .Y(n22) );
  AOI211X1M U155 ( .A0(n24), .A1(n139), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U156 ( .A0(n120), .A1(n28), .A2(n27), .B0(n26), .Y(n109) );
  OAI2B11X1M U157 ( .A1N(n109), .A0(n108), .B0(n30), .C0(n29), .Y(n112) );
  AOI32X1M U158 ( .A0(n112), .A1(n111), .A2(n110), .B0(n11), .B1(n122), .Y(
        n115) );
  AOI2B1X1M U159 ( .A1N(n115), .A0(n114), .B0(n113), .Y(n116) );
  CLKINVX1M U160 ( .A(n116), .Y(N158) );
  NOR2X1M U161 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module Tx_FSM ( Data_Valid, CLK, parity_enable, ser_done, RST, ser_en, busy, 
        mux_sel );
  output [1:0] mux_sel;
  input Data_Valid, CLK, parity_enable, ser_done, RST;
  output ser_en, busy;
  wire   N57, n6, n7, n8, n9, n10, n11, n1, n2, n3, n4, n5;
  wire   [2:0] PS;
  wire   [2:0] NS;
  assign ser_en = N57;

  DFFRQX2M busy_reg ( .D(n11), .CK(CLK), .RN(RST), .Q(busy) );
  DFFRQX2M \PS_reg[1]  ( .D(NS[1]), .CK(CLK), .RN(RST), .Q(PS[1]) );
  DFFRQX2M \PS_reg[0]  ( .D(NS[0]), .CK(CLK), .RN(RST), .Q(PS[0]) );
  DFFRX1M \PS_reg[2]  ( .D(NS[2]), .CK(CLK), .RN(RST), .Q(PS[2]), .QN(n4) );
  INVX2M U3 ( .A(n8), .Y(mux_sel[1]) );
  INVX2M U4 ( .A(ser_done), .Y(n2) );
  NAND2X2M U5 ( .A(PS[1]), .B(n4), .Y(n8) );
  AND2X2M U6 ( .A(PS[0]), .B(n4), .Y(mux_sel[0]) );
  OAI33X2M U7 ( .A0(n1), .A1(PS[1]), .A2(PS[0]), .B0(n5), .B1(n2), .B2(n3), 
        .Y(NS[0]) );
  INVX2M U8 ( .A(N57), .Y(n3) );
  NOR2X2M U9 ( .A(n8), .B(PS[0]), .Y(N57) );
  OAI31X1M U10 ( .A0(n1), .A1(PS[2]), .A2(n6), .B0(n7), .Y(n11) );
  OAI31X1M U11 ( .A0(n4), .A1(Data_Valid), .A2(n6), .B0(busy), .Y(n7) );
  OR2X2M U12 ( .A(PS[1]), .B(PS[0]), .Y(n6) );
  OAI2B1X2M U13 ( .A1N(mux_sel[0]), .A0(PS[1]), .B0(n10), .Y(NS[1]) );
  OAI21X2M U14 ( .A0(parity_enable), .A1(n2), .B0(N57), .Y(n10) );
  NOR2X2M U15 ( .A(n9), .B(n8), .Y(NS[2]) );
  AOI21X2M U16 ( .A0(ser_done), .A1(n5), .B0(PS[0]), .Y(n9) );
  INVX2M U17 ( .A(Data_Valid), .Y(n1) );
  INVX2M U18 ( .A(parity_enable), .Y(n5) );
endmodule


module mux ( mux_sel, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit;
  output TX_OUT;
  wire   n1, n2, n3, n4;

  AND3X2M U3 ( .A(mux_sel[1]), .B(mux_sel[0]), .C(par_bit), .Y(n2) );
  INVX8M U4 ( .A(n3), .Y(TX_OUT) );
  NOR2X1M U5 ( .A(mux_sel[0]), .B(n1), .Y(n4) );
  NOR2XLM U6 ( .A(n4), .B(n2), .Y(n3) );
  NOR2BX2M U7 ( .AN(mux_sel[1]), .B(ser_data), .Y(n1) );
endmodule


module Serializer ( CLK, P_DATA, ser_en, Data_Valid, busy, RST, ser_done, 
        ser_data );
  input [7:0] P_DATA;
  input CLK, ser_en, Data_Valid, busy, RST;
  output ser_done, ser_data;
  wire   N31, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n1, n2, n3, n4;
  wire   [7:1] INT_REG;
  wire   [2:0] Counter;
  assign ser_done = N31;

  DFFRQX2M \INT_REG_reg[6]  ( .D(n23), .CK(CLK), .RN(RST), .Q(INT_REG[6]) );
  DFFRQX2M \INT_REG_reg[5]  ( .D(n24), .CK(CLK), .RN(RST), .Q(INT_REG[5]) );
  DFFRQX2M \INT_REG_reg[4]  ( .D(n25), .CK(CLK), .RN(RST), .Q(INT_REG[4]) );
  DFFRQX2M \INT_REG_reg[3]  ( .D(n26), .CK(CLK), .RN(RST), .Q(INT_REG[3]) );
  DFFRQX2M \INT_REG_reg[2]  ( .D(n27), .CK(CLK), .RN(RST), .Q(INT_REG[2]) );
  DFFRQX2M \INT_REG_reg[1]  ( .D(n28), .CK(CLK), .RN(RST), .Q(INT_REG[1]) );
  DFFRQX2M \INT_REG_reg[7]  ( .D(n22), .CK(CLK), .RN(RST), .Q(INT_REG[7]) );
  DFFRQX2M \Counter_reg[2]  ( .D(n19), .CK(CLK), .RN(RST), .Q(Counter[2]) );
  DFFRQX2M \Counter_reg[1]  ( .D(n18), .CK(CLK), .RN(RST), .Q(Counter[1]) );
  DFFRQX2M \Counter_reg[0]  ( .D(n20), .CK(CLK), .RN(RST), .Q(Counter[0]) );
  DFFRQX2M \INT_REG_reg[0]  ( .D(n21), .CK(CLK), .RN(RST), .Q(ser_data) );
  NOR2X2M U3 ( .A(n4), .B(n11), .Y(n10) );
  NOR2X2M U4 ( .A(n7), .B(n3), .Y(N31) );
  NOR2X2M U5 ( .A(n11), .B(n10), .Y(n8) );
  INVX2M U6 ( .A(ser_en), .Y(n4) );
  INVX2M U7 ( .A(n7), .Y(n2) );
  NOR2BX2M U8 ( .AN(Data_Valid), .B(busy), .Y(n11) );
  OAI32X1M U9 ( .A0(n4), .A1(Counter[2]), .A2(n7), .B0(n2), .B1(n3), .Y(n19)
         );
  OAI31X1M U10 ( .A0(n1), .A1(Counter[1]), .A2(n5), .B0(n6), .Y(n18) );
  OAI21X2M U11 ( .A0(n5), .A1(n1), .B0(Counter[1]), .Y(n6) );
  INVX2M U12 ( .A(Counter[0]), .Y(n1) );
  AOI21X2M U13 ( .A0(n2), .A1(Counter[2]), .B0(ser_en), .Y(n5) );
  XNOR2X2M U14 ( .A(n5), .B(Counter[0]), .Y(n20) );
  NAND2X2M U15 ( .A(Counter[1]), .B(Counter[0]), .Y(n7) );
  OAI2BB1X2M U16 ( .A0N(ser_data), .A1N(n8), .B0(n9), .Y(n21) );
  AOI22X1M U17 ( .A0(INT_REG[1]), .A1(n10), .B0(P_DATA[0]), .B1(n11), .Y(n9)
         );
  OAI2BB1X2M U18 ( .A0N(INT_REG[1]), .A1N(n8), .B0(n17), .Y(n28) );
  AOI22X1M U19 ( .A0(INT_REG[2]), .A1(n10), .B0(P_DATA[1]), .B1(n11), .Y(n17)
         );
  OAI2BB1X2M U20 ( .A0N(n8), .A1N(INT_REG[2]), .B0(n16), .Y(n27) );
  AOI22X1M U21 ( .A0(INT_REG[3]), .A1(n10), .B0(P_DATA[2]), .B1(n11), .Y(n16)
         );
  OAI2BB1X2M U22 ( .A0N(n8), .A1N(INT_REG[3]), .B0(n15), .Y(n26) );
  AOI22X1M U23 ( .A0(INT_REG[4]), .A1(n10), .B0(P_DATA[3]), .B1(n11), .Y(n15)
         );
  OAI2BB1X2M U24 ( .A0N(n8), .A1N(INT_REG[4]), .B0(n14), .Y(n25) );
  AOI22X1M U25 ( .A0(INT_REG[5]), .A1(n10), .B0(P_DATA[4]), .B1(n11), .Y(n14)
         );
  OAI2BB1X2M U26 ( .A0N(n8), .A1N(INT_REG[5]), .B0(n13), .Y(n24) );
  AOI22X1M U27 ( .A0(INT_REG[6]), .A1(n10), .B0(P_DATA[5]), .B1(n11), .Y(n13)
         );
  OAI2BB1X2M U28 ( .A0N(n8), .A1N(INT_REG[6]), .B0(n12), .Y(n23) );
  AOI22X1M U29 ( .A0(INT_REG[7]), .A1(n10), .B0(P_DATA[6]), .B1(n11), .Y(n12)
         );
  INVX2M U30 ( .A(Counter[2]), .Y(n3) );
  AO22X1M U31 ( .A0(n8), .A1(INT_REG[7]), .B0(P_DATA[7]), .B1(n11), .Y(n22) );
endmodule


module parity_calc ( P_DATA, parity_type, Data_Valid, CLK, par_bit );
  input [7:0] P_DATA;
  input parity_type, Data_Valid, CLK;
  output par_bit;
  wire   n2, n3, n4, n5, n6, n7, n1;

  DFFQX2M par_bit_reg ( .D(n7), .CK(CLK), .Q(par_bit) );
  XNOR2X2M U3 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XOR3XLM U4 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U5 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  OAI2BB2X1M U6 ( .B0(n2), .B1(n1), .A0N(par_bit), .A1N(n1), .Y(n7) );
  INVX2M U7 ( .A(Data_Valid), .Y(n1) );
  XOR3XLM U8 ( .A(n3), .B(parity_type), .C(n4), .Y(n2) );
  XOR3XLM U9 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module UART_TX ( Data_Valid, CLK, parity_enable, P_DATA, RST, parity_type, 
        busy, TX_OUT );
  input [7:0] P_DATA;
  input Data_Valid, CLK, parity_enable, RST, parity_type;
  output busy, TX_OUT;
  wire   ser_done_int, ser_en_int, ser_data_int, par_bit_int;
  wire   [1:0] mux_sel_int;

  Tx_FSM FSM_Module ( .Data_Valid(Data_Valid), .CLK(CLK), .parity_enable(
        parity_enable), .ser_done(ser_done_int), .RST(RST), .ser_en(ser_en_int), .busy(busy), .mux_sel(mux_sel_int) );
  mux MUX_Module ( .mux_sel(mux_sel_int), .ser_data(ser_data_int), .par_bit(
        par_bit_int), .TX_OUT(TX_OUT) );
  Serializer serializer_Module ( .CLK(CLK), .P_DATA(P_DATA), .ser_en(
        ser_en_int), .Data_Valid(Data_Valid), .busy(busy), .RST(RST), 
        .ser_done(ser_done_int), .ser_data(ser_data_int) );
  parity_calc Parity_Calc_Module ( .P_DATA(P_DATA), .parity_type(parity_type), 
        .Data_Valid(Data_Valid), .CLK(CLK), .par_bit(par_bit_int) );
endmodule


module FSM ( edge_cnt, bit_cnt, RX_in, par_en, par_err, strt_err, stp_err, 
        prescale, clk, rst, data_samp_en, deser_en, data_valid, stp_chk_en, 
        strt_chk_en, par_chk_en, counter_en );
  input [4:0] edge_cnt;
  input [3:0] bit_cnt;
  input [4:0] prescale;
  input RX_in, par_en, par_err, strt_err, stp_err, clk, rst;
  output data_samp_en, deser_en, data_valid, stp_chk_en, strt_chk_en,
         par_chk_en, counter_en;
  wire   N46, N47, N48, N49, N50, N51, N52, N82, N83, N84, N85, N86, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         \r91/carry[3] , n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n44, n45;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign N82 = prescale[1];

  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  NOR3BX2M U3 ( .AN(stp_chk_en), .B(stp_err), .C(par_err), .Y(data_valid) );
  NOR3X2M U4 ( .A(n34), .B(n1), .C(n44), .Y(stp_chk_en) );
  NOR2X2M U5 ( .A(n1), .B(n31), .Y(par_chk_en) );
  INVX2M U6 ( .A(N52), .Y(n24) );
  NAND2X2M U7 ( .A(n29), .B(n44), .Y(n30) );
  INVX2M U8 ( .A(n34), .Y(n27) );
  INVX2M U9 ( .A(N84), .Y(n22) );
  INVX2M U10 ( .A(N85), .Y(n23) );
  AOI2B1X1M U11 ( .A1N(N86), .A0(edge_cnt[4]), .B0(n18), .Y(n1) );
  INVX2M U12 ( .A(edge_cnt[4]), .Y(n19) );
  INVX2M U13 ( .A(prescale[2]), .Y(N83) );
  OAI221X1M U14 ( .A0(n40), .A1(n30), .B0(n32), .B1(n31), .C0(n41), .Y(
        next_state[0]) );
  NAND4X2M U15 ( .A(N52), .B(current_state[2]), .C(n27), .D(n45), .Y(n41) );
  AOI2BB2XLM U16 ( .B0(n45), .B1(n28), .A0N(n42), .A1N(n28), .Y(n40) );
  INVX2M U17 ( .A(RX_in), .Y(n45) );
  INVX2M U18 ( .A(edge_cnt[2]), .Y(n21) );
  INVX2M U19 ( .A(edge_cnt[3]), .Y(n20) );
  NAND4BX1M U20 ( .AN(strt_err), .B(n26), .C(bit_cnt[0]), .D(n35), .Y(n37) );
  NOR3X2M U21 ( .A(n28), .B(n30), .C(n1), .Y(strt_chk_en) );
  NAND3X2M U22 ( .A(current_state[0]), .B(n44), .C(current_state[1]), .Y(n31)
         );
  NAND2X2M U23 ( .A(current_state[1]), .B(n28), .Y(n34) );
  INVX2M U24 ( .A(current_state[2]), .Y(n44) );
  NOR2X2M U25 ( .A(par_en), .B(n37), .Y(n42) );
  INVX2M U26 ( .A(current_state[0]), .Y(n28) );
  NOR4X1M U27 ( .A(current_state[2]), .B(n43), .C(n29), .D(n24), .Y(deser_en)
         );
  AOI211X2M U28 ( .A0(n35), .A1(n25), .B0(n26), .C0(n28), .Y(n43) );
  OAI2B2X1M U29 ( .A1N(n32), .A0(n31), .B0(n33), .B1(n34), .Y(next_state[2])
         );
  AOI32X1M U30 ( .A0(n35), .A1(n44), .A2(n36), .B0(current_state[2]), .B1(n24), 
        .Y(n33) );
  NOR2X2M U31 ( .A(n25), .B(n26), .Y(n36) );
  OAI211X2M U32 ( .A0(n37), .A1(n38), .B0(n31), .C0(n39), .Y(next_state[1]) );
  NAND2BX2M U33 ( .AN(n30), .B(current_state[0]), .Y(n38) );
  OAI21X2M U34 ( .A0(n44), .A1(n24), .B0(n27), .Y(n39) );
  INVX2M U35 ( .A(bit_cnt[3]), .Y(n26) );
  NOR4BX1M U36 ( .AN(bit_cnt[1]), .B(n26), .C(bit_cnt[0]), .D(bit_cnt[2]), .Y(
        n32) );
  NOR2X2M U37 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .Y(n35) );
  INVX2M U38 ( .A(current_state[1]), .Y(n29) );
  INVX2M U39 ( .A(bit_cnt[0]), .Y(n25) );
  OR2X2M U40 ( .A(N82), .B(prescale[0]), .Y(n3) );
  BUFX2M U41 ( .A(counter_en), .Y(data_samp_en) );
  OAI21X2M U42 ( .A0(current_state[2]), .A1(n28), .B0(n34), .Y(counter_en) );
  AND2X1M U43 ( .A(\r91/carry[3] ), .B(prescale[4]), .Y(N86) );
  CLKXOR2X2M U44 ( .A(prescale[4]), .B(\r91/carry[3] ), .Y(N85) );
  AND2X1M U45 ( .A(prescale[2]), .B(prescale[3]), .Y(\r91/carry[3] ) );
  CLKXOR2X2M U46 ( .A(prescale[3]), .B(prescale[2]), .Y(N84) );
  CLKINVX1M U47 ( .A(prescale[0]), .Y(N46) );
  OAI2BB1X1M U48 ( .A0N(prescale[0]), .A1N(N82), .B0(n3), .Y(N47) );
  OR2X1M U49 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U50 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N48) );
  XNOR2X1M U51 ( .A(prescale[3]), .B(n4), .Y(N49) );
  NOR3X1M U52 ( .A(prescale[3]), .B(prescale[4]), .C(n4), .Y(N51) );
  OAI21X1M U53 ( .A0(prescale[3]), .A1(n4), .B0(prescale[4]), .Y(n5) );
  NAND2BX1M U54 ( .AN(N51), .B(n5), .Y(N50) );
  NOR2BX1M U55 ( .AN(N46), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U56 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N47), .B1(n6), .Y(n9) );
  NOR2BX1M U57 ( .AN(edge_cnt[0]), .B(N46), .Y(n7) );
  OAI2B2X1M U58 ( .A1N(N47), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n8) );
  NAND3BX1M U59 ( .AN(N51), .B(n9), .C(n8), .Y(n13) );
  CLKXOR2X2M U60 ( .A(N50), .B(edge_cnt[4]), .Y(n12) );
  CLKXOR2X2M U61 ( .A(N48), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U62 ( .A(N49), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U63 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N52) );
  NAND2BX1M U64 ( .AN(N82), .B(edge_cnt[0]), .Y(n15) );
  AOI2BB1X1M U65 ( .A0N(n15), .A1N(N83), .B0(edge_cnt[1]), .Y(n14) );
  AOI221XLM U66 ( .A0(N84), .A1(n21), .B0(N83), .B1(n15), .C0(n14), .Y(n16) );
  AOI221XLM U67 ( .A0(edge_cnt[3]), .A1(n23), .B0(edge_cnt[2]), .B1(n22), .C0(
        n16), .Y(n17) );
  AOI221XLM U68 ( .A0(N86), .A1(n19), .B0(N85), .B1(n20), .C0(n17), .Y(n18) );
endmodule


module data_sampling ( data_in, prescale, edge_cnt, en_sampler, clk, rst, 
        sampled_bit );
  input [4:0] prescale;
  input [4:0] edge_cnt;
  input data_in, en_sampler, clk, rst;
  output sampled_bit;
  wire   N7, N8, N9, N10, N13, N14, N15, N16, N17, n17, n18, n19,
         \add_22/carry[3] , \add_22/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33;
  wire   [2:0] register;

  DFFRQX2M \register_reg[1]  ( .D(n18), .CK(clk), .RN(rst), .Q(register[1]) );
  DFFRQX2M \register_reg[0]  ( .D(n17), .CK(clk), .RN(rst), .Q(register[0]) );
  DFFRQX2M \register_reg[2]  ( .D(n19), .CK(clk), .RN(rst), .Q(register[2]) );
  OR4X1M U3 ( .A(n8), .B(n7), .C(N10), .D(edge_cnt[4]), .Y(n1) );
  OR2X2M U4 ( .A(prescale[2]), .B(prescale[1]), .Y(n2) );
  ADDHX1M U5 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_22/carry[2] ), .S(
        N14) );
  ADDHX1M U6 ( .A(prescale[3]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), 
        .S(N15) );
  ADDHX1M U7 ( .A(prescale[4]), .B(\add_22/carry[3] ), .CO(N17), .S(N16) );
  OAI2BB1X1M U8 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n2), .Y(N7) );
  OR2X1M U9 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U10 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N8) );
  NOR2X1M U11 ( .A(n3), .B(prescale[4]), .Y(N10) );
  AO21XLM U12 ( .A0(n3), .A1(prescale[4]), .B0(N10), .Y(N9) );
  CLKINVX1M U13 ( .A(prescale[1]), .Y(N13) );
  XNOR2X1M U14 ( .A(N9), .B(edge_cnt[3]), .Y(n6) );
  XNOR2X1M U15 ( .A(N8), .B(edge_cnt[2]), .Y(n5) );
  XNOR2X1M U16 ( .A(N13), .B(edge_cnt[0]), .Y(n4) );
  NAND3X1M U17 ( .A(n6), .B(n5), .C(n4), .Y(n8) );
  CLKXOR2X2M U18 ( .A(N7), .B(edge_cnt[1]), .Y(n7) );
  OAI21X1M U19 ( .A0(n9), .A1(n10), .B0(n11), .Y(sampled_bit) );
  OAI21X1M U20 ( .A0(register[0]), .A1(register[1]), .B0(register[2]), .Y(n11)
         );
  CLKMX2X2M U21 ( .A(register[2]), .B(data_in), .S0(n12), .Y(n19) );
  NOR4X1M U22 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(n12) );
  CLKXOR2X2M U23 ( .A(edge_cnt[3]), .B(N16), .Y(n16) );
  CLKXOR2X2M U24 ( .A(edge_cnt[2]), .B(N15), .Y(n15) );
  MXI2X1M U25 ( .A(n20), .B(N17), .S0(edge_cnt[4]), .Y(n14) );
  AOI31X1M U26 ( .A0(n21), .A1(n22), .A2(n23), .B0(N17), .Y(n20) );
  CLKINVX1M U27 ( .A(n24), .Y(n23) );
  NAND4X1M U28 ( .A(n25), .B(n26), .C(en_sampler), .D(n1), .Y(n13) );
  XNOR2X1M U29 ( .A(edge_cnt[0]), .B(N13), .Y(n26) );
  XNOR2X1M U30 ( .A(edge_cnt[1]), .B(N14), .Y(n25) );
  MXI2X1M U31 ( .A(n10), .B(n27), .S0(n28), .Y(n18) );
  NOR4BX1M U32 ( .AN(n21), .B(n29), .C(n30), .D(n24), .Y(n28) );
  CLKNAND2X2M U33 ( .A(n31), .B(n32), .Y(n24) );
  XNOR2X1M U34 ( .A(edge_cnt[0]), .B(prescale[1]), .Y(n32) );
  XNOR2X1M U35 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n31) );
  NAND3BX1M U36 ( .AN(edge_cnt[4]), .B(n1), .C(n22), .Y(n29) );
  XNOR2X1M U37 ( .A(edge_cnt[1]), .B(prescale[2]), .Y(n22) );
  XNOR2X1M U38 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n21) );
  CLKINVX1M U39 ( .A(register[1]), .Y(n10) );
  MXI2X1M U40 ( .A(n9), .B(n27), .S0(n33), .Y(n17) );
  NOR2X1M U41 ( .A(n30), .B(n1), .Y(n33) );
  CLKINVX1M U42 ( .A(en_sampler), .Y(n30) );
  CLKINVX1M U43 ( .A(data_in), .Y(n27) );
  CLKINVX1M U44 ( .A(register[0]), .Y(n9) );
endmodule


module edge_bit_counter ( prescale, en_counter, data_valid, clk, rst, bit_cnt, 
        edge_cnt );
  input [4:0] prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input en_counter, data_valid, clk, rst;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, n7, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, \add_24/carry[4] , \add_24/carry[3] , \add_24/carry[2] , n1,
         n2, n3, n4, n5, n6, n8, n9, n10, n11, n30, n31, n32, n33, n34, n35,
         n36;

  DFFRQX2M \bit_cnt_reg[0]  ( .D(n24), .CK(clk), .RN(rst), .Q(bit_cnt[0]) );
  DFFRQX2M \bit_cnt_reg[2]  ( .D(n31), .CK(clk), .RN(rst), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n23), .CK(clk), .RN(rst), .Q(bit_cnt[1]) );
  DFFRX1M \bit_cnt_reg[3]  ( .D(n22), .CK(clk), .RN(rst), .Q(bit_cnt[3]), .QN(
        n7) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(n25), .CK(clk), .RN(rst), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(n29), .CK(clk), .RN(rst), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(n28), .CK(clk), .RN(rst), .Q(edge_cnt[1]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(n26), .CK(clk), .RN(rst), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(n27), .CK(clk), .RN(rst), .Q(edge_cnt[2]) );
  NOR2X2M U3 ( .A(data_valid), .B(n15), .Y(n20) );
  INVX2M U4 ( .A(n15), .Y(n32) );
  AOI21X2M U5 ( .A0(n15), .A1(N18), .B0(data_valid), .Y(n19) );
  NOR3X2M U6 ( .A(N18), .B(data_valid), .C(n20), .Y(n21) );
  NOR2BX2M U7 ( .AN(en_counter), .B(data_valid), .Y(n15) );
  NOR3X2M U8 ( .A(n32), .B(n19), .C(n34), .Y(n14) );
  AOI21X2M U9 ( .A0(n34), .A1(n15), .B0(n19), .Y(n18) );
  INVX2M U10 ( .A(n17), .Y(n31) );
  AOI32X1M U11 ( .A0(bit_cnt[1]), .A1(n36), .A2(n14), .B0(n16), .B1(bit_cnt[2]), .Y(n17) );
  OAI32X1M U12 ( .A0(n32), .A1(bit_cnt[0]), .A2(n19), .B0(n34), .B1(n33), .Y(
        n24) );
  INVX2M U13 ( .A(n19), .Y(n33) );
  OAI21X2M U14 ( .A0(bit_cnt[1]), .A1(n32), .B0(n18), .Y(n16) );
  OAI2BB2X1M U15 ( .B0(n18), .B1(n35), .A0N(n35), .A1N(n14), .Y(n23) );
  INVX2M U16 ( .A(bit_cnt[1]), .Y(n35) );
  OAI21X2M U17 ( .A0(n12), .A1(n7), .B0(n13), .Y(n22) );
  NAND4X2M U18 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .C(n14), .D(n7), .Y(n13) );
  AOI21X2M U19 ( .A0(n15), .A1(n36), .B0(n16), .Y(n12) );
  AO22X1M U20 ( .A0(edge_cnt[4]), .A1(n20), .B0(N11), .B1(n21), .Y(n25) );
  AO22X1M U21 ( .A0(edge_cnt[3]), .A1(n20), .B0(N10), .B1(n21), .Y(n26) );
  AO22X1M U22 ( .A0(edge_cnt[2]), .A1(n20), .B0(N9), .B1(n21), .Y(n27) );
  AO22X1M U23 ( .A0(edge_cnt[1]), .A1(n20), .B0(N8), .B1(n21), .Y(n28) );
  AO22X1M U24 ( .A0(edge_cnt[0]), .A1(n20), .B0(N7), .B1(n21), .Y(n29) );
  INVX2M U25 ( .A(bit_cnt[0]), .Y(n34) );
  INVX2M U26 ( .A(bit_cnt[2]), .Y(n36) );
  ADDHX1M U27 ( .A(edge_cnt[2]), .B(\add_24/carry[2] ), .CO(\add_24/carry[3] ), 
        .S(N9) );
  ADDHX1M U28 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_24/carry[2] ), .S(
        N8) );
  ADDHX1M U29 ( .A(edge_cnt[3]), .B(\add_24/carry[3] ), .CO(\add_24/carry[4] ), 
        .S(N10) );
  OR2X2M U30 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  CLKINVX1M U31 ( .A(edge_cnt[0]), .Y(N7) );
  CLKXOR2X2M U32 ( .A(\add_24/carry[4] ), .B(edge_cnt[4]), .Y(N11) );
  CLKINVX1M U33 ( .A(prescale[0]), .Y(N12) );
  OAI2BB1X1M U34 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N13) );
  OR2X1M U35 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U36 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N14) );
  XNOR2X1M U37 ( .A(prescale[3]), .B(n2), .Y(N15) );
  NOR3X1M U38 ( .A(prescale[3]), .B(prescale[4]), .C(n2), .Y(N17) );
  OAI21X1M U39 ( .A0(prescale[3]), .A1(n2), .B0(prescale[4]), .Y(n3) );
  NAND2BX1M U40 ( .AN(N17), .B(n3), .Y(N16) );
  NOR2BX1M U41 ( .AN(N12), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U42 ( .A1N(edge_cnt[1]), .A0(n4), .B0(N13), .B1(n4), .Y(n8) );
  NOR2BX1M U43 ( .AN(edge_cnt[0]), .B(N12), .Y(n5) );
  OAI2B2X1M U44 ( .A1N(N13), .A0(n5), .B0(edge_cnt[1]), .B1(n5), .Y(n6) );
  NAND3BX1M U45 ( .AN(N17), .B(n8), .C(n6), .Y(n30) );
  CLKXOR2X2M U46 ( .A(N16), .B(edge_cnt[4]), .Y(n11) );
  CLKXOR2X2M U47 ( .A(N14), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U48 ( .A(N15), .B(edge_cnt[3]), .Y(n9) );
  NOR4X1M U49 ( .A(n30), .B(n11), .C(n10), .D(n9), .Y(N18) );
endmodule


module deserializer ( sampled_bit, data_valid, deser_en, clk, rst, p_data );
  output [7:0] p_data;
  input sampled_bit, data_valid, deser_en, clk, rst;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n19;
  wire   [7:0] register;

  DFFRQX2M \register_reg[7]  ( .D(n18), .CK(clk), .RN(rst), .Q(register[7]) );
  DFFRQX2M \register_reg[6]  ( .D(n17), .CK(clk), .RN(rst), .Q(register[6]) );
  DFFRQX2M \register_reg[5]  ( .D(n16), .CK(clk), .RN(rst), .Q(register[5]) );
  DFFRQX2M \register_reg[4]  ( .D(n15), .CK(clk), .RN(rst), .Q(register[4]) );
  DFFRQX2M \register_reg[3]  ( .D(n14), .CK(clk), .RN(rst), .Q(register[3]) );
  DFFRQX2M \register_reg[2]  ( .D(n13), .CK(clk), .RN(rst), .Q(register[2]) );
  DFFRQX2M \register_reg[1]  ( .D(n12), .CK(clk), .RN(rst), .Q(register[1]) );
  DFFRQX2M \register_reg[0]  ( .D(n11), .CK(clk), .RN(rst), .Q(register[0]) );
  INVX2M U2 ( .A(data_valid), .Y(n2) );
  OAI22X1M U3 ( .A0(n9), .A1(n19), .B0(n1), .B1(n10), .Y(n11) );
  OAI22X1M U4 ( .A0(n8), .A1(n19), .B0(n1), .B1(n9), .Y(n12) );
  OAI22X1M U5 ( .A0(n7), .A1(n19), .B0(n1), .B1(n8), .Y(n13) );
  OAI22X1M U6 ( .A0(n6), .A1(n19), .B0(n1), .B1(n7), .Y(n14) );
  OAI22X1M U7 ( .A0(n5), .A1(n19), .B0(n1), .B1(n6), .Y(n15) );
  OAI22X1M U8 ( .A0(n4), .A1(n19), .B0(n1), .B1(n5), .Y(n16) );
  OAI22X1M U9 ( .A0(n3), .A1(n19), .B0(n1), .B1(n4), .Y(n17) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n3), .A0N(sampled_bit), .A1N(n1), .Y(n18) );
  INVX2M U11 ( .A(n1), .Y(n19) );
  NOR2X2M U12 ( .A(n2), .B(n10), .Y(p_data[0]) );
  NOR2X2M U13 ( .A(n2), .B(n9), .Y(p_data[1]) );
  NOR2X2M U14 ( .A(n2), .B(n8), .Y(p_data[2]) );
  NOR2X2M U15 ( .A(n2), .B(n7), .Y(p_data[3]) );
  NOR2X2M U16 ( .A(n2), .B(n6), .Y(p_data[4]) );
  NOR2X2M U17 ( .A(n2), .B(n5), .Y(p_data[5]) );
  NOR2X2M U18 ( .A(n2), .B(n4), .Y(p_data[6]) );
  NOR2X2M U19 ( .A(n2), .B(n3), .Y(p_data[7]) );
  BUFX2M U20 ( .A(deser_en), .Y(n1) );
  INVX2M U21 ( .A(register[7]), .Y(n3) );
  INVX2M U22 ( .A(register[1]), .Y(n9) );
  INVX2M U23 ( .A(register[2]), .Y(n8) );
  INVX2M U24 ( .A(register[3]), .Y(n7) );
  INVX2M U25 ( .A(register[4]), .Y(n6) );
  INVX2M U26 ( .A(register[5]), .Y(n5) );
  INVX2M U27 ( .A(register[6]), .Y(n4) );
  INVX2M U28 ( .A(register[0]), .Y(n10) );
endmodule


module parity_check ( sampled_bit, par_typ, clk, rst, par_check_en, par_err );
  input sampled_bit, par_typ, clk, rst, par_check_en;
  output par_err;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [8:0] register;

  DFFRQX2M \register_reg[1]  ( .D(register[0]), .CK(clk), .RN(rst), .Q(
        register[1]) );
  DFFRQX2M \register_reg[6]  ( .D(register[5]), .CK(clk), .RN(rst), .Q(
        register[6]) );
  DFFRQX2M \register_reg[0]  ( .D(sampled_bit), .CK(clk), .RN(rst), .Q(
        register[0]) );
  DFFRQX2M \register_reg[5]  ( .D(register[4]), .CK(clk), .RN(rst), .Q(
        register[5]) );
  DFFRQX2M \register_reg[8]  ( .D(register[7]), .CK(clk), .RN(rst), .Q(
        register[8]) );
  DFFRQX2M \register_reg[2]  ( .D(register[1]), .CK(clk), .RN(rst), .Q(
        register[2]) );
  DFFRQX2M \register_reg[4]  ( .D(register[3]), .CK(clk), .RN(rst), .Q(
        register[4]) );
  DFFRQX2M \register_reg[3]  ( .D(register[2]), .CK(clk), .RN(rst), .Q(
        register[3]) );
  DFFRQX2M \register_reg[7]  ( .D(register[6]), .CK(clk), .RN(rst), .Q(
        register[7]) );
  NOR2BX2M U3 ( .AN(par_check_en), .B(n1), .Y(par_err) );
  XOR3XLM U4 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XOR3XLM U5 ( .A(register[6]), .B(register[5]), .C(n5), .Y(n3) );
  XOR3XLM U6 ( .A(register[1]), .B(register[0]), .C(n6), .Y(n2) );
  XNOR2X2M U7 ( .A(register[2]), .B(par_typ), .Y(n4) );
  XNOR2X2M U8 ( .A(register[4]), .B(register[3]), .Y(n6) );
  XNOR2X2M U9 ( .A(register[8]), .B(register[7]), .Y(n5) );
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


module UART_Rx ( prescale, RX_IN, PAR_EN, PAR_TYP, CLK, RST, P_DATA, 
        data_valid );
  input [4:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST;
  output data_valid;
  wire   par_error, strt_error, stp_error, data_samp_enable, deser_enable,
         stp_chk_enable, strt_chk_enable, par_chk_enable, counter_enable,
         sampled_bit, n1, n2;
  wire   [4:0] edge_count;
  wire   [3:0] bit_count;

  FSM U0_FSM ( .edge_cnt(edge_count), .bit_cnt(bit_count), .RX_in(RX_IN), 
        .par_en(PAR_EN), .par_err(par_error), .strt_err(strt_error), .stp_err(
        stp_error), .prescale(prescale), .clk(CLK), .rst(n1), .data_samp_en(
        data_samp_enable), .deser_en(deser_enable), .data_valid(data_valid), 
        .stp_chk_en(stp_chk_enable), .strt_chk_en(strt_chk_enable), 
        .par_chk_en(par_chk_enable), .counter_en(counter_enable) );
  data_sampling U0_data_sampling ( .data_in(RX_IN), .prescale(prescale), 
        .edge_cnt(edge_count), .en_sampler(data_samp_enable), .clk(CLK), .rst(
        n1), .sampled_bit(sampled_bit) );
  edge_bit_counter U0_edge_bit_counter ( .prescale(prescale), .en_counter(
        counter_enable), .data_valid(data_valid), .clk(CLK), .rst(n1), 
        .bit_cnt(bit_count), .edge_cnt(edge_count) );
  deserializer U0_deserializer ( .sampled_bit(sampled_bit), .data_valid(
        data_valid), .deser_en(deser_enable), .clk(CLK), .rst(n1), .p_data(
        P_DATA) );
  parity_check U0_parity_check ( .sampled_bit(sampled_bit), .par_typ(PAR_TYP), 
        .clk(CLK), .rst(n1), .par_check_en(par_chk_enable), .par_err(par_error) );
  strt_check U0_strt_check ( .sampled_bit(sampled_bit), .strt_check_en(
        strt_chk_enable), .strt_err(strt_error) );
  stop_check U0_stop_check ( .sampled_bit(sampled_bit), .stop_check_en(
        stp_chk_enable), .stop_err(stp_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART_TOP ( TX_IN_DATA, RX_IN_DATA, TX_IN_valid, CLK_RX, CLK_TX, 
        parity_enable, RST, parity_type, prescale, TX_out_valid, RX_out_valid, 
        TX_out_DATA, RX_out_DATA );
  input [7:0] TX_IN_DATA;
  input [4:0] prescale;
  output [7:0] RX_out_DATA;
  input RX_IN_DATA, TX_IN_valid, CLK_RX, CLK_TX, parity_enable, RST,
         parity_type;
  output TX_out_valid, RX_out_valid, TX_out_DATA;
  wire   n1, n2;

  UART_TX TX_module ( .Data_Valid(TX_IN_valid), .CLK(CLK_TX), .parity_enable(
        parity_enable), .P_DATA(TX_IN_DATA), .RST(n1), .parity_type(
        parity_type), .busy(TX_out_valid), .TX_OUT(TX_out_DATA) );
  UART_Rx RX_module ( .prescale(prescale), .RX_IN(RX_IN_DATA), .PAR_EN(
        parity_enable), .PAR_TYP(parity_type), .CLK(CLK_RX), .RST(n1), 
        .P_DATA(RX_out_DATA), .data_valid(RX_out_valid) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module clock_divider ( I_div_ratio, I_ref_clk, I_clk_en, I_rst_n, o_div_clk );
  input [4:0] I_div_ratio;
  input I_ref_clk, I_clk_en, I_rst_n;
  output o_div_clk;
  wire   N7, N9, N10, N11, N12, N13, N14, N15, N16, N17, N24,
         \add_23_aco/carry[4] , \add_23_aco/carry[3] , \add_23_aco/carry[2] ,
         \mult_add_23_aco/PROD_not[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [4:0] count;

  DFFRQX2M \count_reg[4]  ( .D(N17), .CK(I_ref_clk), .RN(I_rst_n), .Q(count[4]) );
  DFFRQX2M \count_reg[2]  ( .D(N15), .CK(I_ref_clk), .RN(I_rst_n), .Q(count[2]) );
  DFFRQX2M \count_reg[3]  ( .D(N16), .CK(I_ref_clk), .RN(I_rst_n), .Q(count[3]) );
  DFFRQX2M \count_reg[0]  ( .D(N13), .CK(I_ref_clk), .RN(I_rst_n), .Q(count[0]) );
  DFFRQX2M \count_reg[1]  ( .D(N14), .CK(I_ref_clk), .RN(I_rst_n), .Q(count[1]) );
  AND2X2M U3 ( .A(count[1]), .B(N7), .Y(n1) );
  AND2X2M U4 ( .A(count[2]), .B(N7), .Y(n2) );
  AND2X2M U5 ( .A(count[3]), .B(N7), .Y(n3) );
  AND2X2M U6 ( .A(N7), .B(count[4]), .Y(n4) );
  ADDHX1M U7 ( .A(n1), .B(N24), .CO(\add_23_aco/carry[2] ), .S(N9) );
  ADDHX1M U8 ( .A(n2), .B(\add_23_aco/carry[2] ), .CO(\add_23_aco/carry[3] ), 
        .S(N10) );
  ADDHX1M U9 ( .A(n3), .B(\add_23_aco/carry[3] ), .CO(\add_23_aco/carry[4] ), 
        .S(N11) );
  CLKNAND2X2M U10 ( .A(count[0]), .B(N7), .Y(\mult_add_23_aco/PROD_not[0] ) );
  CLKINVX1M U11 ( .A(\mult_add_23_aco/PROD_not[0] ), .Y(N24) );
  CLKXOR2X2M U12 ( .A(\add_23_aco/carry[4] ), .B(n4), .Y(N12) );
  NOR3X1M U13 ( .A(n5), .B(count[4]), .C(n6), .Y(o_div_clk) );
  NOR4X1M U14 ( .A(count[3]), .B(count[2]), .C(count[1]), .D(count[0]), .Y(n6)
         );
  AOI2BB1X1M U15 ( .A0N(count[3]), .A1N(n7), .B0(n8), .Y(n5) );
  AOI221XLM U16 ( .A0(count[3]), .A1(n7), .B0(count[2]), .B1(n9), .C0(n10), 
        .Y(n8) );
  AOI2BB2XLM U17 ( .B0(n11), .B1(n12), .A0N(n9), .A1N(count[2]), .Y(n10) );
  OAI211X1M U18 ( .A0(count[1]), .A1(n13), .B0(n14), .C0(count[0]), .Y(n12) );
  CLKINVX1M U19 ( .A(I_div_ratio[1]), .Y(n14) );
  CLKNAND2X2M U20 ( .A(count[1]), .B(n13), .Y(n11) );
  CLKINVX1M U21 ( .A(I_div_ratio[3]), .Y(n9) );
  CLKINVX1M U22 ( .A(I_div_ratio[4]), .Y(n7) );
  NAND4X1M U23 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(N7) );
  XNOR2X1M U24 ( .A(I_div_ratio[1]), .B(count[1]), .Y(n18) );
  NOR2X1M U25 ( .A(n19), .B(n20), .Y(n17) );
  CLKXOR2X2M U26 ( .A(count[0]), .B(I_div_ratio[0]), .Y(n20) );
  XNOR2X1M U27 ( .A(count[2]), .B(n13), .Y(n19) );
  CLKINVX1M U28 ( .A(I_div_ratio[2]), .Y(n13) );
  XNOR2X1M U29 ( .A(I_div_ratio[3]), .B(count[3]), .Y(n16) );
  XNOR2X1M U30 ( .A(I_div_ratio[4]), .B(count[4]), .Y(n15) );
  AND2X1M U31 ( .A(N12), .B(I_clk_en), .Y(N17) );
  AND2X1M U32 ( .A(N11), .B(I_clk_en), .Y(N16) );
  AND2X1M U33 ( .A(N10), .B(I_clk_en), .Y(N15) );
  AND2X1M U34 ( .A(N9), .B(I_clk_en), .Y(N14) );
  AND2X1M U35 ( .A(\mult_add_23_aco/PROD_not[0] ), .B(I_clk_en), .Y(N13) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module data_synchronizer_0 ( unsync_bus, bus_enable, clk, rst, sync_bus, 
        enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst;
  output enable_pulse;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [2:0] ff;

  DFFRQX2M \ff_reg[0]  ( .D(ff[1]), .CK(clk), .RN(rst), .Q(ff[0]) );
  DFFRQX2M \ff_reg[1]  ( .D(ff[2]), .CK(clk), .RN(rst), .Q(ff[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst), .Q(sync_bus[2]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(clk), .RN(rst), .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst), .Q(sync_bus[1]) );
  DFFRQX2M \ff_reg[2]  ( .D(bus_enable), .CK(clk), .RN(rst), .Q(ff[2]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  AO22X1M U4 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U5 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U7 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U8 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U9 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7)
         );
  AO22X1M U10 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U11 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
  NAND2BX2M U12 ( .AN(ff[0]), .B(ff[1]), .Y(n1) );
endmodule


module data_synchronizer_1 ( unsync_bus, bus_enable, clk, rst, sync_bus, 
        enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst;
  output enable_pulse;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;
  wire   [2:0] ff;

  DFFRQX2M \ff_reg[0]  ( .D(ff[1]), .CK(clk), .RN(rst), .Q(ff[0]) );
  DFFRQX2M \ff_reg[1]  ( .D(ff[2]), .CK(clk), .RN(rst), .Q(ff[1]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n13), .CK(clk), .RN(rst), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n17), .CK(clk), .RN(rst), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n14), .CK(clk), .RN(rst), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n18), .CK(clk), .RN(rst), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n15), .CK(clk), .RN(rst), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n16), .CK(clk), .RN(rst), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n11), .CK(clk), .RN(rst), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n12), .CK(clk), .RN(rst), .Q(sync_bus[6]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(clk), .RN(rst), .Q(enable_pulse) );
  DFFRQX2M \ff_reg[2]  ( .D(bus_enable), .CK(clk), .RN(rst), .Q(ff[2]) );
  INVX2M U3 ( .A(n19), .Y(n10) );
  NAND2BX2M U4 ( .AN(ff[0]), .B(ff[1]), .Y(n19) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n19), .Y(
        n18) );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n19), .Y(
        n17) );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n19), .Y(
        n16) );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n19), .Y(
        n15) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n19), .Y(
        n14) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n19), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n19), .Y(
        n12) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n19), .Y(
        n11) );
endmodule


module RST_synchronizer_0 ( RST, clk, SYNC_RST );
  input RST, clk;
  output SYNC_RST;

  wire   [2:1] ff;

  DFFRQX2M \ff_reg[0]  ( .D(ff[1]), .CK(clk), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \ff_reg[1]  ( .D(ff[2]), .CK(clk), .RN(RST), .Q(ff[1]) );
  DFFRQX2M \ff_reg[2]  ( .D(1'b1), .CK(clk), .RN(RST), .Q(ff[2]) );
endmodule


module RST_synchronizer_1 ( RST, clk, SYNC_RST );
  input RST, clk;
  output SYNC_RST;

  wire   [2:1] ff;

  DFFRQX2M \ff_reg[0]  ( .D(ff[1]), .CK(clk), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \ff_reg[1]  ( .D(ff[2]), .CK(clk), .RN(RST), .Q(ff[1]) );
  DFFRQX2M \ff_reg[2]  ( .D(1'b1), .CK(clk), .RN(RST), .Q(ff[2]) );
endmodule


module bit_synchronizer ( ASYNC, RST, clk, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input RST, clk;
  wire   \register[0][1] , \register[0][0] ;

  DFFRQX2M \SYNC_reg[0]  ( .D(\register[0][0] ), .CK(clk), .RN(RST), .Q(
        SYNC[0]) );
  DFFRQX2M \register_reg[0][1]  ( .D(ASYNC[0]), .CK(clk), .RN(RST), .Q(
        \register[0][1] ) );
  DFFRQX2M \register_reg[0][0]  ( .D(\register[0][1] ), .CK(clk), .RN(RST), 
        .Q(\register[0][0] ) );
endmodule


module system_top ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT;
  wire   sync_RX_OUT_V, SYNC_RST_REF_CLK, EN_top, Gate_EN, WrEn_top, RdEn_top,
         OUT_VALID_top, RdData_VLD_top, TX_busy, CTRL_out_V, ALU_CLK,
         TX_IN_valid_top, CLK_TX_top, SYNC_RST_UART_CLK, RX_out_valid_top, n2,
         n3, n4, n5, n6, n7;
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

  SYS_CTRL U0_CTRL_TOP ( .CLK(REF_CLK), .RST(n6), .RF_RdData(RdData_top), 
        .RF_RdData_VLD(RdData_VLD_top), .RF_WrEn(WrEn_top), .RF_RdEn(RdEn_top), 
        .RF_Address(Address_top), .RF_WrData(WrData_top), .ALU_OUT(ALU_OUT_top), .ALU_OUT_VLD(OUT_VALID_top), .ALU_EN(EN_top), .ALU_FUN(ALU_FUN_top), 
        .CLKG_EN(Gate_EN), .UART_RX_DATA(sync_RX_OUT_DATA), .UART_RX_VLD(
        sync_RX_OUT_V), .UART_TX_Busy(TX_busy), .UART_TX_DATA(CTRL_out_DATA), 
        .UART_TX_VLD(CTRL_out_V) );
  RegFile UO_RegFile ( .CLK(REF_CLK), .RST(n6), .WrEn(WrEn_top), .RdEn(
        RdEn_top), .Address({Address_top[3:2], n5, n4}), .WrData(WrData_top), 
        .RdData(RdData_top), .RdData_VLD(RdData_VLD_top), .REG0(REG0_OP_A), 
        .REG1(REG1_OP_B), .REG2({SYNOPSYS_UNCONNECTED__0, 
        REG2_UART_convig[6:0]}), .REG3({SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, REG3_div[4:0]}) );
  ALU U0_ALU ( .A(REG0_OP_A), .B(REG1_OP_B), .EN(EN_top), .ALU_FUN(ALU_FUN_top), .CLK(ALU_CLK), .RST(n6), .ALU_OUT(ALU_OUT_top), .OUT_VALID(OUT_VALID_top) );
  UART_TOP U0_UART ( .TX_IN_DATA(TX_IN_DATA_top), .RX_IN_DATA(RX_IN), 
        .TX_IN_valid(TX_IN_valid_top), .CLK_RX(UART_CLK), .CLK_TX(CLK_TX_top), 
        .parity_enable(REG2_UART_convig[0]), .RST(n2), .parity_type(
        REG2_UART_convig[1]), .prescale(REG2_UART_convig[6:2]), .TX_out_valid(
        TX_busy), .RX_out_valid(RX_out_valid_top), .TX_out_DATA(TX_OUT), 
        .RX_out_DATA(RX_out_DATA_top) );
  clock_divider U0_clock_divider ( .I_div_ratio(REG3_div[4:0]), .I_ref_clk(
        UART_CLK), .I_clk_en(1'b1), .I_rst_n(n2), .o_div_clk(CLK_TX_top) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(Gate_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  data_synchronizer_0 U0_Data_Sync_of_RX ( .unsync_bus(RX_out_DATA_top), 
        .bus_enable(RX_out_valid_top), .clk(REF_CLK), .rst(n6), .sync_bus(
        sync_RX_OUT_DATA), .enable_pulse(sync_RX_OUT_V) );
  data_synchronizer_1 U0_Data_Sync_of_TX ( .unsync_bus(CTRL_out_DATA), 
        .bus_enable(CTRL_out_V), .clk(CLK_TX_top), .rst(n2), .sync_bus(
        TX_IN_DATA_top), .enable_pulse(TX_IN_valid_top) );
  RST_synchronizer_0 U0_SYNC_RST_UART_CLK ( .RST(RST), .clk(UART_CLK), 
        .SYNC_RST(SYNC_RST_UART_CLK) );
  RST_synchronizer_1 U0_SYNC_RST_REF_CLK ( .RST(RST), .clk(REF_CLK), 
        .SYNC_RST(SYNC_RST_REF_CLK) );
  bit_synchronizer U0_bit_synchronizer ( .ASYNC(TX_busy), .RST(n6), .clk(
        REF_CLK) );
  BUFX2M U1 ( .A(Address_top[0]), .Y(n4) );
  BUFX2M U2 ( .A(Address_top[1]), .Y(n5) );
  INVX4M U3 ( .A(n7), .Y(n6) );
  INVX2M U4 ( .A(SYNC_RST_REF_CLK), .Y(n7) );
  INVX2M U5 ( .A(n3), .Y(n2) );
  INVX2M U6 ( .A(SYNC_RST_UART_CLK), .Y(n3) );
endmodule

