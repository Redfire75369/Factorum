#priority -0002

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/***** Ores *****/
/* Input: */

/* Output: Combiner */
for key, ore in hashOre {
	if (hashDust.contains(key) {
		for itemstack in ore.items {
			mods.mekanism.combiner.removeRecipe(itemstack);
		}
	}
}

/***** Clusters *****/
/* Input: */

/* Output: Crucible */
for key, cluster in hashCluster {
	if (hashOre.contains(key)) {
		for itemstack in cluster.items {
			mods.thaumcraft.Crucible.removeRecipe(itemstack);
		}
	}
}

/***** Dirty Dusts *****/
/* Input: */

/* Output: Crusher */
for key, dustDirty in hashDustDirty {
	if (hashClump.contains(key)) {
		mods.mekanism.crusher.removeRecipe(dustDirty);
	}
}

/***** Clumps *****/
/* Input: */

/* Output: Purification Chamber */
for key, clump in hashClump {
	if (hashShard.contains(key)) {
		mods.mekanism.puritfication.removeRecipe(clump);
	}
}

/***** Shards *****/
/* Input: */

/* Output: Chemical Injection Chamber */
for key, shard in hashShard {
	if (hashCrystal.contains(key)) {
		mods.mekanism.injection.removeRecipe(shard);
	}
}

/***** Crystals *****/
/* Crafting */
for key, crystal in hashCrystal {
	if (key=="Amber"|key=="Obsidian") {
		recipes.remove(crystal);
	}
}

/* Input: */

/* Output: Chemical Crystallizer, Empowerer */
for key, crystal in hashCrystal {
	if (hashOre.contains(key)) {
		for itemstack in crystal.items {
			mods.mekanism.chemical.crystallizer.removeRecipe(itemstack);
		}
	}
	if (key has "Empowered") {
		mods.actuallyadditions.Empowerer.removeRecipe(crystal);
	}
}

/***** Ingots *****/
/* Crafting */
for key, ingot in hashIngot {
	if (hashOre.contains(key)) {
		recipes.removeShapeless(ingot, [hashOre[key], hashDust["Pyrotheum"]]);
		recipes.removeShapeless(ingot, [hashOre[key], hashDust["Petrotheum"], hashDust["Pyrotheum"]]);
	}
	if (hashDust.contains(key)) {
		recipes.removeShapeless(ingot, [hashDust[key], hashDust["Pyrotheum"]]);
	}
	if (key=="BaseEssence"|key=="Blutonium"|key=="Bronze"|key=="CrystalMatrix"|key=="EbonyPsi"|key=="Inferium"|key=="Insanium"|key=="Intermedium"|key=="IridiumAlloy"|key=="IvoryPsi"|key=="Superium"|key=="Supremium") {
		recipes.remove(ingot);
	}
	if (hashBlock.contains(key)) {
		recipes.removeShapeless(ingot, [hashBlock[key]]);
	}
	if (hashNugget.contains(key)) {
		nugget = hashNugget[key];
		recipes.removeShaped(ingot, [[nugget, nugget, nugget], [nugget, nugget, nugget], [nugget, nugget, nugget]]);
		recipes.removeShapeless(ingot, [nugget, nugget, nugget, nugget, nugget, nugget, nugget, nugget, nugget]);
	}
}

/* Input: Energized Smelter, Blast Furnace, Induction Smelter, Redstone Furnace */
for key, ingot in hashIngot {
	if (hashOre.contains(key)) {
		mods.mekanism.smelter.removeRecipe(hashDust[key]);
		mods.techreborn.blastFurnace.removeInputRecipe(hashDust[key]);
		for itemstack in hashOre[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, cinnabar);
			mods.thermalexpansion.RedstoneFurnace.removeRecipe(itemstack);
		}
	}
	if (hashCluster.contains(key)) {
		mods.mekanism.smelter.removeRecipe(hashDust[key]);
		mods.techreborn.blastFurnace.removeInputRecipe(hashDust[key]);
		for itemstack in hashCluster[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, cinnabar);
			mods.thermalexpansion.RedstoneFurnace.removeRecipe(itemstack);
		}
	}
	if (hashDust.contains(key)) {
		mods.mekanism.smelter.removeRecipe(hashDust[key]);
		mods.techreborn.blastFurnace.removeInputRecipe(hashDust[key]);
		for itemstack in hashDust[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, cinnabar);
			mods.thermalexpansion.RedstoneFurnace.removeRecipe(itemstack);
		}
	}
}

/* Output: Furnace, Arc Furnace, Energized Smelter, Casting Table, Blast Furnace */
for key, ingot in hashIngot {
	if (hashOre.contains(key)|hashCluster.contains(key)|hashDust.contains(key)) {
		furnace.remove(ingot);
		for itemstack in ingot.items {
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
			mods.techreborn.blastFurnace.removeRecipe(itemstack);
		}
	}
	if (hashMolten.contains(key) {
		for itemstack in ingot.items {
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
		}
	}
}

/***** Gems *****/
/* Input: Energized Smelter, Quartz Grindstone, SAG Mill, Enrichment Chamber, Manufactory, Grinder, Industrial Grinder, Pulverizer */
for key, gem in hashGem {
	if (hashOre.contains(key)) {
		mods.mekanism.smelter.removeRecipe(hashOre[key]);
		mods.techreborn.blastFurnace.removeInputRecipe(hashOre[key]);
	}
	if (hashOre.contains(key)) {
		mods.nuclearcraft.manufactory.removeRecipeWithInput([gem]);
		mods.techreborn.grinder.removeInputRecipe(itemstack);
		mods.techreborn.industrialGrinder.removeInputRecipe(itemstack);
		for itemstack in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.mekanism.enrichment.removeRecipe(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
}

/* Output: Furnace, Arc Furnace, Casting Table, Blast Furnace */
for key, gem in hashGem {
	if (hashOre.contains(key)|hashCluster.contains(key)|hashDust.contains(key)) {
		furnace.remove(gem);
		for itemstack in gem.items {
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
			mods.techreborn.blastFurnace.removeRecipe(itemstack);
		}
	}
	if (hashOre.contains(key) {
		mods.nuclearcraft.manufactory.removeRecipeWithOutput([gem]);
		for itemstack in gem.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemstack);
			mods.astralsorcery.Grindstone.removeRecipe(itemstack);
			mods.techreborn.grinder.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
		}
	}
	if (hashMolten.contains(key)) {
		for itemstack in gem.items {
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
		}
	}
}


/***** Clathrates *****/
/* Input: Pulverizer */
for key, clathrate in hashClathrate {
	if (hashClathrateOre.contains(key)) {
		for itemstack in hashOre[key].items(
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
}

/* Output: */
/***** Clathrates *****/
/* Input: */

/* Output: */

/***** Nuggets *****/
/* Crafting */
for key, nugget in hashNugget {
	if (hashIngot.contains(key)) {
		recipes.removeShapeless(nugget, [hashIngot[key]]);
	}
	if (hashGem.contains(key)) {
		recipes.removeShapeless(nugget, hashGem[key]]);
	}
}

/* Input: */

/* Output: */
for key, nugget in hashNugget {
	if (hashMolten.contains(key)) {
		mods.tconstruct.Casting.removeTableRecipe(nugget);
	}
}

/***** Dusts *****/
/* Crafting */
for key, dust in hashDust {
	if (hashOre.contains(key)) {
		recipes.removeShapeless(dust, [hashOre[key], hashDust["Petrotheum"]]);
		recipes.removeShapeless(dust, [hashOre[key], <immersiveengineering:tool>]);
	}
	if (hashIngot.contains(key)) {
		recipes.removeShapeless(dust, [hashIngot[key], hashDust["Petrotheum"]]);
	}
}

/* Input: Manufactory, Grinder, Industrial Grinder, Grindstone, Alchemy Table, SAG Mill, Squeezer, Mechanical Squeezer, Crusher, Enrichment Chamber, Pulverizer */
for key, dust in hashDust {
	if (hashOre.contains(key)) {
		mods.nuclearcraft.manufactory.removeRecipeWithInput([hashOre[key]]);
		mods.techreborn.grinder.removeInputRecipe(hashOre[key]);
		mods.techreborn.industrialGrinder.removeInputRecipe(hashOre[key]);
		for itemstack in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.bloodmagic.AlchemyTable.removeRecipe(itemstack, <bloodmagic:cutting fluid>]);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemstack);
			mods.integrateddynamics.Squeezer.removeRecipe(itemstack);
			mods.mekanism.enrichment.removeRecipe(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
	if (hashIngot.contains(key)) {
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
	if (hashGem.contains(key)) {
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
	if (hashOre.contains(key)|hashIngot.contains(key)|hashGem.contains(key)) {
		for itemstack in dust.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemstack);
			mods.astralsorcery.Grindstone.removeRecipe(itemstack);
			mods.nuclearcraft.manufactory.removeRecipeWithOutput([itemstack]);
			mods.techreborn.grinder.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
		}
	}
	if (!(hashOre.contains(key)|hashIngot.contains(key)|hashGem.contains(key)) {
		for itemstack in 
	mods.mekanism.infuser.removeRecipe(<mekanism:enrichediron>);
	if (key=="Bronze"|key=="Steel") {
		mods.mekanism.infuser.removeRecipe(dust);
	}
}

/***** Small Dusts *****/

/***** Tiny Dusts *****/

/***** Plates *****/

/***** Dense Plates *****/

/***** Rods *****/

/***** Gears *****/

/********** Blocks **********/
/***** Blocks *****/
