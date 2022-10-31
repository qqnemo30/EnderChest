library verilog;
use verilog.vl_types.all;
entity LED_dot_matrix_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        rst             : in     vl_logic;
        second          : in     vl_logic;
        state           : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end LED_dot_matrix_vlg_sample_tst;
