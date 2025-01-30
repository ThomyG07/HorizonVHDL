----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2024 10:54:46
-- Design Name: 
-- Module Name: AudioOut - AudioOut_arch
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AudioOut is
 port (
        CLK100MHZ: in std_logic;
        Enable: in std_logic;
        AUD_SD: out std_logic;
        pwmOut: inout std_logic
        );
end AudioOut;

architecture AudioOut_arch of AudioOut is

component PWMGenerator is
    Port ( CLK : in STD_LOGIC;
           Period : in STD_LOGIC_VECTOR (7 downto 0);
           PWM : out STD_LOGIC);
end component;

signal period : std_logic_vector (7 downto 0) := x"64";


constant CLK_DIV : integer := 7500;
signal clkCnt : integer := 0;
signal slowClk : std_logic;


signal bip : std_logic;


begin


-- génération du signal audio
composantAudio: PWMGenerator port map (
    CLK => slowClk,
    Period => period,
    PWM => pwmOut);
  
-- génération du bip sonore  
composantBip: PWMGenerator port map (
    CLK => pwmOut,
    Period => period,
    PWM => bip);

-- division de l'horloge
Prescaller: process(CLK100MHZ)
   begin
      if rising_edge(CLK100MHZ) then
         if clkCnt = CLK_DIV-1 then
            clkCnt <= 0;
         else
            clkCnt <= clkCnt + 1;
         end if;
      end if;
   end process Prescaller;
   
slowClk <= '1' when clkCnt = CLK_DIV-1 else '0';

AUD_SD <= '1' when (bip = '1' and Enable = '1') else '0';


end AudioOut_arch;
