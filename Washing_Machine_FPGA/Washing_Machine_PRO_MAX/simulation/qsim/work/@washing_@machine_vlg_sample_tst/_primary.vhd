library verilog;
use verilog.vl_types.all;
entity Washing_Machine_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        \END\           : in     vl_logic;
        PAUSE           : in     vl_logic;
        RESET           : in     vl_logic;
        START           : in     vl_logic;
        WATER_LEVEL     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Washing_Machine_vlg_sample_tst;
