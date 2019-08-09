#priority -0002

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/*Remove Furnace, Blast Furnace, Arc Furnace, Induction Smelter Recipes for Ingots */
for ingot in hashIngot {
    for itemstack in ingot {
        furnace.remove(itemstack);
        mods.techreborn.blastFurnace.removeRecipe(itemstack);
        mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack);
    }
}

/*Remove Furnace, Blast Furnace, Arc Furnace, Induction Smelter Recipes for Ingots */
for gem in hashGem {
    for itemstack in gem {
        furnace.remove(itemstack);
        mods.techreborn.blastFurnace.removeRecipe(itemstack);
        mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack);
    }
}
