library verilog;
use verilog.vl_types.all;
entity Seven_segment_digital_tube_choose is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        clr             : in     vl_logic;
        low_min         : out    vl_logic;
        low_ten_sec     : out    vl_logic;
        low_sec         : out    vl_logic;
        low_one_tenth_sec: out    vl_logic
    );
end Seven_segment_digital_tube_choose;
