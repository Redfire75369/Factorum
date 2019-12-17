#loader crafttweaker
#priority -00315
#packmode theta sigma omega

furnace.remove(<minecraft:quartz>);
furnace.remove(<thaumcraft:quicksilver>);

mods.techreborn.implosionCompressor.removeAll();
mods.techreborn.grinder.removeAll();
mods.techreborn.industrialGrinder.removeAll();

for key, dictGem in hashGem {
	if (hashOre has key) {
		mods.mekanism.enrichment.removeRecipe(hashOre[key], dictGem);
		mods.nuclearcraft.manufactory.removeRecipeWithInput(hashOre[key]);
		mods.nuclearcraft.manufactory.removeRecipeWithOutput(dictGem);
		for itemOre in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemOre);
			mods.enderio.SagMill.removeRecipe(itemOre);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemOre);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemOre);
		}
		for itemGem in dictGem.items {
			furnace.remove(itemGem);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemGem);
			mods.actuallyadditions.Crusher.removeRecipe(itemGem);
			mods.astralsorcery.Grindstone.removeRecipe(itemGem);
		}
	}
	if (hashDust has key) {
		for itemGem in dictGem.items {
			furnace.remove(itemGem);
		}
	}
	if (hashMolten has key) {
		for itemGem in dictGem.items {
			mods.tconstruct.Casting.removeTableRecipe(itemGem);
		}
	}
}
