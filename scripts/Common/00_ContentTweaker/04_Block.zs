#loader contenttweaker
#priority -0004

import mods.contenttweaker.Block;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.VanillaFactory;

var burntWood = VanillaFactory.createBlock("block_burnt_wood", <blockmaterial:wood>) as Block;
burntWood.creativeTab = <creativetab:other>;
burntWood.toolClass = axe;
burntWood.register();

var charcoalLowGradeBlock = VanillaFactory.createBlock("block_low_grade_charcoal", <blockmaterial:rock>) as Block;
charcoalLowGradeBlock.creativeTab = <creativetab:other>;
charcoalLowGradeBlock.toolLevel = 1;
charcoalLowGradeBlock.register();
