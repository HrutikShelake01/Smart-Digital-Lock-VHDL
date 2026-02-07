library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_top_module is
end tb_top_module;

architecture behavior of tb_top_module is
    signal clk        : STD_LOGIC := '0';
    signal reset      : STD_LOGIC := '1';
    signal key        : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal seg        : STD_LOGIC_VECTOR(6 downto 0);
    signal unlock_led : STD_LOGIC;
begin

    uut: entity work.top_module
        port map (
            clk        => clk,
            reset      => reset,
            key        => key,
            seg        => seg,
            unlock_led => unlock_led
        );

    clk_process: process
    begin
        clk <= '0'; wait for 5 ns;
        clk <= '1'; wait for 5 ns;
    end process;

    stim_proc: process
    begin
        wait for 10 ns;
        reset <= '1';

        key <= "0011"; -- correct
        wait for 20 ns;

        key <= "0001"; -- wrong
        wait for 20 ns;

        wait;
    end process;
end behavior;
