#loader crafttweaker
#priority -00304

for key, dictDustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.removeRecipe(dictDustDirty, hashClump[key]);
	}
}
