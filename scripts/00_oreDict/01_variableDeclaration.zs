#priority -0001

import crafttweaker.items.IItemStack;
import crafttweaker.items.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

/*Defining Values/ Variables*/
val sand = <minecraft:sand> as IItemStack;

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
	"Garnet", 
	"Nuummite", 
	"Tigereye", 
	"Tourmaline", 
	"Bloodstone", 
	"Jasper", 
	"Malachite", 
	"Amethyst", 
	"Alexandrite", 
	"Salt", 
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
	"Ardite"

] as string[];
global hashOre as IOreDictEntry[string];
for ore in stringOre{
	hashOre[ore] = oreDict["ore" ~ ore);
}

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
recipes.replaceAllOccurences(oreDict["gaiaIngot"), hashOre["Gaia"]);
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

hashIngot["MeatCooked"]. add(<industrialmeat:cooked_meat_ingot>);
recipes.replaceAllOccurences(<industrialmeat:cooked_meat_ingot>, hashIngot["MeatCooked"];

hashIngot["MeatRaw"]. add(<industrialmeat:raw_meat_ingot>);
recipes.replaceAllOccurences(<industrialmeat:raw_meat_ingot>, hashIngot["MeatRaw"];

hashIngot["Thundersteel"].remove(<naturalpledge:resource:1>);

hashIngot["Alkimium"].add(<planarartifice:alkimium_ingot>);
recipes.replaceAllOccurences(oreDict["ingotAlchemical"], hashIngot["Alkimium"]);
recipes.replaceAllOccurences(<planarartifice:alkimium_ingot>, hashIngot["Alkimium"]);

hashIngot["Spectre"]. add(<randomthings:ingredient:3>);
recipes.replaceAllOccurences(<randomthings:ingredient:3>, hashIngot["Spectre"];

hashIngot["DarkSoularium"].add(<simplyjetpacks:metaitemmods:3>);
recipes.replaceAllOccurences(oreDict["dark_soularium"), hashIngot["Gaia"]);
recipes.replaceAllOccurences(<simplyjetpacks:metaitemmods:3>, hashIngot["Gaia"]);

hashIngot["Livium"].add(<thaumic_arcana:ingot_livium>);
recipes.replaceAllOccurences(<thaumic_arcana:ingot_livium>, hashIngot["Livium"];

hashIngot|"Light"].add(<tg:ingot_light>);
recipes.replaceAllOccurences(<tg:ingot_light>, hashIngot["Light"]); 

hashIngot|"Shade"].add(<tg:ingot_shade>);
recipes.replaceAllOccurences(<tg:ingot_shade>, hashIngot["Shade"]); 

hashIngot["StygianIron"].add(<woot:stygianironingot>);
recipes.replaceAllOccurences(<woot:stygianironingot>, hashIngot["StygianIron"];


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
	"Garnet", 
	"Nuummite", 
	"Tigereye", 
	"Tourmaline", 
	"Bloodstone", 
	"Jasper", 
	"Malachite", 
	"Amethyst", 
	"Alexandrite", 
	"Obsidian", 
	"Amber", 
	"Pearl", 
	"Redstone", 
	"Moon", 
	"Apatite", 
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
hashGem["Quicksilver"].add(<thaumcraft:quicksilver>);
recipes.replaceAllOccurences(oreDict["quicksilver"), hashGem["Quicksilver"]);
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
	hashCrystal[crystal] = oreDict["crystal" ~ crystal);
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
	hashEnderIOCrystal[enderIOCrystal] = oreDict["item" ~ enderIOCrystal);
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
	hashClathrate[clathrate] = oreDict["clathrate" ~ clathrate);
}

/*Dusts*/
val stringDust = [

	"Redstone", 
	"Glowstone", 
	"Blaze", 
	"Prismarine", 
	"Pyrotheum", 
	"Cryotheum", 
	"Aerotheum", 
	"Petrotheum", 
	"Mana", 
	"Blizz", 
	"Blitz", 
	"Basalz", 
	"QuartzBlack", 
	"Fluix", 
	"AstralStarmetal", 
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
	"Rhodocrosite", 
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
	"Enderium"

] as string[];
global hashDust as IOreDictEntry[string];
for dust in dustString{
	hashDust[dust] = oreDict["dust" ~ dust);
}
recipes.replaceAllOccurences(oreDict["dustEnder"), hashDust["EnderPearl"]);

/*Plates*/

/*Dense Plates*/

/*Rods*/

/*Gears*/

/*Nuggets*/

/*Blocks*/

/*Dirty Dusts*/

/*Clumps*/

/*Shards*/

/*Crystals*/
