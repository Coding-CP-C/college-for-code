entity mux_4to1 is
    port (
        sel : in std_logic_vector(1 downt 0);
        in0 : in std_logic;
        in1 : in std_logic;
        in2 : in std_logic;
        in3 : in std_logic;
        out : out std_logic
    );
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
    process(sel, in0, in1, in2, in3)
    begin
        case sel is
            when "00" =>
                out <= in0;
            when "01" =>
                out <= in1;
            when "10" =>
                out <= in2;
            when "11" =>
                out <= in3;
            when others =>
                out <= 'X';
        end case;
    end process;
end Behavioral;
