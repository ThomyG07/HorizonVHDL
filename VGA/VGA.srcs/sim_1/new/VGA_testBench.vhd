----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.10.2024 15:47:44
-- Design Name: 
-- Module Name: VGA_testBench - VGA_testBench_arch
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
use IEEE.std_logic_textio.all;
use STD.textio.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 



entity VGA_testBench is
--  Port ( );
end VGA_testBench;

architecture VGA_testBench_arch of VGA_testBench is
component VGA is
        generic
        (
            WIDTH : integer := 1920; --Largeur en Pixel de l'écran (800px)
            HEIGHT : integer := 1080 --Hauteur en Pixel de l'écran
            );
    Port ( 
           CLK_Pixel : in STD_LOGIC;--CLK de 25 MHZ
           
           VGA_R_in : in STD_LOGIC_VECTOR (3 downto 0);
           VGA_G_in : in STD_LOGIC_VECTOR (3 downto 0);
           VGA_B_in : in STD_LOGIC_VECTOR (3 downto 0);
    
           VGA_R : out STD_LOGIC_VECTOR (3 downto 0);
           VGA_G : out STD_LOGIC_VECTOR (3 downto 0);
           VGA_B : out STD_LOGIC_VECTOR (3 downto 0);
           
           VGA_HS : out STD_LOGIC;
           VGA_VS : out STD_LOGIC;
           
           Pixel_row: out  STD_LOGIC_VECTOR (11 downto 0);
           Pixel_column: out STD_LOGIC_VECTOR (11 downto 0) 
           );
end component;
signal CLK_Pixel_s :  STD_LOGIC;      
signal VGA_R_s : STD_LOGIC_VECTOR (3 downto 0);
signal VGA_G_s : STD_LOGIC_VECTOR (3 downto 0);
signal VGA_B_s : STD_LOGIC_VECTOR (3 downto 0);
           
Signal VGA_HS_s : STD_LOGIC;
Signal VGA_VS_s : STD_LOGIC;
           
Signal Pixel_row_s: STD_LOGIC_VECTOR (11 downto 0);
Signal Pixel_column_s: STD_LOGIC_VECTOR (11 downto 0);

component Display_Hor is 
generic(WIDTH: integer := 1920;
        HEIGHT: integer := 1080;
        Dp : integer := 4
        );
    Port ( 
           Roll : in STD_LOGIC_VECTOR (7 downto 0);
           Pitch : in STD_LOGIC_VECTOR (7 downto 0);
           Pixel_col : in STD_LOGIC_VECTOR (11 downto 0);
           Pixel_row : in STD_LOGIC_VECTOR (11 downto 0);
           Hor_R : out STD_LOGIC_VECTOR (3 downto 0);
           Hor_G : out STD_LOGIC_VECTOR (3 downto 0);
           Hor_B : out STD_LOGIC_VECTOR (3 downto 0);
           syn_H : in std_logic;
           clk : in std_logic ;
           signRoll: in std_logic ;
           signPitch: in std_logic        
           );
           
           
end component;


signal Roll_s :  STD_LOGIC_VECTOR (7 downto 0):= x"14";
signal Pitch_s : STD_LOGIC_VECTOR (7 downto 0):=(others=>'0');
signal Hor_R_s :  STD_LOGIC_VECTOR (3 downto 0);
signal Hor_G_s :  STD_LOGIC_VECTOR (3 downto 0);
signal Hor_B_s :  STD_LOGIC_VECTOR (3 downto 0);

signal signRoll_s: std_logic ;
signal signPitch_s:  std_logic ; 

constant clock_period: time := 40 ns;
signal clock_init : STD_LOGIC;

begin

VGA1: VGA port map (
    CLK_Pixel => CLK_Pixel_s,
    VGA_R_in => Hor_R_s,
    VGA_G_in => Hor_G_s,
    VGA_B_in => Hor_B_s,
    VGA_R => VGA_R_s,
    VGA_G => VGA_G_s,
    VGA_B => VGA_B_s,
    VGA_HS => VGA_HS_s,
    VGA_VS => VGA_VS_s,
    Pixel_row => Pixel_row_s,
    Pixel_column => Pixel_column_s
    );
    
D1: Display_Hor port map (
     Roll => Roll_s,
     Pitch => Pitch_s,
     Pixel_col => Pixel_column_s,
     Pixel_row => Pixel_row_s,
     Hor_R => Hor_R_s,
     Hor_G => Hor_G_s,
     Hor_B => Hor_B_s,
     syn_H => VGA_VS_s,
     clk => CLK_Pixel_s,
     signRoll => signRoll_s,
     signPitch => signPitch_s  
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
    clock_init <= '0';
    
    wait for 20 ns ;
    
    clock_init <= '1';
    wait;
      
    end process;
    
    Proll: process
    begin
        signPitch_s <= '0';
        signRoll_s <= '0';
        Roll_s <= Roll_s +1;
        wait until VGA_VS_s'event and VGA_VS_s ='1';
    end process;
    
Data:process (CLK_Pixel_s)
    file file_pointer: text is out "data.txt";
    variable line_el: line;
begin
    if rising_edge(CLK_Pixel_s) then
    -- Write the time
    write(line_el, now); -- write the line.
    write(line_el, string'(":")); -- write the line.
    
    -- Write the hsync
    write(line_el, string'(" "));
    write(line_el, VGA_HS_s); -- write the line.

    -- Write the vsync
    write(line_el, string'(" "));
    write(line_el, VGA_VS_s); -- write the line.

    -- Write the red
    write(line_el, string'(" "));
    write(line_el, VGA_R_s); -- write the line.

    -- Write the green
    write(line_el, string'(" "));
    write(line_el, VGA_G_s); -- write the line.

    -- Write the blue
    write(line_el, string'(" "));
    write(line_el, VGA_B_s); -- write the line.

    -- write the contents into the file.
    writeline(file_pointer, line_el);

end if;
end process;

end VGA_testBench_arch;
