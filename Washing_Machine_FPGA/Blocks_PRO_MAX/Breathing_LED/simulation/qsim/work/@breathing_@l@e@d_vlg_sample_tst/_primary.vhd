library verilog;
use verilog.vl_types.all;
entity Breathing_LED_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        led_en          : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Breathing_LED_vlg_sample_tst;