#loader crafttweaker
#priority -00316
#packmode theta sigma omega

for key, dictClathrate in hashClathrate {
	if (hashOreClathrate has key) {
		for itemOreClathrate in hashOreClathrate[key].items {
			mods.thermalexpansion.Pulverizer.removeRecipe(itemOreClathrate);
		}
	}
}
