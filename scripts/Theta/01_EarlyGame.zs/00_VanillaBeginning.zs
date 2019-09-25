#loader crafttweaker
#priority 10100

recipes.removeShaped(<minecraft:furnace>);
recipes.removeShaped(<minecraft:chest>);

recipes.addShaped("Furnace", <minecraft:furnace>, [
	[hashBlock["Stone"], hashBlock["Stone"], hashBlock["Stone"]],
	[hashBlock["Stone"], null, hashBlock["Stone"]],
	[hashBlock["Stone"], hashBlock["Stone"], hashBlock["Stone"]]
]);

recipes.addShaped("Chest", <minecraft:chest>, [
	[oreDict["plankWood"], oreDict["plankWood"], oreDict["plankWood"]],
	[oreDict["plankWood"], <minecraft:wooden_button>, oreDict["plankWood"]],
	[oreDict["plankWood"], oreDict["plankWood"], oreDict["plankWood"]]
]);