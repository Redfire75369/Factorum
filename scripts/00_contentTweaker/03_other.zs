#loader contenttweaker
#priority -0003

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/*****Items With Durability*****/
var file = VanillaFactory.createItem("file");
file.maxDamage = 150;
file.register();

var wrench = VanillaFactory.createItem("wrench");
wrench.maxDamage = 150;
wrench.register();