library verilog;
use verilog.vl_types.all;
entity clock_divider is
    generic(
        width           : integer := 5
    );
    port(
        I_div_ratio     : in     vl_logic_vector;
        I_ref_clk       : in     vl_logic;
        I_clk_en        : in     vl_logic;
        I_rst_n         : in     vl_logic;
        o_div_clk       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end clock_divider;
