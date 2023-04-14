-- Full Adder
-- Inputs: x, y, carry_in
-- Outputs: carry_out, sum

library ieee; 
use ieee.std_logic_1164.all;

entity FullAdder is
    Port (
        x: in std_logic; 
        y: in std_logic;
        carry_in: in std_logic;
        sum: out std_logic; 
        carry_out: out std_logic; 
    );
end FullAdder; 

architecture Behavioral of FullAddder is
    signal s1, s2, s3: std_logic; 

    -- declaration of component block 
    component HalfAdder is
        Port (
            a: in std_logic;
            b: in std_logic;
            sum: out std_logic;
            carry_out: out std_logic;
        );
    end component;

    -- full adder logic
    begin
        U1: HalfAdder port map(x, y, s1, s2);
        U2: HalfAdder port map(s1, carry_in, sum, s3);
        carry_out <= s2 or s3; 

end Behavioral; 

