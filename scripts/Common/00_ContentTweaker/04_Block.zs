#loader contenttweaker
#priority -00004
#packmode theta sigma omega

import mods.contenttweaker.Block;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.VanillaFactory;

var burntWood = VanillaFactory.createBlock("block_burnt_wood", <blockmaterial:wood>) as Block;
burntWood.creativeTab = <creativetab:other>;
burntWood.toolClass = "axe";
burntWood.register();

var charcoalLowGradeBlock = VanillaFactory.createBlock("block_low_grade_charcoal", <blockmaterial:rock>) as Block;
charcoalLowGradeBlock.creativeTab = <creativetab:other>;
charcoalLowGradeBlock.toolLevel = 0;
charcoalLowGradeBlock.register();

var regolith = VanillaFactory.createBlock("block_regoltih", <blockmaterial:sand>) as Block;
regolith.creativeTab = <creativetab:other>;
regolith.gravity = true;
regolith.toolClass = "shovel";
regolith.witherProof = true;
regolith.register;
