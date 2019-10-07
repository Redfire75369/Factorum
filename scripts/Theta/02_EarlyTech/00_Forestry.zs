#loader crafttweaker
#priority -10200

mods.tconstruct.Drying.addRecipe(<forestry:fertilizer_bio>, <contenttweaker:compost_composite>, 1200);
recipes.addShapeless("compost_composite", <contenttweaker:compost_composite>, [
	<minecraft:water_bucket>.giveBack(<minecraft:bucket>), <botany:misc:5>, <botany:misc:5>, 
	<botany:misc:5>, <botany:misc:5>
]);
recipes.addShaped("sturdy_casing", <forestry:sturdy_casing>, [
	[oreDict["barsIron"], hashPlate["Bronze"], oreDict["barsIron"]],
	[hashPlate["Bronze"], null, hashPlate["Bronze"]],
	[oreDict["barsIron"], hashPlate["Bronze"], oreDict["barsIron"]]
]);
recipes.addShaped("fermenter", <forestry:fermenter>, [
	[<forestry:peat>, <minecraft:rotten_flesh>, <forestry:peat>],
	[<forestry:fertilizer_bio>, <forestry:sturdy_casing>, <forestry:fertilizer_bio>],
	[<forestry:peat>, <minecraft:rotten_flesh>, <forestry:peat>]
]);
