- Sequential circuits 
	- synchronous 
		- clocked ckts
	- asynchronous
		- logic gate delays act as storage, unstable

- Storage elements 
	- Latch
		- Level sensitive
	- Flip-flop 
		- Edge sensitive

- FPGA 
	- 2-dim logic cells
		- logic cell: LUT + DFF
	- programmable switches

	- contain macro cells
		- prefabbed
		- e.g. mem blocks, i/o intf ckts

- Spartan 3 
	- Logic cell
		- Four-input LUT 
			- Configurable as 16 x 1 SRAM / 16-bit shift register
		- D FF
		- Carry circuit 
			- arithmetic functions
		- Multiplexing Circuit
			- Wide multiplexers
		
		- 2 LC = Slice; 4 Slice = Configurable Logic Block (CLB)
			- special internal routing structure

	- Macro cells 
		- Combinational multiplier
			- multiply two 18-bit numbers
		- Block RAM
			- 18K-bit sync SRAM
		- Digital Clock Manager
			- Reduce block skew / control freq + phase-shift of a clock signal
		- IO Block
			- Control flow of data between internal logic and I/O pins

- Digilent S3 
	- 2Mbit platform flash PROM
		- Contains FPGA configuration data

	- VGA port 
		- Video Graphics Array
		- Interface to display devices 
		- Analog 
		- Replaced by HDMI / DisplayPort

	- RS-232 Serial Port 
		- Serial data interface into peripherals

	- RS-232 voltage level convertor 
		- converts RS-232 voltage levels to FPGA voltage levels

	- PS/2 port 
		- serial interface to mouse / keyboards

	- JTAG 
		- Port for testing / debugging / programming ICs
			- Allows accessing internal registers / memory
		- ICs come with border-scan cells around the perimter of the device that help with debugging / programming


- Development flow
	- HDL core + constraint + testbench 
	- RTL simulation
	- Synthesis
		- translate hdl construct to gates / FFs 
	- Implementation
		- translate
			- merge multiple design files into a single netlist
				- netlist: detailed description of electronic circuit that lists all components and interconnections
		- map
			- maps generic gates to FPGA's logic cells and IOBs
		- place and route
			- derive physical layout inside the FPGA
		- static timing analysis
			- performed at end of impl
			- determines maximal propagation delay 
			- determines maximal clock frequency
	- download configuration file to FPGA
	- functional simulation: after synthesis (not needed if HDL is good)
	- timing simulation: after implementation

- user-constraint file 
	- defines minimal clock frequency, signal to pin mappings

- icarus-verilog
	- first, file is preprocessed 
	- then, compiled to internal format 
	- then, elaborated to create hierarchies of modules and define scopes 
	- then, passed to code generate to generate vvp text format
	
- vvp
	- simulation runtime engine
