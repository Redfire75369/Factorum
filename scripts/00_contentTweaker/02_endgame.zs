#loader contenttweaker
#priority -0002

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var ingotChaos = VanillaFactory.createItem("chaos_ingot") as Item;
ingotChaos.creativeTab = endgame;
ingotChaos.glowing = true;
ingotChaos.register();