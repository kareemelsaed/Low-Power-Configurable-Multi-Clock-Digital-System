library verilog;
use verilog.vl_types.all;
entity system_top_tb is
    generic(
        DATA_WIDTH      : integer := 8;
        REF_CLK_PER     : integer := 20;
        UART_RX_CLK_PER : integer := 100;
        WR_NUM_OF_FRAMES: integer := 3;
        RD_NUM_OF_FRAMES: integer := 2;
        ALU_WP_NUM_OF_FRAMES: integer := 4;
        ALU_NP_NUM_OF_FRAMES: integer := 2
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of REF_CLK_PER : constant is 1;
    attribute mti_svvh_generic_type of UART_RX_CLK_PER : constant is 1;
    attribute mti_svvh_generic_type of WR_NUM_OF_FRAMES : constant is 1;
    attribute mti_svvh_generic_type of RD_NUM_OF_FRAMES : constant is 1;
    attribute mti_svvh_generic_type of ALU_WP_NUM_OF_FRAMES : constant is 1;
    attribute mti_svvh_generic_type of ALU_NP_NUM_OF_FRAMES : constant is 1;
end system_top_tb;
