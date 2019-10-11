#loader crafttweaker
#priority -10200
#packmode theta

mods.tconstruct.Drying.addRecipe(<forestry:fertilizer_bio>, <contenttweaker:compost_composite>, 1200);
recipes.addShapeless("compost_composite", <contenttweaker:compost_composite>, [
	<minecraft:water_bucket>.giveBack(<minecraft:bucket>), <botany:misc:5>, <botany:misc:5>, 
	<botany:misc:5>, <botany:misc:5>
]);
recipes.addShaped("sturdy_casing", <forestry:sturdy_machine>, [
	[oreDict["barsIron"], hashPlate["Bronze"], oreDict["barsIron"]],
	[hashPlate["Bronze"], null, hashPlate["Bronze"]],
	[oreDict["barsIron"], hashPlate["Bronze"], oreDict["barsIron"]]
]);
recipes.addShaped("fermenter", <forestry:fermenter>, [
	[<forestry:peat>, <minecraft:rotten_flesh>, <forestry:peat>],
	[<forestry:fertilizer_bio>, <forestry:sturdy_machine>, <forestry:fertilizer_bio>],
	[<forestry:peat>, <minecraft:rotten_flesh>, <forestry:peat>]
]);
recipes.addShaped("carpenter", <forestry:carpenter>, [
	[<forestry:sturdy_machine>]
]);
