/*Incomplete:
Blast Furnace, Induction Smelter, Arc Furnace Ingot Recipes
*/

/*Unknown:
oreDict Definition: Add dustCocoa, dustCalciumSulfate, dustCrystalBinder, dustEnergetic, dustSodiumFlouride, dustPotassiumFlouride, dustSodiumHydroxide, dustPotassiumHydroxide, dustBorax, dustDimensional, dustCarbonManaganese, dustAlugentum, dustArsenic;
oreDict Definition: dustSalt from Bewitchment, Immersive Tech or Mekanism;
oreDict Definition: dustAsh from Forestry or Tech Reborn;
oreDicts: dustSulfur VS dustSulphur; dustNiter VS dustSaltpeter;
*/

/*Defining Values/ Variables*/
val sand = <minecraft:sand>;

/*Assigning a Hashmap and Array for each OreDict*/
/*Ores*/
var oreString = ["Gold", "Iron", "Lapis", "Diamond", "Redstone", "Emerald", "Quartz", "QuartzBlack", "CertusQuartz", "ChargedCertusQuartz", "AstralStarmetal", "Aquamarine", "Garnet", "Nuummite", "Tigereye", "Tourmaline", "Bloodstone", "Jasper", "Malachite", "Amethyst", "Alexandrite", "Salt", "Draconium", "Anglesite", "Benitoite", "Yellorite", "Yellorium", "Apatite", "Osmium", "EndInferium", "EndProsperity", "Inferium", "NetherInferium", "NetherProsperity", "Prosperity", "Thorium", "Uranium", "Boron", "Lithium", "Magnesium", "DimensionalShard", "Galena", "Iridium", "Ruby", "Sapphire", "Bauxite", "Pyrite", "Cinnabar", "Sphalerite", "Tungsten", "Sheldonite", "Peridot", "Sodalite", "CrystalAir", "CrystalWater", "CrystalFire", "CrystalOrder", "CrystalEntropy", "CrystalEarth", "CrystalTaint", "Cinnabar", "Amber", "Copper", "Tin", "Silver", "Lead", "Aluminium", "Nickel", "Platinum", "Iridium", "Mithril", "ClathrateOilSand", "ClathrateOilShale", "ClathrateRedstone", "ClathrateGlowstone", "ClathrateEnder", "Cobalt", "Ardite"] as String[];
var oreArray as IOreDict[];
var oreHash as IOreDict[String];
for i, ore in oreString{
	oreArray[i] = oreDict.get("ore" + ore);
	oreHash[ore] =  oreArray[i]);
}

/*Clusters*/
var clusterString = ["Aluminium", "Ardite", "AstralStarmetal", "Boron", "Cobalt", "Draconium", "Iridium", "Lithium", "Magnesium", "Mithril", "Nickel", "Osmium", "Platinum", "Tungsten", "Uranium", "Yellorium", "Iron", "Gold", "Copper", "Tin", "Silver", "Lead", "Cinnabar", "Quartz"] as String[];
var clusterArray as IOreDict[];
var clusterHash as IOreDict[String];
for i, cluster in clusterString{
	clusterArray[i] = oreDict.get("cluster" + cluster);
	clusterHash[cluster] = clusterArray[i];
}

/*Ingots*/
var ingotString = ["Iron", "Gold", "AstralStarmetal", "CrystalMatrix", "CosmicNeutronium", "Infinity", "ColdIron", "Manasteel", "Terrasteel", "ElvenElementium", "Gaia", "DraconiumAwakened", "Draconium", "CrudeSteel", "CrystallineAlloy", "MelodicAlloy", "StellarAlloy", "CrystallinePinkSlime", "EnergeticSilver", "ElectricalSteel", "EnergeticAlloy", "VibrantAlloy", "RedstoneAlloy", "ConductiveIron", "PulsatingIron", "DarkSteel", "Soularium", "EndSteel", "ConstructionAlloy", "IronAlloy", "EnderiumBase", "BrickNetherGlazed", "BlackIron", "Crystaltine", "Ultimate", "Blutonium", "Cyanite", "Ludicrite", "Yellorium", "HOPGraphite", "RefinedObsidian", "Osmium", "RefinedGlowstone", "Insanium", "BaseEssence", "Inferium", "Prudentium", "Intermedium", "Superium", "Supremium", "Soulium", "Tough", "HardCarbon", "MagnesiumDiboride", "LithiumManganeseDioxide", "Shibuichi", "TinSilver", "LeadPlatinum", "Extreme", "Thermoconducting", "Zircaloy", "SiliconCarbide", "SiCSiCCMC", "HSLASteel", "Boron10", "Boron11", "Thorium", "Uranium", "Boron", "Lithium", "Magnesium", "Graphite", "Beryllium", "Zirconium", "Manganese", "ThoriumOxide", "UraniumOxide", "ManganeseOxide", "ManganeseDioxide", "Lithium6", "Lithium7", "Chocolate", "Alumite", "Mirion", "Osglosglas", "Osmiridium", "IronCompressed", "Psi", "EbonyPsi", "IvoryPsi", "ElectrumFlux", "GelidEnderium", "_dark_soularium", "DarkSoularium", "Brass", "Chrome", "Titanium", "Tungsten", "HotTungstensteel", "Tungstensteel", "Zinc", "AdvancedAlloy", "MixedMetal", "IridiumAlloy", "Thaumium", "Void", "Adaminite", "Mithminite", "Mithrillium", "Copper", "Tin", "Silver", "Lead", "Aluminium", "Nickel", "Platinum", "Iridium", "Mithril", "Constantan", "Bronze", "Electrum", "Invar", "Signalum", "Lumium", "Enderium", "Cobalt", "Ardite", "Manyullyn", "Knightslime", "Pigiron", "AluBrass", ] as String[];
var ingotArray as IOreDict[];
var ingotHash as IOreDict[String];
for i, ingot in ingotString{
	ingotArray[i] = oreDict.get("ingot" + ingot);
	ingotHash[ingot] = ingotArray[i];
}
val gaiaIngot = <ore:gaiaIngot>;

/*Gems*/
var gemString = ["Coal", "Diamond", "Lapis", "Emerald", "Quartz", "Prismarine", "QuartzBlack", "CertusQuartz", "ChargedCertusQuartz", "Fluix", "Aquamarine", "Garnet", "Nuummite", "Tigereye", "Tourmaline", "Bloodstone", "Jasper", "Malachite", "Amethyst", "Alexandrite", "Obsidian", "Amber", "Pearl", "Redstone", "Moon", "Apatite", "Rhodocrosite", "BoronNitride", "Flourite", "Villaumite", "Carobbiite", "BoronArsenide", "Psi", "DimensionalShard", "CrystalFlux", "Gelid", "Ruby", "Sapphire", "Peridot", "RedGarnet", "YellowGarnet", "Amber"] as String[];
var gemArray as IOreDict[];
var gemHash as IOreDict[String];
for i, gem in gemString{
	gemArray[i] = oreDict.get("gem" + gem);
	gemHash[gem] = gemArray[i];
}
val quicksilver = <ore:quicksilver>;

/*Crystals*/
var crystalString = ["CertusQuartz", "ChargedCertusQuartz", "Fluix", "PureCertusQuartz", "PureNetherQuartz", "PureFluix", "Aethium", "Erodium", "Ionite", "Kyronite", "Litherite", "Lonsdaleite", "Pladium", "Slag", "SlagRich", "Cinnabar"] as String[];
var crystalArray as IOreDict[];
var crystalHash as IOreDict[String];
for i, crystal in crystalString{
	crystalArray[i] = oreDict.get("crystal" + crystal);
	crystalHash[crystal] = crystalArray[i];
}

/*Ender IO Crystals*/
var enderIOCrystalString = ["PulsatingCrystal", "VibrantCrystal", "EnderCrystal", "AttractorCrystal", "WeatherCrystal", "PrecientCrystal"] as String[];
var enderIOCrystalArray as IOreDict[];
var enderIOCrystalHash as IOreDict[String];
for i, enderIOCrystal in enderIOCrystalString{
	enderIOCrystalArray[i] = oreDict.get("enderIOCrystal" + enderIOCrystal);
	enderIOCrystalHash[enderIOCrystal] = enderIOCrystalArray[i];
}

/*Clathrates*/
var clathrateString = ["Oil", "Redstone", "Glowstone", "Ender"] as String[];
var clathrateArray as IOreDict[];
var clathrateHash as IOreDict[String];
for i, clathrate in clathrateString{
	clathrateArray[i] = oreDict.get("clathrate" + clathrate);
	clathrateHash[clathrate] = clathrateArray[i];
}

/*Dusts*/
var dustString = ["Redstone", "Glowstone", "Blaze", "Prismarine", "Pyrotheum", "Cryotheum", "Aerotheum", "Petrotheum", "Mana", "Blizz", "Blitz", "Basalz", "QuartzBlack", "Fluix", "AstralStarmetal", "Draconium", "Bedrock", "Wheat", "Soularium", "Lunar", "Blutonium", "Cyanite", "Ludicrite", "Yellorium", "Coke", "HOPGraphite", "Amber", "Apatite", "Ardite", "ChargedCertusQuartz", "Cobalt", "Osmium", "Thorium", "Uranium", "Boron", "Lithium", "Graphite", "Beryllium", "Zirconium", "ThoriumOxide", "UraniumOxide", "ManganeseOxide", "ManganeseDioxide", "Rhodocrosite", "BoronNitride", "Flourite", "Villaumite", "Carobbiite", "ElectrumFlux", "GelidEnderium", "Almandine", "Aluminium", "Aluminum", "Andradite", "Basalt", "Bauxite", "Brass", "Bronze", "Calcite", "Charcoal", "Chrome", "Cinnabar", "Coal", "Copper", "DarkAshes", "Diamond", "EnderEye", "EnderPearl", "Ender", "Endstone", "Flint", "Galena", "Gold", "Grossular", "Invar", "Iron", "Lazurite", "Lead", "Magnesium", "Manganese", "Marble", "Netherrack", "Nickel", "Obsidian", "Peridot", "Phosphorous", "Platinum", "Pyrite", "Pyrope", "RedGarnet", "Ruby", "Sapphire", "Wood", "Sodalite", "Spessartite", "Sphalerite", "Steel", "Tin", "Titanium", "Tungsten", "Uvarovite", "YellowGarnet", "Zinc", "Andesite", "Diorite", "Granite", "Constantan", "Signalum", "Lumium", "Enderium"] as String[];
var dustArray as IOreDict[];
var dustHash as IOreDict[String];
for i, dust in dustString{
	dustArray[i] = oreDict.get("dust" + dust);
	dustHash[dust] = dustArray[i];
}

/*Plates*/

/*Dense Plates*/

/*Rods*/

/*Gears*/

/*Blocks*/

/*Furnace Arrays*/
furnaceString = [] as String[];
furnaceSmelt = [] as IOreDict[IOreDict[]];
for smelt in furnaceString{
	furnaceSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
blastStandardString = [] as String[];
blastStandardSmelt = [] as IOreDict[IOreDict[]];
for smelt in blastStandardString{
	blastStandardSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
blastReinforcedString = [] as String[];
BlastReinforcedSmelt = [] as IOreDict[IOreDict[]];
for smelt in blastReinforcedString{
	BlastReinforcedSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
BlastAdvancedString = [] as String[];
BlastAdvancedSmelt = [] as IOreDict[IOreDict[]];
for smelt in BlastAdvancedString{
	BlastAdvancedSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
arcString = [] as String[];
arcSmelt = [] as IOreDict[IOreDict[]];
for smelt in arcString{
	arcSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
inductionString = [] as String[];
inductionSmelt = [] as IOreDict[IOreDict[]];
for smelt in inductionString{
	inductionSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
/*Recipe Removals*/
/*Remove Furnace, Blast Furnace, Arc Furnace, Induction Smelter Recipes for Ingots */
for ingot in ingotArray{
	for itemstack in ingot{
		furnace.remove(itemstack);
		mods.techreborn.BlastFurnace.removeRecipe(itemstack);
		mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
		mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack);
	}
}

/*Remove Furnace, Blast Furnace, Arc Furnace, Induction Smelter Recipes for Ingots */
for gem in gemArray{
	for itemstack in gem{
		furnace.remove(itemstack);
		mods.techreborn.BlastFurnace.removeRecipe(itemstack);
		mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
		mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack);
	}
}
furnace.remove(quicksilver);
mods.techreborn.BlastFurnace.removeRecipe(quicksilver);
mods.immersiveengineering.ArcFurnace.removeRecipe(quicksilver);
mods.thermalexpansion.InductionSmelter.removeRecipe(quicksilver);

/*Recipe Additions for Ingots*/
for toSmelt, smelt in furnaceSmelt{
		for itemstack in smelt{
			furnace.addRecipe(itemstack, toSmelt[0], 0.050000);
			furnace.addRecipe(itemstack, toSmelt[1], 0.000000);
			furnace.addRecipe(itemstack * 2, toSmelt[2], 0.100000);
		}
	} 
}

