#loader crafttweaker
#priority -10000
#norun

/* Mekanism: Combiner */
for key, dictOre in hashOre {
	if (hashDust has key) {
		mods.mekanism.combiner.addRecipe(hashDust[key] * 32, <minecraft:stone>, dictOre.firstItem);
	}
}
mods.mekanism.combiner.addRecipe(oreDict["essenceInferium"] * 32, <minecraft:stone>, <mysticalagriculture:inferium_ore>);
mods.mekanism.combiner.addRecipe(oreDict["shardProsperity"] * 32, <minecraft:stone>, <mysticalagriculture:prosperity_ore>);