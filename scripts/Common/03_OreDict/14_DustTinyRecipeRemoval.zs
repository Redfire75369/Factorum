#loader crafttweaker
#priority -00314

for key, dictDustTiny in hashDustTiny {
	if (hashDust has key) {
		recipes.removeShaped(dictDustTiny, [
			[hashDust[key], null],
			[null, null]
		]);
	}
}
