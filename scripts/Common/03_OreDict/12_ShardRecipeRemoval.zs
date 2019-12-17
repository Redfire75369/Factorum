#loader crafttweaker
#priority -00312
#packmode theta sigma omega

for key, dictShard in hashShard {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(dictShard * 4, hashOre[key], hashGas["HydrogenChloride"]);
	}
	if (hashCrystal has key) {
		mods.mekanism.purification.removeRecipe(dictShard, hashCrystal[key], hashGas["HydrogenChloride"]);
	}
}
