library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        mux_sel         : in     vl_logic_vector(1 downto 0);
        ser_data        : in     vl_logic;
        par_bit         : in     vl_logic;
        TX_OUT          : out    vl_logic
    );
end mux;
