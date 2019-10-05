#loader crafttweaker
#priority -10005
#packmode theta sigma omega
#norun

/*
Mekanism: Purification Chamber
*/
for key, dictClump in hashClump {
	if (hashOre has key) {
		mods.mekanism.purification.addRecipe(hashOre[key], hashGas["Oxygen"] * 100, dictClump.firstItem * 3);
	}
	if (hashShard has key) {
		mods.mekanism.purification.addRecipe(hashShard[key], hashGas["Oxygen"] * 100, dictClump.firstItem);
	}
}
