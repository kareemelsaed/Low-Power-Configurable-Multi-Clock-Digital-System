library verilog;
use verilog.vl_types.all;
entity parity_check is
    generic(
        width           : integer := 9
    );
    port(
        sampled_bit     : in     vl_logic;
        par_typ         : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        par_check_en    : in     vl_logic;
        par_err         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
end parity_check;
