library verilog;
use verilog.vl_types.all;
entity Washing_Machine is
    port(
        a               : out    vl_logic;
        CLOCK           : in     vl_logic;
        RESET           : in     vl_logic;
        START           : in     vl_logic;
        \END\           : in     vl_logic;
        WATER_LEVEL     : in     vl_logic;
        PAUSE           : in     vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        LOW_MINUTE      : out    vl_logic;
        LOW_TEN_SECOND  : out    vl_logic;
        LOW_SECOND      : out    vl_logic;
        LOW_ONE_TENTH_SECOND: out    vl_logic;
        LED_FREE        : out    vl_logic;
        LED_WATER_SUPPLY: out    vl_logic;
        LED_RINSING     : out    vl_logic;
        LED_WATER_DRAINING: out    vl_logic;
        LED_DEHYDRATING : out    vl_logic;
        LED_WARNING     : out    vl_logic;
        H               : out    vl_logic_vector(15 downto 0);
        L               : out    vl_logic_vector(15 downto 0)
    );
end Washing_Machine;
