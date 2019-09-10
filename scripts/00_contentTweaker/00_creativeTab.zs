#priority -0000
#loader contenttweaker

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.Block;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var creativeTabCurrency = VanillaFactory.createCreativeTab("currency", <thermalfoundation:coin:1>);
var creativeTabEndGame = VanillaFactory.createCreativeTab("endgame", <avaritia:resource:6>);
creativeTabCurrency.register();
creativeTabEndGame.register();