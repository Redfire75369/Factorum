#loader crafttweaker
#priority -00319

for key, dictBlock in hashBlock {
	if (hashIngot has key) {
		recipes.removeShaped(dictBlock, [
			[hashIngot[key], hashIngot[key], hashIngot[key]],
			[hashIngot[key], hashIngot[key], hashIngot[key]],
			[hashIngot[key], hashIngot[key], hashIngot[key]]
		]);
		recipes.removeShapeless(dictBlock, [
			hashIngot[key], hashIngot[key], hashIngot[key],
			hashIngot[key], hashIngot[key], hashIngot[key],
			hashIngot[key], hashIngot[key], hashIngot[key]
		]);
	}
	if (hashGem has key) {
		recipes.removeShaped(dictBlock, [
			[hashGem[key], hashGem[key], hashGem[key]],
			[hashGem[key], hashGem[key], hashGem[key]],
			[hashGem[key], hashGem[key], hashGem[key]]
		]);
		recipes.removeShapeless(dictBlock, [
			hashGem[key], hashGem[key], hashGem[key],
			hashGem[key], hashGem[key], hashGem[key],
			hashGem[key], hashGem[key], hashGem[key]
		]);
	}
	if (hashMolten has key) {
		for itemBlock in dictBlock.items {
			mods.tconstruct.Casting.removeBasinRecipe(itemBlock);
		}
	}
}
