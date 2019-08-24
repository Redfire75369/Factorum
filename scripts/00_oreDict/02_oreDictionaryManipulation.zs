#priority -0002

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/***** Ores *****/
hashOre["CertusQuartz"].remove(<appliedenergistics2:charged_quartz_ore>);

hashOre["Ender"].add(<tp:ender_ore>);
recipes.replaceAllOccurences(oreDict["oreEnderOre"], hashOre["Ender"]);
recipes.replaceAllOccurences(<tp:ender_ore>, hashOre["Ender"]);

hashOre["Light"].add(<tg:ore_light>);
recipes.replaceAllOccurences(<tg:ore_light>, hashOre["Light"]);

hashOre["Quicksilver"].add(<thaumcraft:ore_cinnabar>);
recipes.replaceAllOccurences(<thaumcraft:ore_cinnabar>, hashOre["Quicksilver"]);

hashOre["Shade"].add(<tg:ore_shade>);
recipes.replaceAllOccurences(<tg:ore_shade>, hashOre["Shade"]);

hashOre["StygianIron"].add(<woot:stygianironore>);
recipes.replaceAllOccurences(<woot:stygianironore>, hashOre["StygianIron"]);

hashOre["Wub"].add(<tp:wub_ore>);
recipes.replaceAllOccurences(oreDict["oreWubOre"], hashOre["Wub"]);
recipes.replaceAllOccurences(<tp:wub_ore>, hashOre["Wub"]);

if (!<ore:oreAluminum>.empty) {
    for item in oreDict["oreAluminum"].items {
        hashOre["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["oreAluminum"], hashOre["Aluminium"]);
}

/***** Clusters *****/
if (!<ore:clusterAluminum>.empty) {
    for item in oreDict["clusterAluminum"].items {
        hashCluster["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["clusterAluminum"], hashCluster["Aluminium"]);
}

/***** Ingots *****/
hashIngot["Alkimium"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(oreDict["ingotAlchemical"], hashIngot["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_ingot>, hashIngot["Alkimium"]);

hashIngot["DarkSoularium"].add(<simplyjetpacks:metaitemmods:3>);
recipes.replaceAllOccurences(oreDict["ingot_dark_soularium"], hashIngot["DarkSoularium"]);
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:3>, hashIngot["DarkSoularium"]);

hashIngot["Ender"].add(<extendedcrafting:material:36>);
recipes.replaceAllOccurences(<extendedcrafting:material:36>, hashIngot["Ender"]);

hashIngot["EnderEnhanced"].add(<extendedcrafting:material:48>);
recipes.replaceAllOccurences(<extendedcrafting:material:48>, hashIngot["EnderEnhnaced"]);

hashIngot["Gaia"].add(<botania:manaresource:14>);
recipes.replaceAllOccurences(oreDict["gaiaIngot"], hashIngot["Gaia"]);
recipes.replaceAllOccurences(<botania:manaresource:14>, hashIngot["Gaia"]);

hashIngot["Gaiasteel"].add(<botanicadds:gaiasteel_ingot>);
recipes.replaceAllOccurences(<botanicadds:gaiasteel_ingot>, hashIngot["Gaiasteel"]);

hashIngot["GlitchInfused"].add(<deepmoblearning:glitch_infused_ingot>);
recipes.replaceAllOccurences(<deepmoblearning:glitch_infused_ingot>, hashIngot["GlitchInfused"]);

hashIngot["Light"].add(<tg:ingot_light>);
recipes.replaceAllOccurences(<tg:ingot_light>, hashIngot["Light"]);

hashIngot["Livium"].add(<thaumic_arcana:ingot_livium>);
recipes.replaceAllOccurences(<thaumic_arcana:ingot_livium>, hashIngot["Livium"]);

hashIngot["MeatCooked"].add(<industrialmeat:cooked_meat_ingot>);
recipes.replaceAllOccurences(<industrialmeat:cooked_meat_ingot>, hashIngot["MeatCooked"]);

hashIngot["MeatRaw"].add(<industrialmeat:raw_meat_ingot>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_ingot>, hashIngot["MeatRaw"]);

hashIngot["Shade"].add(<tg:ingot_shade>);
recipes.replaceAllOccurences(<tg:ingot_shade>, hashIngot["Shade"]);

hashIngot["SlimePink"].add(<industrialforegoing:pink_slime_ingot>);
recipes.replaceAllOccurences(<industrialforegoing:pink_slime_ingot>, hashIngot["SlimePink"]);

hashIngot["Spectre"].add(<randomthings:ingredient:3>);
recipes.replaceAllOccurences(<randomthings:ingredient:3>, hashIngot["Spectre"]);

hashIngot["StygianIron"].add(<woot:stygianironingot>);
recipes.replaceAllOccurences(<woot:stygianironingot>, hashIngot["StygianIron"]);

hashIngot["Thundersteel"].remove(<naturalpledge:resource:1>);

hashIngot["VoidMetal"].add(<thaumcraft:ingot:1>);
recipes.replaceAllOccurences(oreDict["ingotVoid"], hashIngot["VoidMetal"]);
recipes.replaceAllOccurences(<thaumcraft:ingot:1>, hashIngot["VoidMetal"]);

if (!<ore:ingotAluminum>.empty) {
    for item in oreDict["ingotAluminum"].items {
        hashIngot["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["ingotAluminum"], hashIngot["Aluminium"]);
}

/***** Gems *****/
hashGem["Aquamarine"].remove(<naturalpledge:resource:4>);
hashGem["Aquamarine"].remove(<naturalpledge:resource:5>);
hashGem["NjordAquamarine"].remove(<naturalpledge:resource:5>);

hashGem["Charcoal"].add(<minecraft:coal:1>);
recipes.replaceAllOccurences(oreDict["charcoal"], hashGem["Charcoal"]);
recipes.replaceAllOccurences(oreDict["itemCharcoal"], hashGem["Charcoal"]);
recipes.replaceAllOccurences(<minecraft:coal:1>, hashGem["Charcoal"]);

hashGem["DiamondMana"].add(<botania:manaresource:2>);
recipes.replaceAllOccurences(<botania:manaresource:2>, hashGem["DiamondMana"]);

hashGem["Dragonstone"].add(<botania:manaresource:9>);
recipes.replaceAllOccurences(<botania:manaresource:9>, hashGem["Dragonstone"]);

hashGem["LapisElven"].add(<botanicadds:elven_lapis>);
recipes.replaceAllOccurences(<botanicadds:elven_lapis>, hashGem["LapisElven"]);

hashGem["LapisMana"].add(<botanicadds:mana_lapis>);
recipes.replaceAllOccurences(<botanicadds:mana_lapis>, hashGem["LapisMana"]);

hashGem["Quicksilver"].add(<thaumcraft:quicksilver>);
recipes.replaceAllOccurences(oreDict["quicksilver"], hashGem["Quicksilver"]);
recipes.replaceAllOccurences(<thaumcraft:quicksilver>, hashGem["Quicksilver"]);

/*****  Crystals *****/
hashCrystal["Amber"].add(<cyclicmagic:crystallized_amber>);
recipes.replaceAllOccurences(<cyclicmagic:crystallized_amber>, hashCrystal["Amber"]);

hashCrystal["Diamantine"].add(<actuallyadditions:item_crystal:2>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:2>, hashCrystal["Diamantine"]);

hashCrystal["DiamantineEmpowered"].add(<actuallyadditions:item_crystal_empowered:2>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:2>, hashCrystal["DiamantineEmpowered"]);

hashCrystal["Emeradic"].add(<actuallyadditions:item_crystal:4>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:4>, hashCrystal["Emeradic"]);

hashCrystal["EmeradicEmpowered"].add(<actuallyadditions:item_crystal_empowered:4>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:4>, hashCrystal["EmeradicEmpowered"]);

hashCrystal["Enori"].add(<actuallyadditions:item_crystal:5>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:5>, hashCrystal["Enori"]);

hashCrystal["EnoriEmpowered"].add(<actuallyadditions:item_crystal_empowered:5>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:5>, hashCrystal["EnoriEmpowered"]);

hashCrystal["Obsidian"].add(<cyclicmagic:crystallized_obsidian>);
recipes.replaceAllOccurences(<cyclicmagic:crystallized_obsidian>, hashCrystal["Obsidian"]);

hashCrystal["Palis"].add(<actuallyadditions:item_crystal:1>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:1>, hashCrystal["Palis"]);

hashCrystal["PalisEmpowered"].add(<actuallyadditions:item_crystal_empowered:1>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:1>, hashCrystal["PalisEmpowered"]);

hashCrystal["Restonia"].add(<actuallyadditions:item_crystal>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal>, hashCrystal["Restonia"]);

hashCrystal["RestoniaEmpowered"].add(<actuallyadditions:item_crystal_empowered>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered>, hashCrystal["RestoniaEmpowered"]);

hashCrystal["Void"].add(<actuallyadditions:item_crystal:3>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:3>, hashCrystal["Void"]);

hashCrystal["VoidEmpowered"].add(<actuallyadditions:item_crystal_empowered:3>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:3>, hashCrystal["VoidEmpowered"]);

if (!<ore:crystalAluminum>.empty) {
    for item in oreDict["crystalAluminum"].items {
        hashCrystal["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["crystalAluminum"], hashCrystal["Aluminium"]);
}

/***** Clathrates *****/


/***** Dusts *****/
recipes.replaceAllOccurences(oreDict["dustAshes"], hashDust["Ash"]);
recipes.replaceAllOccurences(oreDict["dustEnder"], hashDust["EnderPearl"]);
recipes.replaceAllOccurences(oreDict["dustNetherQuartz"], hashDust["Quartz"]);

hashDust["BloodInfusedGlowstone"].add(<bloodarsenal:base_item:2>);
recipes.replaceAllOccurences(<bloodarsenal:base_item:2>, hashDust["BloodInfusedGlowstone"]);

hashDust["ElvenPixie"].add(<botania:manaresource:8>);
recipes.replaceAllOccurences(oreDict["elvenPixieDust"], hashDust["ElvenPixie"]);
recipes.replaceAllOccurences(<botania:manaresource:8>, hashDust["ElvenPixie"]);

hashDust["Ember"].add(<embers:dust_ember>);
recipes.replaceAllOccurences(<embers:dust_ember>, hashDust["Ember"]);

hashDust["Flux"].add(<fluxnetworks:flux>);
recipes.replaceAllOccurences(<fluxnetworks:flux>, hashDust["Flux"]);

hashDust["Illumination"].add(<astralsorcery:itemusabledust>);
recipes.replaceAllOccurences(<astralsorcery:itemusabledust>, hashDust["Illumination"]);

hashDust["Metallurgic"].add(<embers:dust_metallurgic>);
recipes.replaceAllOccurences(<embers:dust_metallurgic>, hashDust["Metallurgic"]);

hashDust["Nocturnal"].add(<astralsorcery:itemusabledust:1>);
recipes.replaceAllOccurences(<astralsorcery:itemusabledust:1>, hashDust["Nocturnal"]);

hashDust["Soot"].add(<deepmoblearning:soot_covered_redstone>);
recipes.replaceAllOccurences(<deepmoblearning:soot_covered_redstone>, hashDust["Soot"]);

hashDust["StygianIron"].add(<woot:stygianirondust>);
recipes.replaceAllOccurences(<woot:stygianirondust>, hashDust["StygianIron"]);

hashDust["VoidMetal"].add(<jaopca:item_dustvoid>);
recipes.replaceAllOccurences(oreDict["dustVoid"], hashDust["VoidMetal"]);
recipes.replaceAllOccurences(<jaopca:item_dustvoid>, hashDust["VoidMetal"]);

hashDust["Wither"].add(<darkutils:material>);
recipes.replaceAllOccurences(<darkutils:material>, hashDust["Wither"]);

if (!<ore:dustAluminum>.empty) {
    for item in oreDict["dustAluminum"].items {
        hashDust["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["dustAluminum"], hashDust["Aluminium"]);
}

/***** Plates *****/
hashPlate["Alkimium"].add(<planarartifice:alkimium_plate>);
recipes.replaceAllOccurences(oreDict["plateAlchemical"], hashPlate["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_plate>, hashPlate["Alkimium"]);

hashPlate["Resonating"].add(<deepresonance:resonating_plate>);
recipes.replaceAllOccurences(<deepresonance:resonating_plate>, hashPlate["Resonating"]);

hashPlate["StygianIron"].add(<woot:stygianironplate>);
recipes.replaceAllOccurences(<woot:stygianironplate>, hashPlate["StygianIron"]);

hashPlate["VoidMetal"].add(<thaumcraft:plate:3>);
recipes.replaceAllOccurences(oreDict["plateVoid"], hashPlate["VoidMetal"]);
recipes.replaceAllOccurences(<thaumcraft:plate:3>, hashPlate["VoidMetal"]);

if (!<ore:plateAluminum>.empty) {
    for item in oreDict["plateAluminum"].items {
        hashPlate["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(<ore:plateAluminum>, hashPlate["Aluminium"]);
}

/***** Dense Plates *****/
hashPlateDense["VoidMetal"].add(<jaopca:item_platedensevoid>);
recipes.replaceAllOccurences(oreDict["plateDenseVoid"], hashPlateDense["VoidMetal"]);
recipes.replaceAllOccurences(<jaopca:item_platedensevoid>, hashPlateDense["VoidMetal"]);

if (!<ore:plateDenseAluminum>.empty) {
    for item in oreDict["plateDenseAluminum"].items {
        hashPlateDense["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["plateDenseAluminum"], hashPlateDense["Aluminium"]);
}

/***** Rods *****/
hashRod["Aluminium"].add(<immersiveengineering:material:3>);
recipes.replaceAllOccurences(oreDict["stickAluminium"], hashRod["Aluminium"]);
recipes.replaceAllOccurences(oreDict["stickAluminum"], hashRod["Aluminium"]);
recipes.replaceAllOccurences(<immersiveengineering:material:3>, hashRod["Aluminium"]);

hashRod["Iron"].add(<immersiveengineering:material:1>);
recipes.replaceAllOccurences(oreDict["stickIron"], hashRod["Iron"]);
recipes.replaceAllOccurences(<botania:manaresource:8>, hashRod["Iron"]);

hashRod["Steel"].add(<immersiveengineering:material:2>);
recipes.replaceAllOccurences(oreDict["stickSteel"], hashRod["Steel"]);
recipes.replaceAllOccurences(<botania:manaresource:8>, hashRod["Steel"]);

hashRod["VoidMetal"].add(<jaopca:item_stickvoid>);
recipes.replaceAllOccurences(oreDict["rodVoid"], hashRod["VoidMetal"]);
recipes.replaceAllOccurences(<jaopca:item_stickvoid>, hashRod["VoidMetal"]);

if (!<ore:rodAluminum>.empty) {
    for item in oreDict["rodAluminum"].items {
        hashRod["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["rodAluminum"], hashRod["Aluminium"]);
}

/***** Gears *****/
hashGear["Proven"].add(<extratrees:misc:2>);
recipes.replaceAllOccurences(<extratrees:misc:2>, hashGear["Proven"]);

hashGear["Redstone"].add(<mysticalmechanics:gear_gold_off>);
recipes.replaceAllOccurences(<mysticalmechanics:gear_gold_off>, hashGear["Redstone"]);

hashGear["RedstoneInverted"].add(<mysticalmechanics:gear_gold_on>);
recipes.replaceAllOccurences(<mysticalmechanics:gear_gold_on>, hashGear["RedstoneInverted"]);

hashGear["Scented"].add(<extrabees:misc>);
recipes.replaceAllOccurences(<extrabees:misc>, hashGear["Scented"]);

hashGear["VoidMetal"].add(<jaopca:item_gearvoid>);
recipes.replaceAllOccurences(oreDict["gearVoid"], hashGear["VoidMetal"]);
recipes.replaceAllOccurences(<jaopca:item_gearvoid>, hashGear["VoidMetal"]);

if (!<ore:gearAluminum>.empty) {
    for item in oreDict["gearAluminum"].items {
        hashGear["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["gearAluminum"], hashGear["Aluminium"]);
}

/***** Nuggets *****/
hashNugget["MeatRaw"].add(<industrialmeat:raw_meat_nugget>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_nugget>, hashNugget["MeatRaw"]);

hashNugget["Light"].add(<tg:nugget_light>);
recipes.replaceAllOccurences(<tg:nugget_light>, hashNugget["Light"]);

hashNugget["Shade"].add(<tg:nugget_shade>);
recipes.replaceAllOccurences(<tg:nugget_shade>, hashNugget["Shade"]);

hashNugget["VoidMetal"].add(<thaumcraft:nugget:7>);
recipes.replaceAllOccurences(oreDict["nuggetVoid"], hashNugget["VoidMetal"]);
recipes.replaceAllOccurences(<thaumcraft:nugget:7>, hashNugget["VoidMetal"]);

if (!<ore:nuggetAluminum>.empty) {
    for item in oreDict["nuggetAluminum"].items {
        hashNugget["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["nuggetAluminum"], hashNugget["Aluminium"]);
}

/***** Blocks *****/
hashBlock["Alkimium"].add(<planarartifice:alkimium_block>);
recipes.replaceAllOccurences(oreDict["blockAlchemical"], hashBlock["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_block>, hashBlock["Alkimium"]);

hashBlock["BloodInfusedIron"].add(<bloodarsenal:blood_infused_iron_block>);
recipes.replaceAllOccurences(<bloodarsenal:blood_infused_iron_block>, hashBlock["BloodInfusedIron"]);

hashBlock["Cobalt"].add(<tconstruct:metal>);
recipes.replaceAllOccurences(<tconstruct:metal>, hashBlock["Cobalt"]);

hashBlock["Diamantine"].add(<actuallyadditions:block_crystal:2>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:2>, hashBlock["Diamantine"]);

hashBlock["DiamantineEmpowered"].add(<actuallyadditions:block_crystal_empowered:2>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:2>, hashBlock["DiamantineEmpowered"]);

hashBlock["DiamondMana"].add(<botania:storage:3>);
recipes.replaceAllOccurences(<botania:storage:3>, hashBlock["DiamondMana"]);

hashBlock["Dragonstone"].add(<botania:storage:4>);
recipes.replaceAllOccurences(<botania:storage:4>, hashBlock["Dragonstone"]);

hashBlock["DraconiumCharged"].add(<draconicevolution:draconium_block:1>);
recipes.replaceAllOccurences(<draconicevolution:draconium_block:1>, hashBlock["DraconiumCharged"]);

hashBlock["EbonyPsi"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(<planarartifice:alkimium_ingot>, hashBlock["EbonyPsi"]);

hashBlock["Emeradic"].add(<actuallyadditions:block_crystal:4>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:4>, hashBlock["Emeradic"]);

hashBlock["EmeradicEmpowered"].add(<actuallyadditions:block_crystal_empowered:4>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:4>, hashBlock["EmeradicEmpowered"]);

hashBlock["Ender"].add(<extendedcrafting:storage:5>);
recipes.replaceAllOccurences(<extendedcrafting:storage:5>, hashBlock["Ender"]);

hashBlock["EnderEnhanced"].add(<extendedcrafting:storage:7>);
recipes.replaceAllOccurences(<extendedcrafting:storage:7>, hashBlock["EnderEnhanced"]);

hashBlock["EnderPearl"].add(<actuallyadditions:block_misc:6>);
recipes.replaceAllOccurences(<actuallyadditions:block_misc:6>, hashBlock["EnderPearl"]);

hashBlock["EnderStar"].add(<extendedcrafting:storage:6>);
recipes.replaceAllOccurences(<extendedcrafting:storage:6>, hashBlock["EnderStar"]);

hashBlock["Enori"].add(<actuallyadditions:block_crystal:5>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:5>, hashBlock["Enori"]);

hashBlock["EnoriEmpowered"].add(<actuallyadditions:block_crystal_empowered:5>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:5>, hashBlock["EnoriEmpowered"]);

hashBlock["Flux"].add(<fluxnetworks:fluxblock>);
recipes.replaceAllOccurences(<fluxnetworks:fluxblock>, hashBlock["Flux"]);

hashBlock["GlitchInfused"].add(<deepmoblearning:infused_ingot_block>);
recipes.replaceAllOccurences(<deepmoblearning:infused_ingot_block>, hashBlock["GlitchInfused"]);

hashBlock["IvoryPsi"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(<planarartifice:alkimium_ingot>, hashBlock["IvoryPsi"]);

hashBlock["LapisElven"].add(<botanicadds:elven_lapis_block>);
recipes.replaceAllOccurences(<botanicadds:elven_lapis_block>, hashBlock["LapisElven"]);

hashBlock["LapisMana"].add(<botanicadds:mana_lapis_block>);
recipes.replaceAllOccurences(<botanicadds:mana_lapis_block>, hashBlock["LapisMana"]);

hashBlock["Light"].add(<tg:block_light>);
recipes.replaceAllOccurences(<tg:block_light>, hashBlock["Light"]);

hashBlock["MeatCooked"].add(<industrialmeat:cooked_meat_block>);
recipes.replaceAllOccurences(<industrialmeat:cooked_meat_block>, hashBlock["MeatCooked"]);

hashBlock["MeatRaw"].add(<industrialmeat:raw_meat_block>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_block>, hashBlock["MeatRaw"]);

hashBlock["Orichalcos"].add(<extrabotany:blockorichalcos>);
recipes.replaceAllOccurences(<extrabotany:blockorichalcos>, hashBlock["Orichalcos"]);

hashBlock["Palis"].add(<actuallyadditions:block_crystal:1>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:1>, hashBlock["Palis"]);

hashBlock["PalisEmpowered"].add(<actuallyadditions:block_crystal_empowered:1>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:1>, hashBlock["PalisEmpowered"]);

hashBlock["Photonium"].add(<extrabotany:blockphotonium>);
recipes.replaceAllOccurences(<extrabotany:blockphotonium>, hashBlock["Photonium"]);

hashBlock["Resonating"].add(<deepresonance:resonating_block>);
recipes.replaceAllOccurences(<deepresonance:resonating_block>, hashBlock["Resonating"]);

hashBlock["Restonia"].add(<actuallyadditions:block_crystal>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal>, hashBlock["Restonia"]);

hashBlock["RestoniaEmpowered"].add(<actuallyadditions:block_crystal_empowered>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered>, hashBlock["RestoniaEmpowered"]);

hashBlock["Shade"].add(<tg:block_shade>);
recipes.replaceAllOccurences(<tg:block_shade>, hashBlock["Shade"]);

hashBlock["Shadowium"].add(<extrabotany:blockshadowium>);
recipes.replaceAllOccurences(<extrabotany:blockshadowium>, hashBlock["Shadowium"]);

hashBlock["StygianIron"].add(<woot:stygianiron>);
recipes.replaceAllOccurences(<woot:stygianiron>, hashBlock["StygianIron"]);

hashBlock["VoidMetal"].add(<thaumcraft:metal_void>);
recipes.replaceAllOccurences(hashBlock["Void"], hashBlock["VoidMetal"]);
recipes.replaceAllOccurences(<thaumcraft:metal_void>, hashBlock["VoidMetal"]);

hashBlock["Void"].add(<actuallyadditions:block_crystal:3>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:3>, hashBlock["Void"]);

hashBlock["VoidEmpowered"].add(<actuallyadditions:block_crystal_empowered:3>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:3>, hashBlock["VoidEmpowered"]);

if (!<ore:blockAluminum>.empty) {
    for item in oreDict["blockAluminum"].items {
        hashBlock["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["blockAluminum"], hashBlock["Aluminium"]);
}

/***** Tiny Dusts *****/
hashDustTiny["VoidMetal"].add(<jaopca:item_dusttinyvoid>);
recipes.replaceAllOccurences(oreDict["dustTinyVoid"], hashDustTiny["VoidMetal"]);
recipes.replaceAllOccurences(<jaopca:item_dusttinyvoid>, hashDustTiny["VoidMetal"]);

if (!<ore:dustTinyAluminum>.empty) {
    for item in oreDict["dustTinyAluminum"].items {
        hashDustTiny["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["dustTinyAluminum"], hashDustTiny["Aluminium"]);
}

/***** Small Dusts *****/
hashDustSmall["VoidMetal"].add(<jaopca:item_dustsmallvoid>);
recipes.replaceAllOccurences(oreDict["dustSmallVoid"], hashDustSmall["VoidMetal"]);
recipes.replaceAllOccurences(<jaopca:item_dustsmallvoid>, hashDustSmall["VoidMetal"]);

if (!<ore:dustSmallAluminum>.empty) {
    for item in oreDict["dustSmallAluminum"].items {
        hashDustSmall["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["dustSmallAluminum"], hashDustSmall["Aluminium"]);
}

/***** Dirty Dusts *****/
if (!<ore:dustDirtyAluminum>.empty) {
    for item in oreDict["dustDirtyAluminum"].items {
        hashDustDirty["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["dustDirtyAluminum"], hashDustDirty["Aluminium"]);
}

/***** Clumps *****/
if (!<ore:clumpAluminum>.empty) {
    for item in oreDict["clumpAluminum"].items {
        hashClump["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["clumpAluminum"], hashClump["Aluminium"]);
}

/***** Shards *****/
(!<ore:shardAluminum>.empty) {
    for item in oreDict["shardAluminum"].items {
        hashShard["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["shardAluminum"], hashShard["Aluminium"]);
}

/***** Ender IO *****/

