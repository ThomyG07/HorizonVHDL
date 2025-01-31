----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.10.2024 11:12:20
-- Design Name: 
-- Module Name: Display_Hor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Selection de la couleur suivant la position du Pixel. 
-- L'angle est récalculer en fonction de la frequence de refrechissement de l'ecran (60 hz), d'où l'utilisation du signal de synchronisation verticale du VGA
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
use IEEE.math_real.all;

entity Display_Hor is 
generic(WIDTH: integer := 1920;
        HEIGHT: integer := 1080;
        Dp : integer := 4 --Epaiseur de la ligne d'horizon
        );
    Port ( 
           Roll : in STD_LOGIC_VECTOR (7 downto 0);
           Pitch : in STD_LOGIC_VECTOR (7 downto 0);
           Pixel_col : in STD_LOGIC_VECTOR (11 downto 0);--Position du pixel sur l'écran suivant Y
           Pixel_row : in STD_LOGIC_VECTOR (11 downto 0);--Position du pixel sur l'écran suivant X
           
           --Composante RGB du VGA
           Hor_R : out STD_LOGIC_VECTOR (3 downto 0);
           Hor_G : out STD_LOGIC_VECTOR (3 downto 0);
           Hor_B : out STD_LOGIC_VECTOR (3 downto 0);
           --
           syn_H : in std_logic; -- Signal de synchronisation VGA
           
           clk : in std_logic ;
           signRoll: in std_logic ; --Bit de signal de l'angle Roll
           signPitch: in std_logic --Bit de signal de l'angle Pitch       
           );
           
           
end Display_Hor;

architecture Behavioral of Display_Hor is
signal Red, Green, Blue : std_logic_vector( 3 downto  0):= (others=>'0');
-- Tabulation des valeurs de cos et sin dans la BRam(multiplier par 1000 pour les decimales).
type IntegerArraycos is array (0 to 90) of integer; 
signal cosArray: IntegerArraycos := (1000,999, 999, 998, 997, 996, 994, 992, 990, 987, 984, 981, 978, 974, 970, 965, 961, 956, 951, 945, 939, 933, 927, 920, 913, 906, 898, 891, 882, 874, 866, 857, 848, 838, 829, 819, 809, 798, 788, 777, 766, 754, 743, 731, 719, 707, 694, 682, 669, 656, 642, 629, 615, 601, 587, 573, 559, 544, 529, 515, 500, 484, 469, 454, 438, 422, 406, 390, 374, 358, 342, 325, 309, 292, 275, 258, 241, 225, 207, 190, 173, 156, 139, 121, 104, 87, 69, 52, 34, 17, 0
);
type IntegerArraysin is array (0 to 90) of integer; 
signal sinArray: IntegerArraysin := (0,17, 34, 52, 69, 87, 104, 121, 139, 156, 173, 190, 207, 225, 241, 258, 275, 292, 309, 325, 342, 358, 374, 390, 406, 422, 438, 454, 469, 484, 500, 515, 529, 544, 559, 573, 587, 601, 615, 629, 642, 656, 669, 682, 694, 707, 719, 731, 743, 754, 766, 777, 788, 798, 809, 819, 829, 838, 848, 857, 866, 874, 882, 891, 898, 906, 913, 920, 927, 933, 939, 945, 951, 956, 961, 965, 970, 974, 978, 981, 984, 987, 990, 992, 994, 996, 997, 998, 999, 999, 1000
);
--Angles de rotation 
signal rollint : integer := 0;
signal pitchlint : integer := 0;
--Paramètre de l'horizon
signal pente : integer ;
signal b : integer;
--Position du pixel
signal x : integer;
signal y : integer;
--Intervalle de l'horizon
signal horizonH: integer;
signal horizonL: integer;
--Centre de l'écran
constant centerH: integer := HEIGHT/2;
constant centerW: integer := WIDTH/2;
--Pipeline
signal resulM : integer;
signal resulM2 : integer;
signal resAdd : integer;
signal resSous: integer;
signal offset : integer;
begin

NewPixel: Process(syn_H)
begin
        if(syn_H'event and syn_H ='1')
        then
            rollint <= conv_integer(Roll);
            pitchlint <= conv_integer(Pitch);
        end if;

end process;



Pipeline_1: Process(clk)
begin
        if(clk'event and clk ='1')
        then
            y <= conv_integer(Pixel_row);
            x <= conv_integer(Pixel_col);
            
            if(signRoll = '1')
                then
                    pente <= (sinArray(rollint)*1000)/cosArray(rollint);  
                    
                else
                   pente <= -1*(sinArray(rollint)*1000)/cosArray(rollint);        
            end if;
            
              if(signPitch = '1')
                then
                    offset <= -1*centerH*sinArray(pitchlint); 
                else
                   offset <= centerH*sinArray(pitchlint); 
               end if;
               
            resulM <= centerW * pente;
            b <= centerH*1000 - resulM + offset;
            resulM2 <= pente*x;
            resAdd <= resulM2 + b + Dp;
            resSous <= resulM2 +b -Dp;
            
            horizonH <= resAdd/1000;
            horizonL <= resSous/1000;
        end if;

end process;



P1: process(clk,y)
begin
 if(clk'event and clk ='1')
        then
      if(( ((y >= centerH-2) and (y<= centerH +2)) and x < 50) or (((y >= centerH-2) and (y<= centerH +2))and x > 1870)) -- Indicateur horizontal du coôté de l'écran
        then
                    Red <= x"0";
                    Green <= x"f";
                    Blue <= x"8";
            elsif(((y >= centerH-2) and (y <= centerH +2))and x >= centerW-25 and x <= centerW+25 ) --Curseur central partie H
                then
                    Red <= x"0";
                    Green <= x"f";
                    Blue <= x"8"; 
                    
             elsif(((y >= centerH+2) and (y<= centerH +25))and x >= centerW-2 and x <= centerW+2 )--Curseur central partie V
                then
                    Red <= x"0";
                    Green <= x"f";
                    Blue <= x"8"; 
            elsif(y < horizonH) --Ciel
                then
                    Red <=  x"4";
                    Green <= x"c";
                    Blue <=  x"f";
               
            elsif(y >= horizonL and y <= horizonH )--Horizon
                then
                    Red <= x"f";
                    Green <= x"f";
                    Blue <= x"f";                      
             else --Terre
                Red <= x"5";
                Green <= x"1";
                Blue <= x"0";
         end if;
end if; 
end process;

Hor_R <= Red;
Hor_G <= Green;
Hor_B <= Blue;

end Behavioral;
