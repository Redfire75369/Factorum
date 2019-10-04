#loader crafttweaker
#priority -10012
#norun

/*
Minecraft: Crafting Table
*/
for key, dictDustSmall in hashDustSmall {
	if (hashDust has key) {
		recipes.addShaped(key.toLowerCase() ~ "_dust_small_from_dust", dictDustSmall.firstItem * 4, [
			[null, null],
			[null, hashDust[key]]
		]);
	}
}
