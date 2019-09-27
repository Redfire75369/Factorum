#loader crafttweaker
#priority -10100

recipes.removeShaped(<minecraft:furnace>);
recipes.removeShaped(<minecraft:chest>);

recipes.addShaped("Furnace", <minecraft:furnace>, [
	[<tconstruct:seared>, <tconstruct:seared>, <tconstruct:seared>],
	[<tconstruct:seared>, null, <tconstruct:seared>],
	[<tconstruct:seared>, <tconstruct:seared>, <tconstruct:seared>]
]);

recipes.addShaped("Chest", <minecraft:chest>, [
	[oreDict["plankWood"], oreDict["stickWood"], oreDict["plankWood"]],
	[oreDict["stickWood"], oreDict["logWood"], oreDict["stickWood"]],
	[oreDict["plankWood"], oreDict["stickWood"], oreDict["plankWood"]]
]);
