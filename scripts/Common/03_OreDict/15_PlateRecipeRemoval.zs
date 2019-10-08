#loader crafttweaker
#priority -00315
#packmode theta sigma omega

mods.techreborn.blastFurnace.removeRecipe(<techreborn:plates:11>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:2>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:9>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:10>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:15>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:16>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:36>);
mods.techreborn.implosionCompressor.removeRecipe(<techreborn:plates:38>);

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
			mods.techreborn.plateBendingMachine.removeRecipe(itemPlate);
			mods.thermalexpansion.Compactor.removePressRecipe(itemPlate);
		}
	}
	if (hashGem has key) {
		mods.nuclearcraft.pressurizer.removeRecipeWithOutput(dictPlate);
		for itemPlate in dictPlate.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemPlate);
			mods.techreborn.plateBendingMachine.removeRecipe(itemPlate);
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
