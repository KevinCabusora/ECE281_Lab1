ECE281: Lab 1
==========

# Lab 1:  Two's Complement Coverter
###### C3C Kevin Cabusora
###### Dr. Neebel, M6A
###### ECE 281
###### 23 Jan 2014

==========

# Prelab

## Simulation

![alt text][Lab1_Simulation.png]

[Lab1_Simulation.png]: https://github.com/KevinCabusora/ECE281_Lab1/blob/master/Lab%201_Simulation.png?raw=true "Lab1_Simulation.png"

## Minimal SOP Equation

![alt text][Lab1_SOPEquation.png]

[Lab1_SOPEquation.png]:  https://github.com/KevinCabusora/ECE281_Lab1/blob/master/Lab1_SOPEquation.png?raw=true "Lab1_Simulation.png"


## Truth Table

| A | B | C | X | Y | Z |
|---|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 | 0 |
| 0 | 1 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 1 |

## VHDL

----------------------------------------------------------------------------------
-- Company:    US Air Force Academy, DFEC 
-- Engineer:    C3C Kevin Cabusora 
-- 
-- Create Date:    23:21:03 01/22/2014 
-- Design Name:    
-- Module Name:    Lab1_Cabusora - Behavioral 
-- Project Name:    Lab 1 
-- Target Devices:    
-- Tool versions: 
-- Description:   Twos Complements Converter
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

## Testbench

--------------------------------------------------------------------------------
-- Company: USAFA, DFEC
-- Engineer:  C3C Kevin Cabusora
--
-- Create Date:   08:42:06 01/23/2014
-- Design Name:   Lab 1 Testbench
-- Module Name:   C:/Users/C16kevin.cabusora/Documents/xilinx projects ece281/Lab1/Lab1_testbench_Cabusora.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   Testbench of Twos Complement Converter
-- 
-- VHDL Test Bench Created by ISE for module: Lab1_Cabusora
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Lab1_testbench_Cabusora IS
END Lab1_testbench_Cabusora;
 
ARCHITECTURE behavior OF Lab1_testbench_Cabusora IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab1_Cabusora
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         X : OUT  std_logic;
         Y : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal X : std_logic;
   signal Y : std_logic;
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab1_Cabusora PORT MAP (
          A => A,
          B => B,
          C => C,
          X => X,
          Y => Y,
          Z => Z
        );

   -- Clock process definitions
   --<clock>_process :process
  -- begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin
	
      -- hold reset state for 100 ns.
      wait for 100 ns;	

    --  wait for <clock>_period*10;

      -- First line of truth table
		A <= '0';
		B <= '0';
		C <= '0';
		wait for 100 ns;
		
		-- Second line of truth table
		A <= '0';
		B <= '0';
		C <= '1';
		wait for 100 ns;
		
		-- Third line of truth table
		A <= '0';
		B <= '1';
		C <= '0';
		wait for 100 ns;
		
		-- Fourth line of truth table
		A <= '0';
		B <= '1';
		C <= '1';
		wait for 100 ns;
		
		-- Fifth line of truth table
		A <= '1';
		B <= '0';
		C <= '0';
		wait for 100 ns;
		
		-- Sixth line of truth table
		A <= '1';
		B <= '0';
		C <= '1';
		wait for 100 ns;
		
		-- Seventh line of truth table
		A <= '1';
		B <= '1';
		C <= '0';
		wait for 100 ns;
		
		-- Eighth line of truth table
		A <= '1';
		B <= '1';
		C <= '1';
		wait for 100 ns;

      wait;
   end process;

END;

## Wire Design

![alt text][Lab1_WireDesign.png]

[Lab1_WireDesign.png]: https://github.com/KevinCabusora/ECE281_Lab1/blob/master/Lab1_WireDesign.png?raw=true "Lab1_WireDesign.png"

## ISim Screenshot

![alt text][Lab1_Simulation.png]

[Lab1_Simulation.png]: https://github.com/KevinCabusora/ECE281_Lab1/blob/master/Lab%201_Simulation.png?raw=true "Lab1_Simulation.png"

## Analysis

The testbench simulation waveform matches the results on my truth table.
 - The testbench was ordered to take the two's complement for each value every 100 ns, which corresponds with the simulation.
 - For the first 100 ns, there is a reset state, explaining the lack of inputs or outputs.
 - From 100 ns to 900 ns, the inputs A, B, C and X, Y, Z outputs correspond to the waveform
 

============

# Lab Tasks

##.ucf File

# ==== Slide Switches (SW) ====
NET "C" LOC = "G18"; # Type = INPUT, Sch name = SW0
NET "B" LOC = "H18"; # Type = INPUT, Sch name = SW1
NET "A" LOC = "K18"; # Type = INPUT, Sch name = SW2

# LED outputs constraints
NET "Z"  LOC = "J14"; # Sch name = LD0
NET "Y"  LOC = "J15"; # Sch name = LD1
NET "X"  LOC = "K15"; # Sch name = LD2

## Debugging

For some reason, my testbench was not outputting correctly.  Fortunately, I found out that an apostrophe was missing in one of the three-bit tests.

## Testing

Upon testing the switches, all of the input A, B, C switches corresponded with the X, Y, and Z LED outputs.

## Final Schematic

==================

# Lab Functionality

2-bit functionality was tested and approved by Dr. Neebel.  8-bit functionality was not tested.
