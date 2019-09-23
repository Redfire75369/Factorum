#loader contenttweaker
#priority -00000
#debug

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;

var creativeTabCurrency = VanillaFactory.createCreativeTab("currency", <item:thermalfoundation:coin:1>) as CreativeTab;
creativeTabCurrency.register();

var creativeTabEndGame = VanillaFactory.createCreativeTab("endgame", <item:avaritia:resource:6>) as CreativeTab;
creativeTabEndGame.register();

var creativeTabOther = VanillaFactory.createCreativeTab("other", <item:minecraft:coal:1>) as CreativeTab;
creativeTabOther.register();
