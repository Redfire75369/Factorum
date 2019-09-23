#loader contenttweaker
#priority -00002

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var ingotChaos = VanillaFactory.createItem("chaos_ingot") as Item;
ingotChaos.creativeTab = <creativetab:endgame>;
ingotChaos.register();

var ingotWyvern = VanillaFactory.createItem("wyvern_ingot") as Item;
ingotWyvern.creativeTab = <creativetab:endgame>;
ingotWyvern.register();
