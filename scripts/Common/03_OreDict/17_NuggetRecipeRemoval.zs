#loader crafttweaker
#priority -00317
#packmode theta sigma omega

for key, dictNugget in hashNugget {
	if (hashIngot has key) {
		recipes.removeShapeless(dictNugget,[
			hashIngot[key]
		]);
	}
	if (hashGem has key) {
		recipes.removeShapeless(dictNugget,[
			hashGem[key]
		]);
	}
	if (hashMolten has key) {
		for itemNugget in dictNugget.items {
			mods.embers.Stamper.remove(itemNugget);
			mods.tconstruct.Casting.removeTableRecipe(itemNugget);
		}
	}
}
