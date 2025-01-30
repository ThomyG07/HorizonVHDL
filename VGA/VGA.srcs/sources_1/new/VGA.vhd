----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2024 21:31:08
-- Design Name: 
-- Module Name: VGA - VGA_arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Module pour la generation d'un signal VGA d'une résolution 1920x1080.
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
use IEEE.STD_LOGIC_1164.ALL;

entity VGA is
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
end VGA;

architecture VGA_arch of VGA is
signal  VGA_HS_s, VGA_VS_s : std_logic:='0';
signal h_count, v_count : std_logic_vector( 11 downto  0):= (others=>'0');
signal  video_on :  std_logic_vector( 3 downto  0);
signal video_on_h, video_on_v : std_logic;

constant H_FP : natural := 88; --H front porch width (pixels)
constant H_PW : natural := 34; --H sync pulse width (pixels) 44

constant V_FP : natural := 4; --V front porch width (lines)
constant V_PW : natural := 5; --V sync pulse width (lines)

Constant Npr : integer := 2190 ; --WIDTH max-- nombre totale de pixel par ligne + Pixel de synchronisation
Constant Npc : integer := 1125;-- HEIGHT max  -- nombre totale de pixel par colonne + Pixel de synchronisation
begin
video_on <= (others =>'1') when (video_on_h = '1' and video_on_v = '1'  )else (others=>'0') ; -- authorisation lorssque les deux signaux H et V sont "1"
P1 : process(CLK_Pixel,VGA_R_in,VGA_G_in,VGA_B_in,video_on_h)
    Begin
    if ( CLK_Pixel' event and CLK_Pixel = '1')
        Then
        --Signal de synchronisation horizontal
        if(h_count = (Npr-1)) Then h_count <=(others =>'0');
                              else
                              h_count <= h_count + 1;
                              end if;
        if((h_count <= (WIDTH +H_FP + H_PW - 1))  and (h_count >= (WIDTH +H_FP - 1))  ) then VGA_HS_s <='0';
                                                            else
                                                            VGA_HS_s <='1';
                                                            end if;
        --
        --Signal de synchronisation vertical
        if((v_count >= Npc - 1) and (h_count  >= Npr - 1) ) Then v_count <=(others =>'0');
                              elsif (h_count  = Npr - 1) then
                                v_count <= v_count + 1;
                              end if;
        if((v_count <= (HEIGHT +V_FP + V_PW - 1))  and (v_count >= (HEIGHT +V_FP - 1))) then VGA_VS_s <='0';
                                                            else
                                                            VGA_VS_s <='1';
                                                            end if;
        --
        -- 
         if(h_count <= WIDTH-1 ) then video_on_h <= '1';
                                      Pixel_column <= h_count;
                                 else
                                    video_on_h <= '0';
                                 end if;
        --
        if(v_count <= HEIGHT-1 ) then video_on_v <= '1';
                                      Pixel_row <= v_count;
                                 else
                                    video_on_v <= '0';
                                 end if;                                                      
        
    end if;
-- En front descendant 
 VGA_R <= VGA_R_in and video_on;
 VGA_G <= VGA_G_in and video_on;
 VGA_B <= VGA_B_in and video_on; 
 
 VGA_HS <= VGA_HS_s;
 VGA_VS <= VGA_VS_s;
 
end process;

end VGA_arch;
