library verilog;
use verilog.vl_types.all;
entity data_synchronizer is
    generic(
        num_stages      : integer := 3;
        bus_width       : integer := 8
    );
    port(
        unsync_bus      : in     vl_logic_vector;
        bus_enable      : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sync_bus        : out    vl_logic_vector;
        enable_pulse    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_stages : constant is 1;
    attribute mti_svvh_generic_type of bus_width : constant is 1;
end data_synchronizer;
