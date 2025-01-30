----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.10.2024 17:46:07
-- Design Name: 
-- Module Name: PWMGenerator - PWMGenerator_arch
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWMGenerator is
    Port ( CLK : in STD_LOGIC;
           Period : in STD_LOGIC_VECTOR (7 downto 0);
           PWM : out STD_LOGIC);
end PWMGenerator;

architecture PWMGenerator_arch of PWMGenerator is
signal cnt: std_logic_vector (7downto 0) :=(others =>'0');
begin



COMPARE: process(CLK)
   begin
   if (CLK'event and CLK='1') then
      cnt <= cnt + 1;
      if (cnt - 1) < ('0'&Period(7 downto 1)) then
         PWM <= '1';
      else
         PWM <= '0';
         if cnt >= Period then cnt <= (others => '0');
         end if;
      end if;
      
   end if;
   end process COMPARE;

end PWMGenerator_arch;
