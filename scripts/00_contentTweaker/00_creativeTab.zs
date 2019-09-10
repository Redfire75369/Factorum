#loader contenttweaker
#priority -0000

import mods.contenttweaker.VanillaFactory;

var creativeTabCurrency = VanillaFactory.createCreativeTab("currency", <thermalfoundation:coin:1>);
creativeTabCurrency.register();

var creativeTabEndGame = VanillaFactory.createCreativeTab("endgame", <avaritia:resource:6>);
creativeTabEndGame.register();

var creativeTabOther = VanillaFactory.createCreativeTab("other", <immersiveengineering:tool>);
creativeTabOther.register();