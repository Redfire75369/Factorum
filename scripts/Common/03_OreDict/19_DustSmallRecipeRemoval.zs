#loader crafttweaker
#priority -00319
#packmode theta sigma omega

mods.techreborn.industrialElectrolyzer.removeAll();
mods.techreborn.industrialGrinder.removeAll();

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
