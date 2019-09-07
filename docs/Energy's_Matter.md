# Energy's Matter
Energy's Matter is a custom mod made for the pack Factorum Ultimation.
## Units
Item: 
Fluid: L - Litres
Energy: T - Tesla
Power: T/t - Tesla per Tick
Temperature: K - Kelvin
Time: t - Tick
**Note: Exact Values will be confirmed as of a later date**
## Power Generation

### Seebeck Generator
The Seebeck Generator uses heat to allow [Seebeck Effect](https://www.google.com/amp/s/searchnetworking.techtarget.com/definition/Seebeck-effect%3famp=1) 
to occur and produce electricity. The Seebeck Effect is a phenomenon where the temperature gradient between two different electrical 
conductors produces a charge poterntial and causes a a circuit to be formed. Heat source must be located beside Seebeck Generator.
It's temperature begins at 295 K and each lit furnace heats it up slowly by a max of 500 K per furnace. High temperatures also cause
problems in the Seebeck Generator's circuitry. Above 1295 K, the efficiency decreases by 0.05% per K is not cooled. At 3295 K or above,
machine explodes if not cooled. Above 10295 K, water is not a effective coolant. Cooling the Seebeck Generator is as simple as placing 
the colant directly under it. The Seebeck Generator produces energy linearly according to its current temperature. <br/>
**Note: All Heat Sources and Coolants Supported are listed below** <br/>
![Seebeck Effect](https://github.com/Redfire75369/FactorumUltimation/blob/master/docs/images/Seebeck_Effect.png)

| Process | Type | Use | Amount |
| ------------- | ------- | ------- | ------------- |
| Generate Power | Power | Output | 0.1 T/tK |
| Increase Temperature | Temperature | Output | 1 K/t |

### Fusion Reactor
The Fusion Reactor is a hollow multiblock that is 4×4×4 in size. It has a 2×2 chamber where a small amount of particles are injected and then 
used in a controlled fusion reaction. The energy released is collected and then complex circuitry outputs intense current that only be withstood 
by custom wires. The particles are injected with either a Particle Injector or a Particle Storage. Security measures help to ensure the energy 
of the reactor is used safely. They balance the energy levels inside the reactor and prevent catastrophe. They cause excess energy to be 
discharged into the ground or atmosphere. At its lowest tier, its efficiency of electrical energy collected to mass input is only 0.7%. At the 
highest tier, its efficiency is around 60%. <br/>
**Note: If the reactor is not switched off when editing the multiblock or the security measures fail to activate, a Stargate explosion will happen.**

--Inputs and Outputs
	--Energy
		--Initial Input: 
		--Input: 1.25 × 10<sup>4</sup> T/t
		--Output: 2.5 × 10<sup>9</sup> T/t
	
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
		- Tier 2: Uses <sup>12</sup>C, Carbon-12, <sup>15</sup>N, Nitrogen-15 and <sup>16</sup>O, Oxygen-16
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

| Process | Type | Use | Amount |
| ------------- | ------- | ------- | ------------- |
| Begin H-H Fusion | Fuel | Input | ??? |
| Begin H-H Fusion | Energy | Input | ??? |
| Maintain H-H Fusion | Fuel | Input | ??? |
| Maintain H-H Fusion | Power | Output | ??? |
| Generate Power with H-H Fusion | Power | Output | ??? |
| Begin D-T Fusion | Fuel | Input | ??? |
| Begin D-T Fusion | Energy | Input | ??? |
| Maintain D-T Fusion | Fuel | Input | ??? |
| Maintain D-T Fusion | Power | Output | ??? |
| Generate Power with D-T Fusion | Power | Output | ??? |
| Begin C-N-O Fusion | Fuel | Input | ??? |
| Begin C-N-O Fusion | Energy | Input | ??? |
| Maintain C-N-O Fusion | Fuel | Input | ??? |
| Maintain C-N-O Fusion | Power | Output | ??? |
| Generate Power with C-N-O Fusion | Power | Output | ??? |

| Upgrade | Type | Use | Change | Max Number |
| ------------- | --------- | ----- | ------------- | --------------------- |
| Speed | Fuel | Input | +??? | 4 |
| Speed | Power | Output | +??? | 4 |
| Speed | Security | Safety | -??? | 4 |
| Security | Fuel | Input | -??? | 4 |
| Security | Power | Output | -??? | 4 |
| Security | Security | Safety | +??? | 4 |
| Efficiency | Power | Output | +??? | 20 |
| Green<sup>^</sup> | Fuel | Input | +??? | 1 |
| Green<sup>^</sup> | Power | Output | +??? | 1 |

**Note: All Upgrades for the Fusion Reactor require a Tier 2 Reactor Control Panel** <br/>
<sup>^</sup> - Green Upgrade requires a fully upgraded Fusion Reactor to be installed <br/>
<sup>^</sup> - Green Upgrade allows about 50% of particles that are produced through the fusion reaction to be reinjected into the chamber, actively participating in secondary reactions


### Baryonic Annihilation Chamber
The Baryonic Annihilation Chamber allows matter and antimatter to come into contact in a safe environment.  When the 
antimatter comes into contact with each other, they will annihilate producing a large amount of energy, gamma rays, a 
form of ionising electromagnetic radiation and a neutrino, a high velocity particle with almost no mass. To prevent the 
escape of such dangerous particles and waves, the Baryonic Annihilation 
Chamber contains high power electromagnets that keep the antimatter from coming into contact with any other matter before the main 
annihilation reaction.


### Dyson Swarm Launch Pad

### Black Hole Reactor


## Resource Generation
Instead of the usual method of resource generation with Ex Nihilio Sieves or Sky Resources, this modpack uses an approach 
closer to ProjectE in the beginning and then FTB Achievements in the later game.

### Molecular Transmutator
The Molecular Transmutator transforms items into other items by rearranging its molecules. After feeding inputs into Molecular 
Transmutator, the player chooses an item out of a variety of output items. Output item will start to be materialised from the input 
items. The Molecular Transmutator can materialise items that have already been scanned,but cannot formulate any original	   
items. The Molecular Transmutator can only materialise raw and basic materials, not complex items or machinery. <br/>
**Note: If not provided adequate energy, inputs and energy are voided.**

| Process | Type | Use | Amount |
| ------------- | ------- | ------- | ------------- |
| Transmutation | Item | Input | 10 |
| Transmutation | Item | Output | 1 |
| Transmutation | Energy | Input | ??? |
| Transmutation | Time | Input | 80 t |

| Upgrade | Type | Use | Change | Max Number |
| ------------- | --------- | ----- | ------------- | --------------------- |
| Speed | Power | Input | +??? | 4 |
| Speed | Time | Input | -??? | 4 |
| Efficiency | Item | Input | -3% | 5 |
| Efficiency | Power | Input | +??? | 5 |
| Buffer | Energy | Storage | +??? | 1 |


### Quantum Computational Engine
The Quantum Computational Engine scans items and blocks and outputs their molecular schema, a schematic showing the location 
of every particle in the item. The Quantum Computational Engine sends a photon into the material being scanned to determine the 
location of every molecule in it. Computing the exact position of each molecule given the amplitude, frequency and wavelength of the 
photon is computationally intensive as many calculations are needed to simulate the photon's possible routes and determine which 
one it actually took. It then uses the state of the material, its molecular structure, its known composition, and some other factors, to 
calculate the most likely velocities of the molecules in it, according to the returning photon's properties. Due to the quintillions of 
molecules in each material being scanned, a quantum computer is needed to find all these values and return the location and most 
likely velocity of each molecule into a form readable by the Molecular Fabricator in a reasonable amount of time. A quantum bit (QBit) 
exists in a superposition of 50% chance of being a 0 and a 50% chance of being a 1. Only when its value is measured, does it collapse 
into one of the two states. Due to this property, quantum computers are able to compute large quantities of operation in parallel. As 
such, the time required for the mapping is only 6 minutes compared to the thousands of years it would take with a regular computer. 
The schema can also be copied onto another schema in a time of 3 minutes. When a molecular schema loses some information or its 
information is accidentally tampered by the Molecular Fabricator, the broken schema can be placed back into the Quantum Computational 
Engine along with a copy of the original item and it will be fixed over the course of 1 minute.When attempting to fix the schema, the item 
has a chance to be consumed as part of the process.

- Building Materials

| Process | Type | Use | Amount |
| Scanning Original Item | Item | Input | Unmapped Molecular Schema + Item to be Scanned|
| Scanning Original Item | Item | Output | Mapped Molecular Schema |
| Scanning Original Item | Power | Input | ??? |
| Scanning Original Item | Time | Input | ??? |
| Duplicating Molecular Schema | Item | Input | Mapped Molecular Schema + Unmapped Molecular Schema |
| Duplicating Molecular Schema | Item | Output | 2 × Mapped Molecular Schema |
| Duplicating Molecular Schema | Power | Input | ??? |
| Duplicating Molecular Schema | Time | Input | ??? |
| Repairing Molecular Schema | Item | Input | Broken Molecular Schema + Item |
| Repairing Molecular Schema | Item | Output | Mapped Molecular Schema + ??? × Item |
| Repairing Molecular Schema | Power | Input | ??? |
| Repairing Molecular Schema | Time | Input | ??? |



### Molecular Fabricator
The Molecular Fabricator uses the mappings inside a molecular schema to replicate the item with every particle in the same location. 
This is an energy intensive process, leading to a large energy draw to produce even one item.

- Building Materials 

## Other Machines

### Atmospheric Collector
The Atmospheric Collector contains a high power pump that sucks in air from the atmosphere. This air is passed though a graphene 
filter which filters out the hydrogen from the air. Graphene is a one atom thick layer of carbon atoms arranged in a hexagonal shape. 
The area of the hexagon is so small even <sup>4</sup>He, Helium atoms cannot pass through, leading to an effective filter for hydrogen. 
The hydrogen is then output into the Particle Injector. <br/>
**Note: If no Particle Injector is found, the hydrogen will be output back into the atmosphere, effectively voiding the operation**

| Process | Type | Use | Amount |
| ------------- | ------- | ------- | ------------- |
| Collection of Hydrogen | Energy | Input | ??? |
| Collection of Hydrogen | Time | Input | ??? |

		
### Antimatter Containment Facility


### Dyson Satellite Hangar


### Particle Accelerator


### Powered Crafting Table



## List of Heat Sources
| Heat Source | Temperature |
| --------------------- | --------------------- |
| Torch | 10 K |
| Uranium Block | 473 K |
| Lit Furnace | 500 K |
| Powered External Heater | 600 K |
| Blaze Mesh | 800 K |
| Fire | 800 K |
| Lava | 1000 K |
| Active Seared Heater | 1250 K |
| Magma Block | 1400 K |
| Hearth Coil | 1500 K |
| Firewater | 2000 K |
| Superheating Element | 3000 K |
| Blazing Pyrotheum | 4000 K |
| Awakened Draconium Block | 10000 K |


## List of Coolants
| Heat Source | Temperature |
| ------------------- | ------------------- |
| Water | 300 K |
| Snow Block | 268 K |
| Crushed Ice | 265 K |
| Ice | 263 K |
| Packed Ice| 253 K |
| Block of Enderium| 223 K |
| Liquid Dirt | 200 K |
| Gelid Cryotheum | 100 K |
| Vapor of Levity | 5 K |
| Liquid Helium | 4 K |