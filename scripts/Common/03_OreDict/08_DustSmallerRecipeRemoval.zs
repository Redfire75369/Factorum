#loader crafttweaker
#priority -00308

/***** Small Dusts *****/
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

/***** Tiny Dusts *****/
for key, dictDustTiny in hashDustTiny {
	if (hashDust has key) {
		recipes.removeShaped(dictDustTiny, [
			[hashDust[key], null],
			[null, null]
		]);
	}
}
