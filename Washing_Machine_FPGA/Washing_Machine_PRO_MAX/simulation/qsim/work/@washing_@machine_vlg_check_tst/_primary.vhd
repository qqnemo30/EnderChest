library verilog;
use verilog.vl_types.all;
entity Washing_Machine_vlg_check_tst is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        e               : in     vl_logic;
        f               : in     vl_logic;
        g               : in     vl_logic;
        H               : in     vl_logic_vector(15 downto 0);
        L               : in     vl_logic_vector(15 downto 0);
        LED_DEHYDRATING : in     vl_logic;
        LED_FREE        : in     vl_logic;
        LED_RINSING     : in     vl_logic;
        LED_WARNING     : in     vl_logic;
        LED_WATER_DRAINING: in     vl_logic;
        LED_WATER_SUPPLY: in     vl_logic;
        LOW_MINUTE      : in     vl_logic;
        LOW_ONE_TENTH_SECOND: in     vl_logic;
        LOW_SECOND      : in     vl_logic;
        LOW_TEN_SECOND  : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Washing_Machine_vlg_check_tst;
