#loader crafttweaker
#priority -10100
#packmode theta

recipes.removeShaped(<minecraft:chest>);
recipes.removeShaped(<minecraft:furnace>);

recipes.addShaped("chest", <minecraft:chest>, [
	[oreDict["plankWood"], oreDict["stickWood"], oreDict["plankWood"]],
	[oreDict["stickWood"], oreDict["logWood"], oreDict["stickWood"]],
	[oreDict["plankWood"], oreDict["stickWood"], oreDict["plankWood"]]
]);
recipes.addShaped("furnace_assembly", <contenttweaker:furnace_assembly>, [
	[null, <mystgears:gear_stone>, null],
	[<mystgears:gear_stone>, null, <mystgears:gear_stone>],
	[null, <mystgears:gear_stone>, null]
]);
recipes.addShaped("furnace", <minecraft:furnace>, [
	[<minecraft:cobblestone>, <tconstruct:seared:1>, <minecraft:cobblestone>],
	[<tconstruct:seared:1>, <contenttweaker:furnace_assembly>, <tconstruct:seared:1>],
	[<minecraft:cobblestone>, <tconstruct:seared:1>, <minecraft:cobblestone>]
]);
