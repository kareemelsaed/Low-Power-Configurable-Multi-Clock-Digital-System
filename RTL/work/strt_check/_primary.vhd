library verilog;
use verilog.vl_types.all;
entity strt_check is
    port(
        sampled_bit     : in     vl_logic;
        strt_check_en   : in     vl_logic;
        strt_err        : out    vl_logic
    );
end strt_check;
