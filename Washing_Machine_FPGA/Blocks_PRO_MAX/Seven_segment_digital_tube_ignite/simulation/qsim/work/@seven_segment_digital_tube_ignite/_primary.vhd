library verilog;
use verilog.vl_types.all;
entity Seven_segment_digital_tube_ignite is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        clr             : in     vl_logic;
        Led_free        : in     vl_logic;
        Led_water_supply: in     vl_logic;
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        low_min         : in     vl_logic;
        low_ten_sec     : in     vl_logic;
        low_sec         : in     vl_logic;
        low_one_tenth_sec: in     vl_logic;
        cnt_one_tenth_sec: in     vl_logic_vector(3 downto 0);
        cnt_sec         : in     vl_logic_vector(3 downto 0);
        cnt_ten_sec     : in     vl_logic_vector(3 downto 0);
        cnt_min         : in     vl_logic_vector(3 downto 0)
    );
end Seven_segment_digital_tube_ignite;
