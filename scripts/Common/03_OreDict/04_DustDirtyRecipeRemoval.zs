#loader crafttweaker
#priority -00304
#packmode theta sigma omega

for key, dictDustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.removeRecipe(dictDustDirty, hashClump[key]);
	}
}
