#loader crafttweaker
#priority -00323
#packmode theta sigma omega

for key, dictRod in hashRod {
	if (hashIngot has key) {
		recipes.removeShaped(dictRod, [
			[hashIngot[key]],
			[hashIngot[key]]
		]);
		
		for itemRod in dictRod.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemRod);
		}
	}
	if (hashGem has key) {
		recipes.removeShaped(dictRod, [
			[hashGem[key]],
			[hashGem[key]]
		]);
		
		for itemRod in dictRod.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemRod);
		}
	}
}
