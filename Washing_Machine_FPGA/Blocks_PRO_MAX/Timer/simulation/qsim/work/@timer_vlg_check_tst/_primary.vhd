library verilog;
use verilog.vl_types.all;
entity Timer_vlg_check_tst is
    port(
        Dehydrating_timer: in     vl_logic;
        Draining_timer  : in     vl_logic;
        Rinsing_timer   : in     vl_logic;
        Warning_timer   : in     vl_logic;
        cnt_min         : in     vl_logic_vector(3 downto 0);
        cnt_one_tenth_sec: in     vl_logic_vector(3 downto 0);
        cnt_sec         : in     vl_logic_vector(3 downto 0);
        cnt_ten_sec     : in     vl_logic_vector(3 downto 0);
        second          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Timer_vlg_check_tst;
