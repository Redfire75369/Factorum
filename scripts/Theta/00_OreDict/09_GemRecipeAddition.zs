#loader crafttweaker
#priority -10006
#packmode theta
#norun

/*
NuclearCraft: Pressurizer
Minecraft: Crafting Table
Tinkers' Construct: Casting Table
*/

for key, dictGem in hashGem {
	if (hashOre has key) {
		mods.nuclearcraft.pressurizer.addRecipe([hashOre[key], dictGem.firstItem, 2, 1, 0);
	}
	if (hashCluster has key) {
		mods.nuclearcraft.pressurizer.addRecipe([hashCluster[key], dictGem.firstItem, 2, 1.5, 0);
	}
	if (hashDust has key) {
		mods.nuclearcraft.pressurizer.addRecipe(hashDust[key], dictGem.firstItem, 1, 1, 0);
	}
	if (hashBlock has key) {
		recipes.addShapeless(key.toLowerCase() ~ "_gem_from_block", dictGem.firstItem * 9, [
			hashBlock[key]
		]);
	}
	if (hashMolten has key) {
		mods.tconstruct.Casting.addTableRecipe(dictGem.firstItem, <tconstruct:cast_custom:2>, hashMolten[key], 144, false, 72);
	}
}
