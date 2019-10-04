#loader crafttweaker
#priority -10011
#norun

/*
Minecraft:Crafting Table
Actually Additions: Crusher
Applied Energistics 2: Quartz Grindstone
Astral Sorcery: Grindstone
Blood Magic: Alchemy Table
Ender IO: SAG Mill
Immersive Engineering: Crusher
Integrated Dynamics: Mechanical Squeezer + Squeezer
NuclearCraft: Manufactory
Mekanism: Enrichment Chamber
Tech Reborn: Grinder
Thermal Expansion: Pulverizer
*/
for key, dictDust in hashDust {
	if (hashOre has key) {
		recipes.addShapeless(key.toLowerCase() ~"_dust_petrotheum_with_ore", dictDust.firstItem * 2, [
			hashOre[key], hashDust["Petrotheum"]
		]);
		
		mods.actuallyadditions.Crusher.addRecipe(dictDust.firstItem * 2, hashOre[key].firstItem, dictDust.firstItem, 60);
		mods.appliedenergistics2.Grinder.addRecipe(dictDust.firstItem, hashOre[key].firstItem, 8, dictDust.firstItem, 0.25, dictDust.firstItem, 0.01);
		mods.astralsorcery.Grindstone.addRecipe(hashOre[key].firstItem, dictDust.firstItem, 0.50);
		mods.bloodmagic.AlchemyTable.addRecipe(dictDust.firstItem, [hashOre[key].firstItem, <bloodmagic:cutting_fluid>], 20, 10, 1);
		mods.enderio.SagMill.addRecipe([dictDust.firstItem, dictDust.firstItem, dictDust.firstItem], [1.00, 1.00, 0.60], hashOre[key], "CHANCE_ONLY", 2560, 0.050000);
		mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem * 2, hashOre[key], 5120, dictDust.firstItem, 0.10);
		mods.integrateddynamics.MechanicalSqueezer.addRecipe(hashOre[key], dictDust.firstItem, 1.00, dictDust.firstItem, 1.00, dictDust.firstItem, 0.05, null, 20);
		mods.integrateddynamics.Squeezer.addRecipe(hashOre[key], dictDust.firstItem, 1.00, dictDust.firstItem, 0.75, dictDust.firstItem, 0.01);
		mods.nuclearcraft.manufactory.addRecipe([hashOre[key], dictDust.firstItem, 1.0, 2.0, 0.0);
		mods.mekanism.enrichment.addRecipe(hashOre[key], dictDust.firstItem * 2);
		mods.techreborn.grinder.addRecipe(dictDust.firstItem * 2, hashOre[key], 20, 64);
		mods.thermalexpansion.Pulverizer.addRecipe(dictDust.firstItem * 2, hashOre[key].firstItem, 5000, dictDust.firstItem, 75);
	}
	if (hashIngot has key) {
		recipes.addShapeless(key.toLowerCase() ~"_dust_petrotheum_with_ingot", dictDust.firstItem * 2, [
			hashIngot[key], hashDust["Petrotheum"]
		]);
		
		mods.actuallyadditions.Crusher.addRecipe(dictDust.firstItem, hashIngot[key].firstItem, null, 100);
		mods.appliedenergistics2.Grinder.addRecipe(dictDust.firstItem, hashIngot[key].firstItem, 4, null, 1.00, null, 1.00);
		mods.astralsorcery.Grindstone.addRecipe(hashIngot[key], dictDust.firstItem, 0.00);
		mods.enderio.SagMill.addRecipe([dictDust.firstItem], [1.00], hashOre[key], "CHANCE_ONLY", 1280, 0.000000);
		mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem, hashIngot[key], 2560, null, 1.00);
		mods.nuclearcraft.manufactory.addRecipe([hashIngot[key], dictDust.firstItem, 1.0, 1.0, 0.0);
		mods.mekanism.crusher.addRecipe(hashIngot[key], dictDust.firstItem);
		mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashIngot[key], 20, 64);
		mods.thermalexpansion.Pulverizer.addRecipe(dictDust.firstItem, hashIngot[key].firstItem, 5000, null, 100);
	}
	if (hashGem has key) {
		recipes.addShapeless(key.toLowerCase() ~"_dust_petrotheum_with_gem", dictDust.firstItem * 2, [
			hashGem[key], hashDust["Petrotheum"]
		]);
		
		mods.actuallyadditions.Crusher.addRecipe(dictDust.firstItem, hashGem[key].firstItem, null, 100);
		mods.appliedenergistics2.Grinder.addRecipe(dictDust.firstItem, hashGem[key].firstItem, 4, null, 1.00, null, 1.00);
		mods.astralsorcery.Grindstone.addRecipe(hashGem[key], dictDust.firstItem, 0.00);
		mods.enderio.SagMill.addRecipe([dictDust.firstItem], [1.00], hashOre[key], "CHANCE_ONLY", 1280, 0.000000);
		mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem, hashGem[key], 2560, null, 1.00);
		mods.nuclearcraft.manufactory.addRecipe([hashGem[key], dictDust.firstItem, 1.0, 1.0, 0.0);
		mods.mekanism.crusher.addRecipe(hashGem[key], dictDust.firstItem);
		mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashGem[key], 20, 64);
		mods.thermalexpansion.Pulverizer.addRecipe(dictDust.firstItem, hashGem[key].firstItem, 5000, null, 100);
	}
}
