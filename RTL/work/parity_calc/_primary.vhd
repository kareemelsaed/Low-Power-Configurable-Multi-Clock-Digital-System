library verilog;
use verilog.vl_types.all;
entity parity_calc is
    port(
        P_DATA          : in     vl_logic_vector(7 downto 0);
        parity_type     : in     vl_logic;
        Data_Valid      : in     vl_logic;
        CLK             : in     vl_logic;
        par_bit         : out    vl_logic
    );
end parity_calc;
