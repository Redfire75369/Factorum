#loader crafttweaker
#priority -00314
#packmode theta sigma omega

for key, dictDustTiny in hashDustTiny {
	if (hashDust has key) {
		recipes.removeShaped(dictDustTiny, [
			[hashDust[key], null],
			[null, null]
		]);
	}
}
