#loader crafttweaker
#priority -10103

import net.thesilkminer.energysmatter.ct.PowerRequiredRecipeRegistry as pct;
import net.thesilkminer.energysmatter.ct.utilities as utils;

recipes.addShaped("seebeck_generator", <energysmatter:heat_generator>, [
	[<mystgears:gear_stone>, <tconstruct:seared_tank:1>, <mystgears:gear_stone>],
	[oreDict["slimeballBlood"], <minecraft:furnace>, oreDict["slimeballBlood"]],
	[<mystgears:gear_stone>, <minecraft:bucket>, <mystgears:gear_stone>]
]);

recipes.addShaped("pct_tier0", <energysmatter:powered_crafting_table>, [
	[<minecraft:crafting_table>, <tconstruct:large_plate>.withTag({PartType: "cobblestone"}), <minecraft:crafting_table>],
	[<tconstruct:large_plate>.withTag({PartType: "cobblestone"}), null, <tconstruct:large_plate>.withTag({PartType: "cobblestone"})],
	[<minecraft:crafting_table>, <tconstruct:large_plate>.withTag({PartType: "cobblestone"}), <minecraft:crafting_table>]
]);
	
testMatrix = utils.Matrix.create(3, 3);
testMatrix.set(1, 1, <minecraft:gold_ingot>);
testMatrix.set(1, 2, <minecraft:gold_ingot>);
testMatrix.set(1, 3, <minecraft:gold_ingot>);
testMatrix.set(2, 1, <ore:ingotTough>);
testMatrix.set(2, 2, <ore:nuggetGold>);
testMatrix.set(2, 3, <ore:ingotTough>);
testMatrix.set(3, 1, <tconstruct:materials>);
testMatrix.set(3, 2, <tconstruct:materials>);
testMatrix.set(3, 3, <tconstruct:materials>);

pct.instance();
pct.addPowerShapedRecipe(4000, <thermalfoundation:coin:1>, testMatrix, "gold_coin", true);
pct.run();