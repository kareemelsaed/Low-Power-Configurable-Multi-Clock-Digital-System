library verilog;
use verilog.vl_types.all;
entity RST_synchronizer is
    generic(
        num_stages      : integer := 3
    );
    port(
        RST             : in     vl_logic;
        clk             : in     vl_logic;
        SYNC_RST        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_stages : constant is 1;
end RST_synchronizer;
