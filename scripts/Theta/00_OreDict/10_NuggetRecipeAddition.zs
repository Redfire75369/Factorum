#loader crafttweaker
#priority -10010
#norun

/*
Minecraft: Crafting Table
*/
for key, dictNugget in hashNugget {
	if (hashIngot has key) {
		recipes.addShapeless(key.toLowerCase() ~ "_nugget_from_ingot", dictNugget.firstItem * 9, [
			hashIngot[key]
		]);
	}
	if (hashGem has key) {
		recipes.addShapeless(key.toLowerCase() ~ "_nugget_from_gem", dictNugget.firstItem * 9, [
			hashGem[key]
		]);
	}
	if (hashMolten has key) {
		mods.tconstruct.Casting.addTableRecipe(dictNugget.firstItem, <tconstruct:cast_custom:1>, hashMolten[key], false, 8);
}
