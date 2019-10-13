#loader crafttweaker
#priority -00322
#packmode theta sigma omega

mods.techreborn.plateBendingMachine.removeAll();
for key, dictPlateDense in hashPlateDense {
	if (hashPlate has key) {
		mods.nuclearcraft.pressurizer.removeRecipeWithOutput(dictPlateDense);
	}
}
