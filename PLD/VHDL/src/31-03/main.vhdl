library ieee; 
use ieee.std_logic_1164.all;

-- HALF ADDER ENTITY
entity HalfAdder is
    Port (
        a: in std_logic;
        b: in std_logic;
        sum: out std_logic;
        carry_out: out std_logic;
    );
end HalfAdder;

-- LOGIC
architecture Behavioral of HalfAdder is
begin
    -- Method 1: basic AND logic
    carry_out <= a and b; 

    process(a, b)
    begin
        carry_out <= a and b; 
    end process

    -- Method 1: basic XOR logic
    sum <= a xor b; 

    -- Method 2: conditional
    process(a, b)
    begin
        if (a = b)
            sum <= 0; 
        else 
            sum <= 1; 
        end if
    end process
end Behavioral;

