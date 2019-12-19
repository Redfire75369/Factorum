#loader crafttweaker
#priority -00313
#packmode theta sigma omega

mods.techreborn.industrialGrinder.removeInputRecipe(<techreborn:ore:4>);

mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:10>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:54>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:59>);

for key, dictDustSmall in hashDustSmall {
	if (hashDust has key) {
		recipes.removeShaped(dictDustSmall, [
			[null, null],
			[null, hashDust[key]]
		]);
		recipes.removeShapeless(dictDustSmall, [
			hashDust[key]
		]);
	}
}
