library verilog;
use verilog.vl_types.all;
entity Washing_Machine_States is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        clr             : out    vl_logic;
        Start           : in     vl_logic;
        \End\           : in     vl_logic;
        Water_level     : in     vl_logic;
        state           : out    vl_logic_vector(2 downto 0);
        Led_free        : out    vl_logic;
        Led_water_supply: out    vl_logic;
        Led_rinsing     : out    vl_logic;
        Led_water_draining: out    vl_logic;
        Led_dehydrating : out    vl_logic;
        Led_warning     : out    vl_logic;
        Rinsing_timer   : in     vl_logic;
        Draining_timer  : in     vl_logic;
        Dehydrating_timer: in     vl_logic;
        Warning_timer   : in     vl_logic
    );
end Washing_Machine_States;
