library verilog;
use verilog.vl_types.all;
entity Seven_segment_digital_tube_choose_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Seven_segment_digital_tube_choose_vlg_sample_tst;
