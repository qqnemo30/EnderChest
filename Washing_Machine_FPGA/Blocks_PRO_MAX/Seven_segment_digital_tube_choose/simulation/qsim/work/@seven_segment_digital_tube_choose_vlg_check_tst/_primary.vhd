library verilog;
use verilog.vl_types.all;
entity Seven_segment_digital_tube_choose_vlg_check_tst is
    port(
        low_min         : in     vl_logic;
        low_one_tenth_sec: in     vl_logic;
        low_sec         : in     vl_logic;
        low_ten_sec     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Seven_segment_digital_tube_choose_vlg_check_tst;
