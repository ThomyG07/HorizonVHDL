----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.01.2025 15:50:16
-- Design Name: 
-- Module Name: CalRotTestBench - CalRotTestBench_arch
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

entity CalRotTestBench is
--  Port ( );
end CalRotTestBench;

architecture CalRotTestBench_arch of CalRotTestBench is
component  CalRot is
    Port ( clk : in STD_LOGIC;
           Ax : in STD_LOGIC_VECTOR (11 downto 0);
           Ay : in STD_LOGIC_VECTOR (11 downto 0);
           signroll : out STD_LOGIC;
           roll : out STD_LOGIC_VECTOR (7 downto 0));
end component;
constant clock_period: time := 40 ns;
signal CLK_Pixel_s : std_logic;
signal Ax_s :  STD_LOGIC_VECTOR (11 downto 0);
signal Ay_s :  STD_LOGIC_VECTOR (11 downto 0);
signal Roll_s :  STD_LOGIC_VECTOR (7 downto 0);
signal signRoll_s :  STD_LOGIC;
begin

cal1: CalRot port map(
        clk =>CLK_Pixel_s,
           Ax => Ax_s,
           Ay => Ay_s,
           signroll => signRoll_s,
           roll => Roll_s

);
clocking: process
  begin
     CLK_Pixel_s <= '0'; 
     wait for clock_period/2;
     CLK_Pixel_s <= '1';
     wait for clock_period/2;
  end process;

stimulus: process
    begin
        Ax_s <= "100010011000";
        Ay_s <= "100010011000";
        wait for 3*clock_period;
        Ax_s <= "000000000000";
        Ay_s <= "000000000000";
        wait for 3*clock_period;
end process;  

end CalRotTestBench_arch;
