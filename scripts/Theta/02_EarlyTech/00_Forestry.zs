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

recipes.addShaped("carpenter", <forestry:carpenter>, [
	[hashDust["Wood"], <contenttweaker:sandpaper>, hashDust["Wood"]],
	[<stevescarts:modulecomponents:15>, <forestry:sturdy_machine>, <stevescarts:modulecomponents:15>],
	[hashDust["Wood"], <contenttweaker:sandpaper>, hashDust["Wood"]]
]);
recipes.addShaped("fermenter", <forestry:fermenter>, [
	[<forestry:peat>, <minecraft:rotten_flesh>, <forestry:peat>],
	[<forestry:fertilizer_bio>, <forestry:sturdy_machine>, <forestry:fertilizer_bio>],
	[<forestry:peat>, <minecraft:rotten_flesh>, <forestry:peat>]
]);

recipes.addShaped("moistener", <forestry:moistener>, [
	[<minecraft:clay>, <minecraft:water_bucket>, <minecraft:clay>],
	[hashBlock["Glass"], <forestry:sturdy_machine>, hashBlock["Glass"]],
	[<forestry:peat>, <tconstruct:seared_tank:1>, <forestry:peat>]
]);
recipes.addShaped("thermionic_fabricator", <forestry:thermionic_fabricator>, [
	[<forestry:chipsets:2>, hashPlate["Gold"], <forestry:chipsets:2>],
	[<forestry:worktable>, <minecraft:crafting_table>, <forestry:worktable>],
	[<forestry:hardened_machine>, null, <hardened_machine>]
]);