library verilog;
use verilog.vl_types.all;
entity mux2X1 is
    port(
        IN_0            : in     vl_logic;
        IN_1            : in     vl_logic;
        SEL             : in     vl_logic;
        \OUT\           : out    vl_logic
    );
end mux2X1;
