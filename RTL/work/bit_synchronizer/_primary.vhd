library verilog;
use verilog.vl_types.all;
entity bit_synchronizer is
    generic(
        width           : integer := 1;
        num_stages      : integer := 3
    );
    port(
        ASYNC           : in     vl_logic_vector;
        RST             : in     vl_logic;
        clk             : in     vl_logic;
        SYNC            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width : constant is 1;
    attribute mti_svvh_generic_type of num_stages : constant is 1;
end bit_synchronizer;
