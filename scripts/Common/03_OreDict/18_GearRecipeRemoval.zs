#loader crafttweaker
#priority -00318

for key, dictGear in hashGear {
	if (hashIngot has key) {
		recipes.removeShaped(dictGear, [
			[null, hashIngot[key], null],
			[hashIngot[key], hashIngot["Iron"], hashIngot[key]],
			[null, hashIngot[key], null]
		]);
		
		for itemIngot in hashIngot[key].items {
			mods.thermalexpansion.Compactor.removeGearRecipe(itemIngot);
		}
	}
	if (hashGem has key) {
		recipes.removeShaped(dictGear, [
			[null, hashGem[key], null],
			[hashGem[key], hashIngot["Iron"], hashGem[key]],
			[null, hashGem[key], null]
		]);
		
		for itemGem in hashGem[key].items {
			mods.thermalexpansion.Compactor.removeGearRecipe(itemGem);
		}
	}
}
