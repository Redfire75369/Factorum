#loader crafttweaker
#priority -00321
#packmode theta sigma omega

mods.techreborn.plateBendingMachine.removeAll();
mods.techreborn.compressor.removeAll();

for key, dictPlate in hashPlate {
	if (hashIngot has key) {
		recipes.removeShapeless(dictPlate, [
			hashIngot[key], <embers:tinker_hammer>
		]);
		recipes.removeShapeless(dictPlate, 
			[hashIngot[key], <immersiveengineering:tool>
		]);
		
		mods.nuclearcraft.pressurizer.removeRecipeWithOutput(dictPlate);
		for itemPlate in dictPlate.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemPlate);
			mods.thermalexpansion.Compactor.removePressRecipe(itemPlate);
		}
	}
	if (hashGem has key) {
		mods.nuclearcraft.pressurizer.removeRecipeWithOutput(dictPlate);
		for itemPlate in dictPlate.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemPlate);
			mods.thermalexpansion.Compactor.removePressRecipe(itemPlate);
		}
	}
	if (hashMolten has key) {
		for itemPlate in dictPlate.items {
			mods.embers.Stamper.remove(itemPlate);
			mods.tconstruct.Casting.removeTableRecipe(itemPlate);
		}
	}
}
