#priority -0003

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

/***** Ingots *****/
/* Crafting */
for key, ingot in hashIngot {
	if (hashOre.contains(key)) {
		recipes.removeShapeless(ingot, [hashOre[key], hashDust["Pyrotheum"]]);
	if (hashDust.contains(key)) {
		recipes.removeShapeless(ingot, [hashOre[key], hashDust["Petrotheum"], hashDust["Pyrotheum"]]);
	}
	if (key=="BaseEssence"|key=="Blutonium"|key=="Bronze"|key=="CrystalMatrix"|key=="EbonyPsi"|key=="Inferium"|key=="Insanium"|key=="Intermedium"|key=="IridiumAlloy"|key=="IvoryPsi"|key=="Superium"|key=="Supremium") {
		recipes.remove(ingot);
	}
	if (hashBlock.contains(key)) {
		recipes.removeShapeless(hashBlock[key], [ingot, ingot, ingot, ingot, ingot, ingot, ingot, ingot, ingot]);
		recipes.removeShaped(hashBlock[key], [[ingot, ingot, ingot], [ingot, ingot, ingot], [ingot, ingot, ingot]]);
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
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
			mods.techreborn.blastFurnace.removeRecipe(itemstack);
		}
	}
}

/***** Gems *****/
/* Input: Energized Smelter, Quartz Grindstone, SAG Mill, Enrichment Chamber, Manufactory, Grinder, Industrial Grinder, Pulverizer */
for key, gem in hashGem {
	if (hashOre.contains(key)) {
		mods.mekanism.smelter.removeRecipe(hashOre[key]);
		mods.techreborn.blastFurnace.removeInputRecipe(hashOre[key]);
		for itemstack in hashOre[key].items {
			
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
	if  (hashOre.contains(key)|hashCluster.contains(key)|hashDust.contains(key)) {
		furnace.remove(gem);
		for itemstack in gem.items {
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
			mods.tconstruct.Casting.removeTableRecipe(itemstack);
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
}

/***** Crystals *****/
/*Output: Crafting Recipes */
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
	for key2, crystal2 in hashCrystal {
		if (key1 ~ "Empowered" == key) {
			for itemstack in crystals.items {
				mods.actuallyadditions.Empowerer.removeRecipe(itemstack);
			}
		}
	}
}


/***** Clathrates *****/
/* Input: Pulverizer */
for key, ore in hashOre {
	for key2, clathrate in hashClathrate {
		if ("Clathrate" ~ key2 == key) {
			for itemstack in ore.items {
				mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
			}
		}
	}
}

/* Output: */

/***** Dusts *****





/***** Dusts *****/
/* Grindstone, Sag Mill, Crusher, Squuezer, Enrichment Chamber, Manufactory, Grinder, Industrial Grinder Pulverizer (Ores)[Input] */
for key, ore in hashOre {
	if (hashDust.contains(key)) {
		for itemstack in ore.items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemstack);
			mods.enderio.SagMill.removeRecipe(itemstack);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemstack);
			mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemstack);
			mods.integrateddynamics.Squeezer.removeRecipe(itemstack);
			mods.mekanism.enrichment.removeRecipe(itemstack);
			mods.nuclearcraft.manufactory.removeRecipeWithInput([itemstack]);
			mods.techreborn.grinder.removeInputRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeInputRecipe(itemstack);
			mods.thermalexpansion.Pulverizer.removeRecipe(itemstack);
		}
	}
}

/* Crusher, Grindstone, Crusher, Squeezer, Crusher, Manufactory, Grinder, Industrial Grinder (Dusts)[Input] */
for key, dust in hashDust {
	if (!hashOre.contains(key)) {
		for itemstack in dust.items {
			mods.actuallyadditions.Crusher.removeRecipe(itemstack);
			mods.astralsorcery.Grindstone.removeRecipe(itemstack);
			mods.nuclearcraft.manufactory.removeRecipeWithOutput([itemstack]);
			mods.techreborn.grinder.removeRecipe(itemstack);
			mods.techreborn.industrialGrinder.removeRecipe(itemstack);
		}
	}
}