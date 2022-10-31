library verilog;
use verilog.vl_types.all;
entity Washing_Machine_States_vlg_sample_tst is
    port(
        Dehydrating_timer: in     vl_logic;
        Draining_timer  : in     vl_logic;
        \End\           : in     vl_logic;
        Rinsing_timer   : in     vl_logic;
        Start           : in     vl_logic;
        Warning_timer   : in     vl_logic;
        Water_level     : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Washing_Machine_States_vlg_sample_tst;
