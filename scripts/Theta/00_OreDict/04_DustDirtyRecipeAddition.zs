#loader crafttweaker
#priority -10004
#packmode theta
#norun

/*
Mekanism: Crusher
*/
for key, dictDustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.addRecipe(hashClump[key], dictDustDirty.firstItem);
	}
}
