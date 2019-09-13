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
	for itemstack in cluster.items {
		mods.thaumcraft.Crucible.removeRecipe(itemstack);
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
		for itemstack in crystal.items {
			mods.actuallyadditions.Empowerer.removeRecipe(itemstack);
		}
	}
	if (hashSlurryClean has key) {
		mods.mekanism.chemical.crystallizer.removeRecipe(crystal, hashSlurryClean[key]);
	}
}

/***** Ingots *****/
recipes.removeShaped(hashIngot["BaseEssence"], [
	[null, oreDict["shardProsperity"] ,null],
	[oreDict["shardProsperity"], hashIngot|"Iron"], oreDict["shardProsperity"]], 
	[null, oreDict["shardProsperity"] ,null]]);
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
	[null, oreDict["essenceInferium"] ,null],
	[oreDict["essenceInferium"], hashIngot|"BaseEssence"], oreDict["essenceInferium"]], 
	[null, oreDict["essenceInferium"] ,null]]);
recipes.removeShaped(hashIngot["Insanium"], [
	[null, oreDict["essenceInsanium"] ,null],
	[oreDict["essenceInsanium"], hashIngot|"Superium"], oreDict["essenceInsanium"]], 
	[null, oreDict["essenceInsanium"] ,null]]);
recipes.removeShaped(hashIngot["Intermedium"], 
	[null, oreDict["essenceIntermedium"] ,null],
	[oreDict["essenceIntermedium"], hashIngot|"Prudenfium"], oreDict["essenceIntermedium"]], 
	[null, oreDict["essenceIntermedium"] ,null]]);
recipes.removeShaped(hashIngot["IridiumAlloy"], [
	[hashIngot["Iridium"], hashPlate["AdvancedAlloy"], hashIngot["Iridium"]], 
	[hashPlate["AdvancedAlloy"], hashGem["Diamond"], hashPlate["AdvancedAlloy"]], 
	[hashIngot["Iridium"], hashPlate["AdvancedAlloy"], hashIngot["Iridium"]]]);
recipes.removeShaped(hashIngot["IvoryPsi"], [
	[oreDict["substanceIvory"], oreDict["substanceIvory"], oreDict["substanceIvory"]], 
	[oreDict["substanceIvory"], hashIngot["Psi"], oreDict["substanceIvory"]], 
	[oreDict["substanceIvory"], oreDict["substanceIvory"], oreDict["substanceIvory"]]]);
recipes.removeShaped(hashIngot["Prudentium"], [
	[null, oreDict["essencePrudentium"] ,null],
	[oreDict["essencePrudentium"], hashIngot|"Inferium"], oreDict["essencePrudentium"]], 
	[null, oreDict["essencePrudentium"] ,null]]);
recipes.removeShaped(hashIngot["Superium"], [
	[null, oreDict["essenceSuperium"] ,null],
	[oreDict["essenceSuperium"], hashIngot|"Supremium"], oreDict["essenceSuperium"]], 
	[null, oreDict["essenceSuperium"] ,null]]);
recipes.removeShaped(hashIngot["Supremium"], [
	[null, oreDict["essenceSupremium"] ,null],
	[oreDict["essenceSupremium"], hashIngot|"Intermedium"], oreDict["essenceSupremium"]], 
	[null, oreDict["essenceSupremium"] ,null]]);

mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:3>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:6>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:12>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:14>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:15>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:16>);
mods.techreborn.vacuumFreezer.removeRecipe(<techreborn:ingot:17>);

for key, ingot in hashIngot {
	if (hashOre has key) {
		recipes.removeShapeless(ingot, [hashOre[key], hashDust["Pyrotheum"]]);
		recipes.removeShapeless(ingot, [hashOre[key], hashDust["Petrotheum"], hashDust["Pyrotheum"]]);
		
		for itemstack in hashOre[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, cinnabar);
		}
		for itemstack in ingot.items {
			furnace.remove(itemstack, hashOre[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
		}
	}
	if (hashCluster has key) {
		for itemstack in ingot.items {
			furnace.remove(itemstack, hashCluster[key]);
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
		
		for itemstack in hashDust[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
		}
		for itemstack in ingot.items {
			furnace.remove(itemstack, hashDust[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
		}
	}
	if (hashBlock has key) {
		recipes.removeShapeless(ingot, [hashBlock[key]]);
	}
	if (hashMolten has key) {
		for itemstack in ingot.items {
			mods.embers.Stamper.remove(itemstack);
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
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
		for itemstack in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
		for itemstack in gem.items {
			furnace.remove(itemstack, hashOre[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
			mods.actuallyadditions.Crusher.removeRecipe(itemstack);
			mods.astralsorcery.Grindstone.removeRecipe(itemstack);
			mods.techreborn.grinder.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
		}
	}
	if (hashDust has key) {
		for itemstack in gem.items {
			furnace.remove(itemstack, hashDust[key]);
			mods.techreborn.implosionCompressor.removeRecipe(itemstack);
		}
	}
	if (hashMolten has key) {
		for itemstack in gem.items {
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
		}
	}
}

/***** Clathrates *****/
/* Input: Pulverizer */
for key, clathrate in hashClathrate {
	if (hashClathrateOre has key) {
		for itemstack in hashClathrateOre[key].items {
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
}

/***** Nuggets *****/

for key, nugget in hashNugget {
	if (hashIngot has key) {
		recipes.removeShapeless(nugget, [hashIngot[key]]);
	}
	if (hashGem has key) {
		recipes.removeShapeless(nugget, [hashGem[key]]);
	}
	if (hashMolten has key) {
		for itemstack in nugget.items {
			mods.embers.Stamper.remove(itemstack);
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
		}
	}
}

/***** Dusts *****/
for key, dust in hashDust {
	if (hashOre has key) {
		recipes.removeShapeless(dust, [hashOre[key], hashDust["Petrotheum"]]);
		recipes.removeShapeless(dust, [hashOre[key], <immersiveengineering:tool>]);
		
		mods.mekanism.enrichment.removeRecipe(hashOre[key], dust);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashOre[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashOre[key]);
		mods.techreborn.industrialGrinder.removeInputRecipe(hashOre[key]);
		for itemstack in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.bloodmagic.AlchemyTable.removeRecipe([itemstack, <bloodmagic:cutting_fluid>]);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemstack);
			mods.integrateddynamics.Squeezer.removeRecipe(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
	if (hashDustDirty has key) {
		mods.mekanism.enrichment.removeRecipe(hashDustDirty[key], dust);
	}
	if (hashIngot has key) {
		recipes.removeShapeless(dust, [hashIngot[key], hashDust["Petrotheum"]]);
		
		mods.mekanism.crusher.removeRecipe(dust, hashIngot[key]);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashIngot[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashIngot[key]);
		mods.techreborn.industrialGrinder.removeInputRecipe(hashIngot[key]);
		for itemstack in hashIngot[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemstack);
			mods.integrateddynamics.Squeezer.removeRecipe(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
	if (hashGem has key) {
		mods.mekanism.crusher.removeRecipe(dust, hashGem[key]);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashGem[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashGem[key]);
		mods.techreborn.industrialGrinder.removeInputRecipe(hashGem[key]);
		for itemstack in hashGem[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemstack);
			mods.integrateddynamics.Squeezer.removeRecipe(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
	if (hashOre has key||hashIngot has key||hashGem has key) {
		for itemstack in dust.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemstack);
			mods.astralsorcery.Grindstone.removeRecipe(itemstack);
			mods.nuclearcraft.manufactory.removeRecipeWithOutput([itemstack]);
			mods.techreborn.grinder.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
		}
	}
}

for key, dust in hashDust {
	if (key=="Bronze"||key=="Steel") {
		mods.mekanism.infuser.removeRecipe(dust);
	}
}

/***** Small Dusts *****/
/* Crafting */
for key, dustSmall in hashDustSmall {
	if (hashDust has key) {
		recipes.remove(dustSmall);
	}
}

/* Input: */

/* Output: Industrial Electrolyzer, Industrial Grinder */
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:10>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:54>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:59>);
mods.techreborn.industrialGrinder.removeRecipe(<techreborn:smalldust:5>);
mods.techreborn.industrialGrinder.removeRecipe(<techreborn:smalldust:59>);

/***** Tiny Dusts *****/
/* Crafting */
for key, dustTiny in hashDustTiny {
	if (hashDust has key) {
		recipes.remove(dustTiny);
	}
}

/* Input: */

/* Output: */

/***** Plates *****/
/* Crafting */
for key, plate in hashPlate {
	if (hashIngot has key) {
		recipes.removeShapeless(plate, [hashIngot[key], <embers:tinker_hammer>]);
		recipes.removeShapeless(plate, [hashIngot[key], <immersiveengineering:tool>]);
	} 
}
/* Input: Compressor, Compactor */
for key, plate in hashPlate {
	if (hashIngot has key) {
		for itemstack in plate.items {
			mods.techreborn.compressor.removeRecipe(itemstack);
			mods.thermalexpansion.Compactor.removePressRecipe(itemstack);
		}
	}
}

/* Output: Metal Press, Stamper, Casting Table */
for key, plate in hashPlate {
	if (hashIngot has key) {
		for itemstack in plate.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemstack);
		}
	}
	if (hashMolten has key) {
		for itemstack in plate.items {
			mods.embers.Stamper.remove(itemstack);
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
		}
	}
}

/***** Dense Plates *****/

/***** Rods *****/

/***** Gears *****/

/********** Blocks **********/
/***** Blocks *****/

/********** Liquids **********/
/***** Molten *****/

/********** Gases **********/
/***** Slurry *****/

/***** Clean Slurry *****/
