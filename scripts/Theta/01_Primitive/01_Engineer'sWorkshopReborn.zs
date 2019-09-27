#loader crafttweaker
#priority -10101

recipes.removeShaped(<engineersworkshop:blocktable>);

recipes.addShaped("workshop_table", <engineersworkshop:blocktable>, [
	[oreDict["plankWood"], oreDict["plankWood"], oreDict["plankWood"]],
	[<minecraft:stone>, null, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);