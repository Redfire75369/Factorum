#loader crafttweaker
#priority -10004
#norun

for key, dictDust in hashDust {
	if (hashOre has key) {
		recipes.addShapeless(key.toLowerCase() ~"_dust_petrotheum", dictDust.firstItem * 2, [
			hashOre[key], hashDust["Petrotheum"]
		]);
		
		mods.appliedenergistics2.Grinder.addRecipe(dictDust.firstItem, hashOre[key].firstItem, 8, dictDust.firstItem, 0.25, dictDust.firstItem, 0.01);
		mods.astralsorcery.Grindstone.addRecipe(hashOre[key].firstItem, dictDust.firstItem, 0.50);
		mods.enderio.SagMill.addRecipe([dictDust.firstItem, dictDust.firstItem, dictDust.firstItem], [1.00, 1.00, 0.60], hashOre[key], "CHANCE_ONLY", 1280, 0.050000);
		mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem * 2, hashOre[key], 5120, dictDust.firstItem, 0.10);
		mods.integrateddynamics.MechanicalSqueezer.addRecipe(hashOre[key], dictDust.firstItem, 1.00, dictDust.firstItem, 1.00, dictDust.firstItem, 0.05, null, 20);
		mods.integrateddynamics.Squeezer.addRecipe(hashOre[key], dictDust.firstItem, 1.00, dictDust.firstItem, 0.75, dictDust.firstItem, 0.01);
		mods.mekanism.enrichment.addRecipe(hashOre[key], dictDust.firstItem * 2);
	}
}