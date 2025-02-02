----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.01.2025 10:37:21
-- Design Name: 
-- Module Name: CalRot - CalRot_arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Calcul de la rotation en fonction des donn�es de l'acc�l�rom�tre.
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity CalRot is
    Port ( clk : in STD_LOGIC;
           Ax : in STD_LOGIC_VECTOR (11 downto 0);--Acceleration suivant x
           Ay : in STD_LOGIC_VECTOR (11 downto 0);--Acceleration suivant y
           -- Bit de signe
           signRoll : out STD_LOGIC;
           signPitch : out STD_LOGIC;
           
           roll : out STD_LOGIC_VECTOR (7 downto 0);
           pitch : out STD_LOGIC_VECTOR (7 downto 0);

           EnableAudio : out  std_logic
           );
end CalRot;

architecture CalRot_arch of CalRot is
-- Param�tre capteurs pour convertir en angle de rotation
constant  pente_roll : signed (4 downto 0) := "10100";
constant b_roll : signed (11 downto 0):="010001000111";
signal roll_add : signed(12 downto 0);
signal roll_s : signed(12 downto 0);
signal roll_f : signed(12 downto 0);
-- Param�tre capteurs pour convertir en angle de rotation
constant  pente_pitch : signed (4 downto 0) := "01011";
constant b_pitch : signed (11 downto 0):="001111101110";
signal pitch_add : signed(12 downto 0);
signal pitch_s : signed(12 downto 0);
signal pitch_f : signed(12 downto 0);

begin
Pipeline_1: Process(clk, Ay, Ax, pitch_f,roll_f)
begin
        if(clk'event and clk ='1')
        then
            roll_add<= signed(('0'&Ay)) - ('0'&b_roll);
            roll_s <= roll_add / ("11111111"&pente_roll);
            
            pitch_add<= signed(('0'&Ax)) - ('0'&b_pitch);
            pitch_s <= pitch_add / ("00000000"&pente_roll);
            if(roll_s <0)
            then
                roll_f <= (roll_s xor "1111111111111") + 1 ;--Conversion en une valeur positive
                signRoll <= '1';
            else
                roll_f <= roll_s;
                signRoll <= '0';
                
            end if;
            
            if(pitch_s <0)
            then
                pitch_f <= (pitch_s xor "1111111111111") + 1 ;--Conversion en une valeur positive
                signPitch <= '1';
            else
                pitch_f <= pitch_s;
                signPitch <= '0';
                
            end if;
        end if;    
        
        if(pitch_f > 45 or  roll_f > 45)--Activation de la sortie audio
            then 
                EnableAudio <= '1';
             else
               EnableAudio <= '0';    
        end if;   
end process ;

roll <= std_logic_vector(roll_f(7 downto 0));
pitch <= std_logic_vector(pitch_f(7 downto 0));
end CalRot_arch;
