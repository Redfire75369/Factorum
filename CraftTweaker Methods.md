# Vanilla
## Recipes
### Crafting
#### Removal
- recipes.remove(IIngredient output, boolean NBTMatch);
- recipes.removeShaped(IIngredient output, IIngredient[][] inputs);
- recipes.removeShapeless(IIngredient output, IIngredient[] inputs, wildcard);
- recipes.removeAll();
- recipes.removeByRegex(string recipeNameRegex);
- recipes.removeByRecipeName(string modID:recipeName);
- recipes.removeByMod(string modID);

#### Addition
- recipes.addShaped(string recipeName, IItemstack output, IIngredient[][] inputs, IRecipeFunction function, IRecipeAction action);
- recipes.addShapedMirrored(string recipeName, IItemstack output, IIngredient[][] inputs, IRecipeFunction function, IRecipeAction action);
- recipes.addShapeless(string recipeName, IItemstack output, IIngredient[][] inputs, IRecipeFunction function, IRecipeAction action);

#### Returns IList<ICraftingRecipe>
- recipes.getFor(IIngredient ingredient);

#### Replaces all instances of an item with another item
- recipes.replaceAllOccurences(IIngredient toReplace, IIngredient replaceWith, @optional IIngredient forOutput);

#### Returns IItemstack or null depending on if recipe is found
- recipes.craft(IItemstack[][] content);

#### ICraftingRecipe
- ICraftingRecipe.ingredients1D;
	- Returns Ingredient List IIngredient[]
- ICraftingRecipe.ingredients2D;
	- Returns Ingredient List IIngredient[][]
- ICraftingRecipe.output;
	- Returns output as IItemstack
- ICraftingRecipe.hasTransformers;
	- Returns boolean
- ICraftingRecipe.hasRecipeFunction;
	- Returns boolean
- ICraftingRecipe.hasRecipeAction;
	- Returns boolean
- ICraftingRecipe.hidden;
	- Returns boolean
- ICraftingRecipe.shaped;
	- Returns boolean
- ICraftingRecipe.resourceDomain;
	- Returns modid
- ICraftingRecipe.fullResourceDomain;
	- Returns modid
- ICraftingRecipe.commandstring;
	- Returns string
- ICraftingRecipe.toCommandstring;
	- Returns string
- ICraftingRecipe.name;
	- Returns string
- ICraftingRecipe.getName();
	- Returns string

#### ICraftingInventory.
- ICraftingInventory.player
	- Returns IPlayer
- ICraftingInventory.size 
	- Returns int
- ICraftingInventory.width 
	- Returns int
- ICraftingInventory.height 
	- Returns int
- ICraftingInventory.stackCount 
	- Returns int
- ICraftingInventory.items 
	- Returns IItemstack[][] 
- ICraftingInventory.itemArray 
	- Returns IItemstack[]
- ICraftingInventory.getStack(int index)
- ICraftingInventory.setStack(int index, IItemstack item)
- ICraftingInventory.getStack(int row, int column)
- ICraftingInventory.setStack(int row, int column, IItemstack item)

#### ICraftingInfo
- ICraftingInfo.inventory
- ICraftingInfo.player
- ICraftingInfo.dimension

### Furnace
#### Removals
- furnace.remove(IIngredient output);
- furnace.remove(IIngredient output, IIngredient input);
- furnace.removeAll();

#### Additions
- furnace.addRecipe(IItemStack output, IIngredient input);
- furnace.addRecipe(IItemStack output, IIngredient input, int xp);

#### Fuels
- furnace.setFuel(IIngredient input, int burnTime); 
- furnace.getFuel(IItemstack input);

#### Returns List<IFurnaceRecipe>
- furnace.all();

#### IFurnaceRecipe
- IFurnaceRecipe.commandstring
- IFurnaceRecipe.toCommandstring
- IFurnaceRecipe.input
- IFurnaceRecipe.output
- IFurnaceRecipe.xp

## Seeds
vanilla.seeds.addSeed(weightedItemStack item);
vanilla.seeds.removeSeed(IItemstack item);

### Retrieves All Seed Drops
val seedList = vanilla.seeds.seeds;
for item in seedList{
	print("Item: " ~ item.stack.displayName ~ " | | Chance:");
}

# Mods
## Applied Energistics 2
### Grindstone
- mods.appliedenergistics2.Grinder.addRecipe(IItemStack output, IItemStack input, @Optional IItemStack secondary1Output, @Optional IItemStack secondary2Output);
- mods.appliedenergistics2.Grinder.removeRecipe(IItemStack input);

### Inscriber

## Arcane Archives

## Astral Sorcery
### Grindstone
- mods.astralsorcery.Grindstone.addRecipe(IItemStack input, IItemStack output, float doubleChance);
- mods.astralsorcery.Grindstone.removeRecipe(IItemStack output);

## Ender Tweaker
### Alloy Smelter

### SAG Mill
- mods.enderio.SagMill.addRecipe(IItemStack[] output, float[] chances, IIngredient input, @Optional string bonusType, @Optional int energyCost, @Optional float xp);
- mods.enderio.SagMill.removeRecipe(IItemStack input);

## Immersive Engineering
## Alloy Kiln
- mods.immersiveengineering.AlloySmelter.addRecipe(IItemstack output, IIngredient input1, IIngredient input2, int time);
- mods.immersiveengineering.AlloySmelter.removeRecipe(IItemstack output);

### Arc Furnace
- mods.immersiveengineering.ArcFurnace.addRecipe(IItemstack output, IIngredient input, IItemstack slag, int time, int energyPerTick, @optional IIngredient[] additives, @optional string specialRecipeType);
- mods.immersiveengineering.ArcFurnace.removeRecipe(IItemstack output);

### Blast Furnace
- mods.immersiveengineering.BlastFurnace.addRecipe(IItemstack output, IIngredient input, int time, @optional IItemstack slag);
- mods.immersiveengineering.BlastFurnace.removeRecipe(IIngredient output);
- mods.immersiveengineering.BlastFurnace.addFuel(IIngredient input, int time)
- mods.immersiveengineering.BlastFurnace.removeFuel(IItemstack output);

### Blueprint
- mods.immersiveengineering.Blueprint.addRecipe(string category, IItemstack output, IIngredient[] inputs);
- mods.immersiveengineering.Blueprint.removeRecipe(IItemstack output);

### Bottling Machine
- mods.immersiveengineering.BottlingMachine.addRecipe(IItemstack output, IIngredient input, ILiquidStack fluid);
- mods.immersiveengineering.BottlingMachine.removeRecipe(IItemstack output);

### Coke Oven
- mods.immersiveenginering.CokeOven.addRecipe(IItemstack output, int fuelOutput, IIngredient input, time);
- mods.immersiveenginering.CokeOven.removeRecipe(IItemstack output);

### Crusher
- mods.immersiveenginering.Crusher.addRecipe(IItemstack output, IIngredient input, int energy, @optional IItemstack secondaryOutput, @optional double secondaryChance);
- mods.immersiveenginering.Crusher.removeRecipe(IItemstack outbput);
- mods.immersiveenginering.Crusher.removeRecipesByInput(IItemstack input);

### Diesel Helper
- mods.immersiveengineering.DieselHelper.addFuel(ILiquidStack fuel, int time);
- mods.immersiveengineering.DieselHelper.removeFuel(ILiquidStack fuel);
- mods.immersiveengineering.DieselHelper.addDrillFuel(ILiquidStack fuel);
- mods.immersiveengineering.DieselHelper.removeDrillFuel(ILiquidStack fuel);

### Excavator
- mods.immersiveengineering.Excavator.addMineral(string name, int mineralName, double failChance, string[] ores, double[] ores, @optional int[] dimensionWhitelist, @optional boolean blacklist);
- mods.immersiveengineering.Excavator.removeMineral(string name);

#### Mineral Mix Object
- mods.immersiveengineering.Excavator.getMineral(string name).addOre(string name, double chance);
- mods.immersiveengineering.Excavator.getMineral(string name)mineralMixObject.removeOre(string name);
- mods.immersiveengineering.Excavator.getMineral(string name).failchance;

### Fermenter


### Metal Press


### Mixer


### Refinery


### Squeezer


## Mekanism
### Crusher

### Enrichment Chamber

## ModTweaker
### Actually Additions
#### Crusher
- mods.actuallyadditions.Crusher.addRecipe(IItemStack output, IItemStack input, @Optional IItemStack outputSecondary, @Optional int outputSecondaryChance);
- mods.actuallyadditions.Crusher.removeRecipe(IItemStack output);

### Thermal Expansion
#### Alchemical Imbuer


#### Arcane Ensorcellerator


#### Centrifugal Seperator


#### Compactor


#### Coolant


#### Energetic Infuser


#### Factorizer


#### Fluid Transposer


#### Fractionating Still


#### Induction Smelter
- mods.thermalexpansion.InductionSmelter.addRecipe(IItemstack primaryOutput, IIngredient primaryInput, IItemstack secondaryInput, int energy, @optional IItemstack secondaryOutput, @optional int secondaryChance);
- mods.thermalexpansion.InductionSmelter.removeRecipe(IItemstack input, IItemstack input);

#### Magma Crucible


#### Redstone Furnace


#### Phytogenic Insolator


#### Pulverizer
- mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
- mods.thermalexpansion.Pulverizer.removeRecipe(IItemStack input);

#### Sawmill