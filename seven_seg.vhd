library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_seg is
    Port (
        digit : in  STD_LOGIC_VECTOR (3 downto 0);
        seg   : out STD_LOGIC_VECTOR (6 downto 0)
    );
end seven_seg;

architecture Behavioral of seven_seg is
begin
    process(digit)
    begin
        case digit is
            when "0000" => seg <= "1000000"; -- 0
            when "0001" => seg <= "1111001"; -- 1
            when "0010" => seg <= "0100100"; -- 2
            when "0011" => seg <= "0110000"; -- 3
            when others => seg <= "1111111";
        end case;
    end process;
end Behavioral;