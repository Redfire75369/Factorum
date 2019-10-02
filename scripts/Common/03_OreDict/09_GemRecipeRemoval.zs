#loader crafttweaker
#priority -00309

furnace.remove(<minecraft:quartz>, hashCluster["Quartz"]);
furnace.remove(<thaumcraft:quicksilver>, hashCluster["Quicksilver"]);

for key, dictGem in hashGem {
	if (hashOre has key) {
		mods.mekanism.enrichment.removeRecipe(hashOre[key], dictGem);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashOre[key]]);
		mods.nuclearcraft.manufactory.removeRecipeWithOutput([dictGem]);
		mods.techreborn.grinder.removeInputRecipe(hashOre[key]);
		for itemOre in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemOre);
			mods.enderio.SagMill.removeRecipe(itemOre);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemOre);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemOre);
			mods.techreborn.grinder.removeInputRecipe(itemOre);
			mods.techreborn.industrialGrinder.removeInputRecipe(itemOre);
		}
		for itemGem in dictGem.items {
			furnace.remove(itemGem, hashOre[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemGem);
			mods.actuallyadditions.Crusher.removeRecipe(itemGem);
			mods.astralsorcery.Grindstone.removeRecipe(itemGem);
			mods.techreborn.grinder.removeRecipe(itemGem);
			mods.techreborn.industrialGrinder.removeRecipe(itemGem);
		}
	}
	if (hashDust has key) {
		for itemGem in dictGem.items {
			furnace.remove(itemGem, hashDust[key]);
			mods.techreborn.implosionCompressor.removeRecipe(itemGem);
		}
	}
	if (hashMolten has key) {
		for itemGem in dictGem.items {
			mods.tconstruct.Casting.removeTableRecipe(itemGem);
		}
	}
}
