#loader crafttweaker
#priority -10013

/*
Minecraft: Crafting Table
*/
for key, dictDustTiny in hashDustTiny {
	if (hashDust has key) {
		recipes.addShaped(key.toLowerCase() ~ "_dust_tiny_from_dust", dictDustTiny.firstItem * 4, [
			[null, null],
			[null, hashDust[key]]
		]);
	}
}
