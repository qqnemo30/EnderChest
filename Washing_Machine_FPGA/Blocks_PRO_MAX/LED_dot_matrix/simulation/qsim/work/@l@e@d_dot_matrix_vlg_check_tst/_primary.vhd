library verilog;
use verilog.vl_types.all;
entity LED_dot_matrix_vlg_check_tst is
    port(
        H               : in     vl_logic_vector(15 downto 0);
        L               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end LED_dot_matrix_vlg_check_tst;
