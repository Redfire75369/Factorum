#loader crafttweaker
#priority -0305
#norun

/*
Thaumcraft: Crucible
*/
for key, dictCluster in hashCluster {
	if (hashOre has key) {
		mods.thaumcraft.Crucible.registerRecipe(key ~ "Ore to Cluster Transmutation", "", dictCluster.firstItem, hashOre[key], []);
	}
}

/*
Mekanism: Crusher
*/
for key, dictDustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.addRecipe(hashClump[key], dictDustDirty.firstItem);
	}
}

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

/*
Mekanism: Chemical Crystallizer
*/
for key, dictCrystal in hashCrystal {
	if (hashSlurryClean has key) {
		mods.mekanism.purification.addRecipe(hashSlurryClean[key] * 200, dictCrystal.firstItem);
	}
}

/*
Tesla Powered Thingies:
*/