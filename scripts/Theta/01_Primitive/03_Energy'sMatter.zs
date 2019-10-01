#loader crafttweaker
#priority -10103

import net.thesilkminer.energysmatter.ct.PowerRequiredRecipeRegistry as pct;
import net.thesilkminer.energysmatter.ct.utilities as utils;

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