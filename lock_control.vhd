library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lock_control is
    Port (
        clk    : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        key    : in  STD_LOGIC_VECTOR (3 downto 0);
        valid  : in  STD_LOGIC;
        unlock : out STD_LOGIC;
        error  : out STD_LOGIC
    );
end lock_control;

architecture Behavioral of lock_control is
    constant PASSWORD : STD_LOGIC_VECTOR(3 downto 0) := "0011";
    signal attempts : integer range 0 to 3 := 0;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            unlock <= '0';
            error <= '0';
            attempts <= 0;
        elsif rising_edge(clk) then
            if valid = '1' then
                if key = PASSWORD then
                    unlock <= '1';
                    attempts <= 0;
                else
                    attempts <= attempts + 1;
                end if;
                if attempts = 2 then
                    error <= '1';
                end if;
            end if;
        end if;
    end process;
end Behavioral;

