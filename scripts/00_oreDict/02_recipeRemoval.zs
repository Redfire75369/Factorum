#priority -0002

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/*Remove Furnace, Blast Furnace, Arc Furnace, Induction Smelter Recipes for Ingots */
for string, ingot in hashIngot {
    for itemstack in ingot.items{
        furnace.remove(itemstack);
        mods.techreborn.blastFurnace.removeRecipe(itemstack);
        mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack);
    }
}

/*Remove Furnace, Blast Furnace, Arc Furnace, Induction Smelter Recipes for Ingots */
for string, gem in hashGem {
    for itemstack in gem.items {
        furnace.remove(itemstack);
        mods.techreborn.blastFurnace.removeRecipe(itemstack);
        mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack);
    }
}
