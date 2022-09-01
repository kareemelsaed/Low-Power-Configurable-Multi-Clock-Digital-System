library verilog;
use verilog.vl_types.all;
entity data_sampling is
    port(
        data_in         : in     vl_logic;
        prescale        : in     vl_logic_vector(4 downto 0);
        edge_cnt        : in     vl_logic_vector(4 downto 0);
        en_sampler      : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sampled_bit     : out    vl_logic
    );
end data_sampling;
