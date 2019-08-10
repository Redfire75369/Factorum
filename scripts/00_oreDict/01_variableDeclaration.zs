#priority -0001

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/* Defining Values/Variables */
global sand = <minecraft:sand> as IItemStack;

/* Assigning a HashMap for each OreDict */

/***** Ores *****/
global hashOre as IOreDictEntry[string];
val stringOre = [
//SILK_SORTING: BEGIN@Ores
    "Aluminium",
    "Amber",
    "Amethyst",
    "Anglesite",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Bauxite",
    "Benitoite",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Cinnabar",
    "ClathrateEnder",
    "ClathrateGlowstone",
    "ClathrateOilSand",
    "ClathrateOilShale",
    "ClathrateRedstone",
    "Cobalt",
    "Copper",
    "CrystalAir",
    "CrystalEarth",
    "CrystalEntropy",
    "CrystalFire",
    "CrystalOrder",
    "CrystalTaint",
    "CrystalWater",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "Emerald",
    "EndInferium",
    "EndProsperity",
    "Galena",
    "Garnet",
    "Gold",
    "Inferium",
    "Iridium",
    "Iron",
    "Lapis",
    "Lead",
    "Light",
    "Lithium",
    "Magnesium",
    "Mithril",
    "NetherInferium",
    "NetherProsperity",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Prosperity",
    "Pyrite",
    "Quartz",
    "QuartzBlack",
    "Redstone",
    "Resonating",
    "Ruby",
    "Salt",
    "Sapphire",
    "Shade",
    "Sheldonite",
    "Silver",
    "Sodalite",
    "Sphalerite",
    "StygianIron",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Yellorite",
    "Yellorium",
//SILK_SORTING: END@Ores
] as string[];
for ore in stringOre {
    hashOre[ore] = oreDict["ore" ~ ore];
}

hashOre["CertusQuartz"].remove(<appliedenergistics2:charged_quartz_ore>);

hashOre["Light"].add(<tg:ore_light>);
recipes.replaceAllOccurences(<tg:ore_light>, hashOre["Light"]);

hashOre["Shade"].add(<tg:ore_shade>);
recipes.replaceAllOccurences(<tg:ore_shade>, hashOre["Shade"]);

hashOre["StygianIron"].add(<woot:stygianironore>);
recipes.replaceAllOccurences(<woot:stygianironore>, hashOre["StygianIron"]);

// Add compatibility layer for mods that spell Aluminium as Aluminum
for item in oreDict["oreAluminum"].items {
    hashOre["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["oreAluminum"], hashOre["Aluminium"]);

/***** Clusters *****/
global hashCluster as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringCluster = [
//SILK_SORTING: BEGIN@Cluster
    "Aluminium",
    "Ardite",
    "AstralStarmetal",
    "Boron",
    "Cinnabar",
    "Cobalt",
    "Copper",
    "Draconium",
    "Gold",
    "Iridium",
    "Iron",
    "Lead",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Osmium",
    "Platinum",
    "Quartz",
    "Silver",
    "Tin",
    "Tungsten",
    "Uranium",
    "Yellorium",
//SILK_SORTING: END@Cluster
] as string[];

for cluster in stringCluster {
    hashCluster[cluster] = oreDict["cluster" ~ cluster];
}

// Add compatibility layer for mods that spell Aluminium as Aluminum
for item in oreDict["clusterAluminum"].items {
    hashCluster["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["clusterAluminum"], hashCluster["Aluminium"]);

/***** Ingots *****/
global hashIngot as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringIngot = [
//SILK_SORTING: BEGIN@Ingot
    "Adaminite",
    "AdvancedAlloy",
    "Alkimium",
    "AluBrass",
    "Aluminium",
    "Alumite",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "Beryllium",
    "Bismuth",
    "BlackIron",
    "BloodBronze",
    "Blutonium",
    "Boron",
    "Boron10",
    "Boron11",
    "Brass",
    "BrickNetherGlazed",
    "Bronze",
    "Chocolate",
    "Chrome",
    "Cobalt",
    "CocoaButter",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkChocolate",
    "DarkSoularium",
    "DarkSteel",
    "Dawnstone",
    "Draconium",
    "DraconiumAwakened",
    "EbonyPsi",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "ElvenElementium",
    "Ender",
    "EnderEnhanced",
    "Enderium",
    "EnderiumBase",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Extreme",
    "Gaia",
    "GelidEnderium",
    "GlitchInfused",
    "Gold",
    "Graphite",
    "HardCarbon",
    "HOPGraphite",
    "HotTungstensteel",
    "HSLASteel",
    "Inferium",
    "Infinity",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "IronCompressed",
    "IvoryPsi",
    "Knightslime",
    "Lead",
    "LeadPlatinum",
    "Light",
    "Lithium",
    "Lithium6",
    "Lithium7",
    "LithiumManganeseDioxide",
    "Livium",
    "Ludicrite",
    "Lumium",
    "Magnesium",
    "MagnesiumDiboride",
    "Manasteel",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Manyullyn",
    "MeatCooked",
    "MeatRaw",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Nickel",
    "Osglosglas",
    "Osmiridium",
    "Osmium",
    "Pigiron",
    "Platinum",
    "Prudentium",
    "Psi",
    "PulsatingIron",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "Shade",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "SiliconCarbide",
    "Silver",
    "SlimePink",
    "Soularium",
    "Soulium",
    "Spectre",
    "StellarAlloy",
    "StygianIron",
    "Superium",
    "Supremium"
    "Terrasteel",
    "Thauminite",
    "Thaumium",
    "ThaumiumAer",
    "ThaumiumAqua",
    "ThaumiumIgnis",
    "ThaumiumOrdo",
    "ThaumiumPerditio",
    "ThaumiumTerra",
    "Thermoconducting",
    "Thorium",
    "ThoriumOxide",
    "Thundersteel",
    "ThundersteelAwakened",
    "Tin",
    "TinSilver",
    "Titanium",
    "Tough",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Unstable",
    "Uranium",
    "UraniumOxide",
    "VibrantAlloy",
    "Void",
    "Yellorium",
    "Zinc",
    "Zircaloy",
    "Zirconium",
//SILK_SORTING: END@Ingot
] as string[];
for ingot in stringIngot { 
    hashIngot[ingot] = oreDict["ingot" ~ ingot];
}

hashIngot["Gaia"].add(<botania:manaresource:14>);
recipes.replaceAllOccurences(oreDict["gaiaIngot"], hashIngot["Gaia"]);
recipes.replaceAllOccurences(<botania:manaresource:14>, hashIngot["Gaia"]);

hashIngot["Gaiasteel"].add(<botanicadds:gaiasteel_ingot>);
recipes.replaceAllOccurences(<botanicadds:gaiasteel_ingot>, hashIngot["Gaiasteel"]);

hashIngot["GlitchInfused"].add(<deepmoblearning:glitch_infused_ingot>);
recipes.replaceAllOccurences(<deepmoblearning:glitch_infused_ingot>, hashIngot["GlitchInfused"]);

hashIngot["Ender"].add(<extendedcrafting:material:36>);
recipes.replaceAllOccurences(<extendedcrafting:material:36>, hashIngot["Ender"]);

hashIngot["EnderEnhanced"].add(<extendedcrafting:material:48>);
recipes.replaceAllOccurences(<extendedcrafting:material:48>, hashIngot["EnderEnhnaced"]);

hashIngot["SlimePink"].add(<industrialforegoing:pink_slime_ingot>);
recipes.replaceAllOccurences(<industrialforegoing:pink_slime_ingot>, hashIngot["SlimePink"];

hashIngot["MeatCooked"].add(<industrialmeat:cooked_meat_ingot>);
recipes.replaceAllOccurences(<industrialmeat:cooked_meat_ingot>, hashIngot["MeatCooked"];

hashIngot["MeatRaw"].add(<industrialmeat:raw_meat_ingot>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_ingot>, hashIngot["MeatRaw"];

hashIngot["Thundersteel"].remove(<naturalpledge:resource:1>);

hashIngot["Alkimium"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(oreDict["ingotAlchemical"], hashIngot["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_ingot>, hashIngot["Alkimium"]);

hashIngot["Spectre"].add(<randomthings:ingredient:3>);
recipes.replaceAllOccurences(<randomthings:ingredient:3>, hashIngot["Spectre"];

hashIngot["DarkSoularium"].add(<simplyjetpacks:metaitemmods:3>);
recipes.replaceAllOccurences(oreDict["dark_soularium"], hashIngot["DarkSoularium"]);
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:3>, hashIngot["DarkSoularium"]);

hashIngot["Livium"].add(<thaumic_arcana:ingot_livium>);
recipes.replaceAllOccurences(<thaumic_arcana:ingot_livium>, hashIngot["Livium"]);

hashIngot["Light"].add(<tg:ingot_light>);
recipes.replaceAllOccurences(<tg:ingot_light>, hashIngot["Light"]);

hashIngot["Shade"].add(<tg:ingot_shade>);
recipes.replaceAllOccurences(<tg:ingot_shade>, hashIngot["Shade"]);

hashIngot["StygianIron"].add(<woot:stygianironingot>);
recipes.replaceAllOccurences(<woot:stygianironingot>, hashIngot["StygianIron"]);

// Add compatibility with mods that use the other spelling of aluminium
for item in oreDict["ingotAluminum"].items {
    hashIngot["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["ingotAluminum"], hashIngot["Aluminium"]);

/***** Gems *****/
global hashGem as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringGem = [
//SILK_SORTING: BEGIN@Gem
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "BoronArsenide",
    "BoronNitride",
    "Carobbiite",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Coal",
    "CrystalFlux",
    "Diamond",
    "DiamondMana",
    "DimensionalShard",
    "Dragonstone",
    "Emerald",
    "Flourite",
    "Fluix",
    "Garnet",
    "Gelid",
    "Lapis",
    "LapisElven",
    "LapisMana",
    "NjordAquamarine",
    "NjordAquamarineAwakened",
    "Opal",
    "Pearl",
    "Peridot",
    "Prismarine",
    "Psi",
    "Quartz",
    "QuartzBlack",
    "Quicksilver",
    "RedGarnet",
    "Rhodocrosite",
    "Ruby",
    "Sapphire",
    "Villaumite",
    "YellowGarnet",
//SILK_SORTING: END@Gem
] as string[];
for gem in stringGem {
    hashGem[gem] = oreDict["gem" ~ gem];
}

hashGem["DiamondMana"].add(<botania:manaresource:2>);
recipes.replaceAllOccurences(<botania:manaresource:2>, hashGem["DiamondMana"]);

hashGem["Dragonstone"].add(<botania:manaresource:9>);
recipes.replaceAllOccurences(<botania:manaresource:9>, hashGem["Dragonstone"]);

hashGem["LapisElven"].add(<botanicadds:elven_lapis>);
recipes.replaceAllOccurences(<botanicadds:elven_lapis>, hashGem["LapisElven"]);

hashGem["LapisMana"].add(<botanicadds:mana_lapis>);
recipes.replaceAllOccurences(<botanicadds:mana_lapis>, hashGem["LapisMana"]);

hashGem["Aquamarine"].remove(<naturalpledge:resource:4>);
hashGem["Aquamarine"].remove(<naturalpledge:resource:5>);
hashGem["NjordAquamarine"].remove(<naturalpledge:resource:5>);

hashGem["Quicksilver"].add(<thaumcraft:quicksilver>);
recipes.replaceAllOccurences(oreDict["quicksilver"], hashGem["Quicksilver"]);
recipes.replaceAllOccurences(<thaumcraft:quicksilver>, hashGem["Quicksilver"]);

/***** Crystals *****/
global hashCrystal as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringCrystal = [
//SILK_SORTING: BEGIN@Crystal
    "Aethium",
    "Aluminium",
    "Amber",
    "Ardite",
    "AstralStarmetal",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Cinnabar",
    "Cobalt",
    "Copper",
    "Diamantine",
    "DiamantineEmpowered",
    "Draconium",
    "Emeradic",
    "EmeradicEmpowered",
    "Enori",
    "EnoriEmpowered",
    "Erodium",
    "Fluix",
    "Gold",
    "Ionite",
    "Iridium",
    "Iron",
    "Kyronite",
    "Lead",
    "Litherite",
    "Lithium",
    "Lonsdaleite",
    "Magnesium",
    "Mithril",
    "Obsidian",
    "Osmium",
    "Palis",
    "PalisEmpowered",
    "Pladium",
    "Platinum",
    "PureCertusQuartz",
    "PureFluix",
    "PureNetherQuartz",
    "Restonia",
    "RestoniaEmpowered",
    "Silver",
    "Slag",
    "SlagRich",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Void",
    "VoidEmpowered",
    "Yellorium",
//SILK_SORTING: END@Crystal
] as string[];
for crystal in stringCrystal {
    hashCrystal[crystal] = oreDict["crystal" ~ crystal];
}

hashCrystal["Restonia"].add(<actuallyadditions:item_crystal>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal>, hashCrystal["Restonia"]);

hashCrystal["Palis"].add(<actuallyadditions:item_crystal:1>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:1>, hashCrystal["Palis"]);

hashCrystal["Diamantine"].add(<actuallyadditions:item_crystal:2>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:2>, hashCrystal["Diamantine"]);

hashCrystal["Void"].add(<actuallyadditions:item_crystal:3>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:3>, hashCrystal["Void"]);

hashCrystal["Emeradic"].add(<actuallyadditions:item_crystal:4>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:4>, hashCrystal["Emeradic"]);

hashCrystal["Enori"].add(<actuallyadditions:item_crystal:5>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:5>, hashCrystal["Enori"]);

hashCrystal["RestoniaEmpowered"].add(<actuallyadditions:item_crystal_empowered>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered>, hashCrystal["RestoniaEmpowered"]);

hashCrystal["PalisEmpowered"].add(<actuallyadditions:item_crystal_empowered:1>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:1>, hashCrystal["PalisEmpowered"]);

hashCrystal["DiamantineEmpowered"].add(<actuallyadditions:item_crystal_empowered:2>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:2>, hashCrystal["DiamantineEmpowered"]);

hashCrystal["VoidEmpowered"].add(<actuallyadditions:item_crystal_empowered:3>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:3>, hashCrystal["VoidEmpowered"]);

hashCrystal["EmeradicEmpowered"].add(<actuallyadditions:item_crystal_empowered:4>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:4>, hashCrystal["EmeradicEmpowered"]);

hashCrystal["EnoriEmpowered"].add(<actuallyadditions:item_crystal_empowered:5>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:5>, hashCrystal["EnoriEmpowered"]);

hashCrystal["Amber"].add(<cyclicmagic:crystallised_amber>);
recipes.replaceAllOccurences(<cyclicmagic:crystallised_amber>, hashCrystal["Amber"]);

hashCrystal["Obsidian"].add(<cyclicmagic:crystallised_obsidian>);
recipes.replaceAllOccurences(<cyclicmagic:crystallised_obsidian>, hashCrystal["Obsidian"]);

// Aluminum -> Aluminium
for item in oreDict["crystalAluminum"].items {
    hashCrystal["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["crystalAluminum"], hashCrystal["Aluminium"]);

/***** Ender IO Crystals *****/
global hashEnderIOCrystal as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringEnderIOCrystal = [
//SILK_SORTING: BEGIN@EnderIOCrystal
    "AttractorCrystal",
    "EnderCrystal",
    "PrecientCrystal",
    "PulsatingCrystal",
    "VibrantCrystal",
    "WeatherCrystal",
//SILK_SORTING: END@EnderIOCrystal
] as string[];
for enderIOCrystal in stringEnderIOCrystal {
    hashEnderIOCrystal[enderIOCrystal] = oreDict["item" ~ enderIOCrystal];
}

/***** Clathrates *****/
global hashClathrate as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringClathrate = [
//SILK_SORTING: BEGIN@Clathrate
    "Ender",
    "Glowstone",
    "Oil",
    "Redstone",
//SILK_SORTING: END@Clathrate
] as string[];
for clathrate in stringClathrate{ 
    hashClathrate[clathrate] = oreDict["clathrate" ~ clathrate];
}

/***** Dusts *****/
global hashDust as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDust = [
//SILK_SORTING: BEGIN@Dust
    "Aerotheum",
    "Almandine",
    "Alugentum",
    "Aluminium",
    "Amber",
    "Andesite",
    "Andradite",
    "Apatite",
    "Ardite",
    "Ash",
    "AstralStarmetal",
    "Basalt",
    "Basalz",
    "Bauxite",
    "Bedrock",
    "Beryllium",
    "Blaze",
    "Blitz",
    "Blizz",
    "BloodInfusedGlowstone",
    "Blutonium",
    "Borax",
    "Boron",
    "BoronNitride",
    "Brass",
    "Bronze",
    "Calcite",
    "CalciumSulfate",
    "CarbonManganese",
    "Carobbiite",
    "CertusQuartz",
    "Charcoal",
    "ChargedCertusQuartz",
    "Chrome", // Personally a Firefox fan - Silk
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Cocoa",
    "Coke",
    "Constantan",
    "Copper",
    "Cryotheum",
    "CrystalBinder",
    "Cyanite",
    "DarkAshes",
    "Diamond",
    "Dimensional",
    "Diorite",
    "Draconium",
    "ElectrumFlux",
    "ElvenPixie",
    "Ember",
    "EnderEye",
    "Enderium",
    "EnderPearl",
    "Endstone",
    "Energetic",
    "Flint",
    "Flourite",
    "Fluix",
    "Flux",
    "Galena",
    "GelidEnderium",
    "Glowstone",
    "Gold",
    "Granite",
    "Graphite",
    "Grossular",
    "HOPGraphite",
    "Illumination",
    "Invar",
    "Iridium",
    "Iron",
    "Lazurite",
    "Lead",
    "Lithium",
    "Ludicrite",
    "Lumium",
    "Lunar",
    "Magnesium",
    "Mana",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Marble",
    "Metallurgic",
    "Netherrack",
    "Nickel",
    "Nocturnal",
    "Obsidian",
    "Osmium",
    "Peridot",
    "Petrotheum",
    "Phosphorous",
    "Platinum",
    "PotassiumFlouride",
    "PotassiumHydroxide",
    "Prismarine",
    "Pyrite",
    "Pyrope",
    "Pyrotheum",
    "Quartz",
    "QuartzBlack",
    "RedGarnet",
    "Redstone",
    "Rhodocrosite",
    "Ruby",
    "Salt",
    "Sapphire",
    "Signalum",
    "Sodalite",
    "SodiumFlouride",
    "SodiumHydroxide",
    "Soot",
    "Soularium",
    "Spessartite",
    "Sphalerite",
    "Steel",
    "StygianIron",
    "Thorium",
    "ThoriumOxide",
    "Tin",
    "Titanium",
    "Tungsten",
    "Uranium",
    "UraniumOxide",
    "Uvarovite",
    "Villaumite",
    "Wheat",
    "Wither",
    "Wood",
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zirconium",
//SILK_SORTING: END@Dust
] as string[];
for dust in stringDust {
    hashDust[dust] = oreDict["dust" ~ dust];
}

hashDust["Wither"].add(<darkutils:material>);
recipes.replaceAllOccurences(<darkutils:material>, hashDust["Wither"]);

hashDust["Illumination"].add(<astralsorcery:itemusabledust>);
recipes.replaceAllOccurences(<astralsorcery:itemusabledust>, hashDust["Illumination"]);

hashDust["Nocturnal"].add(<astralsorcery:itemusabledust:1>);
recipes.replaceAllOccurences(<astralsorcery:itemusabledust:1>, hashDust["Nocturnal"]);

hashDust["BloodInfusedGlowstone"].add(<bloodarsenal:base_item:2>);
recipes.replaceAllOccurences(<bloodarsenal:base_item:2>, hashDust["BloodInfusedGlowstone"]);

hashDust["ElvenPixie"].add(<botania:manaresource:8>);
recipes.replaceAllOccurences(ore["elvenPixieDust"], hashDust["ElvenPixie"]);
recipes.replaceAllOccurences(<botania:manaresources:8>, hashDust["ElvenPixie"]);

hashDust["Soot"].add(<deepmoblearning:soot_covered_redstone>);
recipes.replaceAllOccurences(<deepmoblearning:soot_covered_redstone>, hashDust["Soot"]);

recipes.replaceAllOccurences(oreDict["dustAshes"], hashDust["Ash"]);

hashDust["Ember"].add(<embers:dust_ember>);
recipes.replaceAllOccurences(<embers:dust_ember>, hashDust["Ember"]);

hashDust["Metallurgic"].add(<embers:dust_metallurgic>);
recipes.replaceAllOccurences(<embers:dust_metallurgic>, hashDust["Metallurgic"]);

hashDust["Flux"].add(<fluxnetworks:flux>);
recipes.replaceAllOccurences(<fluxnetworks:flux>, hashDust["Flux"]);

recipes.replaceAllOccurences(oreDict["dustEnder"], hashDust["EnderPearl"]);

hashDust["StygianIron"].add(<woot:stygianirondust>);
recipes.replaceAllOccurences(<woot:stygianirondust>, hashDust["StygianIron"]);

// Copy Aluminum dust to Aluminium dust
for item in oreDict["dustAluminum"].items {
    hashDust["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["dustAluminum"], hashDust["Aluminium"]);

/***** Plates *****/
global hashPlate as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringPlate = [
//SILK_SORTING: BEGIN@Plate
    "Adaminite",
    "Advanced",
    "AdvancedAlloy",
    "Alkimium",
    "Aluminium",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Basic",
    "Boron",
    "Brass",
    "Bronze",
    "Caminite",
    "Carbon",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Chrome", // FF
    "Coal",
    "Cobalt",
    "Constantan",
    "Copper",
    "Dawnstone",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "DU",
    "Electrum",
    "ElectrumFlux",
    "Elite",
    "Emerald",
    "Enderium",
    "Garnet",
    "GelidEnderium",
    "Gold",
    "Invar",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "Lapis",
    "Lazurite",
    "Lead",
    "Lithium",
    "Lumium",
    "Magnalium",
    "Magnesium",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "Nickel",
    "Obsidian",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Quartz",
    "QuartzBlack",
    "RawCaminite",
    "RedGarnet",
    "Redstone",
    "RefinedIron",
    "Resonating",
    "Ruby",
    "Sapphire",
    "Signalum",
    "Silicon",
    "Silver",
    "Soot",
    "Steel",
    "StygianIron",
    "Thauminite",
    "Thaumium",
    "ThaumiumAer",
    "ThaumiumAqua",
    "ThaumiumIgnis",
    "ThaumiumOrdo",
    "ThaumiumPerditio",
    "ThaumiumTerra",
    "Thorium",
    "Tin",
    "Titanium",
    "Tungsten",
    "Tungstensteel",
    "Uranium",
    "Void",
    "Wood",
    "Yellorium",
    "YellowGarnet",
//SILK_SORTING: END@Plate
] as string[];
for plate in stringPlate {
    hashPlate[plate] = oreDict["plate" ~ plate];
}

hashPlate["Resonating"].add(<deepresonance:resonating_plate>);
recipes.replaceAllOccurences(<deepresonance:resonating_plate>, hashPlate["Resonating"]);

hashPlate["Alkimium"].add(<planarartifice:alkimium_plate>);
recipes.replaceAllOccurences(oreDict["plateAlchemical"], hashPlate["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_plate>, hashPlate["Alkimium"]);

hashPlate["StygianIron"].add(<woot:sygianironplate>);
recipes.replaceAllOccurences(<woot:stygianironplate>, hashPlate["StygianIron"];

// Fix Aluminium spelling
for item in oreDict["plateAluminum"].items {
    hashPlate["Aluminium"].add(item);
}

/***** Dense Plates *****/
global hashPlateDense as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringPlateDense = [
//SILK_SORTING: BEGIN@DensePlate
    "Aluminium",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Coal",
    "Cobalt",
    "Copper",
    "DimensionalShard",
    "Draconium",
    "Emerald",
    "Garnet",
    "Gold",
    "Iridium",
    "Iron",
    "Lapis",
    "Lead",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Quartz",
    "QuartzBlack",
    "Ruby",
    "Sapphire",
    "Silver",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Yellorium",
//SILK_SORTING: END@DensePlate
] as string[];
for plateDense in stringPlateDense {
    hashPlateDense[plateDense] = oreDict["plateDense" ~ plate];
}

// Aluminium Fix
for item in oreDict["plateDenseAluminum"].items {
    hashPlateDense["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["plateDenseAluminum"], hashPlateDense["Aluminium"]);

/***** Rods *****/
global hashRod as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringRod = [
//SILK_SORTING: BEGIN@Rod
    "Aluminium",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Coal",
    "Cobalt",
    "Copper",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "Emerald",
    "Garnet",
    "Gold",
    "Iridium",
    "Iron",
    "Lapis",
    "Lead",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Quartz",
    "QuartzBlack",
    "Ruby",
    "Sapphire",
    "Silver",
    "Steel",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Yellorium",
//SILK_SORTING: END@Rod
] as string[];
for rod in stringRod {
    hashRod[rod] = oreDict["plateDense" ~ rod];
}

hashRod["Iron"].add(<immersiveengineering:material:1>);
recipes.replaceAllOccurences(ore["stickIron"],hashRod["Iron"]);
recipes.replaceAllOccurences(<botania:manaresources:8>,hashRod["Iron"]);

hashRod["Steel"].add(<immersiveengineering:material:2>);
recipes.replaceAllOccurences(ore["stickSteel"],hashRod["Steel"]);
recipes.replaceAllOccurences(<botania:manaresources:8>,hashRod["Steel"]);

hashRod["Aluminium"].add(<immersiveengineering:material:3>);
recipes.replaceAllOccurences(ore["stickAluminium"], hashRod["Aluminium"]);
recipes.replaceAllOccurences(ore["stickAluminum"], hashRod["Aluminium"]);
recipes.replaceAllOccurences(<immersiveengineering:material:3>, hashRod["Aluminium"]);

for item in oreDict["rodAluminum"].items {
    hashRod["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["rodAluminum"], hashRod["Aluminium"]);

/***** Gears *****/
global hashGear as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringGear = [
//SILK_SORTING: BEGIN@Gear
    "Aluminium",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Boron",
    "Brass",
    "Bronze",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Coal",
    "Cobalt",
    "Constantan",
    "Copper",
    "CosmicNeutronium",
    "CrystalMatrix",
    "Dark",
    "Dawnstone",
    "Diamond",
    "DimensionalShard",
    "Dominos",
    "Draconium",
    "Electrum",
    "ElectrumFlux",
    "ElvenElementium",
    "Emerald",
    "Enderium",
    "Energized",
    "Garnet",
    "GelidEnderium",
    "Gold",
    "Infinity",
    "Invar",
    "Iridium",
    "Iron",
    "IronCompressed",
    "IronInfinity",
    "Lapis",
    "Lead",
    "Lithium",
    "Lumium",
    "Magnesium",
    "Manasteel",
    "Mithril",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Proven",
    "Quartz",
    "QuartzBlack",
    "Redstone",
    "RedstoneInverted",
    "Ruby",
    "Sapphire",
    "Scented",
    "Signalum",
    "Silver",
    "Steel",
    "Stone",
    "Terrasteel",
    "Thaumium",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Vibrant",
    "Void",
    "Wood",
    "Yellorium",
//SILK_SORTING: END@Gear
] as string[];
for gear in stringGear{
    hashGear[gear] = oreDict["gear" ~ gear];
}

hashGear["Scented"].add(<extrabees:misc>);
recipes.replaceAllOccurences(<extrabees:misc>, hashGear["Scented"]);

hashGear["Proven"].add(<extratrees:misc:2>);
recipes.replaceAllOccurences(<extratrees:misc:2>, hashGear["Proven"]);

hashGear["Redstone"].add(<mystgears:gear_gold_off>);
recipes.replaceAllOccurences(<mystgears:gear_gold_off>, hashGear["Redstone"]);

hashGear["RedstoneInverted"].add(<mystgears:gear_gold_on>);
recipes.replaceAllOccurences(<mystgears:gear_gold_on>, hashGear["RedstoneInverted"]);

for item in oreDict["gearAluminum"].items {
    hashGear["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["gearAluminum"], hashGear["Aluminium"]);

/***** Nuggets *****/
global hashNugget as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringNugget = [
//SILK_SORTING: BEGIN@Nugget
    "Adaminite",
    "Alkimium",
    "AluBrass",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "BlackIron",
    "Boron",
    "Boron10",
    "Boron11",
    "Brass",
    "Bronze",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Chrome",
    "Coal",
    "Cobalt",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "Crystaltine",
    "DarkSteel",
    "Dawnstone",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened",
    "ElectricalSteel",
    "Electrum",
    "ElvenElementium",
    "Emerald",
    "Enderium",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Garnet",
    "Gold",
    "HotTungstensteel",
    "Inferium",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "Iron",
    "Knightslime",
    "Lapis",
    "Lead",
    "Light",
    "Lithium",
    "Lithium6",
    "Lithium7",
    "Lumium",
    "Magnesium",
    "Manasteel",
    "Manyullyn",
    "MeatRaw",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "NetherStar",
    "Nickel",
    "Opal",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "Peridot",
    "Pigiron",
    "Platinum",
    "Prudentium",
    "PulsatingIron",
    "Quartz",
    "QuartzBlack",
    "Quicksilver",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "Ruby",
    "Sapphire",
    "Shade",
    "Signalum",
    "Silver",
    "Soularium",
    "StellarAlloy",
    "Superium",
    "Supremium",
    "Terrasteel",
    "Thauminite",
    "Thaumium",
    "Thorium",
    "Thundersteel",
    "Tin",
    "Titanium",
    "Tungsten",
    "Tungstensteel",
    "Uranium",
    "VibrantAlloy",
    "Void",
    "Yellorium",
    "Zinc",
//SILK_SORTING: END@Nugget
] as string[];
for nugget in stringNugget {
    hashNugget[nugget] = oreDict["nugget" ~ nugget];
}
hashNugget["MeatRaw"].add(<industrialmeat:raw_meat_nugget>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_nugget>, hashNugget["MeatRaw"];

hashNugget["Light"].add(<tg:nugget_light>);
recipes.replaceAllOccurences(<tg:nugget_light>, hashNugget["Light"]);

hashNugget["Shade"].add(<tg:nugget_shade>);
recipes.replaceAllOccurences(<tg:nugget_shade>, hashNugget["Shade"]);

for item in oreDict["nuggetAluminum"].items {
    hashNugget["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["nuggetAluminum"], hashNugget["Aluminium"]);

/***** Blocks *****/
global hashBlock as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringBlock = [
//SILK_SORTING: BEGIN@Block
    "Adaminite",
    "Aethium",
    "Alkimium",
    "AluBrass",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "Bauxite",
    "Beryllium",
    "BlackIron",
    "BloodBronze",
    "BloodInfusedIron",
    "Blutonium",
    "Bone",
    "Boron",
    "Brass",
    "Bronze",
    "CertusQuartz",
    "Charcoal",
    "ChargedCertusQuartz",
    "Chrome",
    "Cinnabar",
    "Clay",
    "Coal",
    "Cobalt",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "CrystalFlux",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkSteel",
    "Dawnstone",
    "Diamantine",
    "DiamantineEmpowered",
    "Diamond",
    "DiamondMana",
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened",
    "DraconiumCharged",
    "Dragonstone",
    "EbonyPsi",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "ElvenElementium",
    "Emeradic",
    "EmeradicEmpowered",
    "Emerald",
    "Ender",
    "EnderEnhanced",
    "Enderium",
    "EnderPearl",
    "EnderStar",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Enori",
    "EnoriEmpowered",
    "Erodium",
    "Flux",
    "Galena",
    "Garnet",
    "GelidEnderium",
    "GelidGem",
    "Glass",
    "GlassHardened",
    "GlitchInfused",
    "Glowstone",
    "Gold",
    "Graphite",
    "Ice",
    "Inferium",
    "InferiumCoal",
    "InferiumEssence",
    "Infinity",
    "Insanium",
    "InsaniumCoal",
    "InsaniumEssence",
    "Intermedium",
    "IntermediumCoal",
    "IntermediumEssence",
    "Invar",
    "Ionite",
    "Iridium",
    "Iron",
    "IronCompressed",
    "IvoryPsi",
    "Knightslime",
    "Kyronite",
    "Lapis",
    "Lead",
    "Litherite",
    "Lithium",
    "Lonsdaleite",
    "Ludicrite",
    "Luminessence",
    "Lumium",
    "Magma",
    "Magnesium",
    "Manasteel",
    "Manganese",
    "Manyullyn",
    "MeatCooked",
    "MeatRaw",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "Mossy",
    "NetherStar",
    "Nethersteel",
    "NetherWart",
    "Nickel",
    "Opal",
    "Orichalcos",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "PackedIce",
    "Palis",
    "PalisEmpowered",
    "Pearl",
    "Peridot",
    "Photonium",
    "Pigiron",
    "Pladium",
    "Platinum",
    "Prismarine",
    "Prosperity",
    "Prudentium",
    "PrudentiumCoal",
    "PrudentiumEssence",
    "PsiDust",
    "PsiGem",
    "PsiMetal",
    "PulsatingIron",
    "Pyrite",
    "Quartz",
    "QuartzBlack",
    "Quicksilver",
    "RedGarnet",
    "Redstone",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedObsidian",
    "Resonating",
    "Restonia",
    "RestoniaEmpowered",
    "Rockwool",
    "Ruby",
    "SalisMundus",
    "Salt",
    "Sapphire",
    "Seared",
    "Shadowium",
    "Signalum",
    "Silver",
    "Slime",
    "SlimeCongealed",
    "SlimeDirt",
    "SlimeGrass",
    "Sodalite",
    "Soularium",
    "Soulium",
    "Sphalerite",
    "Steel",
    "StellarAlloy",
    "StygianIron",
    "Superium",
    "SuperiumCoal",
    "SuperiumEssence",
    "Supremium",
    "SupremiumCoal",
    "SupremiumEssence",
    "Terrasteel",
    "Thauminite",
    "Thaumium",
    "Thorium",
    "Thundersteel",
    "Tin",
    "Titanium",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Unstable",
    "Uranium",
    "VibrantAlloy",
    "Void",
    "Void",
    "VoidEmpowered",
    "Wool",
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zirconium",
//SILK_SORTING: END@Block
] as string[];
for block in stringBlock {
    hashBlock[block] = oreDict["block" ~ block);
}
hashBlock["Restonia"].add(<actuallyadditions:block_crystal>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal>, hashBlock["Restonia"]);

hashBlock["Palis"].add(<actuallyadditions:block_crystal:1>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:1>, hashBlock["Palis"]);

hashBlock["Diamantine"].add(<actuallyadditions:block_crystal:2>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:2>, hashBlock["Diamantine"]);

hashBlock["Void"].add(<actuallyadditions:block_crystal:3>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:3>, hashBlock["Void"]);

hashBlock["Emeradic"].add(<actuallyadditions:block_crystal:4>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:4>, hashBlock["Emeradic"]);

hashBlock["Enori"].add(<actuallyadditions:block_crystal:5>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:5>, hashBlock["Enori"]);

hashBlock["RestoniaEmpowered"].add(<actuallyadditions:block_crystal_empowered>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered>, hashBlock["RestoniaEmpowered"]);

hashBlock["PalisEmpowered"].add(<actuallyadditions:block_crystal_empowered:1>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:1>, hashBlock["PalisEmpowered"]);

hashBlock["DiamantineEmpowered"].add(<actuallyadditions:block_crystal_empowered:2>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:2>, hashBlock["DiamantineEmpowered"]);

hashBlock["VoidEmpowered"].add(<actuallyadditions:block_crystal_empowered:3>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:3>, hashBlock["VoidEmpowered"]);

hashBlock["EmeradicEmpowered"].add(<actuallyadditions:block_crystal_empowered:4>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:4>, hashBlock["EmeradicEmpowered"]);

hashBlock["EnoriEmpowered"].add(<actuallyadditions:block_crystal_empowered:5>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:5>, hashBlock["EnoriEmpowered"]);

hashBlock["EnderPearl"].add(<actuallyadditions:block_misc:6>);
recipes.replaceAllOccurences(<actuallyadditions:block_misc:6>, hashBlock["EnderPearl"]);

hashBlock["BloodInfusedIron"].add(<bloodarsenal:blood_infused_iron_block>);
recipes.replaceAllOccurences(<bloodarsenal:blood_infused_iron_block>, hashBlock["BloodInfusedIron"]);

hashBlock["DiamondMana"].add(<botania:storage:3>);
recipes.replaceAllOccurences(<botania:storage:3>, hashBlock["DiamondMana"]);

hashBlock["Dragonstone"].add(<botania:storage:4>);
recipes.replaceAllOccurences(<botania:storage:4>, hashBlock["Dragonstone"]);

hashBlock["LapisElven"].add(<botanicadds:elven_lapis_block>);
recipes.replaceAllOccurences(<botanicadds:elven_lapis_block>, hashBlock["LapisElven"]);

hashBlock["LapisMana"].add(<botanicadds:mana_lapis_block>);
recipes.replaceAllOccurences(<botanicadds:mana_lapis_block>, hashBlock["LapisMana"]);

hashBlock["GlitchInfused"].add(<deepmoblearning:infused_ingot_block>);
recipes.replaceAllOccurences(<deepmoblearning:infused_ingot_block>, hashBlock["GlitchInfused"]);

hashBlock["Resonating"].add(<deepresonance:resonating_block>);
recipes.replaceAllOccurences(<deepresonance:resonating_block>, hashBlock["Resonating"]);

hashBlock["DraconiumCharged"].add(<draconicevolution:draconium_block:1>);
recipes.replaceAllOccurences(<draconicevolution:draconium_block:1>, hashBlock["DraconiumCharged"]);

hashBlock["Ender"].add(<extendedcrafting:storage:5>);
recipes.replaceAllOccurences(<extendedcrafting:storage:5>, hashBlock["Ender"]);

hashBlock["EnderStar"].add(<extendedcrafting:storage:6>);
recipes.replaceAllOccurences(<extendedcrafting:storage:6>, hashBlock["EnderStar"]);

hashBlock["EnderEnhanced"].add(<extendedcrafting:storage:7>);
recipes.replaceAllOccurences(<extendedcrafting:storage:7>, hashBlock["EnderEnhanced"]);

hashBlock["Orichalcos"].add(<extrabotany:blockorichalcos>);
recipes.replaceAllOccurences(<extrabotany:blockorichalcos>, hashBlock["Orichalcos"]);

hashBlock["Photonium"].add(<extrabotany:blockphotonium>);
recipes.replaceAllOccurences(<extrabotany:blockphotonium>, hashBlock["Photonium"]);

hashBlock["Shadowium"].add(<extrabotany:blockshadowium>);
recipes.replaceAllOccurences(<extrabotany:blockshadowium>, hashBlock["Shadowium"]);

hashBlock["Flux"].add(<fluxnetworks:fluxblock>);
recipes.replaceAllOccurences(<fluxnetworks:fluxblock>, hashBlock["Flux"]);

hashBlock["MeatCooked"].add(<industrialmeat:cooked_meat_block>);
recipes.replaceAllOccurences(<industrialmeat:cooked_meat_block>, hashBlock["MeatCooked"];

hashBlock["MeatRaw"].add(<industrialmeat:raw_meat_block>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_block>, hashBlock["MeatRaw"];

hashBlock["Alkimium"].add(<planarartifice:alkimium_block>);
recipes.replaceAllOccurences(oreDict["blockAlchemical"], hashBlock["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_block>, hashBlock["Alkimium"]);

hashBlock["EbonyPsi"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(<planarartifice:alkimium_>, hashBlock["EbonyPsi"]);

hashBlock["IvoryPsi"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(<planarartifice:alkimium_ingot>, hashBlock["IvoryPsi"]);

hashBlock["Light"].add(<tg:block_light>);
recipes.replaceAllOccurences(<tg:block_light>, hashBlock["Light"]);

hashBlock["Shade"].add(<tg:block_shade>);
recipes.replaceAllOccurences(<tg:block_shade>, hashBlock["Shade"]);

hashBlock["Cobalt"].add(<tconstruct:metal>);
recipes.replaceAllOccurences(<tconstruct:metal>, hashBlock["Cobalt"]);

hashBlock["StygianIron"].add(<woot:stygianiron>);
recipes.replaceAllOccurences(<woot:stygianiron>, hashBlock["StygianIron"]);

for item in oreDict["blockAluminum"].items {
    hashBlock["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["blockAluminum"], hashBlock["Aluminium"]);

/***** Tiny Dusts *****/
global hashDustTiny as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDustTiny = [
//SILK_SORTING: BEGIN@TinyDust
    "Aluminium",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Bauxite",
    "Boron",
    "CertusQuartz",
    "ChargedCertusQuartz",
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Copper",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "Emerald",
    "Galena",
    "Garnet",
    "Gold",
    "Iridium",
    "Iron",
    "Lapis",
    "Lead",
    "Lithium",
    "Magnesium",
    "Mithril",
    "Nickel",
    "Opal",
    "Osmium",
    "Peridot",
    "Platinum",
    "Pyrite",
    "Quartz",
    "QuartzBlack",
    "Redstone",
    "Ruby",
    "Salt",
    "Sapphire",
    "Silver",
    "Sodalite",
    "Sphalerite",
    "Thorium",
    "Tin",
    "Tungsten",
    "Uranium",
    "Yellorium",
//SILK_SORTING: END@TinyDust
] as string[];
for dustTiny in stringDustTiny {
    hashDustTiny[dustTiny] = oreDict["dustTiny" ~ dustTiny);
}

for item in oreDict["dustTinyAluminum"].items {
    hashDustTiny["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["dustTinyAluminum"], hashDustTiny["Aluminium"]);

/***** Small Dusts *****/
global hashDustSmall as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDustSmall = [
//SILK_SORTING: BEGIN@SmallDust
    "Almandine",
    "Aluminium",
    "Amber",
    "Amethyst",
    "Andesite",
    "Andradite",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Basalt",
    "Bauxite",
    "Boron",
    "Brass",
    "Bronze",
    "Calcite",
    "CertusQuartz",
    "Charcoal",
    "ChargedCertusQuartz",
    "Chrome",
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Copper",
    "DarkAshes",
    "Diamond",
    "DimensionalShard",
    "Diorite",
    "Draconium",
    "EnderEye",
    "EnderPearl",
    "Endstone",
    "Flint",
    "Galena",
    "Garnet",
    "Gold",
    "Granite",
    "Grossular",
    "Invar",
    "Iridium",
    "Iron",
    "Lapis",
    "Lazurite",
    "Lead",
    "Lithium",
    "Magnesium",
    "Manganese",
    "Marble",
    "Mithril",
    "Netherrack",
    "Nickel",
    "Obsidian",
    "Opal",
    "Osmium",
    "Peridot",
    "Phosphorous",
    "Platinum",
    "Pyrite",
    "Pyrope",
    "Quartz",
    "QuartzBlack",
    "RedGarnet",
    "Redstone",
    "Ruby",
    "Ruby",
    "Salt",
    "Sapphire",
    "Sodalite",
    "Spessartite",
    "Sphalerite",
    "Steel",
    "Thorium",
    "Tin",
    "Titanium",
    "Tungsten",
    "Uranium",
    "Uvarovite",
    "Wood",
    "Yellorium",
    "YellowGarnet",
    "Zinc",
//SILK_SORTING: END@SmallDust
] as string[];
for dustSmall in stringDustSmall {
    hashDustSmall[dustSmall] = oreDict["dustSmall" ~ dustSmall);
}

for item in oreDict["dustSmallAluminum"].items {
    hashDustSmall["Aluminium"].add(item);
}
recipes.replaceAllOccurences(oreDict["dustSmallAluminum"], hashDustSmall["Aluminium"]);

/***** Dirty Dusts *****/
global hashDustDirty as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDustDirty = [
//SILK_SORTING: BEGIN@DirtyDust
    
//SILK_SORTING: END@DirtyDust
]
for dustDirty in stringDustDirty {
    hashDustDirty[dustDirty] = oreDict["dustDirty" ~ dustDirty];
}

/***** Clumps *****/
global hashClump as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringClump = [
//SILK_SORTING: BEGIN@Clump
    
//SILK_SORTING: END@Clump
]
for clump in stringClump {
    hashClump[clump] = oreDict["clump" ~ clump];
}

/***** Shards *****/
global hashShard as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringShard = [
//SILK_SORTING: BEGIN@Shard
    
//SILK_SORTING: END@Shard
]
for shard in stringShard {
    hashShard[shard] = oreDict["shard" ~ shard];
}

