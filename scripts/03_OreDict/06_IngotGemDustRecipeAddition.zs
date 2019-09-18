#loader crafttweaker
#priority -0306
#norun 

val processingTier1 = [

	

] as string[];

val processingTier2 = [

	

] as string[];lńp

val processingTier3 = [

	

] as string[];

/*
Minecraft:Furnace
Immersive Engineering: Arc Furnace
Tech Reborn: Blast Furnace
Thermal Expansion: Induction Smelter
*/

for key, dictIngot in hashIngot {
	if (hashOre has key) {
		if (!((processingTier1 has key)||(processingTier2 has key)||(processingTier3 has key))) {
			furnace.addRecipe(dictIngot.firstItem, hashOre[key], 0.100000);
		}
		if (processingTier1 has key) {
			mods.immersiveengineering.ArcFurnace.addRecipe(dictIngot.firstItem, hashOre[key], hashCrystal["Slag"].firstItem, 200, 128, [hashDust["Coal"]], "Ores");
			mods.techreborn.blastFurnace.addRecipe(dictIngot.firstItem, null, hashOre[key], hashDust["DarkAshes"], 200, 256, 1000);
			mods.thermalexpansion.InductionSmelter.addRecipe(dictIngot.firstItem * 2, hashOre[key].firstItem, sand, 6400, <minecraft:stone>, 75);
		}
		if (processingTier2 has key) {
			mods.techreborn.blastFurnace.addRecipe(dictIngot.firstItem, null, hashOre[key], hashDust["DarkAshes"], 200, 256, 1000);
			mods.thermalexpansion.InductionSmelter.addRecipe(dictIngot.firstItem * 2, hashOre[key].firstItem, sand, 25600, <minecraft:stone>, 50);
		}
		if (processingTier3 has key) {
			mods.thermalexpansion.InductionSmelter.addRecipe(dictIngot.firstItem * 2, hashOre[key].firstItem, sand, 102400, <minecraft:stone>, 25);
		}
	}
}