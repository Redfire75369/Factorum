# Incomplete Things for Pack
## CraftTweaker Log

## Scripts
### 03_OreDict/00_VariableDeclaration.zs
#### IItemStack[string]
- Add hashOreNether
- Add hashOreEnd
- Add hashOreDense
- Add hashChunk
- Add hashChunkRocky
- Add hashLumpAugmented
- Add hashLumpTesla
- Add hashGlassHardened
- Add hashWall
- Add hashFence
- Add hashStairs
- Add hashSlab

#### ILiquidStack[string]
- Add hashLiquid
- Add hashMolten
- Add hashSearing
- Add hashHot
- Add hashCool

### 03_OreDict/01_OreDictionaryManipulation.zs
Use Functions for OreDictionary Replacement

### 03_OreDict/02_RecipeRemoval.zs
- Make sure all recipes are removed for:
	- Ores
		- Crafting
			- Stygian Iron
		- Combiner
			- Gold
			- Iron
			- Coal
			- Lapis
			- Diamond
			- Emerald
			- Nether Quartz
			- Cyclic Nether/End Ores
			- Prosperity(All Varients)
			- Inferium(All Varients)
			- Uranium Ore(NuclearCraft)
			- Thermal Foundation Ores Except Mana Infused
		- Crucible
			- Light
			- Shaded
		- Fusion Control Computer
			- Iridium Ore(Tech Reborn)
	- Clusters
		- Crucible
			- Thorium
	- Dirty Dusts
		- NIL
	- Clumps
		- Purification Chamber
			- Iron(Cyclic Ores)
			- Gold(Cyclic Ores)
			- Copper(Ores)
			- Tin(Ores)
			- Silver(Ores)
			- Lead(Ores)
	- Shards
		- Chemical Injection Chamber
			- All(Ores)
			- All(Crystals)
	- Crystals
		- NIL
	- Ingots
		- Crafting
			- Black Iron
			- Mystical Agriculture
			- Spectre
		- Furnace
			- Ore Ingot(Rocky Chunk/CHunk)
			- Iron(Dust)
			- Iron(Cyclic Ores)
			- Silver(Bewitchment)(Ore)
			- Manasteel(Dust)
			- Embers Ingots(Ores)
			- Steel(Extreme Reactors)(Dust)
			- Forestry(Ingot)
			- Immersive Engineering(Dust/Ore)
			- Meat(Raw Meat)
			- Mystic World(Ore)
		- Crucible
			- Alkimium
			- Bismuth
		- Osmium Compressor
			- Refined Obsidian
			- Refined Glowstone
	- Gems
	- Clathrates
	- Nuggets
	- Dusts
	- Small Dusts
	- Tiny Dust
	- Plates
		- Plate Bending Machine
		- Crushing Table
		- Crusher(Magneticraft)
	- Dense Plates
		- NIL
	- Rods
		- NIL
	- Gears
		- Metal Press
	- Blocks
	
- Remove all recipes for
	- Gases
	- Slurries 
	- Clean Slurries 
## Config
### enderzoo/EnderZoo.cfg
- potions {} 
## Check What these Items are:
- Apotheosis: Everything

## Additions?
- IOreDictEntry:
	- blockChorus to integrateddynamics:crystallised_chorus_block
	- blockMenril to integrateddynamics:crystallised_menril_block

## Removals?
- IItemStack: 
	- bewitchment:silver_block (And Chiseled Forms)

## Choices
- IItemStack:
	- immersiveengineering:material:6 & thermalfoundation:material:802
	- immersiveengineering:stone_decoration:3 & thermalfoundation:storage_resource:1
- IOreDictEntry:
	- dustSulfur & dustSulphur
	- dustNiter & dustSaltpeter

## Recipe Changes
- Actually Additions Basic Machines require Actually Additions Casing/ Wood Casing
- Actually Additions Advanced Machines require Actually Additions Ender Casing
- AIOTs/ Paxels require higher tier rods (Metal Rods/ Blaze Rods/ End Rods)

## Ore Dictionary Additions
- plankInfused to astralsorcery:blockinfusedwood:*
- logDream to botania:dreamwood
- logWood to botania:dreamwood
- plankDream to botania:dreamwood:1
- plankWood to botania:dreamwood:1
- plankDream to botania:dreamwood:2
- plankWood to botania:dreamwood:2
- plankDream to botania:dreamwood:3
- plankWood to botania:dreamwood:3
- plankDream to botania:dreamwood:4
- plankWood to botania:dreamwood:4
- plankDream to botania:dreamwood:5
- plankWood to botania:dreamwood:5
- slabDreamLog to botania:dreamwood0slab
- slabLog to botania:dreamwood0slab
- stairsDreamLog to dreamwood0stairs
- stairsLog to dreamwood0stairs
- wallDream to botania:dreamwood0wall
- wallWood to botania:dreamwood0wall
- slabDream to botania:dreamwood1slab
- slabWood to botania:dreamwood1slab
- stairsDream to botania:dreamwood1stairs
- stairsWood to botania:dreamwood1stairs
- stoneLiving to botania:livingrock
- bricksLiving to botania:livingrock:1
- bricksLiving to botania:livingrock:2
- bricksLiving to botania:livingrock:3
- bricksLiving to botania:livingrock:4
- slabLivingStone to botania:livingrock0slab
- slabStone to botania:livingrock0slab
- stairsLivingStone to botania:livingrock0stairs
- stairsStone to botania:livingrock0stairs
- wallLivingStone to botania:livingrock0wall
- wallStone to botania:livingrock0wall
- slabLivingBricks to botania:livingrock1slab
- slabBricks to botania:livingrock1slab
- stairsLivingBricks to botania:livingrock1stairs
- stairsBricks to botania:livingrock1stairs
- logLiving to botania:livingwood
- logWood to botania:livingwood
- plankLiving to botania:livingwood:1
- plankWood to botania:livingwood:1
- plankLiving to botania:livingwood:2
- plankWood to botania:livingwood:2
- plankLiving to botania:livingwood:3
- plankWood to botania:livingwood:3
- plankLiving to botania:livingwood:4
- plankWood to botania:livingwood:4
- plankLiving to botania:livingwood:5
- plankWood to botania:livingwood:5
- slabLivingLog to botania:livingwood0slab
- slabLog to botania:livingwood0slab
- stairsLivingLog to livingwood0stairs
- stairsLog to livingwood0stairs
- wallLiving to botania:livingwood0wall
- wallWood to botania:livingwood0wall
- slabLiving to botania:livingwood1slab
- slabWood to botania:livingwood1slab
- stairLiving to botania:livingwood1stairs
- stairWood to botania:livingwood1stairs
- itemSkull to enderio:enderman_head:2
- plankWood to immersiveengineering:treated_wood:*
- slabWood to immersiveengineering:treated_wood_slab:*
- stairTreatedWood to immersiveengineering:treated_wood_stairs:*
- stairWood to immersiveengineering:treated_wood_stairs:*
- bricksStone to minecraft:stonebrick:1
- bricksStone to minecraft:stonebrick:2
- bricksStone to minecraft:stonebrick:3
- energyTablet to mekanism:energytablet

## Ore Dictionary Removal
- dreamwood from botania:dreamwood
- livingrock from botania:livingrock
- livingwood from botania:livingwood
- manaPearl from botania:manaresource:1
- manaDiamond from botania:manaresource:2
- livingwoodTwig from botania:manaresource:3
- redstoneRoot from botania:manaresource:6
- elvenDragonstone from botania:manaresource:9
- bPlaceholder from botania:manaresource:11
- bRedString from botania:manaresource:12
- dreamwoodTwig from botania:manaresource:13
- bEnderAirBottle from botania:manaresource:15
- manaString from botania:manaresource:16
- quartzDark from botania:quartz
- runeWaterB from botania:rune
- runeFireB from botania:rune:1
- runeEarthB from botania:rune:2
- runeAirB from botania:rune:3
- runeSpringB from botania:rune:4
- runeSummerB from botania:rune:5
- runeAutumnB from botania:rune:6
- runeWinterB from botania:rune:7
- runeManaB from botania:rune:8
- runeLustB from botania:rune:9
- runeGluttonyB from botania:rune:10
- runeGreedB from botania:rune:11
- runeSlothB from botania:rune:12
- runeWrathB from botania:rune:13
- runeEnvyB from botania:rune:14
- runePrideB from botania:rune:15
- bVial from botania:vial
- bFlask from botania:vial:1

## Scaffolding For Unifying Ore Dictionaries
for ingredient, product in hashFurnace{
	var primary = product[0].items;
	var secondary = product[1].items;
	var tertiary = product[2].items;
	var quaternary = product[3].items;
	var ore = ingredient[0];
	var dust = ingredient[1];
	var cluster = ingredient[2];
	furnace.addRecipe(primary, ore, 0.050000);
	furnace.addRecipe(primary, dust, 0.000000);
	furnace.addRecipe(primary * 2, cluster, 0.100000);
	mods.techreborn.blastFurnace.addRecipe(primary * 2, secondary, ore * 2, null, 100, 256, 1200);
}