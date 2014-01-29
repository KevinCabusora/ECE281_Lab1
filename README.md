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

![alt text][Lab1_VHDL.PNG]

[Lab1_VHDL.PNG]: https://github.com/KevinCabusora/ECE281_Lab1/blob/master/Lab1_VHDL.PNG?raw=true "Lab1_VHDL.PNG"


## Testbench

![alt text][Lab1_Testbench.PNG]

[Lab1_Testbench.PNG]: https://github.com/KevinCabusora/ECE281_Lab1/blob/master/Lab1_Testbench.PNG?raw=true "Lab1_Testbench.PNG"

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

![alt text][Lab_01_kcc.ucf.PNG]

[Lab_01_kcc.ucf.PNG]: https://github.com/KevinCabusora/ECE281_Lab1/blob/master/Lab_01_kcc.ucf.PNG?raw=true "Lab_01_kcc.ucf.PNG"

## Debugging

For some reason, my testbench was not outputting correctly.  Fortunately, I found out that an apostrophe was missing in one of the three-bit tests.

## Testing

Upon testing the switches, all of the input A, B, C switches corresponded with the X, Y, and Z LED outputs.

## Final Schematic

The schematic is still the same as the initial diagram.

==================

# Lab Functionality

2-bit functionality was tested and approved by Dr. Neebel.  8-bit functionality was not tested.
