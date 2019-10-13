#loader crafttweaker
#priority -00311
#packmode theta sigma omega

for key, dictClump in hashClump {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(dictClump * 3, hashOre[key], hashGas["Oxygen"]);
	}
	if (hashShard has key) {
		mods.mekanism.purification.removeRecipe(dictClump, hashShard[key], hashGas["Oxygen"]);
	}
}
