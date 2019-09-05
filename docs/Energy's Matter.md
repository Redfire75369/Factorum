## Energy's Matter
**Note: Exact Values will be confirmed as of a later date**
### Power Generation
This mod features various methods to generate power.

#### Seebeck Generator
The Seebeck Generator uses heat to allow Seebeck Effect to occur and produce electricity. Heat source must be located beside Seebeck Generator.
It's temperature begins at 295 K and each lit furnace heats it up slowly by a max of 500 K per furnace. High temperatures also cause
problems in the Seebeck Generator's circuitry. Above 1295 K, the efficiency decreases by 0.05% per K is not cooled. At 3295 K or above,
machine explodes if not cooled. Above 10295 K, water is not a effective coolant. Cooling the Seebeck Generator is as simple as placing 
the colant directly under it. The Seebeck Generator produces energy linearly according to its current temperature. <br/>
**Note: All Heat Sources Supported will be listed later**

- Inputs and Outputs
	- Energy
		- Output: 0.1 T/tK
	- Temperature
		- ???
	- Time
		- 1 t/K
	

#### Fusion Reactor
The Fusion Reactor is a hollow multiblock that is 4×4×4 in size. It has a 2×2 chamber where a small amount of particles 
are injected and then used in a controlled fusion reaction. The energy released is collected and then complex circuitry
outputs intense current that only be withstood by custom wires. The particles are injected with either a Particle Injector
or a Particle Storage. Security measures help to ensure the energy of the reactor is used safely. They balance the energy 
levels inside the reactor and prevent catastrphy. They cause excess energy to be discharged into the ground or atmosphere. 
At its lowest tier, its efficiency of electrical energy collected to mass input is only 0.7%. At the highest tier, its 
efficiency is around 60%. 
**Note: If the reactor is not switched off when editing the multiblock or the security measures fail to activate, a Stargate explosion will happen.**

- Inputs and Outputs
	- Energy
		- Initial Input: 5.0 × 10<sup>7</sup> T
		- Input: 1.25 × 10<sup>4</sup> T/t
		- Output: 2.5 × 10<sup>9</sup> T/t
	
- Building Materials
	- Cooling Pump (1 to 3){3 Tiers}
		- Tiers vary on efficiency and power requirements.
		- The higher the tier, the more power they require, but at the same time the energy produced by the reactor is
		  larger due to better security measures taken
		- Tiers 2 and 3 require a coolant. Tier 1 can also work with pure water
	- Particle Injector (0 to 2; Useless if Particle Storage is used)
		- Injects <sup>1</sup>H, Hydrogen from an Atmospheric Collector
			- Base Efficiency: 0.7%
		- Process is slow due to limitations in the motors of the Atmospheric Collector
	- Particle Storage {2 Tiers}
		- Tier 1: Uses <sup>2</sup>H, Deuterium and <sup>3</sup>H, Tritium
			- Base Efficiency: 1.9%
		- Tier 2: Uses <sup>12</sup>C, <sup>15</sup>N and <sup>16</sup>O
			- Base Efficiency: 5.0%
	- Power Controller {1 Tier}
		- Distributes power to the Fusion Reactor
	- Reactor Control Panel {2 Tiers}
		- Tier 1:
			- Can handle only the basic form of reactor (Collector and <sup>1</sup>H)
		- Tier 2:
			- Can handle both <sup>2</sup>H and <sup>3</sup>H & <sup>12</sup>C, <sup>15</sup>N and <sup>16</sup>O, 
			  but cannot communicate with the Particle Injector
			- Controls the Fusion Reactor, the reaction status, the security mechanisms and more...
			- Faster than Tier 1 when dealing with reactions
			- Supports upgrades
	- Exhaust Pipes (4) {4 Tiers}
		- They all must be of the same tier.
		- Each tier augments the efficiency of the reactor, by increasing the security measures and thus the energy
		  output
	- Output Collector (1 to 4)
		- Collects the energy gained and outputs it to the pipe it is attached to. If there is no pipe connected to it,
		  the energy is grounded through the structure of the reactor
		- Using more than one Output Collector means that the energy is divided between all of the collectors available
		  on the machine. This division is done randomly, so it may not necessarily be equal
	- Ground Turret (0 to 1)
		- It allows to discharge the unused energy into the atmosphere rather than the ground. Useful if you have no
		  sustainable structure under the reactor.
	- Upgrades (Tier 2 Reactor Control Panel Required)
		- Speed Upgrade(0 to 4)
			- Time: ???
			- Energy: ???
			- Security: ??? 
		- Security Upgrade (0 to 4)
			- Time: ???
			- Energy: ???
			- Security: ???
		- Efficiency Upgrade (0 to 20)
			- Output: +0.8%
		- Green Upgrade (Fully Upgraded Reactor Required)
			- Allows ~50% of the particles that are produced through the fusion reaction to be reinjected into the chamber, 
			  actively participating in secondary reactions
			- Time: -10%
			- Output: +10%

#### Black Hole Reactor
- 

### Resource Generation
Instead of the usual method of resource generation with Ex Nihilio Sieves or Sky Resources, this modpack uses an
approach closer to ProjectE in the beginning and then FTB Achievements in the later game.

#### Molecular Transmutator
The Molecular Transmutator transform items into other items by rearranging its molecules. After feeding inputs into Molecular 
Transmutator, the player chooses an item out of a variety of output items. Output item will start to be materialised from 
the input items. The Molecular Transmutator can items that have already been scanned,but cannot formulate any original items. 
The Molecular Transmutator can only materialise raw and basic materials and not complex items or machinery. 
**Note: If not provided adequate energy, inputs and energy are voided.**

- Inputs and Outputs
	- Matter
		- Ratio: 10:1 (Can be improved)
		- Efficiency: 10%
	- Energy
		- Input: 4.5×10<sup>4</sup> T
	- Time
		- 80 ticks

- Building Materials
	- Upgrades:
		- Speed Upgrade (0 to 4)
			- Energy: +25%
			- Time: -6 ticks
		- Efficiency Upgrade(0 to 5}
			- Matter Efficiency: +3%
			- Energy: +20%
		- Buffer Upgrade (0 to 1)
			- Power Storage: 9.0×10<sup>9</sup>


#### Atmospheric Collector
- Overview
The Atmospheric Collector uses its rotors and motors, it filters hydrogen out from the air. This hydrogen can be used by the Particle 
Injector to start a fusion reaction.

- Inputs and Outputs
	- Energy
		- Input: ???


#### Quantum Computational Engine
- Overview
The Quantum Computational Engine scans items and outputs a molecular schema of the item, a schematic showing the location of every particle 
in the item. Due to the immense amount of operations and memory needed to map out the location of every particle, it takes 6 minutes to produce 
one molecular schema. The Molecular Fabricator can use the molceular schema to form items.
**Note: The molecular schema lasts indefinitely.**

- Inputs and Outputs
	- Item
		- Input: Item to be replicated
		- Output: Molecular Structure
	- Energy
		- Input:
	- Time
		- ???
	
- Building Materials
	- ???


#### Molecular Fabricator
The Molecular Fabricator uses the mappings inside a molecular schema to replicate the item with every particle in the same location. This is an 
energy intensive process, leading to a large energy draw to produce even one item.
   
- Inputs and Outputs
    - ???
   
- Building Materials
	- ???
