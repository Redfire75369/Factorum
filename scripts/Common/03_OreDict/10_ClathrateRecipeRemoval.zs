#loader crafttweaker
#priority -00310

for key, dictClathrate in hashClathrate {
	if (hashOreClathrate has key) {
		for itemOreClathrate in hashOreClathrate[key].items {
			mods.thermalexpansion.Pulverizer.removeRecipe(itemOreClathrate);
		}
	}
}
