library verilog;
use verilog.vl_types.all;
entity Washing_Machine_States_vlg_check_tst is
    port(
        Led_dehydrating : in     vl_logic;
        Led_free        : in     vl_logic;
        Led_rinsing     : in     vl_logic;
        Led_warning     : in     vl_logic;
        Led_water_draining: in     vl_logic;
        Led_water_supply: in     vl_logic;
        clr             : in     vl_logic;
        state           : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end Washing_Machine_States_vlg_check_tst;
