#loader crafttweaker
#priority -10003
#packmode theta sigma omega
#norun

/*
Thaumcraft: Crucible
*/
for key, dictCluster in hashCluster {
	if (hashOre has key) {
		mods.thaumcraft.Crucible.registerRecipe(key ~ "Ore to Cluster Transmutation", "METALPURIFICATION", dictCluster.firstItem, hashOre[key], []);
	}
}
