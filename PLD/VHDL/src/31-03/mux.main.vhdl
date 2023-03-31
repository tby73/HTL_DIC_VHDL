library ieee; 
use ieee.std_logic_1164.all; 

-- MUX ENTITIY
entity MUX is
    Port (
        a: in std_logic;
        b: in std_logic; 
        mux_select: in std_logic; 
        mux_out: out std_logic; 
    );
end MUX; 

-- MUX LOGIC
architecture Behavioral of MUX is
begin
    -- start MUX logic process
    process(mux_select, a, b)
    begin   
        if (mux_select = "1") then
            mux_out <= b; 
        else 
            mux_out <= a; 
        end if; 
    end process;
end Behavioral; 

