#loader crafttweaker
#priority -0302

import crafttweaker.oredict.IOreDictEntry;

/***** Ores *****/
for key, dictOre in hashOre {
	if (hashDust has key) {
		mods.mekanism.combiner.removeRecipe(dictOre, hashDust[key], hashBlock["Cobblestone"]);
	}
}

/***** Clusters *****/
for key, dictCluster in hashCluster {
	for itemCluster in dictCluster.items {
		mods.thaumcraft.Crucible.removeRecipe(itemCluster);
	}
}

/***** Dirty Dusts *****/
for key, dictDustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.removeRecipe(dictDustDirty, hashClump[key]);
	}
}

/***** Clumps *****/
for key, dictClump in hashClump {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(dictClump, hashOre[key]);
	}
	if (hashShard has key) {
		mods.mekanism.purification.removeRecipe(dictClump, hashShard[key]);
	}
}

/***** Shards *****/
for key, dictShard in hashShard {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(dictShard, hashOre[key]);
	}
	if (hashCrystal has key) {
		mods.mekanism.purification.removeRecipe(dictShard, hashCrystal[key]);
	}
}

/***** Crystals *****/
recipes.remove(hashCrystal["Obsidian"]);
mods.cyclicmagic.Solidifier.removeShapedRecipe(<cyclicmagic:crystallized_amber>);

for key, dictCrystal in hashCrystal {
	if (key has "Empowered") {
		for itemCrystal in dictCrystal.items {
			mods.actuallyadditions.Empowerer.removeRecipe(itemCrystal);
		}
	}
	if (hashSlurryClean has key) {
		mods.mekanism.chemical.crystallizer.removeRecipe(dictCrystal, hashSlurryClean[key]);
	}
}

/***** Ingots *****/
recipes.removeShaped(hashIngot["BaseEssence"], [
	[null, oreDict["shardProsperity"] , null],
	[oreDict["shardProsperity"], hashIngot["Iron"], oreDict["shardProsperity"]],
	[null, oreDict["shardProsperity"] , null]
]);
recipes.removeShaped(hashIngot["Blutonium"], [
	[hashIngot["Cyanite"], hashIngot["Cyanite"], hashIngot["Cyanite"]],
	[hashIngot["Cyanite"], null, hashIngot["Cyanite"]],
	[hashIngot["Cyanite"], hashIngot["Cyanite"], hashIngot["Cyanite"]]
]);
recipes.removeShapeless(hashIngot["Bronze"],[
	hashIngot["Tin"], hashIngot["Copper"], hashIngot["Copper"], 
	hashIngot["Copper"]
]);
recipes.removeShaped(hashIngot["CrystalMatrix"], [
	[<avaritia:resource>, oreDict["starNether"], <avaritia:resource>],
	[<avaritia:resource>, oreDict["starNether"], <avaritia:resource>]
]);
recipes.removeShaped(hashIngot["EbonyPsi"], [
	[oreDict["substanceEbony"], oreDict["substanceEbony"], oreDict["substanceEbony"]], 
	[oreDict["substanceEbony"], hashIngot["Psi"], oreDict["substanceEbony"]],
	[oreDict["substanceEbony"], oreDict["substanceEbony"], oreDict["substanceEbony"]]
]);
recipes.removeShaped(hashIngot["Inferium"], [
	[null, oreDict["essenceInferium"] , null],
	[oreDict["essenceInferium"], hashIngot["BaseEssence"], oreDict["essenceInferium"]],
	[null, oreDict["essenceInferium"] , null]
]);
recipes.removeShaped(hashIngot["Insanium"], [
	[null, oreDict["essenceInsanium"] , null],
	[oreDict["essenceInsanium"], hashIngot["Superium"], oreDict["essenceInsanium"]],
	[null, oreDict["essenceInsanium"] , null]
]);
recipes.removeShaped(hashIngot["Intermedium"], [
	[null, oreDict["essenceIntermedium"] , null],
	[oreDict["essenceIntermedium"], hashIngot["Prudenfium"], oreDict["essenceIntermedium"]],
	[null, oreDict["essenceIntermedium"] , null]
]);
recipes.removeShaped(hashIngot["IridiumAlloy"], [
	[hashIngot["Iridium"], hashPlate["AdvancedAlloy"], hashIngot["Iridium"]],
	[hashPlate["AdvancedAlloy"], hashDust["Diamond"], hashPlate["AdvancedAlloy"]],
	[hashIngot["Iridium"], hashPlate["AdvancedAlloy"], hashIngot["Iridium"]]
]);
recipes.removeShaped(hashIngot["IvoryPsi"], [
	[oreDict["substanceIvory"], oreDict["substanceIvory"], oreDict["substanceIvory"]],
	[oreDict["substanceIvory"], hashIngot["Psi"], oreDict["substanceIvory"]],
	[oreDict["substanceIvory"], oreDict["substanceIvory"], oreDict["substanceIvory"]]
]);
recipes.removeShaped(hashIngot["Prudentium"], [
	[null, oreDict["essencePrudentium"] , null],
	[oreDict["essencePrudentium"], hashIngot["Inferium"], oreDict["essencePrudentium"]],
	[null, oreDict["essencePrudentium"] , null]
]);
recipes.removeShaped(hashIngot["Superium"], [
	[null, oreDict["essenceSuperium"] , null],
	[oreDict["essenceSuperium"], hashIngot["Supremium"], oreDict["essenceSuperium"]],
	[null, oreDict["essenceSuperium"] , null]
]);
recipes.removeShaped(hashIngot["Supremium"], [
	[null, oreDict["essenceSupremium"] , null],
	[oreDict["essenceSupremium"], hashIngot["Intermedium"], oreDict["essenceSupremium"]],
	[null, oreDict["essenceSupremium"] , null]
]);

mods.techreborn.blastFurnace.removeInputRecipe(<minecraft:iron_ore>);
mods.techreborn.blastFurnace.removeInputRecipe(<techreborn:ore:5>);
mods.techreborn.blastFurnace.removeInputRecipe(<techreborn:dust:22> * 2);
mods.techreborn.blastFurnace.removeInputRecipe(<techreborn:smalldust:23> * 8);
mods.techreborn.compressor.removeInputRecipe(<techreborn:dust:65>);

mods.techreborn.alloySmelter.removeRecipe(<techreborn:ingot:1>);
mods.techreborn.alloySmelter.removeRecipe(<techreborn:ingot:2>);
mods.techreborn.alloySmelter.removeRecipe(<techreborn:ingot:5>);
mods.techreborn.alloySmelter.removeRecipe(<techreborn:ingot:6>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:3>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:6>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:12>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:14>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:15>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:16>);
mods.techreborn.vacuumFreezer.removeRecipe(<techreborn:ingot:17>);

for key, dictIngot in hashIngot {
	if (hashOre has key) {
		recipes.removeShapeless(dictIngot, [
			hashOre[key], hashDust["Pyrotheum"]
		]);
		recipes.removeShapeless(dictIngot, [
			hashOre[key], hashDust["Petrotheum"], hashDust["Pyrotheum"]
		]);
		
		for itemIngot in hashOre[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemIngot, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemIngot, cinnabar);
		}
		for itemIngot in dictIngot.items {
			furnace.remove(itemIngot, hashOre[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemIngot);
		}
	}
	if (hashCluster has key) {
		for itemIngot in dictIngot.items {
			furnace.remove(itemIngot, hashCluster[key]);
		}
	}
	if (hashNugget has key) {
		recipes.removeShaped(dictIngot, [
			[hashNugget[key], hashNugget[key], hashNugget[key]],
			[hashNugget[key], hashNugget[key], hashNugget[key]],
			[hashNugget[key], hashNugget[key], hashNugget[key]]
		]);
		recipes.removeShapeless(dictIngot, [
			hashNugget[key], hashNugget[key], hashNugget[key],
			hashNugget[key], hashNugget[key], hashNugget[key],
			hashNugget[key], hashNugget[key], hashNugget[key]
		]);
	}
	if (hashDust has key) {
		recipes.removeShapeless(dictIngot, [
			hashDust[key], hashDust["Pyrotheum"]
		]);
		
		for itemIngot in hashDust[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemIngot, sand);
		}
		for itemIngot in dictIngot.items {
			furnace.remove(itemIngot, hashDust[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemIngot);
		}
	}
	if (hashBlock has key) {
		recipes.removeShapeless(dictIngot, [
			hashBlock[key]
		]);
	}
	if (hashMolten has key) {
		for itemIngot in dictIngot.items {
			mods.embers.Stamper.remove(itemIngot);
			mods.tconstruct.Casting.removeTableRecipe(itemIngot);
		}
	}
}

/***** Gems *****/
furnace.remove(<minecraft:quartz>, hashCluster["Quartz"]);
furnace.remove(<thaumcraft:quicksilver>, hashCluster["Quicksilver"]);
mods.techreborn.industrialGrinder.removeInputRecipe(hashOre["Amethyst"]);
mods.techreborn.industrialGrinder.removeInputRecipe(hashOre["Coal"]);
mods.techreborn.industrialGrinder.removeInputRecipe(hashOre["Diamond"]);
mods.techreborn.industrialGrinder.removeInputRecipe(hashOre["Emerald"]);
mods.techreborn.industrialGrinder.removeInputRecipe(hashOre["Lapis"]);
mods.techreborn.industrialGrinder.removeInputRecipe(hashOre["Peridot"]);
mods.techreborn.industrialGrinder.removeInputRecipe(hashOre["Ruby"]);
mods.techreborn.industrialGrinder.removeInputRecipe(hashOre["Sapphire"]);

for key, dictGem in hashGem {
	if (hashOre has key) {
		mods.mekanism.enrichment.removeRecipe(hashOre[key], dictGem);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashOre[key]]);
		mods.nuclearcraft.manufactory.removeRecipeWithOutput([dictGem]);
		mods.techreborn.grinder.removeInputRecipe(hashOre[key]);
		for itemGem in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemGem);
			mods.enderio.SagMill.removeRecipe(itemGem);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemGem);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemGem);
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

/***** Clathrates *****/
for key, dictClathrate in hashClathrate {
	if (hashOreClathrate has key) {
		for itemOreClathrate in hashOreClathrate[key].items {
			mods.thermalexpansion.Pulverizer.removeRecipe(itemOreClathrate);
		}
	}
}

/***** Nuggets *****/
for key, dictNugget in hashNugget {
	if (hashIngot has key) {
		recipes.removeShapeless(dictNugget,[
			hashIngot[key]
		]);
	}
	if (hashGem has key) {
		recipes.removeShapeless(dictNugget,[
			hashGem[key]
		]);
	}
	if (hashMolten has key) {
		for itemNugget in dictNugget.items {
			mods.embers.Stamper.remove(itemNugget);
			mods.tconstruct.Casting.removeTableRecipe(itemNugget);
		}
	}
}

/***** Dusts *****/
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

/***** Small Dusts *****/
mods.techreborn.industrialGrinder.removeInputRecipe(<techreborn:ore:4>);

mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:10>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:54>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:59>);

for key, dictDustSmall in hashDustSmall {
	if (hashDust has key) {
		recipes.removeShaped(dictDustSmall, [
			[null, null],
			[null, hashDust[key]]
		]);
		recipes.removeShapeless(dictDustSmall, [
			hashDust[key]
		]);
	}
}

/***** Tiny Dusts *****/
for key, dictDustTiny in hashDustTiny {
	if (hashDust has key) {
		recipes.removeShaped(dictDustTiny, [
			[hashDust[key], null],
			[null, null]
		]);
	}
}

/***** Plates *****/
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
		
		mods.nuclearcraft.pressurizer.removeRecipeWithOutput([dictPlate]);
		for itemPlate in dictPlate.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemPlate);
			mods.techreborn.plateBendingMachine.removeRecipe(itemPlate);
			mods.thermalexpansion.Compactor.removePressRecipe(itemPlate);
		}
	}
	if (hashGem has key) {
		mods.nuclearcraft.pressurizer.removeRecipeWithOutput([dictPlate]);
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

/***** Dense Plates *****/
for key, dictPlateDense in hashPlateDense {
	if (hashPlate has key) {
		mods.nuclearcraft.pressurizer.removeRecipeWithOutput([dictPlateDense]);
		for itemPlateDense in dictPlateDense.items {
			mods.techreborn.plateBendingMachine.removeRecipe(itemPlateDense);
		}
	}
}

/***** Rods *****/
for key, dictRod in hashRod {
	if (hashIngot has key) {
		recipes.removeShaped(dictRod, [
			[hashIngot[key]],
			[hashIngot[key]]
		]);
		
		for itemRod in dictRod.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemRod);
		}
	}
	if (hashGem has key) {
		recipes.removeShaped(dictRod, [
			[hashGem[key]],
			[hashGem[key]]
		]);
		
		for itemRod in dictRod.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemRod);
		}
	}
}
		
/***** Gears *****/
for key, dictGear in hashGear {
	if (hashIngot has key) {
		recipes.removeShaped(dictGear, [
			[null, hashIngot[key], null],
			[hashIngot[key], hashIngot["Iron"], hashIngot[key]],
			[null, hashIngot[key], null]
		]);
		
		for itemIngot in hashIngot[key].items {
			mods.thermalexpansion.Compactor.removeGearRecipe(itemIngot);
		}
	}
	if (hashGem has key) {
		recipes.removeShaped(dictGear, [
			[null, hashGem[key], null],
			[hashGem[key], hashIngot["Iron"], hashGem[key]],
			[null, hashGem[key], null]
		]);
		
		for itemGem in hashGem[key].items {
			mods.thermalexpansion.Compactor.removeGearRecipe(itemGem);
		}
	}
}

/********** Blocks **********/
/***** Blocks *****/
for key, dictBlock in hashBlock {
	if (hashIngot has key) {
		recipes.removeShaped(dictBlock, [
			[hashIngot[key], hashIngot[key], hashIngot[key]],
			[hashIngot[key], hashIngot[key], hashIngot[key]],
			[hashIngot[key], hashIngot[key], hashIngot[key]]
		]);
		recipes.removeShapeless(dictBlock, [
			hashIngot[key], hashIngot[key], hashIngot[key],
			hashIngot[key], hashIngot[key], hashIngot[key],
			hashIngot[key], hashIngot[key], hashIngot[key]
		]);
	}
	if (hashGem has key) {
		recipes.removeShaped(dictBlock, [
			[hashGem[key], hashGem[key], hashGem[key]],
			[hashGem[key], hashGem[key], hashGem[key]],
			[hashGem[key], hashGem[key], hashGem[key]]
		]);
		recipes.removeShapeless(dictBlock, [
			hashGem[key], hashGem[key], hashGem[key],
			hashGem[key], hashGem[key], hashGem[key],
			hashGem[key], hashGem[key], hashGem[key]
		]);
	}
}

/********** Liquids **********/
/***** Molten *****/

/********** Gases **********/
/***** Slurry *****/

/***** Clean Slurry *****/
