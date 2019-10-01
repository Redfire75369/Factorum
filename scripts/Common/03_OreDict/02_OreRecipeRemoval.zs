#loader crafttweaker
#priority -00302

recipes.removeShapeless(<woot:stygianironore>);
mods.techreborn.fusionReactor.removeRecipe(<techreborn:ore:1>);
for key, dictOre in hashOre {
	if (hashDust has key) {
		mods.mekanism.combiner.removeRecipe(dictOre, hashDust[key], hashBlock["Cobblestone"]);
	}
}
