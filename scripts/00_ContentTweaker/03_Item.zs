#loader contenttweaker
#priority -0003

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/***** Crating Materials *****/
var searedPaste = VanillaFactory.createItem("seared_paste") as Item;
searedPaste.creativeTab = <creativetab:other>;
searedPaste.register();

var charcoalLowGrade = VanillaFactory.createItem("low_grade_charcoal") as Item;
charcoalLowGrade.creativeTab = <creativetab:other>;
charcoalLowGrade.register();

/*****Items With Durability*****/
var file = VanillaFactory.createItem("file") as Item;
file.creativeTab = <creativetab:other>;
file.maxDamage = 100;
file.register();

var wrench = VanillaFactory.createItem("wrench") as Item;
wrench.creativeTab = <creativetab:other>;
wrench.maxDamage = 100;
wrench.register();
