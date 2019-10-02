#loader crafttweaker
#priority -00307

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
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashOre[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashOre[key]);
		for itemDust in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemDust);
			mods.bloodmagic.AlchemyTable.removeRecipe([itemDust, <bloodmagic:cutting_fluid>]);
			mods.enderio.SagMill.removeRecipe(itemDust);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemDust);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemDust);
			mods.integrateddynamics.Squeezer.removeRecipe(itemDust);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemDust);
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
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashIngot[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashIngot[key]);
		for itemDust in hashIngot[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemDust);
			mods.enderio.SagMill.removeRecipe(itemDust);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemDust);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemDust);
			mods.integrateddynamics.Squeezer.removeRecipe(itemDust);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemDust);
		}
	}
	if (hashGem has key) {
		mods.mekanism.crusher.removeRecipe(dictDust, hashGem[key]);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashGem[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashGem[key]);
		for itemDust in hashGem[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemDust);
			mods.enderio.SagMill.removeRecipe(itemDust);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemDust);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemDust);
			mods.integrateddynamics.Squeezer.removeRecipe(itemDust);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemDust);
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
	if ((hashOre has key)&&(!(hashGem has key))) {
		mods.techreborn.industrialGrinder.removeInputRecipe(hashOre[key]);
	}
	if (hashOre has key||hashIngot has key||hashGem has key) {
		for itemDust in dictDust.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemDust);
			mods.astralsorcery.Grindstone.removeRecipe(itemDust);
			mods.nuclearcraft.manufactory.removeRecipeWithOutput([itemDust]);
			mods.techreborn.grinder.removeRecipe(itemDust);
		}
	}
}