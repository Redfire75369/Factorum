#priority -0003

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/* Remove Induction Smelter Recipes with Ores as Input */
for key, ore in hashOre {
    for itemstack in ore.items {
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, sand);
        mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack, cinnabar);
    }
}

/* Remove Furnace, Blast Furnace and Arc Furnace Recipes for Ingots */
for key, ingot in hashIngot {
    for itemstack in ingot.items {
        furnace.remove(itemstack);
        mods.techreborn.blastFurnace.removeRecipe(itemstack);
        mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
    }
}

/* Remove Furnace, Blast Furnace and Arc Furnace Recipes for Gems */
for key, gem in hashGem {
    for itemstack in gem.items {
        furnace.remove(itemstack);
        mods.techreborn.blastFurnace.removeRecipe(itemstack);
        mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
    }
}
