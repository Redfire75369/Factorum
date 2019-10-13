#loader crafttweaker
#priority -00313
#packmode theta sigma omega

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
