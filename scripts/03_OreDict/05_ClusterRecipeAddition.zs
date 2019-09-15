#loader crafttweaker
#priority -0305
#norun

/* Thaumcraft: Crucible */
for key, cluster in hashCluster {
	if (hashOre has key) {
		mods.thaumcraft.Crucible.registerRecipe("", "", cluster.firstItem, hashOre[key], []);
	}
}