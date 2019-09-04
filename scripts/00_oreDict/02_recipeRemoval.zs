#priority -0002

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/***** Ores *****/
/* Input: */

/* Output: Combiner */
for key, ore in hashOre {
	if (hashDust has key) {
		for itemstack in ore.items {
			mods.mekanism.combiner.removeRecipe(itemstack, hashDust[key]);
		}
	}
}

/***** Clusters *****/
/* Input: */

/* Output: Crucible */
for key, cluster in hashCluster {
	if (hashOre has key) {
		for itemstack in cluster.items {
			mods.thaumcraft.Crucible.removeRecipe(itemstack);
		}
	}
}

/***** Dirty Dusts *****/
/* Input: */

/* Output: Crusher */
for key, dustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.removeRecipe(dustDirty, hashClump[key]);
	}
}

/***** Clumps *****/
/* Input: */

/* Output: Purification Chamber */
for key, clump in hashClump {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(clump, hashOre[key], hashGas["Oxygen"]);
	}
	if (hashShard has key) {
		mods.mekanism.purification.removeRecipe(clump, hashShard[key], hashGas["Oxygen"]);
	} 
}

/***** Shards *****/
/* Input: */

/* Output: Chemical Injection Chamber */
for key, shard in hashShard {
	if (hashOre has key) {
		mods.mekanism.chemical.injection.removeRecipe(shard, hashOre[key], hashGas["HydrogenChloride"]);
	}
	if (hashCrystal has key) {
		mods.mekanism.chemical.injection.removeRecipe(shard, hashCrystal[key], hashGas["HydrogenChloride"]);
	}
}

/***** Crystals *****/
/* Crafting */
for key, crystal in hashCrystal {
	if (key=="Amber"|key=="Obsidian") {
		recipes.removeShaped(crystal);
	}
}

/* Input: */

/* Output: Chemical Crystallizer, Empowerer */
for key, crystal in hashCrystal {
	if (hashSlurryClean has key) {
		for itemstack in crystal.items {
			mods.mekanism.chemical.crystallizer.removeRecipe(itemstack, hashSlurryClean[key]);
		}
	}
	if (key has "Empowered") {
		for itemstack in crystal.items {
			mods.actuallyadditions.Empowerer.removeRecipe(itemstack);
		}
	}
}

/***** Ingots *****/
/* Crafting */
for key, ingot in hashIngot {
	if (hashOre has key) {
		recipes.removeShapeless(ingot, [hashOre[key], hashDust["Pyrotheum"]]);
		recipes.removeShapeless(ingot, [hashOre[key], hashDust["Petrotheum"], hashDust["Pyrotheum"]]);
	}
	if (hashDust has key) {
		recipes.removeShapeless(ingot, [hashDust[key], hashDust["Pyrotheum"]]);
	}
	if (key=="BaseEssence"|key=="Blutonium"|key=="Bronze"|key=="CrystalMatrix"|key=="EbonyPsi"|key=="Inferium"|key=="Insanium"|key=="Intermedium"|key=="IridiumAlloy"|key=="IvoryPsi"|key=="Superium"|key=="Supremium") {
		recipes.remove(ingot);
	}
	if (hashBlock has key) {
		recipes.removeShapeless(ingot, [hashBlock[key]]);
	}
	if (hashNugget has key) {
		var nugget = hashNugget[key] as IOreDictEntry;
		recipes.removeShaped(ingot, [[nugget, nugget, nugget], [nugget, nugget, nugget], [nugget, nugget, nugget]]);
		recipes.removeShapeless(ingot, [nugget, nugget, nugget, nugget, nugget, nugget, nugget, nugget, nugget]);
	}
}

/* Input: Energized Smelter, Blast Furnace, Induction Smelter, Redstone Furnace */
for key, ingot in hashIngot {
	if (hashOre has key) {
		mods.mekanism.smelter.removeRecipe(hashOre[key], ingot);
		mods.techreborn.blastFurnace.removeInputRecipe(hashOre[key]);
		for itemstack in hashOre[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, cinnabar);
			mods.thermalexpansion.RedstoneFurnace.removeRecipe(itemstack);
		}
	}
	if (hashCluster has key) {
		mods.mekanism.smelter.removeRecipe(hashCluster[key], ingot);
		mods.techreborn.blastFurnace.removeInputRecipe(hashCluster[key]);
		for itemstack in hashCluster[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, cinnabar);
			mods.thermalexpansion.RedstoneFurnace.removeRecipe(itemstack);
		}
	}
	if (hashDust has key) {
		mods.mekanism.smelter.removeRecipe(hashDust[key], ingot);
		mods.techreborn.blastFurnace.removeInputRecipe(hashDust[key]);
		for itemstack in hashDust[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, cinnabar);
			mods.thermalexpansion.RedstoneFurnace.removeRecipe(itemstack);
		}
	}
}

/* Output: Furnace, Arc Furnace, Energized Smelter, Blast Furnace, Stamper, Casting Table */
for key, ingot in hashIngot {
	if (hashOre has key|hashCluster has key|hashDust has key) {
		furnace.remove(ingot, hashOre[key]|hashCluster[key]|hashDust[key]);
		for itemstack in ingot.items {
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
			mods.techreborn.blastFurnace.removeRecipe(itemstack);
		}
	}
	if (hashMolten has key) {
		for itemstack in ingot.items {
			mods.embers.Stamper.remove(itemstack);
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
		}
	}
}

/***** Gems *****/
/* Input: Energized Smelter, Blast Furnace, Manufactory, Grinder, Industrial Grinder Quartz Grindstone, SAG Mill, Pulverizer */
for key, gem in hashGem {
	if (hashOre has key) {
		mods.mekanism.smelter.removeRecipe(hashOre[key], gem);
		mods.techreborn.blastFurnace.removeInputRecipe(hashOre[key]);
	}
	if (hashOre has key) {
		mods.mekanism.enrichment.removeRecipe(hashOre[key], gem);
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashOre[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashOre[key]);
		mods.techreborn.industrialGrinder.removeInputRecipe(hashOre[key]);
		for itemstack in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
}

/* Output: Furnace, Arc Furnace, Blast Furnace, Enrichment Chamber, Manufactory, Crusher, Grindstone, Grinder, Industrial Grinder, Casting Table */
for key, gem in hashGem {
	if (hashOre has key|hashCluster has key|hashDust has key) {
		furnace.remove(gem);
		for itemstack in gem.items {
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
			mods.techreborn.blastFurnace.removeRecipe(itemstack);
		}
	}
	if (hashOre has key) {
		mods.nuclearcraft.manufactory.removeRecipeWithOutput([gem]);
		for itemstack in gem.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemstack);
			mods.astralsorcery.Grindstone.removeRecipe(itemstack);
			mods.techreborn.grinder.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
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

/* Output: */

/***** Nuggets *****/
/* Crafting */
for key, nugget in hashNugget {
	if (hashIngot has key) {
		recipes.removeShapeless(nugget, [hashIngot[key]]);
	}
	if (hashGem has key) {
		recipes.removeShapeless(nugget, [hashGem[key]]);
	}
}

/* Input: */

/* Output: Stamper, Casting Table */
for key, nugget in hashNugget {
	if (hashMolten has key) {
		for itemstack in nugget.items {
			mods.embers.Stamper.remove(itemstack);
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
		}
	}
}

/***** Dusts *****/
/* Crafting */
for key, dust in hashDust {
	if (hashOre has key) {
		recipes.removeShapeless(dust, [hashOre[key], hashDust["Petrotheum"]]);
		recipes.removeShapeless(dust, [hashOre[key], <immersiveengineering:tool>]);
	}
	if (hashIngot has key) {
		recipes.removeShapeless(dust, [hashIngot[key], hashDust["Petrotheum"]]);
	}
}

/* Input: Manufactory, Grinder, Industrial Grinder, Grindstone, Alchemy Table, SAG Mill, Squeezer, Mechanical Squeezer, Crusher, Enrichment Chamber, Pulverizer */
for key, dust in hashDust {
	if (hashOre has key) {
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
	if (hashIngot has key) {
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
}
/* Output: Crusher, Grindstone, Manufactory, Grinder, Industrial Grinder, Metallurgic Infuser*/
for key, dust in hashDust {
	if (hashOre has key|hashIngot has key|hashGem has key) {
		for itemstack in dust.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemstack);
			mods.astralsorcery.Grindstone.removeRecipe(itemstack);
			mods.nuclearcraft.manufactory.removeRecipeWithOutput([itemstack]);
			mods.techreborn.grinder.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
		}
	}
	if (hashIngot has key|hashGem has key) {
		mods.mekanism.crusher.removeRecipe(dust, hashIngot[key]|hashGem[key]);
	}
	if (hashDustDirty has key) {
		mods.mekanism.crusher.removeRecipe(dust, hashDustDirty[key]);
	}
	if (key=="Bronze"|key=="Steel") {
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
for key, dustSmall in hashDustSmall {
	if (hashOre has key) {
		for itemstack in dustSmall.items {
			mods.techreborn.industrialElectrolyzer.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
		}
	}
}

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
