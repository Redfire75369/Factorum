#loader crafttweaker
#priority -10002
#norun 

/*
Minecraft:Furnace
Immersive Engineering: Arc Furnace
Tech Reborn: Blast Furnace
Thermal Expansion: Induction Smelter
*/

for key, dictIngot in hashIngot {
	if (hashOre has key) {
		furnace.addRecipe(dictIngot.firstItem, hashOre[key], 0.100000);
		mods.immersiveengineering.ArcFurnace.addRecipe(dictIngot.firstItem, hashOre[key], slag, 100, 256, [], "Ores");
		mods.techreborn.blastFurnace.addRecipe(dictIngot.firstItem, hashDust["DarkAshes"].firstItem, hashOre[key], null, 50, 256, 1000).setUseOreDict(true);
		mods.thermalexpansion.inductionSmelter.addRecipe(dictIngot.firstItem, hashOre[key].firstItem, sand, 6400, slag, 15);
	}
}
