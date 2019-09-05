## Energy's Matter
**Note: Exact Values will be confirmed as of a later date**
### Power Generation
This mod features various methods to generate power.

#### Seebeck Generator
- Overview
	- Uses furnace heat to allow Seebeck Effect to occur and produce electricity
		- Place Heat Source directly beside it
		- All heating machines are supported
	- Starts at 295 K and heats up slowly by a max of 500 K per furnace
	- Above 1295 K, efficiency decreases by 0.05% per K if not cooled
	- Above 3295 K, machine explodes if not cooled
	- To cool machine, place coolant under the Seebeck Generator
	- Power produced is directly proportional to the temperature of the Seebeck Generator

- Inputs and Outputs
	- Energy
		- Output: 1 T/tK
	- Temperature
		- ???
	- Time
		- 1 t/K
	

#### Fusion Reactor
- Overview
	- Hollow multiblock that is 4x4 in size
	- It has in the middle a 2×2 chamber where a small amount of particles are injected and then used in a controlled
	  is used in a fusion reaction
	- The collected energy is then used in custom circuitry and outputted into custom pipes that can withstand the
	  intense current
	- Particles can be injected into the chamber either with the usage of a Particle Injector or a Particle Storage
	- The reactor has some security measures built-in: for this reason the energy output is balanced around the energy
	  that it is actually required. Additional energy is discharged on ground (if possible, otherwise...)
	- The reactor must be off and no reaction must be in progress before attempting to edit the multiblock. Otherwise,
	  the Stargate explosion is just a firework
	- In its lowest tier, only the 0.7% of energy is harvested. The higher the reactor can achieve is around 60%
	
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
		- Injects particles from an Atmospheric Collector
		- Process is slow due to limitations in the motors of the Atmospheric Collector
	- Particle Storage {2 Tiers}
		- Tier 1: Uses <sup>2</sup>H and <sup>3</sup>H
			- Base Efficiency: 0.7%
		- Tier 2: Uses C, N and O
			- Base Efficiency: 5.0%
	- Power Controller {1 Tier}
		- Distributes power to the Fusion Reactor
	- Reactor Control Panel {2 Tiers}
		- Tier 1:
			- Can handle only the basic form of reactor (Collector and <sup>2</sup>H and <sup>3</sup>H)
		- Tier 2:
			- Can handle both types of reactors, but cannot communicate with the Particle Injector
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
			- Allows ~50% of the particles that are produced through the fusion reaction to be reinjected into the chamber, actively participating in secondary reactions
			- Time: -10%
			- Output: +10%

#### Black Hole Reactor
- 

### Resource Generation
Instead of the usual method of resource generation with Ex Nihilio Sieves or Sky Resources, this modpack uses an
approach closer to ProjectE in the beginning and then FTB Achievements in the later game.
- The generator outputs one item to a nearby inventory (up, down, clockwise).
- The controller requires a molecular schema so that it can combine the items. That molecular schema needs to be created
  from another machine and consumes a certain quantity of items according to the difficulty settings and the complexity
  of it.

#### Molecular Transmutator
- Overview
	- Transforms items into other items
	- After feeding items in the machine, a variety of output item choices are provided. Once the proper energy has been added, the output item choice can be materialised
	- Items fed into the Transmutator can be replicated, but cannot originally be formulated by the machine
	- Limited to raw materials. Unable to create complex items or machinery
	- If not provided adequate energy, inputs and energy is voided.

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
	- A simple single block machine that can extract raw Hydrogen from the atmosphere.
	- It works very slowly.

- Inputs and Outputs
	- Energy
		- Input: ???


#### Quantum Computational Engine
- Overview
	- Scans an item and outputs a molecular schema of the item for use by the 
	  Molecular Generator
	- The molecular schema lasts indefinitely

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
- Overview
    - Given a molecular schema, it replicates the item that was used to make the molceular schema
    - Takes large amounts of energy
   
- Inputs and Outputs
    - ???
   
- Building Materials
	- ???
