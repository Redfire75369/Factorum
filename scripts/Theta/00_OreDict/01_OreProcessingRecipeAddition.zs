
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
