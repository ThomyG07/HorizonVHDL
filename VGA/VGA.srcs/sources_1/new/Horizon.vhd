----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2024 10:04:30
-- Design Name: 
-- Module Name: Horizon - Horizon_arch
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity Horizon is
    Port ( 
    CLK100MHZ : in STD_LOGIC;
    -- VGA
    VGA_R: out STD_LOGIC_VECTOR (3 downto 0);
    VGA_G: out STD_LOGIC_VECTOR (3 downto 0); 
    VGA_B: out STD_LOGIC_VECTOR (3 downto 0);
    
    VGA_HS : out STD_LOGIC;
    VGA_VS : out STD_LOGIC;
    --
    
    RESET : in STD_LOGIC;

     -- Spi interface Signals
     SCLK       : out STD_LOGIC;
     MOSI       : out STD_LOGIC;
     MISO       : in STD_LOGIC;
     SS         : out STD_LOGIC;
     
     AUD_SD: out std_logic;
     pwmOut: inout std_logic

    );
end Horizon;

architecture Horizon_arch of Horizon is

component  AudioOut is
 port (
        CLK100MHZ: in std_logic;
        Enable: in std_logic;
        AUD_SD: out std_logic;
        pwmOut: inout std_logic
        );
end component;

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
signal CLK_Pixel_s :  STD_LOGIC:= '1';             
Signal Pixel_row_s: STD_LOGIC_VECTOR (11 downto 0);
Signal Pixel_column_s: STD_LOGIC_VECTOR (11 downto 0);

component ADXL362Ctrl is
port
(
   SYSCLK     : in STD_LOGIC; -- System Clock
   RESET      : in STD_LOGIC;

   -- Accelerometer data signals
   ACCEL_X    : out STD_LOGIC_VECTOR (11 downto 0);
   ACCEL_Y    : out STD_LOGIC_VECTOR (11 downto 0);
   ACCEL_Z    : out STD_LOGIC_VECTOR (11 downto 0);
   ACCEL_TMP  : out STD_LOGIC_VECTOR (11 downto 0);
   Data_Ready : out STD_LOGIC;

   --SPI Interface Signals
   SCLK       : out STD_LOGIC;
   MOSI       : out STD_LOGIC;
   MISO       : in STD_LOGIC;
   SS         : out STD_LOGIC
);
end component;

component  Display_Hor is 
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
           clk : in std_logic;
           signRoll: in std_logic;
           signPitch: in std_logic       
           );
                 
end component;


component clk_wiz_0 is 
port (
clk_out1: out std_logic;
 reset : in std_logic;
 locked :out std_logic;
 clk_in1 : in std_logic 
 );
end component; 

component CalRot is
    Port ( clk : in STD_LOGIC;
           Ax : in STD_LOGIC_VECTOR (11 downto 0);
           Ay : in STD_LOGIC_VECTOR (11 downto 0);
           signRoll : out STD_LOGIC;
           signPitch : out STD_LOGIC;
           roll : out STD_LOGIC_VECTOR (7 downto 0);
           pitch : out STD_LOGIC_VECTOR (7 downto 0);
           EnableAudio : out  std_logic
           );
end component;

signal EnableAudio : STD_LOGIC;
signal signRoll_s : STD_LOGIC;
signal signPitch_s : STD_LOGIC;
signal Roll_s :  STD_LOGIC_VECTOR (7 downto 0):= (others=>'0');
signal Pitch_s : STD_LOGIC_VECTOR (7 downto 0):= (others=>'0');
signal Hor_R_s :  STD_LOGIC_VECTOR (3 downto 0);
signal Hor_G_s :  STD_LOGIC_VECTOR (3 downto 0);
signal Hor_B_s :  STD_LOGIC_VECTOR (3 downto 0);
signal VGA_VS_s: std_logic;

signal count: integer:=0;

signal   SCLK_FREQUENCY_HZ   : integer := 1000000;
signal   NUM_READS_AVG       : integer := 16;
 signal  UPDATE_FREQUENCY_HZ : integer := 100;
-- Self-blocking reset counter constants
constant ACC_RESET_PERIOD_US : integer := 10;
constant ACC_RESET_IDLE_CLOCKS   : integer := ((ACC_RESET_PERIOD_US*1000)/(1000000000/100000000));

signal  ACCEL_X    : STD_LOGIC_VECTOR (11 downto 0);
signal  ACCEL_Y    : STD_LOGIC_VECTOR (11 downto 0);
signal  ACCEL_Z    : STD_LOGIC_VECTOR (11 downto 0);
signal  ACCEL_TMP    : STD_LOGIC_VECTOR (11 downto 0);


signal Data_Ready : STD_LOGIC;

-- Self-blocking reset counter
signal cnt_acc_reset : integer range 0 to (ACC_RESET_IDLE_CLOCKS - 1):= 0;
signal RESET_INT: std_logic;


begin
Audio:  AudioOut port map (
        CLK100MHZ => CLK100MHZ,
        Enable => EnableAudio,
        AUD_SD => AUD_SD,
        pwmOut => pwmOut
        );
cal1: CalRot port map(
        clk =>CLK_Pixel_s,
           Ax => ACCEL_X,
           Ay => ACCEL_Y,
           signRoll => signRoll_s,
           signPitch => signPitch_s,
           roll => Roll_s,
           pitch => pitch_s,
           EnableAudio => EnableAudio
);

VGA1: VGA port map (
    CLK_Pixel => CLK_Pixel_s,
    VGA_R_in => Hor_R_s,
    VGA_G_in => Hor_G_s,
    VGA_B_in => Hor_B_s,
    VGA_R => VGA_R,
    VGA_G => VGA_G,
    VGA_B => VGA_B,
    VGA_HS => VGA_HS,
    VGA_VS => VGA_VS_s,
    Pixel_row => Pixel_row_s,
    Pixel_column => Pixel_column_s
    );
 VGA_VS <= VGA_VS_s;
    
D1: Display_Hor port map (
     Roll => Roll_s,
     Pitch => Pitch_s,
     Pixel_col => Pixel_column_s,
     Pixel_row => Pixel_row_s,
     Hor_R => Hor_R_s,
     Hor_G => Hor_G_s,
     Hor_B => Hor_B_s,
     syn_H => VGA_VS_s,
     clk => CLK100MHZ,
     signRoll => signRoll_s,
     signPitch => signPitch_s
    );
dll1: clk_wiz_0 port map ( CLK_Pixel_s, '0', open, CLK100MHZ);
  

COUNT_RESET: process(CLK_Pixel_s, cnt_acc_reset, RESET)
begin
   if CLK_Pixel_s'EVENT and CLK_Pixel_s = '1' then
      if (RESET = '0') then
         cnt_acc_reset <= 0;
         RESET_INT <= '1';
      elsif cnt_acc_reset = (ACC_RESET_IDLE_CLOCKS - 1) then
         cnt_acc_reset <= (ACC_RESET_IDLE_CLOCKS - 1);
         RESET_INT <= '0';
      else
         cnt_acc_reset <= cnt_acc_reset + 1;
         RESET_INT <= '1';
      end if;
   end if;
end process COUNT_RESET;


ADXL_Control: ADXL362Ctrl
port map
(
 SYSCLK     => CLK_Pixel_s, 
 RESET      => RESET_INT, 
 
 -- Accelerometer data signals
 ACCEL_X    => ACCEL_X,
 ACCEL_Y    => ACCEL_Y, 
 ACCEL_Z    => ACCEL_Z,
 ACCEL_TMP  => ACCEL_TMP, 
 Data_Ready => Data_Ready, 
 
 --SPI Interface Signals
 SCLK       => SCLK, 
 MOSI       => MOSI,
 MISO       => MISO, 
 SS         => SS
);

end Horizon_arch;
