#loader crafttweaker
#priority -00312
#packmode theta sigma omega

mods.mekanism.infuser.removeRecipe(hashDust["Bronze"], hashDust["Copper"], "TIN");
mods.mekanism.infuser.removeRecipe(hashDust["Steel"], <mekanism:enrichediron>, "CARBON");

for key, dictDust in hashDust {
	if (hashOre has key) {
		recipes.removeShapeless(dictDust, [
			hashOre[key], hashDust["Petrotheum"]
		]);
		recipes.removeShapeless(dictDust, [
			hashOre[key], <immersiveengineering:tool>
		]);
		
		mods.mekanism.enrichment.removeRecipe(hashOre[key], dictDust);
		mods.nuclearcraft.manufactory.removeRecipeWithInput(hashOre[key]);
		for itemOre in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemOre);
			mods.bloodmagic.AlchemyTable.removeRecipe([itemOre, <bloodmagic:cutting_fluid>]);
			mods.enderio.SagMill.removeRecipe(itemOre);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemOre);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemOre);
			mods.integrateddynamics.Squeezer.removeRecipe(itemOre);
			mods.techreborn.grinder.removeInputRecipe(itemOre);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemOre);
		}
	}
	if (hashDustDirty has key) {
		mods.mekanism.enrichment.removeRecipe(hashDustDirty[key], dictDust);
	}
	if (hashIngot has key) {
		recipes.removeShapeless(dictDust, [
			hashIngot[key], hashDust["Petrotheum"]
		]);
		
		mods.mekanism.crusher.removeRecipe(dictDust, hashIngot[key]);
		mods.nuclearcraft.manufactory.removeRecipeWithInput(hashIngot[key]);
		mods.techreborn.grinder.removeInputRecipe(hashIngot[key]);
		for itemIngot in hashIngot[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemIngot);
			mods.enderio.SagMill.removeRecipe(itemIngot);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemIngot);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemIngot);
			mods.integrateddynamics.Squeezer.removeRecipe(itemIngot);
			mods.techreborn.grinder.removeInputRecipe(itemIngot);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemIngot);
		}
	}
	if (hashGem has key) {
		mods.mekanism.crusher.removeRecipe(dictDust, hashGem[key]);
		mods.nuclearcraft.manufactory.removeRecipeWithInput(hashGem[key]);
		mods.techreborn.grinder.removeInputRecipe(hashGem[key]);
		for itemGem in hashGem[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemGem);
			mods.enderio.SagMill.removeRecipe(itemGem);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemGem);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemGem);
			mods.integrateddynamics.Squeezer.removeRecipe(itemGem);
			mods.techreborn.grinder.removeInputRecipe(itemGem);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemGem);
		}
	}
	if (hashDustSmall has key) {
		recipes.removeShapeless(dictDust,[
			hashDustSmall[key], hashDustSmall[key], hashDustSmall[key],
			hashDustSmall[key]
		]);
	}
	if (hashDustTiny has key) {
		recipes.removeShapeless(dictDust, [
			hashDustTiny[key], hashDustTiny[key], hashDustTiny[key],
			hashDustTiny[key], hashDustTiny[key], hashDustTiny[key],
			hashDustTiny[key], hashDustTiny[key], hashDustTiny[key]
		]);
	}
	if (hashOre has key||hashIngot has key||hashGem has key) {
		for itemDust in dictDust.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemDust);
			mods.astralsorcery.Grindstone.removeRecipe(itemDust);
			mods.nuclearcraft.manufactory.removeRecipeWithOutput(itemDust);
			mods.techreborn.grinder.removeRecipe(itemDust);
		}
	}
}
