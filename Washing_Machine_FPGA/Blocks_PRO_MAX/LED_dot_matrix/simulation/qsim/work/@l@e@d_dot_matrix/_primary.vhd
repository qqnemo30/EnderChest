library verilog;
use verilog.vl_types.all;
entity LED_dot_matrix is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        clr             : in     vl_logic;
        second          : in     vl_logic;
        state           : in     vl_logic_vector(2 downto 0);
        H               : out    vl_logic_vector(15 downto 0);
        L               : out    vl_logic_vector(15 downto 0)
    );
end LED_dot_matrix;
