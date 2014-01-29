----------------------------------------------------------------------------------
-- Company:    US Air Force Academy, DFEC 
-- Engineer:    C3C Kevin Cabusora 
-- 
-- Create Date:    23:21:03 01/22/2014 
-- Design Name:    Lab 1 VHDL
-- Module Name:    Lab1_Cabusora - Behavioral 
-- Project Name:    Lab 1 
-- Target Devices:  Digilent Nexys 2
-- Tool versions: N/Ab
-- Description:   VHDL for Twos Complements Converter
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: Updated as of 1422, 29 Jan 2014
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Cabusora is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Cabusora;

architecture Behavioral of Lab1_Cabusora is

signal D, E, F, G, H, A_NOT, B_NOT, C_NOT : STD_LOGIC;

begin

--Logic Gates--
A_NOT <= not A;
B_NOT <= not B;
C_NOT <= not C;
D <= A_NOT and B_NOT and C;
E <= A_NOT and B;
F <= A and B_NOT and C_NOT;
G <= B_NOT and C;
H <= B and C_NOT;
X <= D or E or F;
Y <= G or H;
Z <= C;

end Behavioral;

