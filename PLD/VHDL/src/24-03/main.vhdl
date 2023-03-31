library ieee; 
use IEE.std_logic_1164.all;

-- 4 Bit AND
Architecture arch_behave of and4 is
Signal a: std_logic_vector(3 downto 0);
Signal o: std_logic;
Begin
	p1: process(a)			-- OR-Process
	begin
		if (a = "0000") then -- OR def 0 all => 0 OUT
			o <= '0';
		else
			o <= '1';
		end if;
	end process;
end arch_behave;

-- 2x MUX
architecture arch_MUX of MUX is
-- init MUX pinout
signal a, b: std_logic; 
signal mux_select: std_logic; 
signal mux_out: std_logic

begin
    -- start logic process (MUX)
    proc = process(a, b, mux_select)
    begin
        if (sel = 1) then
            mux_out <= a
        else (sel = 0) then
            mux_out <= b
        end if
    end process
end

