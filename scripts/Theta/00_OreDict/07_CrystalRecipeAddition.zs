#loader crafttweaker
#priority -10007
#norun

/*
Mekanism: Chemical Injection Chamber
*/
for key, dictShard in hashShard {
	if (hashOre has key) {
		mods.mekanism.purification.addRecipe(hashOre[key], hashGas["HydrogenChloride"] * 100, dictShard.firstItem * 4);
	}
	if (hashCrystal has key) {
		mods.mekanism.purification.addRecipe(hashCrystal[key], hashGas["HydrogenChloride"] * 100, dictShard.firstItem);
	}
}
