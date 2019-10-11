#loader crafttweaker
#priority -30100
#packmode omega

recipes.removeShaped(<minecraft:chest>);
recipes.removeShaped(<minecraft:crafting_table>);
recipes.removeShaped(<minecraft:furnace>);

recipes.addShaped("chest", <minecraft:chest>, [
	[oreDict["logWood"], <tconstruct:tool_rod>.withTag({Material: "wood"}), oreDict["logWood"]],
	[<tconstruct:tool_rod>.withTag({Material: "wood"}), hashGear["Wood"], <tconstruct:tool_rod>.withTag({Material: "wood"})],
	[oreDict["logWood"], <tconstruct:tool_rod>.withTag({Material: "wood"}), oreDict["logWood"]]
]);

recipes.addShaped("crafting_table", <minecraft:crafting_table>, [
	[<minecraft:flint>, <minecraft:flint>],
	[oreDict["logWood"], oreDict["logWood"]]
]);

recipes.addShaped("furnace", <minecraft:furnace>, [
	[<contenttweaker:block_medium_grade_charcoal>, <tconstruct:seared:2>, <contenttweaker:block_medium_grade_charcoal>],
	[<tconstruct:seared:2>, <minecraft:flint>, <tconstruct:seared:2>],
	[<contenttweaker:block_medium_grade_charcoal>, <tconstruct:seared:2>, <contenttweaker:block_medium_grade_charcoal>]
]);
