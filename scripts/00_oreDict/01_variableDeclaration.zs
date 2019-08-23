#priority -0001

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/* Declaring Other Variables */
global sand as IItemStack = <minecraft:sand> as IItemStack;

/* Assigning a HashMap for each Ore Dictionaries */

/***** Ores *****/
global hashOre as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringOre = [
//SILK_SORTING: BEGIN@Ore
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
    "Wub", 
    "Xen", 
    "Yellorite",
    "Yellorium"
//SILK_SORTING: END@Ore
] as string[];
for ore in stringOre {
    hashOre[ore] = oreDict["ore" ~ ore];
}

hashOre["CertusQuartz"].remove(<appliedenergistics2:charged_quartz_ore>);

hashOre["Light"].add(<tg:ore_light>);
recipes.replaceAllOccurences(<tg:ore_light>,hashOre["Light"]);

hashOre["Shade"].add(<tg:ore_shade>);
recipes.replaceAllOccurences(<tg:ore_shade>,hashOre["Shade"]);

hashOre["StygianIron"].add(<woot:stygianironore>);
recipes.replaceAllOccurences(<woot:stygianironore>,hashOre["StygianIron"]);

hashOre["Wub"].add(<tp:wub_ore>);
recipes.replaceAllOccurences(oreDict["oreWubOre"], hashOre["Wub"]);
recipes.replaceAllOccurences(<tp:wub_ore>,hashOre["Wub"]);

if (!<ore:oreAluminum>.empty) {
    for item in oreDict["oreAluminum"].items {
        hashOre["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["oreAluminum"],hashOre["Aluminium"]);
}

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
    "Yellorium"
//SILK_SORTING: END@Cluster
] as string[];

for cluster in stringCluster {
    hashCluster[cluster] = oreDict["cluster" ~ cluster];
}

if (!<ore:clusterAluminum>.empty) {
    for item in oreDict["clusterAluminum"].items {
        hashCluster["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["clusterAluminum"],hashCluster["Aluminium"]);
}

/***** Ingots *****/
global hashIngot as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringIngot = [
//SILK_SORTING: BEGIN@Ingot
    "Adaminite",
    "AdvancedAlloy",
    "Alkimium",
    "Alubrass",
    "Aluminium",
    "Alumite",
    "Antimony", 
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
    "Brick", 
    "BrickNether", 
    "BrickNetherGlazed",
    "BrickSeared", 
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
    "Ferroboron", 
    "Flint", 
    "Gaia",
    "Gaiasteel", 
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
    "Orichalcos", 
    "Osglosglas",
    "Osmiridium",
    "Osmium", 
	"Photonium", 
    "Pigiron",
    "Platinum",
    "Prudentium",
    "Psi",
    "PulsatingIron",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "ReinforcedObsidian", 
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
    "Supremium",
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
    "UnsweetenedChocolate", 
    "Uranium",
    "UraniumOxide",
    "VibrantAlloy",
    "VividAlloy", 
    "Void",
    "Wub", 
    "Xen", 
    "Yellorium",
    "Zinc",
    "Zircaloy",
    "Zirconium"
//SILK_SORTING: END@Ingot
] as string[];
for ingot in stringIngot { 
    hashIngot[ingot] = oreDict["ingot" ~ ingot];
}

hashIngot["Alkimium"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(oreDict["ingotAlchemical"],hashIngot["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_ingot>,hashIngot["Alkimium"]);

hashIngot["DarkSoularium"].add(<simplyjetpacks:metaitemmods:3>);
recipes.replaceAllOccurences(oreDict["ingot_dark_soularium"],hashIngot["DarkSoularium"]);
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:3>,hashIngot["DarkSoularium"]);

hashIngot["Ender"].add(<extendedcrafting:material:36>);
recipes.replaceAllOccurences(<extendedcrafting:material:36>,hashIngot["Ender"]);

hashIngot["EnderEnhanced"].add(<extendedcrafting:material:48>);
recipes.replaceAllOccurences(<extendedcrafting:material:48>,hashIngot["EnderEnhnaced"]);

hashIngot["Gaia"].add(<botania:manaresource:14>);
recipes.replaceAllOccurences(oreDict["gaiaIngot"],hashIngot["Gaia"]);
recipes.replaceAllOccurences(<botania:manaresource:14>,hashIngot["Gaia"]);

hashIngot["Gaiasteel"].add(<botanicadds:gaiasteel_ingot>);
recipes.replaceAllOccurences(<botanicadds:gaiasteel_ingot>,hashIngot["Gaiasteel"]);

hashIngot["GlitchInfused"].add(<deepmoblearning:glitch_infused_ingot>);
recipes.replaceAllOccurences(<deepmoblearning:glitch_infused_ingot>,hashIngot["GlitchInfused"]);

hashIngot["Light"].add(<tg:ingot_light>);
recipes.replaceAllOccurences(<tg:ingot_light>,hashIngot["Light"]);

hashIngot["Livium"].add(<thaumic_arcana:ingot_livium>);
recipes.replaceAllOccurences(<thaumic_arcana:ingot_livium>,hashIngot["Livium"]);

hashIngot["MeatCooked"].add(<industrialmeat:cooked_meat_ingot>);
recipes.replaceAllOccurences(<industrialmeat:cooked_meat_ingot>,hashIngot["MeatCooked"]);

hashIngot["MeatRaw"].add(<industrialmeat:raw_meat_ingot>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_ingot>,hashIngot["MeatRaw"]);

hashIngot["Shade"].add(<tg:ingot_shade>);
recipes.replaceAllOccurences(<tg:ingot_shade>,hashIngot["Shade"]);

hashIngot["SlimePink"].add(<industrialforegoing:pink_slime_ingot>);
recipes.replaceAllOccurences(<industrialforegoing:pink_slime_ingot>,hashIngot["SlimePink"]);

hashIngot["Spectre"].add(<randomthings:ingredient:3>);
recipes.replaceAllOccurences(<randomthings:ingredient:3>,hashIngot["Spectre"]);

hashIngot["StygianIron"].add(<woot:stygianironingot>);
recipes.replaceAllOccurences(<woot:stygianironingot>,hashIngot["StygianIron"]);

hashIngot["Thundersteel"].remove(<naturalpledge:resource:1>);

hashIngot["VoidMetal"].add(<thaumcraft:ingot:1>);
recipes.replaceAllOccurences(oreDict["ingotVoid"], hashIngot["VoidMetal"]);
recipes.replaceAllOccurences(<thaumcraft:ingot:1>, hashIngot["VoidMetal"]);

if (!<ore:ingotAluminum>.empty) {
    for item in oreDict["ingotAluminum"].items {
        hashIngot["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["ingotAluminum"],hashIngot["Aluminium"]);
}

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
    "Charcoal", 
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
    "Wub", 
    "Xen", 
    "YellowGarnet"
//SILK_SORTING: END@Gem
] as string[];
for gem in stringGem {
    hashGem[gem] = oreDict["gem" ~ gem];
}

hashGem["Aquamarine"].remove(<naturalpledge:resource:4>);
hashGem["Aquamarine"].remove(<naturalpledge:resource:5>);
hashGem["NjordAquamarine"].remove(<naturalpledge:resource:5>);

hashGem["Charcoal"].add(<minecraft:coal:1>);
recipes.replaceAllOccurences(oreDict["charcoal"], hashGem["Charcoal"]);
recipes.replaceAllOccurences(oreDict["itemCharcoal"], hashGem["Charcoal"]);
recipes.replaceAllOccurences(<minecraft:coal:1>, hashGem["Charcoal"]);

hashGem["DiamondMana"].add(<botania:manaresource:2>);
recipes.replaceAllOccurences(<botania:manaresource:2>,hashGem["DiamondMana"]);

hashGem["Dragonstone"].add(<botania:manaresource:9>);
recipes.replaceAllOccurences(<botania:manaresource:9>,hashGem["Dragonstone"]);

hashGem["LapisElven"].add(<botanicadds:elven_lapis>);
recipes.replaceAllOccurences(<botanicadds:elven_lapis>,hashGem["LapisElven"]);

hashGem["LapisMana"].add(<botanicadds:mana_lapis>);
recipes.replaceAllOccurences(<botanicadds:mana_lapis>,hashGem["LapisMana"]);

hashGem["Quicksilver"].add(<thaumcraft:quicksilver>);
recipes.replaceAllOccurences(oreDict["quicksilver"],hashGem["Quicksilver"]);
recipes.replaceAllOccurences(<thaumcraft:quicksilver>,hashGem["Quicksilver"]);

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
    "Yellorium"
//SILK_SORTING: END@Crystal
] as string[];
for crystal in stringCrystal {
    hashCrystal[crystal] = oreDict["crystal" ~ crystal];
}

hashCrystal["Amber"].add(<cyclicmagic:crystallized_amber>);
recipes.replaceAllOccurences(<cyclicmagic:crystallized_amber>,hashCrystal["Amber"]);

hashCrystal["Diamantine"].add(<actuallyadditions:item_crystal:2>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:2>,hashCrystal["Diamantine"]);

hashCrystal["DiamantineEmpowered"].add(<actuallyadditions:item_crystal_empowered:2>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:2>,hashCrystal["DiamantineEmpowered"]);

hashCrystal["Emeradic"].add(<actuallyadditions:item_crystal:4>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:4>,hashCrystal["Emeradic"]);

hashCrystal["EmeradicEmpowered"].add(<actuallyadditions:item_crystal_empowered:4>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:4>,hashCrystal["EmeradicEmpowered"]);

hashCrystal["Enori"].add(<actuallyadditions:item_crystal:5>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:5>,hashCrystal["Enori"]);

hashCrystal["EnoriEmpowered"].add(<actuallyadditions:item_crystal_empowered:5>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:5>,hashCrystal["EnoriEmpowered"]);

hashCrystal["Obsidian"].add(<cyclicmagic:crystallized_obsidian>);
recipes.replaceAllOccurences(<cyclicmagic:crystallized_obsidian>,hashCrystal["Obsidian"]);

hashCrystal["Palis"].add(<actuallyadditions:item_crystal:1>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:1>,hashCrystal["Palis"]);

hashCrystal["PalisEmpowered"].add(<actuallyadditions:item_crystal_empowered:1>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:1>,hashCrystal["PalisEmpowered"]);

hashCrystal["Restonia"].add(<actuallyadditions:item_crystal>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal>,hashCrystal["Restonia"]);

hashCrystal["RestoniaEmpowered"].add(<actuallyadditions:item_crystal_empowered>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered>,hashCrystal["RestoniaEmpowered"]);

hashCrystal["Void"].add(<actuallyadditions:item_crystal:3>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal:3>,hashCrystal["Void"]);

hashCrystal["VoidEmpowered"].add(<actuallyadditions:item_crystal_empowered:3>);
recipes.replaceAllOccurences(<actuallyadditions:item_crystal_empowered:3>,hashCrystal["VoidEmpowered"]);

if (!<ore:crystalAluminum>.empty) {
    for item in oreDict["crystalAluminum"].items {
        hashCrystal["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["crystalAluminum"],hashCrystal["Aluminium"]);
}

/***** Ender IO Crystals *****/
global hashEnderIO as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringEnderIO = [
//SILK_SORTING: BEGIN@EnderIO
    "AttractorCrystal",
    "EnderCrystal",
    "PrecientCrystal",
    "PulsatingCrystal",
    "VibrantCrystal",
    "WeatherCrystal"
//SILK_SORTING: END@EnderIO
] as string[];
for enderIO in stringEnderIO {
    hashEnderIO[enderIO] = oreDict["item" ~ enderIO];
}

/***** Clathrates *****/
global hashClathrate as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringClathrate = [
//SILK_SORTING: BEGIN@Clath
    "Ender",
    "Glowstone",
    "Oil",
    "Redstone"
//SILK_SORTING: END@Clath
] as string[];
for clathrate in stringClathrate{ 
    hashClathrate[clathrate] = oreDict["clathrate" ~ clathrate];
}

/***** Dusts *****/
global hashDust as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDust = [
//SILK_SORTING: BEGIN@Dust
	"Adaminite",
	"AdvancedAlloy",
    "Aerotheum",
    "Almandine",
    "Alubrass",
    "Alugentum",
    "Aluminium",
    "Alumite",
    "Amber",
    "Andesite",
    "Andradite",
    "Apatite",
    "Ardite",
    "Ash",
    "AstralStarmetal",
    "Basalt",
    "Basalz",
    "BaseEssence",
    "Bauxite",
    "Bedrock",
    "Beryllium",
    "BlackIron",
    "Blaze",
    "Blitz",
    "Blizz",
    "BloodBronze",
    "BloodInfusedGlowstone",
    "Blutonium",
    "Borax",
    "Boron",
    "BoronArsenide",
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
    "Chrome",
    "Cinnabar",
    "Coal",
    "Cobalt",
    "Cocoa",
    "Coke",
    "ColdIron",
    "ConductiveIron",
    "Constantan",
    "ConstructionAlloy",
    "Copper",
    "CosmicNeutronium",
    "CrudeSteel",
    "Cryotheum",
    "CrystalBinder",
    "CrystalFlux",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkAshes",
    "DarkSteel",
    "Dawnstone",
    "Diamond",
    "Dimensional",
    "Diorite",
    "Draconium",
    "DraconiumAwakened",
    "ElectrumFlux",
    "Elementium",
    "ElvenPixie",
    "Ember",
    "EnderEye",
    "Enderium",
    "EnderPearl",
    "EndSteel",
    "Endstone",
    "Energetic",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Extreme",
    "Ferroboron",
    "Flint",
    "Flourite",
    "Fluix",
    "Flux",
    "Galena",
    "Garnet",
    "Gelid",
    "GelidEnderium",
    "Glowstone",
    "Gold",
    "Granite",
    "Graphite",
    "Grossular",
    "HardCarbon",
    "HOPGraphite",
    "HotTungstensteel",
    "HSLASteel",
    "Illumination",
    "Inferium",
    "Infinity",
    "Insanium",
    "Intermedium",
    "Invar",
    "Iridium",
    "IridiumAlloy",
    "Iron",
    "Knightslime",
	"Lapis",
    "Lazurite",
    "Lead",
    "LeadPlatinum",
    "Lithium",
    "LithiumManganeseDioxide",
    "Ludicrite",
    "Lumium",
    "Lunar",
    "Magnesium",
    "Mana",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Manyullyn",
    "Marble",
    "MelodicAlloy",
	"Metallurgic",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Netherrack",
    "Nickel",
    "Nocturnal",
    "Obsidian",
    "Opal",
    "Orichalcos",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "Peridot",
    "Petrotheum",
    "Photonium",
    "Phosphorous",
    "Pigiron",
    "Platinum",
    "PotassiumFlouride",
    "PotassiumHydroxide",
    "Prismarine",
    "Prudentium",
    "Psi",
    "PulsatingIron",
    "Pyrite",
    "Pyrope",
    "Pyrotheum",
    "Quartz",
    "QuartzBlack",
    "RedGarnet",
    "Redstone",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "Rhodocrosite",
    "Ruby",
    "Salt",
    "Sapphire",
    "Shadowium",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "SiliconCarbide",
    "Sodalite",
    "SodiumFlouride",
    "SodiumHydroxide",
    "Soot",
    "Soularium",
    "Soulium",
    "Spessartite",
    "Sphalerite",
    "Steel",
    "StellarAlloy",
    "Superium",
    "Supremium",
    "StygianIron",
    "Terrasteel",
    "Thaumium",
    "Thermoconducting",
    "Thorium",
    "ThoriumOxide",
    "Tin",
    "TinSilver",
    "Titanium",
    "Tough",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Uranium",
    "UraniumOxide",
    "Uvarovite",
    "VibrantAlloy",
    "Villaumite",
	"VividAlloy",
	"Void",
    "Wheat",
    "Wither",
    "Wood",
    "Wub", 
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zircaloy",
    "Zirconium"
//SILK_SORTING: END@Dust
] as string[];
for dust in stringDust {
    hashDust[dust] = oreDict["dust" ~ dust];
}

recipes.replaceAllOccurences(oreDict["dustAshes"],hashDust["Ash"]);
recipes.replaceAllOccurences(oreDict["dustEnder"],hashDust["EnderPearl"]);
recipes.replaceAllOccurences(oreDict["dustNetherQuartz"],hashDust["Quartz"]);

hashDust["BloodInfusedGlowstone"].add(<bloodarsenal:base_item:2>);
recipes.replaceAllOccurences(<bloodarsenal:base_item:2>,hashDust["BloodInfusedGlowstone"]);

hashDust["ElvenPixie"].add(<botania:manaresource:8>);
recipes.replaceAllOccurences(oreDict["elvenPixieDust"],hashDust["ElvenPixie"]);
recipes.replaceAllOccurences(<botania:manaresource:8>,hashDust["ElvenPixie"]);

hashDust["Ember"].add(<embers:dust_ember>);
recipes.replaceAllOccurences(<embers:dust_ember>,hashDust["Ember"]);

hashDust["Flux"].add(<fluxnetworks:flux>);
recipes.replaceAllOccurences(<fluxnetworks:flux>,hashDust["Flux"]);

hashDust["Illumination"].add(<astralsorcery:itemusabledust>);
recipes.replaceAllOccurences(<astralsorcery:itemusabledust>,hashDust["Illumination"]);

hashDust["Metallurgic"].add(<embers:dust_metallurgic>);
recipes.replaceAllOccurences(<embers:dust_metallurgic>,hashDust["Metallurgic"]);

hashDust["Nocturnal"].add(<astralsorcery:itemusabledust:1>);
recipes.replaceAllOccurences(<astralsorcery:itemusabledust:1>,hashDust["Nocturnal"]);

hashDust["Soot"].add(<deepmoblearning:soot_covered_redstone>);
recipes.replaceAllOccurences(<deepmoblearning:soot_covered_redstone>,hashDust["Soot"]);

hashDust["StygianIron"].add(<woot:stygianirondust>);
recipes.replaceAllOccurences(<woot:stygianirondust>,hashDust["StygianIron"]);

hashDust["Wither"].add(<darkutils:material>);
recipes.replaceAllOccurences(<darkutils:material>,hashDust["Wither"]);

if (!<ore:dustAluminum>.empty) {
    for item in oreDict["dustAluminum"].items {
        hashDust["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["dustAluminum"],hashDust["Aluminium"]);
}

/***** Plates *****/
global hashPlate as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringPlate = [
//SILK_SORTING: BEGIN@Plate
    "Adaminite",
    "Advanced",
    "AdvancedAlloy",
    "Alkimium",
    "Aluminium",
    "Alumite",
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence",
    "Basic",
    "BlackIron",
    "BloodBronze",
    "Blutonium",
    "Boron",
    "BoronArsenide",
    "BoronNitride",
    "Brass",
    "Bronze",
    "Caminite",
    "Carbon",
    "Carobbiite",
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
    "CrystalFlux",
    "CrystallineAlloy",
    "CrystallinePinkSlime",
    "CrystalMatrix",
    "Crystaltine",
    "Cyanite",
    "DarkSteel",
    "Dawnstone",
    "Diamond",
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened",
    "DU",
    "ElectricalSteel",
    "Electrum",
    "ElectrumFlux",
    "Elite",
    "ElvenElementium",
    "Emerald",
    "Enderium",
    "EndSteel",
    "EnergeticAlloy",
    "EnergeticSilver",
    "Extreme",
    "Ferroboron",
    "Fluix",
    "Flourite",
    "Garnet",
    "Gelid",
    "GelidEnderium",
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
    "Knightslime",
    "Lapis",
    "Lazurite",
    "Lead",
    "LeadPlatinum",
    "Lithium",
    "LithiumManganeseDioxide",
    "Ludicrite",
    "Lumium",
    "Magnalium",
    "Magnesium",
    "MagnesiumDiboride",
    "Manasteel",
    "Manganese",
    "ManganeseDioxide",
    "ManganeseOxide",
    "Manyullyn",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal",
    "Nickel",
    "Obsidian",
    "Opal",
    "Orichalcos",
    "Osgloglas",
    "Osmiridium",
    "Osmium",
    "Peridot",
    "Photonium",
    "Pigiron",
    "Platinum",
    "Prismarine",
    "Prudentium",
    "PulsatingIron",
    "Quartz",
    "QuartzBlack",
    "RawCaminite",
    "RedGarnet",
    "Redstone",
    "RedstoneAlloy",
    "RefinedGlowstone",
    "RefinedIron",
    "RefinedObsidian",
    "Resonating",
    "Rhodocrosite",
    "Ruby",
    "Sapphire",
    "Shadowium",
    "Shibuichi",
    "SiCSiCCMC",
    "Signalum",
    "Silicon",
    "SiliconCarbide",
    "Silver",
    "Soot",
    "Soularium",
    "Soulium",
    "Steel",
    "StellarAlloy",
    "Superium",
    "Supremium",
    "StygianIron",
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
    "Tin",
    "TinSilver",
    "Titanium",
    "Tough",
    "Tungsten",
    "Tungstensteel",
    "Uranium",
    "VibrantAlloy",
    "Villaumite",
    "VividAlloy",
    "Void",
    "Wood",
    "Wub", 
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zircaloy",
    "Zirconium" 
//SILK_SORTING: END@Plate
] as string[];
for plate in stringPlate {
    hashPlate[plate] = oreDict["plate" ~ plate];
}
hashPlate["Alkimium"].add(<planarartifice:alkimium_plate>);
recipes.replaceAllOccurences(oreDict["plateAlchemical"],hashPlate["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_plate>,hashPlate["Alkimium"]);

hashPlate["Resonating"].add(<deepresonance:resonating_plate>);
recipes.replaceAllOccurences(<deepresonance:resonating_plate>,hashPlate["Resonating"]);

hashPlate["StygianIron"].add(<woot:stygianironplate>);
recipes.replaceAllOccurences(<woot:stygianironplate>,hashPlate["StygianIron"]);

if (!<ore:plateAluminum>.empty) {
    for item in oreDict["plateAluminum"].items {
        hashPlate["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(<ore:plateAluminum>,hashPlate["Aluminium"]);
}

/***** Dense Plates *****/
global hashPlateDense as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringPlateDense = [
//SILK_SORTING: BEGIN@DensePlate
	"Adaminite", 
	"AdvancedAlloy", 
	"Alubrass", 
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
    "BloodBronze", 
    "Blutonium", 
    "Boron",
    "BoronArsenide", 
    "BoronNitride", 
    "Brass", 
    "Bronze", 
    "Carobbiite", 
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
    "CrystalFlux", 
    "CrystallineAlloy", 
    "CrystallinePinkSlime", 
    "CrystalMatrix", 
    "Crystaltine", 
    "Cyanite", 
    "DarkSteel", 
    "Dawnstone", 
    "Diamond", 
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened", 
    "ElectricalSteel", 
    "Electrum", 
    "ElectrumFlux", 
    "ElvenElementium", 
    "Emerald",
    "Enderium", 
    "EndSteel", 
    "EnergeticAlloy", 
    "EnergeticSilver", 
    "Extreme", 
    "Ferroboron", 
    "Flint", 
    "Fluix", 
    "Flourite", 
    "Garnet",
    "Gelid", 
    "GelidEnderium", 
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
    "Knightslime", 
    "Lapis",
    "Lead",
    "LeadPlatinum", 
    "Lithium",
    "LithiumManganeseDioxide", 
    "Ludicrite", 
    "Lumium", 
    "Magnesium",
    "MagnesiumDiboride", 
    "Manasteel", 
    "Manganese", 
    "ManganeseDioxide", 
    "ManganeseOxide", 
    "Manyullyn", 
    "MelodicAlloy", 
    "Mirion", 
    "Mithminite", 
    "Mithril",
    "Mithrillium", 
    "MixedMetal", 
    "Nickel",
    "Obsidian", 
    "Opal",
    "Orichalcos", 
    "Osgloglas", 
    "Osmiridium", 
    "Osmium",
    "Peridot",
    "Photonium", 
    "Pigiron", 
    "Platinum",
    "Prismarine", 
    "Prudentium", 
    "PulsatingIron", 
    "Quartz",
    "QuartzBlack",
    "RedGarnet", 
    "RedstoneAlloy", 
    "RefinedGlowstone", 
    "RefinedIron", 
    "RefinedObsidian", 
    "Rhodocrosite", 
    "Ruby",
    "Sapphire",
    "Shadowium", 
    "Shibuichi", 
    "SiCSiCCMC", 
    "Signalum", 
    "SiliconCarbide", 
    "Silver",
    "Soularium", 
    "Soulium", 
    "Steel", 
    "StellarAlloy", 
    "Superium", 
    "Supremium",
    "Terrasteel", 
    "Thaumium", 
    "Thermoconducting", 
    "Thorium",
    "ThoriumOxide", 
    "Tin",
    "TinSilver", 
    "Titanium", 
    "Tough", 
    "Tungsten",
    "Tungstensteel", 
    "Ultimate", 
    "Uranium",
    "UraniumOxide", 
    "VibrantAlloy", 
    "Villaumite", 
    "VividAlloy", 
    "Void", 
    "Wub", 
    "Yellorium", 
    "YellowGarnet", 
    "Zinc", 
    "Zircaloy", 
    "Zirconium" 
//SILK_SORTING: END@DensePlate
] as string[];
for plateDense in stringPlateDense {
    hashPlateDense[plateDense] = oreDict["plateDense" ~ plateDense];
}

if (!<ore:plateDenseAluminum>.empty) {
    for item in oreDict["plateDenseAluminum"].items {
        hashPlateDense["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["plateDenseAluminum"],hashPlateDense["Aluminium"]);
}

/***** Rods *****/
global hashRod as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringRod = [
//SILK_SORTING: BEGIN@Stick
    "Adaminite", 
	"AdvancedAlloy", 
	"Alubrass", 
    "Aluminium",
    "Alumite", 
    "Amber",
    "Amethyst",
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "Basalz", 
    "BaseEssence", 
    "BlackIron", 
    "Blaze", 
    "Blitz", 
    "Blizz", 
    "BloodBronze", 
    "Blutonium", 
    "Boron",
    "BoronArsenide", 
    "BoronNitride", 
    "Brass", 
    "Bronze", 
    "Carobbiite", 
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
    "CrystalFlux", 
    "CrystallineAlloy", 
    "CrystallinePinkSlime", 
    "CrystalMatrix", 
    "Crystaltine", 
    "Cyanite", 
    "DarkSteel", 
    "Dawnstone", 
    "Diamond", 
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened", 
    "ElectricalSteel", 
    "Electrum", 
    "ElectrumFlux", 
    "ElvenElementium", 
    "Emerald",
    "Enderium", 
    "EndSteel", 
    "EnergeticAlloy", 
    "EnergeticSilver", 
    "Extreme", 
    "Ferroboron", 
    "Flint", 
    "Fluix", 
    "Flourite", 
    "Garnet",
    "Gelid", 
    "GelidEnderium", 
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
    "Knightslime", 
    "Lapis",
    "Lead",
    "LeadPlatinum", 
    "Lithium",
    "LithiumManganeseDioxide", 
    "Ludicrite", 
    "Lumium", 
    "Magnesium",
    "MagnesiumDiboride", 
    "Manasteel", 
    "Manganese", 
    "ManganeseDioxide", 
    "ManganeseOxide", 
    "Manyullyn", 
    "MelodicAlloy", 
    "Mirion", 
    "Mithminite", 
    "Mithril",
    "Mithrillium", 
    "MixedMetal", 
    "Nickel",
    "Obsidian", 
    "Opal",
    "Orichalcos", 
    "Osgloglas", 
    "Osmiridium", 
    "Osmium",
    "Peridot",
    "Photonium", 
    "Pigiron", 
    "Platinum",
    "Prismarine", 
    "Prudentium", 
    "PulsatingIron", 
    "Quartz",
    "QuartzBlack",
    "RedGarnet", 
    "RedstoneAlloy", 
    "RefinedGlowstone", 
    "RefinedIron", 
    "RefinedObsidian", 
    "Rhodocrosite", 
    "Ruby",
    "Sapphire",
    "Shadowium", 
    "Shibuichi", 
    "SiCSiCCMC", 
    "Signalum", 
    "SiliconCarbide", 
    "Silver",
    "Soularium", 
    "Soulium", 
    "Steel", 
    "StellarAlloy", 
    "Superium", 
    "Supremium",
    "Terrasteel", 
    "Thaumium", 
    "Thermoconducting", 
    "Thorium",
    "ThoriumOxide", 
    "Tin",
    "TinSilver", 
    "Titanium", 
    "Tough", 
    "Tungsten",
    "Tungstensteel", 
    "Ultimate", 
    "Uranium",
    "UraniumOxide", 
    "VibrantAlloy", 
    "Villaumite", 
    "VividAlloy", 
    "Void", 
    "Wub", 
    "Yellorium", 
    "YellowGarnet", 
    "Zinc", 
    "Zircaloy", 
    "Zirconium" 
//SILK_SORTING: END@Stick
] as string[];
for rod in stringRod {
    hashRod[rod] = oreDict["rod" ~ rod];
}

hashRod["Aluminium"].add(<immersiveengineering:material:3>);
recipes.replaceAllOccurences(oreDict["stickAluminium"],hashRod["Aluminium"]);
recipes.replaceAllOccurences(oreDict["stickAluminum"],hashRod["Aluminium"]);
recipes.replaceAllOccurences(<immersiveengineering:material:3>,hashRod["Aluminium"]);

hashRod["Iron"].add(<immersiveengineering:material:1>);
recipes.replaceAllOccurences(oreDict["stickIron"],hashRod["Iron"]);
recipes.replaceAllOccurences(<botania:manaresource:8>,hashRod["Iron"]);

hashRod["Steel"].add(<immersiveengineering:material:2>);
recipes.replaceAllOccurences(oreDict["stickSteel"],hashRod["Steel"]);
recipes.replaceAllOccurences(<botania:manaresource:8>,hashRod["Steel"]);

if (!<ore:rodAluminum>.empty) {
    for item in oreDict["rodAluminum"].items {
        hashRod["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["rodAluminum"],hashRod["Aluminium"]);
}

/***** Gears *****/
global hashGear as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringGear = [
//SILK_SORTING: BEGIN@Gear
    "Adaminite", 
	"AdvancedAlloy", 
	"Alubrass", 
    "Aluminium",
    "Alumite", 
    "Amber",
    "Amethyst",
    "Antimony", 
    "Apatite",
    "Aquamarine",
    "Ardite",
    "AstralStarmetal",
    "BaseEssence", 
    "BlackIron", 
    "BloodBronze", 
    "Blutonium", 
    "Boron",
    "BoronArsenide", 
    "BoronNitride", 
    "Brass", 
    "Bronze", 
    "Carobbiite", 
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
    "CrystalFlux", 
    "CrystallineAlloy", 
    "CrystallinePinkSlime", 
    "CrystalMatrix", 
    "Crystaltine", 
    "Cyanite", 
    "Dark", 
    "DarkSteel", 
    "Dawnstone", 
    "Diamond", 
    "DimensionalShard",
    "Draconium",
    "DraconiumAwakened", 
    "ElectricalSteel", 
    "Electrum", 
    "ElectrumFlux", 
    "ElvenElementium", 
    "Emerald",
    "Enderium", 
    "EndSteel", 
    "EnergeticAlloy", 
    "EnergeticSilver", 
    "Extreme", 
    "Ferroboron", 
    "Flint", 
    "Fluix", 
    "Flourite", 
    "Garnet",
    "Gelid", 
    "GelidEnderium", 
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
    "IronInfinity", 
    "Knightslime", 
    "Lapis",
    "Lead",
    "LeadPlatinum", 
    "Lithium",
    "LithiumManganeseDioxide", 
    "Ludicrite", 
    "Lumium", 
    "Magnesium",
    "MagnesiumDiboride", 
    "Manasteel", 
    "Manganese", 
    "ManganeseDioxide", 
    "ManganeseOxide", 
    "Manyullyn", 
    "MelodicAlloy", 
    "Mirion", 
    "Mithminite", 
    "Mithril",
    "Mithrillium", 
    "MixedMetal", 
    "Nickel",
    "Obsidian", 
    "Opal",
    "Orichalcos", 
    "Osgloglas", 
    "Osmiridium", 
    "Osmium",
    "Peridot",
    "Photonium", 
    "Pigiron", 
    "Platinum",
    "Prismarine", 
    "Proven", 
    "Prudentium", 
    "PulsatingIron", 
    "Quartz",
    "QuartzBlack",
    "RedGarnet", 
    "Redstone", 
    "RedstoneAlloy", 
    "RedstoneInverted", 
    "RefinedGlowstone", 
    "RefinedIron", 
    "RefinedObsidian", 
    "Rhodocrosite", 
    "Ruby",
    "Sapphire",
    "Scented", 
    "Shadowium", 
    "Shibuichi", 
    "SiCSiCCMC", 
    "Signalum", 
    "SiliconCarbide", 
    "Silver",
    "Soularium", 
    "Soulium", 
    "Steel", 
    "StellarAlloy", 
    "Stone", 
    "Superium", 
    "Supremium",
    "Terrasteel", 
    "Thaumium", 
    "Thermoconducting", 
    "Thorium",
    "ThoriumOxide", 
    "Tin",
    "TinSilver", 
    "Titanium", 
    "Tough", 
    "Tungsten",
    "Tungstensteel", 
    "Ultimate", 
    "Uranium",
    "UraniumOxide",
	"Vibrant", 
    "VibrantAlloy", 
    "Villaumite", 
    "VividAlloy", 
    "Void", 
    "Wood", 
    "Wub", 
    "Yellorium", 
    "YellowGarnet", 
    "Zinc", 
    "Zircaloy", 
    "Zirconium" 
//SILK_SORTING: END@Gear
] as string[];
for gear in stringGear {
    hashGear[gear] = oreDict["gear" ~ gear];
}

hashGear["Proven"].add(<extratrees:misc:2>);
recipes.replaceAllOccurences(<extratrees:misc:2>,hashGear["Proven"]);

hashGear["Redstone"].add(<mysticalmechanics:gear_gold_off>);
recipes.replaceAllOccurences(<mysticalmechanics:gear_gold_off>,hashGear["Redstone"]);

hashGear["RedstoneInverted"].add(<mysticalmechanics:gear_gold_on>);
recipes.replaceAllOccurences(<mysticalmechanics:gear_gold_on>,hashGear["RedstoneInverted"]);

hashGear["Scented"].add(<extrabees:misc>);
recipes.replaceAllOccurences(<extrabees:misc>,hashGear["Scented"]);

if (!<ore:gearAluminum>.empty) {
    for item in oreDict["gearAluminum"].items {
        hashGear["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["gearAluminum"],hashGear["Aluminium"]);
}

/***** Nuggets *****/
global hashNugget as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringNugget = [
//SILK_SORTING: BEGIN@Nugget
    "Adaminite",
    "AdvancedAlloy", 
    "Alkimium",
    "Alubrass",
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
    "Wub", 
    "Uranium",
    "VibrantAlloy",
    "Void",
    "Yellorium",
    "Zinc"
//SILK_SORTING: END@Nugget
] as string[];
for nugget in stringNugget {
    hashNugget[nugget] = oreDict["nugget" ~ nugget];
}

hashNugget["MeatRaw"].add(<industrialmeat:raw_meat_nugget>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_nugget>,hashNugget["MeatRaw"]);

hashNugget["Light"].add(<tg:nugget_light>);
recipes.replaceAllOccurences(<tg:nugget_light>,hashNugget["Light"]);

hashNugget["Shade"].add(<tg:nugget_shade>);
recipes.replaceAllOccurences(<tg:nugget_shade>,hashNugget["Shade"]);

if (!<ore:nuggetAluminum>.empty) {
    for item in oreDict["nuggetAluminum"].items {
        hashNugget["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["nuggetAluminum"],hashNugget["Aluminium"]);
}

/***** Blocks *****/
global hashBlock as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringBlock = [
//SILK_SORTING: BEGIN@Block
    "Adaminite",
    "AdvancedAlloy", 
    "Aethium",
    "Alkimium",
    "Alubrass",
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
    "Blaze", 
    "BloodBronze",
    "BloodInfusedIron",
    "BloodInfusedWood", 
    "Blutonium",
    "Bone",
    "Boron",
    "BoronArsenide", 
    "BoronNitride", 
    "Brass",
    "Bronze",
    "Cactus", 
    "Carobbiite", 
    "CertusQuartz",
    "Charcoal",
    "ChargedCertusQuartz",
    "Chest", 
    "Chrome",
    "Cinnabar",
    "Clay",
    "Coal",
    "CoalCoke", 
    "Cobalt",
    "ColdIron",
    "Concrete", 
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
    "Extreme", 
    "Ferroboron", 
    "Flint", 
    "Fluix", 
    "Fluorite", 
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
    "Gravel", 
    "HardCarbon", 
    "HOPGraphite", 
    "Hopper", 
    "HotTungstensteel", 
    "HSLASteel", 
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
    "IridiumAlloy", 
    "Iron",
    "IronCompressed",
    "IvoryPsi",
    "Knightslime",
    "Kyronite",
    "Lapis",
    "Lead",
    "LeadPlatinum", 
    "Litherite",
    "Lithium",
    "LithiumManganeseDioxide", 
    "Lonsdaleite",
    "Ludicrite",
    "Luminessence",
    "Lumium",
    "Magma",
    "Magnesium",
    "MagnesiumDiboride", 
    "Manasteel",
    "Manganese",
    "ManganeseDioxide", 
    "ManganeseOxide", 
    "Marble", 
    "Manyullyn",
    "MeatCooked",
    "MeatRaw",
    "MelodicAlloy",
    "Mirion",
    "Mithminite",
    "Mithril",
    "Mithrillium",
    "MixedMetal", 
    "Mossy",
    "NetherStar",
    "Nethersteel",
    "NetherWart",
    "Nickel",
    "Obsidian", 
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
    "RefinedIron", 
    "RefinedObsidian",
    "ReinforcedGlass",
    "ReinforcedObsidian", 
    "Rhodocrosite", 
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
    "Shibuichi", 
    "SiCSiCCMC", 
    "Signalum",
    "SiliconCarbide", 
    "Silver",
    "Slime",
    "SlimeCongealed",
    "SlimeDirt",
    "SlimeGrass",
    "Snow", 
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
    "Thermoconducting", 
    "Thorium",
    "Thundersteel",
    "Tin",
    "TinSilver", 
    "Titanium",
    "Tungsten",
    "Tungstensteel",
    "Ultimate",
    "Unstable",
    "Uranium",
    "UraniumOxide", 
    "VibrantAlloy",
    "Villaumite", 
    "VividAlloy", 
    "Void",
    "VoidEmpowered",
    "VoidMetal",
    "Wither", 
    "Wool",
    "Wub", 
    "Xen", 
    "Yellorium",
    "YellowGarnet",
    "Zinc",
    "Zircaloy", 
    "Zirconium"
//SILK_SORTING: END@Block
] as string[];
for block in stringBlock {
    hashBlock[block] = oreDict["block" ~ block];
}

hashBlock["Alkimium"].add(<planarartifice:alkimium_block>);
recipes.replaceAllOccurences(oreDict["blockAlchemical"],hashBlock["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_block>,hashBlock["Alkimium"]);

hashBlock["BloodInfusedIron"].add(<bloodarsenal:blood_infused_iron_block>);
recipes.replaceAllOccurences(<bloodarsenal:blood_infused_iron_block>,hashBlock["BloodInfusedIron"]);

hashBlock["Cobalt"].add(<tconstruct:metal>);
recipes.replaceAllOccurences(<tconstruct:metal>,hashBlock["Cobalt"]);

hashBlock["Diamantine"].add(<actuallyadditions:block_crystal:2>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:2>,hashBlock["Diamantine"]);

hashBlock["DiamantineEmpowered"].add(<actuallyadditions:block_crystal_empowered:2>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:2>,hashBlock["DiamantineEmpowered"]);

hashBlock["DiamondMana"].add(<botania:storage:3>);
recipes.replaceAllOccurences(<botania:storage:3>,hashBlock["DiamondMana"]);

hashBlock["Dragonstone"].add(<botania:storage:4>);
recipes.replaceAllOccurences(<botania:storage:4>,hashBlock["Dragonstone"]);

hashBlock["DraconiumCharged"].add(<draconicevolution:draconium_block:1>);
recipes.replaceAllOccurences(<draconicevolution:draconium_block:1>,hashBlock["DraconiumCharged"]);

hashBlock["EbonyPsi"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(<planarartifice:alkimium_ingot>,hashBlock["EbonyPsi"]);

hashBlock["Emeradic"].add(<actuallyadditions:block_crystal:4>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:4>,hashBlock["Emeradic"]);

hashBlock["EmeradicEmpowered"].add(<actuallyadditions:block_crystal_empowered:4>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:4>,hashBlock["EmeradicEmpowered"]);

hashBlock["Ender"].add(<extendedcrafting:storage:5>);
recipes.replaceAllOccurences(<extendedcrafting:storage:5>,hashBlock["Ender"]);

hashBlock["EnderEnhanced"].add(<extendedcrafting:storage:7>);
recipes.replaceAllOccurences(<extendedcrafting:storage:7>,hashBlock["EnderEnhanced"]);

hashBlock["EnderPearl"].add(<actuallyadditions:block_misc:6>);
recipes.replaceAllOccurences(<actuallyadditions:block_misc:6>,hashBlock["EnderPearl"]);

hashBlock["EnderStar"].add(<extendedcrafting:storage:6>);
recipes.replaceAllOccurences(<extendedcrafting:storage:6>,hashBlock["EnderStar"]);

hashBlock["Enori"].add(<actuallyadditions:block_crystal:5>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:5>,hashBlock["Enori"]);

hashBlock["EnoriEmpowered"].add(<actuallyadditions:block_crystal_empowered:5>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:5>,hashBlock["EnoriEmpowered"]);

hashBlock["Flux"].add(<fluxnetworks:fluxblock>);
recipes.replaceAllOccurences(<fluxnetworks:fluxblock>,hashBlock["Flux"]);

hashBlock["GlitchInfused"].add(<deepmoblearning:infused_ingot_block>);
recipes.replaceAllOccurences(<deepmoblearning:infused_ingot_block>,hashBlock["GlitchInfused"]);

hashBlock["IvoryPsi"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(<planarartifice:alkimium_ingot>,hashBlock["IvoryPsi"]);

hashBlock["LapisElven"].add(<botanicadds:elven_lapis_block>);
recipes.replaceAllOccurences(<botanicadds:elven_lapis_block>,hashBlock["LapisElven"]);

hashBlock["LapisMana"].add(<botanicadds:mana_lapis_block>);
recipes.replaceAllOccurences(<botanicadds:mana_lapis_block>,hashBlock["LapisMana"]);

hashBlock["Light"].add(<tg:block_light>);
recipes.replaceAllOccurences(<tg:block_light>,hashBlock["Light"]);

hashBlock["MeatCooked"].add(<industrialmeat:cooked_meat_block>);
recipes.replaceAllOccurences(<industrialmeat:cooked_meat_block>,hashBlock["MeatCooked"]);

hashBlock["MeatRaw"].add(<industrialmeat:raw_meat_block>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_block>,hashBlock["MeatRaw"]);

hashBlock["Orichalcos"].add(<extrabotany:blockorichalcos>);
recipes.replaceAllOccurences(<extrabotany:blockorichalcos>,hashBlock["Orichalcos"]);

hashBlock["Palis"].add(<actuallyadditions:block_crystal:1>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:1>,hashBlock["Palis"]);

hashBlock["PalisEmpowered"].add(<actuallyadditions:block_crystal_empowered:1>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:1>,hashBlock["PalisEmpowered"]);

hashBlock["Photonium"].add(<extrabotany:blockphotonium>);
recipes.replaceAllOccurences(<extrabotany:blockphotonium>,hashBlock["Photonium"]);

hashBlock["Resonating"].add(<deepresonance:resonating_block>);
recipes.replaceAllOccurences(<deepresonance:resonating_block>,hashBlock["Resonating"]);

hashBlock["Restonia"].add(<actuallyadditions:block_crystal>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal>,hashBlock["Restonia"]);

hashBlock["RestoniaEmpowered"].add(<actuallyadditions:block_crystal_empowered>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered>,hashBlock["RestoniaEmpowered"]);

hashBlock["Shade"].add(<tg:block_shade>);
recipes.replaceAllOccurences(<tg:block_shade>,hashBlock["Shade"]);

hashBlock["Shadowium"].add(<extrabotany:blockshadowium>);
recipes.replaceAllOccurences(<extrabotany:blockshadowium>,hashBlock["Shadowium"]);

hashBlock["StygianIron"].add(<woot:stygianiron>);
recipes.replaceAllOccurences(<woot:stygianiron>,hashBlock["StygianIron"]);

hashBlock["VoidMetal"].add(<thaumcraft:metal_void>);
recipes.replaceAllOccurences(<thaumcraft:metal_void>, hashBlock["VoidMetal"]);
recipes.replaceAllOccurences(hashBlock["Void"], hashBlock["VoidMetal"]);

hashBlock["Void"].add(<actuallyadditions:block_crystal:3>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal:3>,hashBlock["Void"]);

hashBlock["VoidEmpowered"].add(<actuallyadditions:block_crystal_empowered:3>);
recipes.replaceAllOccurences(<actuallyadditions:block_crystal_empowered:3>,hashBlock["VoidEmpowered"]);

if (!<ore:blockAluminum>.empty) {
    for item in oreDict["blockAluminum"].items {
        hashBlock["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["blockAluminum"],hashBlock["Aluminium"]);
}

/***** Tiny Dusts *****/
global hashDustTiny as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDustTiny = [
//SILK_SORTING: BEGIN@DustTiny
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
    "Wub", 
    "Uranium",
    "Yellorium"
//SILK_SORTING: END@DustTiny
] as string[];
for dustTiny in stringDustTiny {
    hashDustTiny[dustTiny] = oreDict["dustTiny" ~ dustTiny];
}

if (!<ore:dustTinyAluminum>.empty) {
    for item in oreDict["dustTinyAluminum"].items {
        hashDustTiny["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["dustTinyAluminum"],hashDustTiny["Aluminium"]);
}

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
    "Wub", 
    "Uranium",
    "Uvarovite",
    "Wood",
    "Yellorium",
    "YellowGarnet",
    "Zinc"
//SILK_SORTING: END@SmallDust
] as string[];
for dustSmall in stringDustSmall {
    hashDustSmall[dustSmall] = oreDict["dustSmall" ~ dustSmall];
}

if (!<ore:dustSmallAluminum>.empty) {
    for item in oreDict["dustSmallAluminum"].items {
        hashDustSmall["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["dustSmallAluminum"],hashDustSmall["Aluminium"]);
}

/***** Dirty Dusts *****/
global hashDustDirty as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringDustDirty = [
//SILK_SORTING: BEGIN@DirtyDust
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
    "Yellorium"
//SILK_SORTING: END@DirtyDust
] as string[];
for dustDirty in stringDustDirty {
    hashDustDirty[dustDirty] = oreDict["dustDirty" ~ dustDirty];
}

if (!<ore:dustDirtyAluminum>.empty) {
    for item in oreDict["dustDirtyAluminum"].items {
        hashDustDirty["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["dustDirtyAluminum"],hashDustDirty["Aluminium"]);
}

/***** Clumps *****/
global hashClump as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringClump = [
//SILK_SORTING: BEGIN@Clump
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
    "Yellorium"
//SILK_SORTING: END@Clump
] as string[];
for clump in stringClump {
    hashClump[clump] = oreDict["clump" ~ clump];
}
if (!<ore:clumpAluminum>.empty) {
    for item in oreDict["clumpAluminum"].items {
        hashClump["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["clumpAluminum"],hashClump["Aluminium"]);
}


/***** Shards *****/
global hashShard as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringShard = [
//SILK_SORTING: BEGIN@Shard
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
    "Yellorium"
//SILK_SORTING: END@Shard
] as string[];
for shard in stringShard {
    hashShard[shard] = oreDict["shard" ~ shard];
}

if (!<ore:shardAluminum>.empty) {
    for item in oreDict["shardAluminum"].items {
        hashShard["Aluminium"].add(item);
    }
    recipes.replaceAllOccurences(oreDict["shardAluminum"],hashShard["Aluminium"]);
}
