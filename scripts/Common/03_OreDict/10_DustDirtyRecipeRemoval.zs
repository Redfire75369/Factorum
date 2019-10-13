#loader crafttweaker
#priority -00308
#packmode theta sigma omega

for key, dictDustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.removeRecipe(dictDustDirty, hashClump[key]);
	}
}
