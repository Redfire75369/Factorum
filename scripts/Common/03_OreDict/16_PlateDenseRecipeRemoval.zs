#loader crafttweaker
#priority -00316
#packmode theta sigma omega

for key, dictPlateDense in hashPlateDense {
	if (hashPlate has key) {
		mods.nuclearcraft.pressurizer.removeRecipeWithOutput([dictPlateDense]);
		for itemPlateDense in dictPlateDense.items {
			mods.techreborn.plateBendingMachine.removeRecipe(itemPlateDense);
		}
	}
}
