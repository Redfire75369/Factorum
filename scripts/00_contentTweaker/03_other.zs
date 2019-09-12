#loader contenttweaker
#priority -0003

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/*****Items With Durability*****/
var file = VanillaFactory.createItem("file");
file.maxDamage = 150;
file.register();

var wrench = VanillaFactory.createItem("wrench");
wrench.maxDamage = 150;
wrench.register();

var burntWood = VanillaFactory.createBlock("block_burnt_wood")ń
burntWood.register();

var searedPaste = VanillaFactory.createItem("seared_paste");
searedPaste.register();

var charcoalLowGrade = VanillaFactory.createItem("low_grade_charcoal");
charcoalLowGrade.register();

var charcoalLowGradeBlock = VanillaFactory.createBlock("block_low_grade_charcoal");
charcoalLowGradeBlock.register();