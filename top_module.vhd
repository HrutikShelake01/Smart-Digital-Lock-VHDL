library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_module is
    Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        key        : in  STD_LOGIC_VECTOR (3 downto 0);
        seg        : out STD_LOGIC_VECTOR (6 downto 0);
        unlock_led : out STD_LOGIC
    );
end top_module;

architecture Behavioral of top_module is
    signal valid_sig : STD_LOGIC;
    signal error_sig : STD_LOGIC;
begin

    keypad_inst: entity work.keypad
        port map (key, valid_sig);

    lock_inst: entity work.lock_control
        port map (clk, reset, key, valid_sig, unlock_led, error_sig);

    seg_inst: entity work.seven_seg
        port map (key, seg);

end Behavioral;
