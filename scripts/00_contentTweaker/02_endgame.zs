#loader contenttweaker
#priority -0002


import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var ingotChaos = VanillaFactory.createItem("chaos_ingot");
ingotChaos.creativeTab = endgame;
ingotChaos.glowing = true
ingotChaos.register();