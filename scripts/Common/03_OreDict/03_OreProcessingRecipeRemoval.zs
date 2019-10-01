#loader crafttweaker
#priority -00303

/***** Clusters *****/
for key, dictCluster in hashCluster {
	for itemCluster in dictCluster.items {
		mods.thaumcraft.Crucible.removeRecipe(itemCluster);
	}
}

/***** Dirty Dusts *****/
for key, dictDustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.removeRecipe(dictDustDirty, hashClump[key]);
	}
}

/***** Clumps *****/
for key, dictClump in hashClump {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(dictClump * 3, hashOre[key], hashGas["Oxygen"]);
	}
	if (hashShard has key) {
		mods.mekanism.purification.removeRecipe(dictClump, hashShard[key], hashGas["Oxygen"]);
	}
}

/***** Shards *****/
for key, dictShard in hashShard {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(dictShard * 4, hashOre[key], hashGas["HydrogenChloride"]);
	}
	if (hashCrystal has key) {
		mods.mekanism.purification.removeRecipe(dictShard, hashCrystal[key], hashGas["HydrogenChloride"]);
	}
}

/***** Crystals *****/
recipes.remove(hashCrystal["Obsidian"]);
mods.cyclicmagic.Solidifier.removeShapedRecipe(<cyclicmagic:crystallized_amber>);

for key, dictCrystal in hashCrystal {
	if (key has "Empowered") {
		for itemCrystal in dictCrystal.items {
			mods.actuallyadditions.Empowerer.removeRecipe(itemCrystal);
		}
	}
	if (hashSlurryClean has key) {
		mods.mekanism.chemical.crystallizer.removeRecipe(dictCrystal, hashSlurryClean[key]);
	}
}
