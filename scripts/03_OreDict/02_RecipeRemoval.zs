#loader crafttweaker
#priority -0302

import crafttweaker.oredict.IOreDictEntry;

/***** Ores *****/
for key, ore in hashOre {
	if (hashDust has key) {
		mods.mekanism.combiner.removeRecipe(ore, hashDust[key], hashBlock["Cobblestone"]);
	}
}

/***** Clusters *****/
for key, cluster in hashCluster {
	for itemCluster in cluster.items {
		mods.thaumcraft.Crucible.removeRecipe(itemCluster);
	}
}

/***** Dirty Dusts *****/
for key, dustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.removeRecipe(dustDirty, hashClump[key]);
	}
}

/***** Clumps *****/
for key, clump in hashClump {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(clump, hashOre[key]);
	}
	if (hashShard has key) {
		mods.mekanism.purification.removeRecipe(clump, hashShard[key]);
	}
}

/***** Shards *****/
for key, shard in hashShard {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(shard, hashOre[key]);
	}
	if (hashCrystal has key) {
		mods.mekanism.purification.removeRecipe(shard, hashCrystal[key]);
	}
}

/***** Crystals *****/
recipes.remove(hashCrystal["Obsidian"]);
mods.cyclicmagic.Solidifier.removeShapedRecipe(<cyclicmagic:crystallized_amber>);

for key, crystal in hashCrystal {
	if (key has "Empowered") {
		for itemCrystal in crystal.items {
			mods.actuallyadditions.Empowerer.removeRecipe(itemCrystal);
		}
	}
	if (hashSlurryClean has key) {
		mods.mekanism.chemical.crystallizer.removeRecipe(crystal, hashSlurryClean[key]);
	}
}

/***** Ingots *****/
recipes.removeShaped(hashIngot["BaseEssence"], [
	[null, oreDict["shardProsperity"] , null],
	[oreDict["shardProsperity"], hashIngot["Iron"], oreDict["shardProsperity"]],
	[null, oreDict["shardProsperity"] , null]]);
recipes.removeShaped(hashIngot["Blutonium"], [
	[hashIngot["Cyanite"], hashIngot["Cyanite"], hashIngot["Cyanite"]],
	[hashIngot["Cyanite"], null, hashIngot["Cyanite"]],
	[hashIngot["Cyanite"], hashIngot["Cyanite"], hashIngot["Cyanite"]]]);
recipes.removeShapeless(hashIngot["Bronze"],
	[hashIngot["Tin"], hashIngot["Copper"], hashIngot["Copper"], hashIngot["Copper"]]);
recipes.removeShaped(hashIngot["CrystalMatrix"], [
	[<avaritia:resource>, oreDict["starNether"], <avaritia:resource>],
	[<avaritia:resource>, oreDict["starNether"], <avaritia:resource>]]);
recipes.removeShaped(hashIngot["EbonyPsi"], [
	[oreDict["substanceEbony"], oreDict["substanceEbony"], oreDict["substanceEbony"]],
	[oreDict["substanceEbony"], hashIngot["Psi"], oreDict["substanceEbony"]],
	[oreDict["substanceEbony"], oreDict["substanceEbony"], oreDict["substanceEbony"]]]);
recipes.removeShaped(hashIngot["Inferium"], [
	[null, oreDict["essenceInferium"] , null],
	[oreDict["essenceInferium"], hashIngot["BaseEssence"], oreDict["essenceInferium"]],
	[null, oreDict["essenceInferium"] , null]]);
recipes.removeShaped(hashIngot["Insanium"], [
	[null, oreDict["essenceInsanium"] , null],
	[oreDict["essenceInsanium"], hashIngot["Superium"], oreDict["essenceInsanium"]],
	[null, oreDict["essenceInsanium"] , null]]);
recipes.removeShaped(hashIngot["Intermedium"], [
	[null, oreDict["essenceIntermedium"] , null],
	[oreDict["essenceIntermedium"], hashIngot["Prudenfium"], oreDict["essenceIntermedium"]],
	[null, oreDict["essenceIntermedium"] , null]]);
recipes.removeShaped(hashIngot["IridiumAlloy"], [
	[hashIngot["Iridium"], hashPlate["AdvancedAlloy"], hashIngot["Iridium"]],
	[hashPlate["AdvancedAlloy"], hashGem["Diamond"], hashPlate["AdvancedAlloy"]],
	[hashIngot["Iridium"], hashPlate["AdvancedAlloy"], hashIngot["Iridium"]]]);
recipes.removeShaped(hashIngot["IvoryPsi"], [
	[oreDict["substanceIvory"], oreDict["substanceIvory"], oreDict["substanceIvory"]],
	[oreDict["substanceIvory"], hashIngot["Psi"], oreDict["substanceIvory"]],
	[oreDict["substanceIvory"], oreDict["substanceIvory"], oreDict["substanceIvory"]]]);
recipes.removeShaped(hashIngot["Prudentium"], [
	[null, oreDict["essencePrudentium"] , null],
	[oreDict["essencePrudentium"], hashIngot["Inferium"], oreDict["essencePrudentium"]],
	[null, oreDict["essencePrudentium"] , null]]);
recipes.removeShaped(hashIngot["Superium"], [
	[null, oreDict["essenceSuperium"] , null],
	[oreDict["essenceSuperium"], hashIngot["Supremium"], oreDict["essenceSuperium"]],
	[null, oreDict["essenceSuperium"] , null]]);
recipes.removeShaped(hashIngot["Supremium"], [
	[null, oreDict["essenceSupremium"] , null],
	[oreDict["essenceSupremium"], hashIngot["Intermedium"], oreDict["essenceSupremium"]],
	[null, oreDict["essenceSupremium"] , null]]);

mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:3>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:6>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:8>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:12>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:14>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:15>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:16>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:19>);
mods.techreborn.vacuumFreezer.removeRecipe(<techreborn:ingot:17>);

for key, ingot in hashIngot {
	if (hashOre has key) {
		recipes.removeShapeless(ingot, 
			[hashOre[key], hashDust["Pyrotheum"]]);
		recipes.removeShapeless(ingot, 
			[hashOre[key], hashDust["Petrotheum"], hashDust["Pyrotheum"]]);
		
		for itemIngot in hashOre[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemIngot, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemIngot, cinnabar);
		}
		for itemIngot in ingot.items {
			furnace.remove(itemIngot, hashOre[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemIngot);
		}
	}
	if (hashCluster has key) {
		for itemIngot in ingot.items {
			furnace.remove(itemIngot, hashCluster[key]);
		}
	}
	if (hashNugget has key) {
		recipes.removeShaped(ingot, [
			[hashNugget[key], hashNugget[key], hashNugget[key]],
			[hashNugget[key], hashNugget[key], hashNugget[key]],
			[hashNugget[key], hashNugget[key], hashNugget[key]]]);
		recipes.removeShapeless(ingot, 
			[hashNugget[key], hashNugget[key], hashNugget[key], hashNugget[key], hashNugget[key], hashNugget[key], hashNugget[key], hashNugget[key], hashNugget[key]]);
	}
	if (hashDust has key) {
		recipes.removeShapeless(ingot, [hashDust[key], hashDust["Pyrotheum"]]);
		
		for itemIngot in hashDust[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemIngot, sand);
		}
		for itemIngot in ingot.items {
			furnace.remove(itemIngot, hashDust[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemIngot);
		}
	}
	if (hashBlock has key) {
		recipes.removeShapeless(ingot, 
			[hashBlock[key]]);
	}
	if (hashMolten has key) {
		for itemIngot in ingot.items {
			mods.embers.Stamper.remove(itemIngot);
			mods.tconstruct.Casting.removeTableRecipe(itemIngot);
		}
	}
}

/***** Gems *****/
furnace.remove(<minecraft:quartz>, hashCluster["Quartz"]);
furnace.remove(<thaumcraft:quicksilver>, hashCluster["Quicksilver"]);

for key, gem in hashGem {
	if (hashOre has key) {
		mods.mekanism.enrichment.removeRecipe(hashOre[key], gem);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashOre[key]]);
		mods.nuclearcraft.manufactory.removeRecipeWithOutput([gem]);
		mods.techreborn.grinder.removeInputRecipe(hashOre[key]);
		mods.techreborn.industrialGrinder.removeInputRecipe(hashOre[key]);
		for itemGem in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemGem);
			mods.enderio.SagMill.removeRecipe(itemGem);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemGem);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemGem);
		}
		for itemGem in gem.items {
			furnace.remove(itemGem, hashOre[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemGem);
			mods.actuallyadditions.Crusher.removeRecipe(itemGem);
			mods.astralsorcery.Grindstone.removeRecipe(itemGem);
			mods.techreborn.grinder.removeRecipe(itemGem);
			mods.techreborn.industrialGrinder.removeRecipe(itemGem);
		}
	}
	if (hashDust has key) {
		for itemGem in gem.items {
			furnace.remove(itemGem, hashDust[key]);
			mods.techreborn.implosionCompressor.removeRecipe(itemGem);
		}
	}
	if (hashMolten has key) {
		for itemGem in gem.items {
			mods.tconstruct.Casting.removeTableRecipe(itemGem);
		}
	}
}

/***** Clathrates *****/
/* Input: Pulverizer */
for key, clathrate in hashClathrate {
	if (hashOreClathrate has key) {
		for itemOreClathrate in hashOreClathrate[key].items {
			mods.thermalexpansion.Pulverizer.removeRecipe(itemOreClathrate);
		}
	}
}

/***** Nuggets *****/

for key, nugget in hashNugget {
	if (hashIngot has key) {
		recipes.removeShapeless(nugget,
			[hashIngot[key]]);
	}
	if (hashGem has key) {
		recipes.removeShapeless(nugget,
			[hashGem[key]]);
	}
	if (hashMolten has key) {
		for itemNugget in nugget.items {
			mods.embers.Stamper.remove(itemNugget);
			mods.tconstruct.Casting.removeTableRecipe(itemNugget);
		}
	}
}

/***** Dusts *****/
mods.mekanism.infuser.removeRecipe(hashDust["Bronze"], hashDust["Copper"], "TIN");
mods.mekanism.infuser.removeRecipe(hashDust["Steel"], <mekanism:enriched_iron>, "CARBON");

for key, dust in hashDust {
	if (hashOre has key) {
		recipes.removeShapeless(dust,
			[hashOre[key], hashDust["Petrotheum"]]);
		recipes.removeShapeless(dust,
			[hashOre[key], <immersiveengineering:tool>]);
		
		mods.mekanism.enrichment.removeRecipe(hashOre[key], dust);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashOre[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashOre[key]);
		mods.techreborn.industrialGrinder.removeInputRecipe(hashOre[key]);
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
		mods.mekanism.enrichment.removeRecipe(hashDustDirty[key], dust);
	}
	if (hashIngot has key) {
		recipes.removeShapeless(dust,
			[hashIngot[key], hashDust["Petrotheum"]]);
		
		mods.mekanism.crusher.removeRecipe(dust, hashIngot[key]);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashIngot[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashIngot[key]);
		mods.techreborn.industrialGrinder.removeInputRecipe(hashIngot[key]);
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
		mods.mekanism.crusher.removeRecipe(dust, hashGem[key]);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashGem[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashGem[key]);
		mods.techreborn.industrialGrinder.removeInputRecipe(hashGem[key]);
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
		recipes.removeShapeless(dust,
			[hashDustSmall[key], hashDustSmall[key], hashDustSmall[key], hashDustSmall[key]]);
	}
	if (hashDustTiny has key) {
		recipes.removeShapeless(dust,
			[hashDustTiny[key], hashDustTiny[key], hashDustTiny[key], hashDustTiny[key], hashDustTiny[key], hashDustTiny[key], hashDustTiny[key], hashDustTiny[key], hashDustTiny[key]]);
	}
	if (hashOre has key||hashIngot has key||hashGem has key) {
		for itemDust in dust.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemDust);
			mods.astralsorcery.Grindstone.removeRecipe(itemDust);
			mods.nuclearcraft.manufactory.removeRecipeWithOutput([itemDust]);
			mods.techreborn.grinder.removeRecipe(itemDust);
			mods.techreborn.industrialGrinder.removeRecipe(itemDust);
		}
	}
}

/***** Small Dusts *****/
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:10>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:54>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:59>);
mods.techreborn.industrialGrinder.removeRecipe(<techreborn:smalldust:5>);
mods.techreborn.industrialGrinder.removeRecipe(<techreborn:smalldust:59>);

for key, dustSmall in hashDustSmall {
	if (hashDust has key) {
		recipes.removeShaped(dustSmall, [
			[null, null],
			[null, hashDust[key]]]);
		recipes.removeShapeless(dustSmall, [
			hashDust[key]]);
	}
}


/***** Tiny Dusts *****/
for key, dustTiny in hashDustTiny {
	if (hashDust has key) {
		recipes.removeShaped(dustTiny, [
			[hashDust[key], null],
			[null, null]]);
	}
}

/***** Plates *****/
mods.techreborn.blastFurnace.removeRecipe(<techreborn:plates:11>);
mods.techreborn.implosionCompressor.removeRecipe(<techreborn:plates:38>);

for key, plate in hashPlate {
	if (hashIngot has key) {
		recipes.removeShapeless(plate, 
			[hashIngot[key], <embers:tinker_hammer>]);
		recipes.removeShapeless(plate, 
			[hashIngot[key], <immersiveengineering:tool>]);
		
		mods.nuclearcraft.pressurizer.removeRecipeWithOutput([plate]);
		for itemPlate in plate.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemPlate);
			mods.techreborn.compressor.removeRecipe(itemPlate);
			mods.thermalexpansion.Compactor.removePressRecipe(itemPlate);
		}
	}
	if (hashGem has key) {
		mods.mekanism.pressurizer.removeRecipeWithOutput([plate]);
		for itemPlate in plate.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemPlate);
			mods.techreborn.compressor.removeRecipe(itemPlate);
			mods.thermalexpansion.Compactor.removePressRecipe(itemPlate);
		}
	}
	if (hashMolten has key) {
		for itemPlate in plate.items {
			mods.embers.Stamper.remove(itemPlate);
			mods.tconstruct.Casting.removeTableRecipe(itemPlate);
		}
	}
}

/***** Dense Plates *****/
for key, plateDense in hashPlateDense {
	if (hashPlate has key) {
		mods.mekanism.pressurizer.removeRecipeWithOutput([plateDense]);
		for itemPlateDense in plateDense.items {
			mods.techreborn.compressor.removeRecipe(itemPlateDense);
		}
	}
}

/***** Rods *****/
for key, rod in hashRod {
	if (hashIngot has key) {
		recipes.removeShaped(rod, [
		[hashIngot[key]],
		[hashIngot[key]]]);
		
		for itemRod in rod.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemRod);
		}
	}
	if (hashGem has key) {
		recipes.removeShaped(rod, [
		[hashGem[key]],
		[hashGem[key]]]);
		
		for itemRod in rod.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemRod);
		}
}
		
/***** Gears *****/
for key, gear in hashGear {
}
/********** Blocks **********/
/***** Blocks *****/

/********** Liquids **********/
/***** Molten *****/

/********** Gases **********/
/***** Slurry *****/

/***** Clean Slurry *****/
