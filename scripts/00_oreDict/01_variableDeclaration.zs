/*Incomplete:
*/

/*Unknown:
oreDict Definition: Add dustCocoa, dustCalciumSulfate, dustCrystalBinder, dustEnergetic, dustSodiumFlouride, dustPotassiumFlouride, dustSodiumHydroxide, dustPotassiumHydroxide, dustBorax, dustDimensional, dustCarbonManaganese, dustAlugentum, dustArsenic;
oreDict Definition: dustSalt from Bewitchment, Immersive Tech or Mekanism;
oreDict Definition: dustAsh from Forestry or Tech Reborn;
oreDicts: dustSulfur VS dustSulphur; dustNiter VS dustSaltpeter;
*/

#debug

/*Defining Values/ Variables*/
val sand = <minecraft:sand> as IItemstack;

/*Assigning a Hashmap for each OreDict*/
/*Ores*/
val stringOre = ["Gold", "Iron", "Lapis", "Diamond", "Redstone", "Emerald", "Quartz", "QuartzBlack", "CertusQuartz", "ChargedCertusQuartz", "AstralStarmetal", "Aquamarine", "Garnet", "Nuummite", "Tigereye", "Tourmaline", "Bloodstone", "Jasper", "Malachite", "Amethyst", "Alexandrite", "Salt", "Draconium", "Anglesite", "Benitoite", "Yellorite", "Yellorium", "Apatite", "Osmium", "EndInferium", "EndProsperity", "Inferium", "NetherInferium", "NetherProsperity", "Prosperity", "Thorium", "Uranium", "Boron", "Lithium", "Magnesium", "DimensionalShard", "Galena", "Iridium", "Ruby", "Sapphire", "Bauxite", "Pyrite", "Cinnabar", "Sphalerite", "Tungsten", "Sheldonite", "Peridot", "Sodalite", "CrystalAir", "CrystalWater", "CrystalFire", "CrystalOrder", "CrystalEntropy", "CrystalEarth", "CrystalTaint", "Cinnabar", "Amber", "Copper", "Tin", "Silver", "Lead", "Aluminium", "Nickel", "Platinum", "Iridium", "Mithril", "ClathrateOilSand", "ClathrateOilShale", "ClathrateRedstone", "ClathrateGlowstone", "ClathrateEnder", "Cobalt", "Ardite"] as string[];
global var hashOre as IOreDictEntry[string];
for ore in stringOre{
	hashOre[ore] = oreDict.get("ore" ~ ore);
}

/*Clusters*/
val stringCluster = ["Aluminium", "Ardite", "AstralStarmetal", "Boron", "Cobalt", "Draconium", "Iridium", "Lithium", "Magnesium", "Mithril", "Nickel", "Osmium", "Platinum", "Tungsten", "Uranium", "Yellorium", "Iron", "Gold", "Copper", "Tin", "Silver", "Lead", "Cinnabar", "Quartz"] as string[];
global var hashCluster as IOreDictEntry[string];
for cluster in stringCluster{
	hashCluster[cluster] = oreDict.get("cluster" ~ cluster);
}

/*Ingots*/
val stringIngot = ["Iron", "Gold", "AstralStarmetal", "CrystalMatrix", "CosmicNeutronium", "Infinity", "ColdIron", "Manasteel", "Terrasteel", "ElvenElementium", "Gaia", "DraconiumAwakened", "Draconium", "CrudeSteel", "CrystallineAlloy", "MelodicAlloy", "StellarAlloy", "CrystallinePinkSlime", "EnergeticSilver", "ElectricalSteel", "EnergeticAlloy", "VibrantAlloy", "RedstoneAlloy", "ConductiveIron", "PulsatingIron", "DarkSteel", "Soularium", "EndSteel", "ConstructionAlloy", "IronAlloy", "EnderiumBase", "BrickNetherGlazed", "BlackIron", "Crystaltine", "Ultimate", "Blutonium", "Cyanite", "Ludicrite", "Yellorium", "HOPGraphite", "RefinedObsidian", "Osmium", "RefinedGlowstone", "Insanium", "BaseEssence", "Inferium", "Prudentium", "Intermedium", "Superium", "Supremium", "Soulium", "Tough", "HardCarbon", "MagnesiumDiboride", "LithiumManganeseDioxide", "Shibuichi", "TinSilver", "LeadPlatinum", "Extreme", "Thermoconducting", "Zircaloy", "SiliconCarbide", "SiCSiCCMC", "HSLASteel", "Boron10", "Boron11", "Thorium", "Uranium", "Boron", "Lithium", "Magnesium", "Graphite", "Beryllium", "Zirconium", "Manganese", "ThoriumOxide", "UraniumOxide", "ManganeseOxide", "ManganeseDioxide", "Lithium6", "Lithium7", "Chocolate", "Alumite", "Mirion", "Osglosglas", "Osmiridium", "IronCompressed", "Psi", "EbonyPsi", "IvoryPsi", "ElectrumFlux", "GelidEnderium", "_dark_soularium", "DarkSoularium", "Brass", "Chrome", "Titanium", "Tungsten", "HotTungstensteel", "Tungstensteel", "Zinc", "AdvancedAlloy", "MixedMetal", "IridiumAlloy", "Thaumium", "Void", "Adaminite", "Mithminite", "Mithrillium", "Copper", "Tin", "Silver", "Lead", "Aluminium", "Nickel", "Platinum", "Iridium", "Mithril", "Constantan", "Bronze", "Electrum", "Invar", "Signalum", "Lumium", "Enderium", "Cobalt", "Ardite", "Manyullyn", "Knightslime", "Pigiron", "AluBrass", ] as string[];
global var hashIngot as IOreDictEntry[string];
for ingot in stringIngot{ 
	hashIngot[ingot] = oreDict.get("ingot" ~ ingot);
}
val gaiaIngot = <ore:gaiaIngot>;

/*Gems*/
val stringGem = ["Coal", "Diamond", "Lapis", "Emerald", "Quartz", "Prismarine", "QuartzBlack", "CertusQuartz", "ChargedCertusQuartz", "Fluix", "Aquamarine", "Garnet", "Nuummite", "Tigereye", "Tourmaline", "Bloodstone", "Jasper", "Malachite", "Amethyst", "Alexandrite", "Obsidian", "Amber", "Pearl", "Redstone", "Moon", "Apatite", "Rhodocrosite", "BoronNitride", "Flourite", "Villaumite", "Carobbiite", "BoronArsenide", "Psi", "DimensionalShard", "CrystalFlux", "Gelid", "Ruby", "Sapphire", "Peridot", "RedGarnet", "YellowGarnet", "Amber", "Quicksilver"] as string[];
global var hashGem as IOreDictEntry[string];
for gem in stringGem{
	hashGem[gem] = oreDict.get("gem" ~ gem);
}
recipes.replaceAllOccurences(oreDict.get("quicksilver"), oreDict.get(hashGem["Quicksilver"]);
recipes.replaceAllOccurences(<thaumcraft:quicksilver>, oreDict.get(hashGem["Quicksilver"]);

/*Crystals*/
val stringCrystal = ["CertusQuartz", "ChargedCertusQuartz", "Fluix", "PureCertusQuartz", "PureNetherQuartz", "PureFluix", "Aethium", "Erodium", "Ionite", "Kyronite", "Litherite", "Lonsdaleite", "Pladium", "Slag", "SlagRich", "Cinnabar"] as string[];
global var hashCrystal as IOreDictEntry[string];
for crystal in stringCrystal{
	hashCrystal[crystal] = oreDict.get("crystal" ~ crystal);
}

/*Ender IO Crystals*/
val stringEnderIOCrystal = ["PulsatingCrystal", "VibrantCrystal", "EnderCrystal", "AttractorCrystal", "WeatherCrystal", "PrecientCrystal"] as string[];
global var hashEnderIOCrystal as IOreDictEntry[string];
for enderIOCrystal in stringEnderIOCrystal{
	hashEnderIOCrystal[enderIOCrystal] = oreDict.get("item" ~ enderIOCrystal);
}

/*Clathrates*/
val stringClathrate = ["Oil", "Redstone", "Glowstone", "Ender"] as string[];
global var hashClathratr as IOreDictEntry[string];
for clathrate in stringClathrate{ 
	hashClathrate[clathrate] = oreDict.get("clathrate" ~ clathrate);
}

/*Dusts*/
val stringDust = ["Redstone", "Glowstone", "Blaze", "Prismarine", "Pyrotheum", "Cryotheum", "Aerotheum", "Petrotheum", "Mana", "Blizz", "Blitz", "Basalz", "QuartzBlack", "Fluix", "AstralStarmetal", "Draconium", "Bedrock", "Wheat", "Soularium", "Lunar", "Blutonium", "Cyanite", "Ludicrite", "Yellorium", "Coke", "HOPGraphite", "Amber", "Apatite", "Ardite", "ChargedCertusQuartz", "Cobalt", "Osmium", "Thorium", "Uranium", "Boron", "Lithium", "Graphite", "Beryllium", "Zirconium", "ThoriumOxide", "UraniumOxide", "ManganeseOxide", "ManganeseDioxide", "Rhodocrosite", "BoronNitride", "Flourite", "Villaumite", "Carobbiite", "ElectrumFlux", "GelidEnderium", "Almandine", "Aluminium", "Aluminum", "Andradite", "Basalt", "Bauxite", "Brass", "Bronze", "Calcite", "Charcoal", "Chrome", "Cinnabar", "Coal", "Copper", "DarkAshes", "Diamond", "EnderEye", "EnderPearl", "Ender", "Endstone", "Flint", "Galena", "Gold", "Grossular", "Invar", "Iron", "Lazurite", "Lead", "Magnesium", "Manganese", "Marble", "Netherrack", "Nickel", "Obsidian", "Peridot", "Phosphorous", "Platinum", "Pyrite", "Pyrope", "RedGarnet", "Ruby", "Sapphire", "Wood", "Sodalite", "Spessartite", "Sphalerite", "Steel", "Tin", "Titanium", "Tungsten", "Uvarovite", "YellowGarnet", "Zinc", "Andesite", "Diorite", "Granite", "Constantan", "Signalum", "Lumium", "Enderium"] as string[];
global var hashDust as IOreDictEntry[string];
for dust in dustString{
	dustHash[dust] = dustArray[i];
}

/*Plates*/

/*Dense Plates*/

/*Rods*/

/*Gears*/

/*Nuggets*/

/*Blocks*/

/*Dirty Dusts*/

/*Clumps*/

/*Crystals*/

