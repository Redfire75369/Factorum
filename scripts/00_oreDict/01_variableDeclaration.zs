#priority -0001

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

/*Defining Values/ Variables*/
global sand = <minecraft:sand> as IItemStack;

/*Assigning a Hashmap for each OreDict*/
/*Ores*/
val stringOre = [

	"Gold", 
	"Iron", 
	"Lapis", 
	"Diamond", 
	"Redstone", 
	"Emerald", 
	"Quartz", 
	"QuartzBlack", 
	"CertusQuartz", 
	"ChargedCertusQuartz", 
	"AstralStarmetal", 
	"Aquamarine", 
	"Amethyst", 
	"Garnet", 
	"Opal", 
	"Salt", 
	"Resonating", 
	"Draconium", 
	"Anglesite", 
	"Benitoite", 
	"Yellorite", 
	"Yellorium", 
	"Apatite", 
	"Osmium", 
	"EndInferium", 
	"EndProsperity", 
	"Inferium", 
	"NetherInferium", 
	"NetherProsperity", 
	"Prosperity", 
	"Thorium", 
	"Uranium", 
	"Boron", 
	"Lithium", 
	"Magnesium", 
	"DimensionalShard", 
	"Galena", 
	"Ruby", 
	"Sapphire", 
	"Bauxite", 
	"Pyrite", 
	"Cinnabar", 
	"Sphalerite", 
	"Tungsten", 
	"Sheldonite", 
	"Peridot", 
	"Sodalite", 
	"CrystalAir", 
	"CrystalWater", 
	"CrystalFire", 
	"CrystalOrder", 
	"CrystalEntropy", 
	"CrystalEarth", 
	"CrystalTaint", 
	"Amber", 
	"Light", 
	"Shade", 
	"Copper", 
	"Tin", 
	"Silver", 
	"Lead", 
	"Aluminium", 
	"Nickel", 
	"Platinum", 
	"Iridium", 
	"Mithril", 
	"ClathrateOilSand", 
	"ClathrateOilShale", 
	"ClathrateRedstone", 
	"ClathrateGlowstone", 
	"ClathrateEnder", 
	"Cobalt", 
	"Ardite", 
	"StygianIron"

] as string[];
global hashOre as IOreDictEntry[string];
for ore in stringOre{
	hashOre[ore] = oreDict["ore" ~ ore);
}
hashOre["CertusQuartz"].remove(<appliedenergistics2:charged_quartz_ore>);

hashOre|"Light"].add(<tg:ore_light>);
recipes.replaceAllOccurences(<tg:ore_light>, hashOre["Light"]);

hashOre|"Shade"].add(<tg:ore_shade>);
recipes.replaceAllOccurences(<tg:ore_shade>, hashOre["Shade"]);

hashOre["StygianIron"].add(<woot:sygianironore>);
recipes.replaceAllOccurences(<woot:stygianironore>, hash["StygianIron"]);


/*Clusters*/
val stringCluster = [

	"Aluminium", 
	"Ardite", 
	"AstralStarmetal", 
	"Boron", 
	"Cobalt", 
	"Draconium", 
	"Iridium", 
	"Lithium", 
	"Magnesium", 
	"Mithril", 
	"Nickel", 
	"Osmium", 
	"Platinum", 
	"Tungsten", 
	"Uranium", 
	"Yellorium", 
	"Iron", 
	"Gold", 
	"Copper", 
	"Tin", 
	"Silver", 
	"Lead", 
	"Cinnabar", 
	"Quartz"

] as string[];
global hashCluster as IOreDictEntry[string];
for cluster in stringCluster{
	hashCluster[cluster] = oreDict["cluster" ~ cluster);
}

/*Ingots*/
val stringIngot = [

	"Iron", 
	"Gold", 
	"AstralStarmetal", 
	"CrystalMatrix", 
	"CosmicNeutronium", 
	"Infinity", 
	"ColdIron", 
	"Manasteel", 
	"Terrasteel", 
	"ElvenElementium", 
	"Gaia", 
	"GlitchInfused", 
	"DraconiumAwakened", 
	"Draconium", 
	"Dawnstone", 
	"CrudeSteel", 
	"CrystallineAlloy", 
	"MelodicAlloy", 
	"StellarAlloy", 
	"CrystallinePinkSlime", 
	"EnergeticSilver", 
	"ElectricalSteel", 
	"EnergeticAlloy", 
	"VibrantAlloy", 
	"RedstoneAlloy", 
	"ConductiveIron", 
	"PulsatingIron", 
	"DarkSteel", 
	"Soularium", 
	"EndSteel", 
	"ConstructionAlloy", 
	"EnderiumBase", 
	"BrickNetherGlazed", 
	"BlackIron", 
	"Crystaltine", 
	"Ultimate", 
	"Ender", 
	"EnderEnhanced", 
	"Blutonium", 
	"Cyanite", 
	"Ludicrite", 
	"Yellorium", 
	"HOPGraphite", 
	"SlimePink", 
	"MeatCooked", 
	"MeatRaw", 
	"RefinedObsidian", 
	"Osmium", 
	"RefinedGlowstone", 
	"Insanium", 
	"BaseEssence", 
	"Inferium", 
	"Prudentium", 
	"Intermedium", 
	"Superium", 
	"Supremium", 
	"Soulium", 
	"Thundersteel", 
	"ThundersteelAwakened", 
	"Tough", 
	"HardCarbon", 
	"MagnesiumDiboride", 
	"LithiumManganeseDioxide", 
	"Shibuichi", 
	"TinSilver", 
	"LeadPlatinum", 
	"Extreme", 
	"Thermoconducting", 
	"Zircaloy", 
	"SiliconCarbide", 
	"SiCSiCCMC", 
	"HSLASteel", 
	"Boron10", 
	"Boron11", 
	"CocoaButter", 
	"DarkChocolate", 
	"Thorium", 
	"Uranium", 
	"Boron", 
	"Lithium", 
	"Magnesium", 
	"Graphite", 
	"Beryllium", 
	"Zirconium", 
	"Manganese", 
	"ThoriumOxide", 
	"UraniumOxide", 
	"ManganeseOxide", 
	"ManganeseDioxide", 
	"Lithium6", 
	"Lithium7", 
	"Chocolate", 
	"Alkimium", 
	"Bismuth", 
	"Alumite", 
	"Mirion", 
	"Osglosglas", 
	"Osmiridium", 
	"IronCompressed", 
	"Psi", 
	"EbonyPsi", 
	"IvoryPsi", 
	"Spectre", 
	"ElectrumFlux", 
	"GelidEnderium", 
	"DarkSoularium", 
	"Brass", 
	"Chrome", 
	"Titanium", 
	"Tungsten", 
	"HotTungstensteel", 
	"Tungstensteel", 
	"Zinc", 
	"RefinedIron", 
	"AdvancedAlloy", 
	"MixedMetal", 
	"IridiumAlloy", 
	"Thaumium", 
	"Void", 
	"Adaminite", 
	"Mithminite", 
	"Mithrillium", 
	"Livium", 
	"Thauminite", 
	"Light", 
	"Shade", 
	"ThaumiumAer", 
	"ThaumiumIgnis", 
	"ThaumiumAqua", 
	"ThaumiumTerra", 
	"ThaumiumOrdo", 
	"ThaumiumPerditio", 
	"Copper", 
	"Tin", 
	"Silver", 
	"Lead", 
	"Aluminium", 
	"Nickel", 
	"Platinum", 
	"Iridium", 
	"Mithril", 
	"Constantan", 
	"Bronze", 
	"Electrum", 
	"Invar", 
	"Signalum", 
	"Lumium", 
	"Enderium", 
	"BloodBronze", 
	"Cobalt", 
	"Ardite", 
	"Manyullyn", 
	"Knightslime", 
	"Pigiron", 
	"AluBrass", 
	"Unstable", 
	"StygianIron"

] as string[];
global hashIngot as IOreDictEntry[string];
for ingot in stringIngot{ 
	hashIngot[ingot] = oreDict["ingot" ~ ingot);
}
hashOre["Gaia"].add(<botania:manaresource:14>);
recipes.replaceAllOccurences(oreDict["gaiaIngot"], hashOre["Gaia"]);
recipes.replaceAllOccurences(<botania:manaresource:14>, hashOre["Gaia"]);

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
recipes.replaceAllOccurences(oreDict["dark_soularium"], hashIngot["Gaia"]);
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:3>, hashIngot["Gaia"]);

hashIngot["Livium"].add(<thaumic_arcana:ingot_livium>);
recipes.replaceAllOccurences(<thaumic_arcana:ingot_livium>, hashIngot["Livium"]);

hashIngot|"Light"].add(<tg:ingot_light>);
recipes.replaceAllOccurences(<tg:ingot_light>, hashIngot["Light"]);

hashIngot|"Shade"].add(<tg:ingot_shade>);
recipes.replaceAllOccurences(<tg:ingot_shade>, hashIngot["Shade"]);

hashIngot["StygianIron"].add(<woot:stygianironingot>);
recipes.replaceAllOccurences(<woot:stygianironingot>, hashIngot["StygianIron"]);


/*Gems*/
val stringGem = [

	"Coal", 
	"Diamond", 
	"Lapis", 
	"Emerald", 
	"Quartz", 
	"Prismarine", 
	"QuartzBlack", 
	"CertusQuartz", 
	"ChargedCertusQuartz", 
	"Fluix", 
	"Aquamarine", 
	"Amethyst", 
	"Garnet", 
	"Opal", 
	"Pearl", 
	"Apatite", 
	"NjordAquamarine", 
	"NjordAquamarineAwakened", 
	"Rhodocrosite", 
	"BoronNitride", 
	"Flourite", 
	"Villaumite", 
	"Carobbiite", 
	"BoronArsenide", 
	"Psi", 
	"DimensionalShard", 
	"CrystalFlux", 
	"Gelid", 
	"Ruby", 
	"Sapphire", 
	"Peridot", 
	"RedGarnet", 
	"YellowGarnet", 
	"Amber", 
	"Quicksilver"

] as string[];
global hashGem as IOreDictEntry[string];
for gem in stringGem{
	hashGem[gem] = oreDict["gem" ~ gem);
}
hashGem["Aquamarine"].remove(<naturalpledge:resource:4>);
hashGem["Aquamarine"].remove(<naturalpledge:resource:5>);
hashGem["NjordAquamarine"].remove(<naturalpledge:resource:5>);

hashGem["Quicksilver"].add(<thaumcraft:quicksilver>);
recipes.replaceAllOccurences(oreDict["quicksilver"], hashGem["Quicksilver"]);
recipes.replaceAllOccurences(<thaumcraft:quicksilver>, hashGem["Quicksilver"]);

/*Crystals*/
val stringCrystal = [

	"CertusQuartz", 
	"ChargedCertusQuartz", 
	"Fluix", 
	"PureCertusQuartz", 
	"PureNetherQuartz", 
	"PureFluix", 
	"Amber", 
	"Obsidian", 
	"Aethium", 
	"Erodium", 
	"Ionite", 
	"Kyronite", 
	"Litherite", 
	"Lonsdaleite", 
	"Pladium", 
	"Slag", 
	"SlagRich", 
	"Cinnabar", 
	"Aluminium", 
	"Ardite", 
	"AstralStarmetal", 
	"Boron", 
	"Cobalt", 
	"Draconium", 
	"Iridium", 
	"Lithium", 
	"Magnesium", 
	"Mithril", 
	"Platinum", 
	"Thorium", 
	"Tungsten", 
	"Uranium", 
	"Yellorium", 
	"Iron", 
	"Gold", 
	"Osmium", 
	"Copper", 
	"Tin", 
	"Silver", 
	"Lead"

] as string[];
global hashCrystal as IOreDictEntry[string];
for crystal in stringCrystal{
	hashCrystal[crystal] = oreDict["crystal" ~ crystal];
}
hashGem["Amber"].add(<cyclicmagic:crystallised_amber>);
recipes.replaceAllOccurences(<cyclicmagic:crystallised_amber>, hashGem["Amber"]);

hashGem["Obsidian"].add(<cyclicmagic:crystallised_obsidian>);
recipes.replaceAllOccurences(<cyclicmagic:crystallised_obsidian>, hashGem["Obsidian"]);

/*Ender IO Crystals*/
val stringEnderIOCrystal = [

	"PulsatingCrystal", 
	"VibrantCrystal", 
	"EnderCrystal", 
	"AttractorCrystal", 
	"WeatherCrystal", 
	"PrecientCrystal"

] as string[];
global hashEnderIOCrystal as IOreDictEntry[string];
for enderIOCrystal in stringEnderIOCrystal{
	hashEnderIOCrystal[enderIOCrystal] = oreDict["item" ~ enderIOCrystal];
}

/*Clathrates*/
val stringClathrate = [

	"Oil", 
	"Redstone", 
	"Glowstone", 
	"Ender"

] as string[];
global hashClathrate as IOreDictEntry[string];
for clathrate in stringClathrate{ 
	hashClathrate[clathrate] = oreDict["clathrate" ~ clathrate];
}

/*Dusts*/
val stringDust = [

	"Redstone", 
	"Glowstone", 
	"Blaze", 
	"Prismarine", 
	"Illumination", 
	"Nocturnal", 
	"BloodInfusedGlowstone", 
	"Wither", 
	"Pyrotheum", 
	"Cryotheum", 
	"Aerotheum", 
	"Petrotheum", 
	"Mana", 
	"Blizz", 
	"Blitz", 
	"Basalz", 
	"QuartzBlack", 
	"CertusQuartz", 
	"Fluix", 
	"AstralStarmetal", 
	"Salt", 
	"ElvenPixie", 
	"Ash", 
	"Ember", 
	"Metallurgic", 
	"Draconium", 
	"Bedrock", 
	"Wheat", 
	"Soularium", 
	"Lunar", 
	"Blutonium", 
	"Cyanite", 
	"Ludicrite", 
	"Yellorium", 
	"Coke", 
	"HOPGraphite", 
	"Amber", 
	"Apatite", 
	"Ardite", 
	"ChargedCertusQuartz", 
	"Cobalt", 
	"Osmium", 
	"Cocoa", 
	"CalciumSulfate", 
	"CrystalBinder", 
	"Energetic", 
	"SodiumFlouride", 
	"PotassiumFlouride", 
	"SodiumHydroxide", 
	"PotassiumHydroxide", 
	"Borax", 
	"Dimensional", 
	"CarbonManganese", 
	"Alugentum", 
	"Thorium", 
	"Uranium", 
	"Boron", 
	"Lithium", 
	"Graphite", 
	"Beryllium", 
	"Zirconium", 
	"ThoriumOxide", 
	"UraniumOxide", 
	"ManganeseOxide", 
	"ManganeseDioxide", 
	"Wheat", 
	"Rhodocrosite", 
	"Quartz", 
	"BoronNitride", 
	"Flourite", 
	"Villaumite", 
	"Carobbiite", 
	"ElectrumFlux", 
	"GelidEnderium", 
	"Almandine", 
	"Aluminium", 
	"Andradite", 
	"Basalt", 
	"Bauxite", 
	"Brass", 
	"Bronze", 
	"Calcite", 
	"Charcoal", 
	"Chrome", 
	"Cinnabar", 
	"Coal", 
	"Copper", 
	"DarkAshes", 
	"Diamond", 
	"EnderEye", 
	"EnderPearl", 
	"Endstone", 
	"Flint", 
	"Galena", 
	"Gold", 
	"Grossular", 
	"Invar", 
	"Iron", 
	"Lazurite", 
	"Lead", 
	"Magnesium", 
	"Manganese", 
	"Marble", 
	"Netherrack", 
	"Nickel", 
	"Obsidian", 
	"Peridot", 
	"Phosphorous", 
	"Platinum", 
	"Pyrite", 
	"Pyrope", 
	"RedGarnet", 
	"Ruby", 
	"Sapphire", 
	"Wood", 
	"Sodalite", 
	"Spessartite", 
	"Sphalerite", 
	"Steel", 
	"Tin", 
	"Titanium", 
	"Tungsten", 
	"Uvarovite", 
	"YellowGarnet", 
	"Zinc", 
	"Andesite", 
	"Diorite", 
	"Granite", 
	"Constantan", 
	"Signalum", 
	"Lumium", 
	"Enderium", 
	"StygianIron"

] as string[];
global hashDust as IOreDictEntry[string];
for dust in stringDust{
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

recipes.replaceAllOccurences(oreDict["dustAshes"], hashDust["Ash"]);

hashDust["Ember"].add(<embers:dust_ember>);
recipes.replaceAllOccurences(<embers:dust_ember>, hashDust["Ember"]);

hashDust["Metallurgic"].add(<embers:dust_metallurgic>);
recipes.replaceAllOccurences(<embers:dust_metallurgic>, hashDust["Metallurgic"]);

recipes.replaceAllOccurences(oreDict["dustEnder"], hashDust["EnderPearl"]);

hashDust["ElvenPixie"].add(<botania:manaresource:8>);
recipes.replaceAllOccurences(ore["elvenPixieDust"], hashDust["ElvenPixie"]);
recipes.replaceAllOccurences(<botania:manaresources:8>, hashDust["ElvenPixie"]);

hashDust["StygianIron"].add(<woot:stygianirondust>);
recipes.replaceAllOccurences(<woot:stygianirondust>, hashDust["StygianIron"]);

/*Plates*/
val stringPlate = [
	
	"Soot", 
	"Resonating", 
	"Caminite", 
	"RawCaminite", 
	"Dawnstone", 
	"Uranium", 
	"Amber", 
	"Amethyst", 
	"Apatite", 
	"Aquamarine", 
	"Ardite", 
	"AstralStarmetal", 
	"Boron", 
	"CertusQuartz", 
	"ChargedCertusQuartz", 
	"Cobalt", 
	"DimensionalShard", 
	"Draconium", 
	"Garnet", 
	"Lapis", 
	"Lithium", 
	"Magnesium", 
	"Opal", 
	"Osmium", 
	"Quartz", 
	"QuartzBlack", 
	"Thorium", 
	"Yellorium", 
	"Basic", 
	"Advanced", 
	"DU", 
	"Elite", 
	"Alkimium", 
	"ElectrumFlux", 
	"GelidEnderium", 
	"Iron", 
	"Gold", 
	"Carbon", 
	"Wood", 
	"Redstone", 
	"Diamond", 
	"Emerald", 
	"Coal", 
	"Obsidian", 
	"Lazurite", 
	"Silicon", 
	"Ruby", 
	"Sapphire", 
	"Peridot", 
	"RedGarnet", 
	"YellowGarnet", 
	"Aluminium", 
	"Brass", 
	"Bronze", 
	"Chrome", 
	"Copper", 
	"Electrum", 
	"Invar", 
	"Iridium", 
	"Lead", 
	"Nickel", 
	"Platinum", 
	"Silver", 
	"Steel", 
	"Tin", 
	"Titanium", 
	"Tungsten", 
	"Tungstensteel", 
	"RefinedIron", 
	"AdvancedAlloy", 
	"Magnalium", 
	"IridiumAlloy", 
	"Thaumium", 
	"Void", 
	"Adaminite", 
	"Mithminite", 
	"Mithrillium", 
	"Thauminite", 
	"ThaumiumAer", 
	"ThaumiumIgnis", 
	"ThaumiumAqua", 
	"ThaumiumTerra", 
	"ThaumiumOrdo", 
	"ThaumiumPerditio", 
	"Mithril", 
	"Constantan", 
	"Signalum", 
	"Lumium", 
	"Enderium", 
	"StygianIron"
	
] as string[];
global hashPlate as IOreDictEntry[string];
for plate in stringPlate{
	hashPlate[plate] = oreDict["plate" ~ plate];
}
hashPlate["Resonating"].add(<deepresonance:resonating_plate>);
recipes.replaceAllOccurences(<deepresonance:resonating_plate>, hashPlate["Resonating"]);

hashPlate["Alkimium"].add(<planarartifice:alkimium_plate>);
recipes.replaceAllOccurences(oreDict["plateAlchemical"], hashPlate["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_plate>, hashPlate["Alkimium"]);

hashPlate["StygianIron"].add(<woot:sygianironplate>);
recipes.replaceAllOccurences(<woot:stygianironplate>, hashPlate["StygianIron"];

/*Dense Plates*/
val stringPlateDense = [

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
	"Yellorium" 
	
] as string[];
global hashPlateDense as IOreDictEntry[string];
for plateDense in stringPlateDense{
	hashPlateDense[plateDense] = oreDict["plateDense" ~ plate];
}

/*Rods*/
val stringRod = [
	
	"Iron", 
	"Steel", 
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
	"Yellorium"
	
] as string[];
global hashRod as IOreDictEntry[string];
for rod in stringRod{
	hashRod[rod] = oreDict["plateDense" ~ rod];
}
hashRod["Iron"].add(<immersiveengineering:material:1>);
recipes.replaceAllOccurences(ore["stickIron"], hashRod["Iron"]);
recipes.replaceAllOccurences(<botania:manaresources:8>, hashRod["Iron"]);

hashRod["Steel"].add(<immersiveengineering:material:2>);
recipes.replaceAllOccurences(ore["stickSteel"], hashRod["Steel"]);
recipes.replaceAllOccurences(<botania:manaresources:8>, hashRod["Steel"]);

hahsRod["Aluminium"].add(<immersiveengineering:material:3>);
recipes.replaceAllOccurences(ore["stickAluminium"], hashRod["Aluminium"]);
recipes.replaceAllOccurences(ore["stickAluminum"], hashRod["Aluminium"]);
recipes.replaceAllOccurences(<immersiveengineering:material:3>, hashRod["Aluminium"]);

/*Gears*/

/*Nuggets*/

/*Blocks*/

/*Tiny Dusts*/

/*Small Dusts*/

/*Dirty Dusts*/

/*Clumps*/

/*Shards*/
