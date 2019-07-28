/*Incomplete:
Blast Furnace, Induction Smelter, Arc Furnace Ingot Recipes
*/

/*Unknown:
oreDict Definition: Add dustCocoa, dustCalciumSulfate, dustCrystalBinder, dustEnergetic, dustSodiumFlouride, dustPotassiumFlouride, dustSodiumHydroxide, dustPotassiumHydroxide, dustBorax, dustDimensional, dustCarbonManaganese, dustAlugentum, dustArsenic;
oreDict Definition: dustSalt from Bewitchment, Immersive Tech or Mekanism;
oreDict Definition: dustAsh from Forestry or Tech Reborn;
oreDicts: dustSulfur VS dustSulphur; dustNiter VS dustSaltpeter;
*/

#debug

/*Defining Values/ Variables*/
val sand = <minecraft:sand>;

/*Assigning a Hashmap and Array for each OreDict*/
/*Ores*/
var oreString = ["Gold", "Iron", "Lapis", "Diamond", "Redstone", "Emerald", "Quartz", "QuartzBlack", "CertusQuartz", "ChargedCertusQuartz", "AstralStarmetal", "Aquamarine", "Garnet", "Nuummite", "Tigereye", "Tourmaline", "Bloodstone", "Jasper", "Malachite", "Amethyst", "Alexandrite", "Salt", "Draconium", "Anglesite", "Benitoite", "Yellorite", "Yellorium", "Apatite", "Osmium", "EndInferium", "EndProsperity", "Inferium", "NetherInferium", "NetherProsperity", "Prosperity", "Thorium", "Uranium", "Boron", "Lithium", "Magnesium", "DimensionalShard", "Galena", "Iridium", "Ruby", "Sapphire", "Bauxite", "Pyrite", "Cinnabar", "Sphalerite", "Tungsten", "Sheldonite", "Peridot", "Sodalite", "CrystalAir", "CrystalWater", "CrystalFire", "CrystalOrder", "CrystalEntropy", "CrystalEarth", "CrystalTaint", "Cinnabar", "Amber", "Copper", "Tin", "Silver", "Lead", "Aluminium", "Nickel", "Platinum", "Iridium", "Mithril", "ClathrateOilSand", "ClathrateOilShale", "ClathrateRedstone", "ClathrateGlowstone", "ClathrateEnder", "Cobalt", "Ardite"] as string[];
var oreHash as IOreDictEntry[string];
for ore in oreString{
	oreHash[ore] = oreDict.get("ore" + ore);
}

/*Clusters*/
var clusterString = ["Aluminium", "Ardite", "AstralStarmetal", "Boron", "Cobalt", "Draconium", "Iridium", "Lithium", "Magnesium", "Mithril", "Nickel", "Osmium", "Platinum", "Tungsten", "Uranium", "Yellorium", "Iron", "Gold", "Copper", "Tin", "Silver", "Lead", "Cinnabar", "Quartz"] as string[];
var clusterHash as IOreDictEntry[string];
for cluster in clusterString{
	clusterHash[cluster] = oreDict.get("cluster" + cluster);
}

/*Ingots*/
var ingotString = ["Iron", "Gold", "AstralStarmetal", "CrystalMatrix", "CosmicNeutronium", "Infinity", "ColdIron", "Manasteel", "Terrasteel", "ElvenElementium", "Gaia", "DraconiumAwakened", "Draconium", "CrudeSteel", "CrystallineAlloy", "MelodicAlloy", "StellarAlloy", "CrystallinePinkSlime", "EnergeticSilver", "ElectricalSteel", "EnergeticAlloy", "VibrantAlloy", "RedstoneAlloy", "ConductiveIron", "PulsatingIron", "DarkSteel", "Soularium", "EndSteel", "ConstructionAlloy", "IronAlloy", "EnderiumBase", "BrickNetherGlazed", "BlackIron", "Crystaltine", "Ultimate", "Blutonium", "Cyanite", "Ludicrite", "Yellorium", "HOPGraphite", "RefinedObsidian", "Osmium", "RefinedGlowstone", "Insanium", "BaseEssence", "Inferium", "Prudentium", "Intermedium", "Superium", "Supremium", "Soulium", "Tough", "HardCarbon", "MagnesiumDiboride", "LithiumManganeseDioxide", "Shibuichi", "TinSilver", "LeadPlatinum", "Extreme", "Thermoconducting", "Zircaloy", "SiliconCarbide", "SiCSiCCMC", "HSLASteel", "Boron10", "Boron11", "Thorium", "Uranium", "Boron", "Lithium", "Magnesium", "Graphite", "Beryllium", "Zirconium", "Manganese", "ThoriumOxide", "UraniumOxide", "ManganeseOxide", "ManganeseDioxide", "Lithium6", "Lithium7", "Chocolate", "Alumite", "Mirion", "Osglosglas", "Osmiridium", "IronCompressed", "Psi", "EbonyPsi", "IvoryPsi", "ElectrumFlux", "GelidEnderium", "_dark_soularium", "DarkSoularium", "Brass", "Chrome", "Titanium", "Tungsten", "HotTungstensteel", "Tungstensteel", "Zinc", "AdvancedAlloy", "MixedMetal", "IridiumAlloy", "Thaumium", "Void", "Adaminite", "Mithminite", "Mithrillium", "Copper", "Tin", "Silver", "Lead", "Aluminium", "Nickel", "Platinum", "Iridium", "Mithril", "Constantan", "Bronze", "Electrum", "Invar", "Signalum", "Lumium", "Enderium", "Cobalt", "Ardite", "Manyullyn", "Knightslime", "Pigiron", "AluBrass", ] as string[];
var ingotHash as IOreDictEntry[string];
for ingot in ingotString{ 
	ingotHash[ingot] = oreDict.get("ingot" + ingot);
}
val gaiaIngot = <ore:gaiaIngot>;

/*Gems*/
var gemString = ["Coal", "Diamond", "Lapis", "Emerald", "Quartz", "Prismarine", "QuartzBlack", "CertusQuartz", "ChargedCertusQuartz", "Fluix", "Aquamarine", "Garnet", "Nuummite", "Tigereye", "Tourmaline", "Bloodstone", "Jasper", "Malachite", "Amethyst", "Alexandrite", "Obsidian", "Amber", "Pearl", "Redstone", "Moon", "Apatite", "Rhodocrosite", "BoronNitride", "Flourite", "Villaumite", "Carobbiite", "BoronArsenide", "Psi", "DimensionalShard", "CrystalFlux", "Gelid", "Ruby", "Sapphire", "Peridot", "RedGarnet", "YellowGarnet", "Amber"] as string[];
var gemHash as IOreDictEntry[string];
for gem in gemString{
	gemHash[gem] = oreDict.get("gem" + gem);
}
val quicksilver = oreDict.get("quicksilver");

/*Crystals*/
var crystalString = ["CertusQuartz", "ChargedCertusQuartz", "Fluix", "PureCertusQuartz", "PureNetherQuartz", "PureFluix", "Aethium", "Erodium", "Ionite", "Kyronite", "Litherite", "Lonsdaleite", "Pladium", "Slag", "SlagRich", "Cinnabar"] as string[];
var crystalHash as IOreDictEntry[string];
for crystal in crystalString{
	crystalHash[crystal] = oreDict.get("crystal" + crystal);
}

/*Ender IO Crystals*/
var enderIOCrystalString = ["PulsatingCrystal", "VibrantCrystal", "EnderCrystal", "AttractorCrystal", "WeatherCrystal", "PrecientCrystal"] as string[];
var enderIOCrystalHash as IOreDictEntry[string];
for enderIOCrystal in enderIOCrystalString{
	enderIOCrystalHash[enderIOCrystal] = oreDict.get("item" + enderIOCrystal);
}

/*Clathrates*/
var clathrateString = ["Oil", "Redstone", "Glowstone", "Ender"] as string[];
var clathrateHash as IOreDictEntry[string];
for clathrate in clathrateString{ 
	clathrateHash[clathrate] = oreDict.get("clathrate" + clathrate);
}

/*Dusts*/
var dustString = ["Redstone", "Glowstone", "Blaze", "Prismarine", "Pyrotheum", "Cryotheum", "Aerotheum", "Petrotheum", "Mana", "Blizz", "Blitz", "Basalz", "QuartzBlack", "Fluix", "AstralStarmetal", "Draconium", "Bedrock", "Wheat", "Soularium", "Lunar", "Blutonium", "Cyanite", "Ludicrite", "Yellorium", "Coke", "HOPGraphite", "Amber", "Apatite", "Ardite", "ChargedCertusQuartz", "Cobalt", "Osmium", "Thorium", "Uranium", "Boron", "Lithium", "Graphite", "Beryllium", "Zirconium", "ThoriumOxide", "UraniumOxide", "ManganeseOxide", "ManganeseDioxide", "Rhodocrosite", "BoronNitride", "Flourite", "Villaumite", "Carobbiite", "ElectrumFlux", "GelidEnderium", "Almandine", "Aluminium", "Aluminum", "Andradite", "Basalt", "Bauxite", "Brass", "Bronze", "Calcite", "Charcoal", "Chrome", "Cinnabar", "Coal", "Copper", "DarkAshes", "Diamond", "EnderEye", "EnderPearl", "Ender", "Endstone", "Flint", "Galena", "Gold", "Grossular", "Invar", "Iron", "Lazurite", "Lead", "Magnesium", "Manganese", "Marble", "Netherrack", "Nickel", "Obsidian", "Peridot", "Phosphorous", "Platinum", "Pyrite", "Pyrope", "RedGarnet", "Ruby", "Sapphire", "Wood", "Sodalite", "Spessartite", "Sphalerite", "Steel", "Tin", "Titanium", "Tungsten", "Uvarovite", "YellowGarnet", "Zinc", "Andesite", "Diorite", "Granite", "Constantan", "Signalum", "Lumium", "Enderium"] as string[];
var dustHash as IOreDictEntry[string];
for dust in dustString{
	dustHash[dust] = dustArray[i];
}

/*Plates*/

/*Dense Plates*/

/*Rods*/

/*Gears*/

/*Blocks*/

/*Furnace Arrays*/
primaryFurnaceString = [] as string[];
secondaryFurnaceString = [] as string[];
furnaceSmelt = [] as IOreDictEntry[IOreDictEntry[]][];
for i, result in furnaceString{
	furnaceSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = [oreDict.get("ingot" + result), oreDict.get(byproductString[i])
}
blastStandardString = [] as string[];
blastStandardSmelt = [] as IOreDictEntry[IOreDictEntry[]];
for smelt in blastStandardString{
	blastStandardSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
blastReinforcedString = [] as string[];
BlastReinforcedSmelt = [] as IOreDictEntry[IOreDictEntry[]];
for smelt in blastReinforcedString{
	BlastReinforcedSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
BlastAdvancedString = [] as string[];
BlastAdvancedSmelt = [] as IOreDictEntry[IOreDictEntry[]];
for smelt in BlastAdvancedString{
	BlastAdvancedSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
arcString = [] as string[];
arcSmelt = [] as IOreDictEntry[IOreDictEntry[]];
for smelt in arcString{
	arcSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
inductionString = [] as string[];
inductionSmelt = [] as IOreDictEntry[IOreDictEntry[]];
for smelt in inductionString{
	inductionSmelt[[oreDict.get("ore" + smelt), oreDict.get("cluster" + smelt), oreDict.get("dust" + smelt)]] = oreDict.get("ingot" + smelt) 
}
/*Recipe Removals*/
/*Remove Furnace, Blast Furnace, Arc Furnace, Induction Smelter Recipes for Ingots */
for ingot in ingotHash{
	for itemstack in ingot{
		furnace.remove(itemstack);
		mods.techreborn.blastFurnace.removeRecipe(itemstack);
		mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
		mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack);
	}
}

/*Remove Furnace, Blast Furnace, Arc Furnace, Induction Smelter Recipes for Ingots */
for gem in gemHash{
	for itemstack in gem{
		furnace.remove(itemstack);
		mods.techreborn.blastFurnace.removeRecipe(itemstack);
		mods.immersiveengineering.ArcFurnace.removeRecipe(itemstack);
		mods.thermalexpansion.InductionSmelter.removeRecipe(itemstack);
	}
}
furnace.remove(quicksilver);
mods.techreborn.blastFurnace.removeRecipe(quicksilver);
mods.immersiveengineering.ArcFurnace.removeRecipe(quicksilver);
mods.thermalexpansion.InductionSmelter.removeRecipe(quicksilver);

/*Recipe Additions for Ingots*/
for toSmelt, smelt in furnaceSmelt{
	for itemstack in smelt{
		furnace.addRecipe(itemstack, toSmelt[0], 0.050000);
		furnace.addRecipe(itemstack, toSmelt[1], 0.000000);
		furnace.addRecipe(itemstack * 2, toSmelt[2], 0.100000);
		mods.techreborn.blastFurnace.addRecipe(itemstack, techreborn:smalldust:15, toSmelt[0], null, 80, 128, 1200);
		mods.techreborn.blastFurnace.addRecipe(itemstack, null, toSmelt[1], null, 50, 128, 1000);
		mods.techreborn.blastFurnace.addRecipe(itemstack,null
	}
}

for toSmelt, smelt in blastStandardSmelt{
		for itemstack in smelt{
			
		}
	} 
for toSmelt, smelt in blastReinforcedSmelt{
		for itemstack in smelt{
			
		}
	} 
}
for toSmelt, smelt in blastAdvancedSmelt{
		for itemstack in smelt{
			
		}
	} 
}
for toSmelt, smelt in arcSmelt{
		for itemstack in smelt{
			
		}
	} 
}
for toSmelt, smelt in inductionSmelt{
		for itemstack in smelt{
			
		}
	} 
}
