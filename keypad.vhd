library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity keypad is
    Port (
        key   : in  STD_LOGIC_VECTOR (3 downto 0);
        valid : out STD_LOGIC
    );
end keypad;

architecture Behavioral of keypad is
begin
    valid <= '1' when key /= "0000" else '0';
end Behavioral;----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.02.2026 12:58:01
-- Design Name: 
-- Module Name: keypad - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
