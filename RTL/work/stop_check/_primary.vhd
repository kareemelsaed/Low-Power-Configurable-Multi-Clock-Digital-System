library verilog;
use verilog.vl_types.all;
entity stop_check is
    port(
        sampled_bit     : in     vl_logic;
        stop_check_en   : in     vl_logic;
        stop_err        : out    vl_logic
    );
end stop_check;
