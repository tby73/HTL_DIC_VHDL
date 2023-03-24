library ieee; 
use IEE.std_logic_1164.all; 

entity comp4 is port(
    a, b: is std_logic_vector(3 downto 0);
    eq: out std_logic; 
);
end comp4

architecture arch_comp4 of comp4 is
signal s: std_logic_vector(3 downto 0);
signal c1, c2: std_logic; 
begin
    s <= not(a xor b);
    c2 <= s(0) and s(1);
    c1 <= s(2) and s(3);
    eq <= c1 and c2; 
end arch_comp4



