#loader contenttweaker
#priority -0003

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/***** Crating Materials *****/
var searedPaste = VanillaFactory.createItem("seared_paste") as Item;
searedPaste.register();

var charcoalLowGrade = VanillaFactory.createItem("low_grade_charcoal") as Item;
charcoalLowGrade.register();

/*****Items With Durability*****/
var file = VanillaFactory.createItem("file") as Item;
file.maxDamage = 150;
file.register();

var wrench = VanillaFactory.createItem("wrench") as Item;
wrench.maxDamage = 150;
wrench.register();