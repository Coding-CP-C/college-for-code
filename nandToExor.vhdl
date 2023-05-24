library ieee;
use ieee.std_logic_1164.all;

entity nand_to_exor is
    port (
        a, b : in std_logic;
        y : out std_logic
    );
end nand_to_exor;

architecture behavioral of nand_to_exor is
begin
    y <= (a nand b) xor (a and b);
end behavioral;
