library verilog;
use verilog.vl_types.all;
entity Breathing_LED_vlg_check_tst is
    port(
        led_out         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Breathing_LED_vlg_check_tst;
