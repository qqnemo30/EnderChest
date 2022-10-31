library verilog;
use verilog.vl_types.all;
entity Seven_segment_digital_tube_ignite_vlg_sample_tst is
    port(
        Led_free        : in     vl_logic;
        Led_water_supply: in     vl_logic;
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        cnt_min         : in     vl_logic_vector(3 downto 0);
        cnt_one_tenth_sec: in     vl_logic_vector(3 downto 0);
        cnt_sec         : in     vl_logic_vector(3 downto 0);
        cnt_ten_sec     : in     vl_logic_vector(3 downto 0);
        low_min         : in     vl_logic;
        low_one_tenth_sec: in     vl_logic;
        low_sec         : in     vl_logic;
        low_ten_sec     : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Seven_segment_digital_tube_ignite_vlg_sample_tst;
