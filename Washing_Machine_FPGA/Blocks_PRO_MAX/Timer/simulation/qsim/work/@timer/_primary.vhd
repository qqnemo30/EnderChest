library verilog;
use verilog.vl_types.all;
entity Timer is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        clr             : in     vl_logic;
        pause           : in     vl_logic;
        Rinsing_timer   : out    vl_logic;
        Draining_timer  : out    vl_logic;
        Dehydrating_timer: out    vl_logic;
        Warning_timer   : out    vl_logic;
        second          : out    vl_logic;
        cnt_one_tenth_sec: out    vl_logic_vector(3 downto 0);
        cnt_sec         : out    vl_logic_vector(3 downto 0);
        cnt_ten_sec     : out    vl_logic_vector(3 downto 0);
        cnt_min         : out    vl_logic_vector(3 downto 0)
    );
end Timer;
