#loader contenttweaker
#priority -00003

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/***** Crating Materials *****/
var charcoalLowGrade = VanillaFactory.createItem("low_grade_charcoal") as Item;
charcoalLowGrade.creativeTab = <creativetab:other>;
charcoalLowGrade.register();

var driedPaste = VanillaFactory.createItem("dried_paste") as Item;
driedPaste.creativeTab = <creativetab:other>;
driedPaste.register();

var mud = VanillaFactory.createItem("mud") as Item;
mud.creativeTab = <creativetab:other>;
mud.register();

var searedPaste = VanillaFactory.createItem("seared_paste") as Item;
searedPaste.creativeTab = <creativetab:other>;
searedPaste.register();

var searedShard = VanillaFactory.createItem("seared_shard") as Item;
searedShard.creativeTab = <creativetab:other>;
searedShard.register();

var woodPile = VanillaFactory.createItem("wood_pile") as Item;
woodPile.creativeTab = <creativetab:other>;
woodPile.register();

/*****Items With Durability*****/
var file = VanillaFactory.createItem("file") as Item;
file.creativeTab = <creativetab:other>;
file.maxDamage = 100;
file.maxStackSize = 1;
file.register();

var wrench = VanillaFactory.createItem("wrench") as Item;
wrench.creativeTab = <creativetab:other>;
wrench.maxDamage = 100;
wrench.maxStackSize = 1;
wrench.register();
