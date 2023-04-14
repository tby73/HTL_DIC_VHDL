library ieee; 
use ieee.std_logic_1164.all; 

stim_proc: process
begin
    wait for 10 ns; 

    wait for <clock>_period * 10; 

    x <= '0'; y <= '0'; 