#loader crafttweaker
#priority -10100

recipes.removeShaped(<minecraft:furnace>);
recipes.removeShaped(<minecraft:chest>);

recipes.addShaped("Furnace", <minecraft:furnace>, [
	[<tconstruct:seared>, <tconstruct:seared:1>, <tconstruct:seared>],
	[<tconstruct:seared:1>, null, <tconstruct:seared:1>],
	[<tconstruct:seared>, <tconstruct:seared:1>, <tconstruct:seared>]
]);

recipes.addShaped("Chest", <minecraft:chest>, [
	[oreDict["plankWood"], oreDict["stickWood"], oreDict["plankWood"]],
	[oreDict["stickWood"], oreDict["logWood"], oreDict["stickWood"]],
	[oreDict["plankWood"], oreDict["stickWood"], oreDict["plankWood"]]
]);
