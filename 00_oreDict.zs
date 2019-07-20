/*Incomplete:
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
var furnaceIngotString = [] as String[];
var furnaceIngotHash as IOreDict[String];
for i, furnaceIngot in furnaceIngotString{
	furnaceIngotHash[furnaceIngot] = oreDict.get("ingot" + ingot);
}
var blastStandardIngotString = [] as String[];
var blastStandardIngotHash as IOreDict[String];
for i, blastStandardIngot in blastStandardIngotString{
	blastStandardIngotHash[blastStandardIngot] = oreDict.get("ingot" + ingot);
}
var blastReinforcedIngotString = [] as String[];
var blastReinforcedIngotHash as IOreDict[String];
for i, blastReinforcedIngot in blastReinforcedIngotString{
	blastReinforcedIngotHash[blastReinforcedIngot] = oreDict.get("ingot" + ingot);
}
var blastAdvancedIngotString = [] as String[];
var blastAdvancedIngotHash as IOreDict[String];
for i, blastAdvancedIngot in blastAdvancedIngotString{
	blastAdvancedIngotHash[blastAdvancedIngot] = oreDict.get("ingot" + ingot);
}
var arcIngotString = [] as String[];
var arcIngotHash as IOreDict[String];
for i, arcIngot in arcIngotString{
	arcIngotHash[arcIngot] = oreDict.get("ingot" + ingot);
}
var inductionIngotString = [] as String[];
var inductionIngotHash as IOreDict[String];
for i, inductionIngot in inductionIngotString{
	inductionIngotHash[inductionIngot] = oreDict.get("ingot" + ingot);
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

/*OreDict Modifications*/


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
/*Adding Recipes For Ingots (Machines)*/
/*Minecraft*/
/*Iron Ingot*/
furnace.addRecipe(<minecraft:iron_ingot>, oreIron);
furnace.addRecipe(<minecraft:iron_ingot>, dustIron);
furnace.addRecipe(<minecraft:iron_ingot> * 2, clusterIron);

/*Gold Ingot*/
furnace.addRecipe(<minecraft:gold_ingot>, oreGold);
furnace.addRecipe(<minecraft:gold_ingot>, dustGold);
furnace.addRecipe(<minecraft:gold_ingot> * 2, clusterGold);


/*Astral Sorcery*/
/*Astral Starmetal Ingot*/
mods.immersiveengineering.ArcFurnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, dustAstralStarmetal, <immersiveengineering:material:7>, 200, 1024, [null], "Ores");
mods.techreborn.BlastFurnace.addRecipe
mods.thermalexpansion.InductionSmelter.addRecipe(<astralsorcery:itemcraftingcomponent:1>, dustAstralStarmetal, sand, 8000);
mods.immersiveengineering.ArcFurnace.addRecipe(<astralsorcery:itemcraftingcomponent:1> * 2, clusterAstralStarmetal, <immersiveengineering:material:7>, 200, 1024, [null], "Clusters");
mods.thermalexpansion.InductionSmelter.addRecipe(<astralsorcery:itemcraftingcomponent:1> * 2, clusterAstralStarmetal, sand, 8000);


/*Avaritia*/
/*Crystal Matrix Ingot*/

/*Cosmic Neutronium Ingot*/

/*Infinity Ingot*/



/*Draconic Evolution*/
/*Draconium Ingot*/
furnace.addRecipe(<draconicevolution:draconium_ingot>, oreDraconium);
furnace.addRecipe(<draconicevolution:draconium_ingot>, dustDraconium);
furnace.addRecipe(<draconicevolution:draconium_ingot> * 2, clusterDraconium);


/*Mekanism*/
/*Osmium Ingot*/
furnace.addRecipe(<mekanism:ingot:1>, oreOsmium);
furnace.addRecipe(<mekanism:ingot:1>, dustOsmium);
furnace.addRecipe(<mekanism:ingot:1> * 2, clusterOsmium);


/*Nuclearcraft*/
/*Thorium Ingot*/
furnace.addRecipe(<nuclearcraft:ingot:3>, oreThorium);
furnace.addRecipe(<nuclearcraft:ingot:3>, dustThorium);
furnace.addRecipe(<nuclearcraft:ingot:3> * 2, clusterThorium);
furnace.addRecipe(<nuclearcraft:ingot:3>, ingotThoriumOxide);

/*Uranium Ingot*/
furnace.addRecipe(<nuclearcraft:ingot:4>, oreUranium);
furnace.addRecipe(<nuclearcraft:ingot:4>, dustUranium);
furnace.addRecipe(<nuclearcraft:ingot:4> * 2, clusterUranium);
furnace.addRecipe(<nuclearcraft:ingot:4>, ingotUraniumOxide);

/*Boron Ingot*/
furnace.addRecipe(<nuclearcraft:ingot:5>, oreBoron);
furnace.addRecipe(<nuclearcraft:ingot:5>, dustBoron);
furnace.addRecipe(<nuclearcraft:ingot:5> * 2, clusterBoron);

/*Lithium Ingot*/
furnace.addRecipe(<nuclearcraft:ingot:6>, oreLithium);
furnace.addRecipe(<nuclearcraft:ingot:6>, dustLithium);
furnace.addRecipe(<nuclearcraft:ingot:6> * 2, clusterLithium);

/*Magnesium Ingot*/
furnace.addRecipe(<nuclearcraft:ingot:7>, oreMagnesium);
furnace.addRecipe(<nuclearcraft:ingot:7>, dustMagnesium);
furnace.addRecipe(<nuclearcraft:ingot:7> * 2, clusterMagnesium);

/*Graphite Ingot*/
furnace.addRecipe(<nuclearcraft:ingot:8>, dustGraphite);

/*Beryllium Ingot*/
furnace.addRecipe(<nuclearcraft:ingot:9>, dustBeryllium);

/*Zirconium Ingot*/
furnace.addRecipe(<nuclearcraft:ingot:10>, dustZirconium);

/*Magnesium Ingot*/
furnace.addRecipe(<nuclearcraft:ingot:11>, dustMagnesium);

/*Thorium Oxide Ingot*/
furnace.addRecipe(<nuclearcraft:ingot_oxide>, dustThoriumOxide);

/*Uranium Oxide Ingot*/
furnace.addRecipe(<nuclearcraft:ingot_oxide:1>, dustUraniumOxide);

/*Magnesium Oxide Ingot*/
furnace.addRecipe(<nuclearcraft:ingot_oxide:2>, dustMagnesiumOxide);
furnace.addRecipe(<nuclearcraft:ingot_oxide:2>, ingotMagnesiumDioxide);

/*Magnesium Dioxide Ingot*/
furnace.addRecipe(<nuclearcraft:ingot_oxide:3>, dustMagnesiumDioxide);


/*Tech Reborn*/
/*Brass Ingot*/
furnace.addRecipe(<techreborn:ingot:1>, dustBrass);

/*Chrome Ingot*/


/*Titanium Ingot*/


/*Tungsten Ingot*/
furnace.addRecipe(<techreborn:ingot:15>, dustTungsten);
furnace.addRecipe(<techreborn:ingot:15> * 2, clusterTungsten);

/*Tungstensteel Ingot*/



/*Copper Ingot*/
furnace.addRecipe(<thermalfoundation:material:128>, oreCopper);
furnace.addRecipe(<thermalfoundation:material:128>, dustCopper);
furnace.addRecipe(<thermalfoundation:material:128> * 2, clusterCopper);

/*Tin Ingot*/
furnace.addRecipe(<thermalfoundation:material:129>, oreTin);
furnace.addRecipe(<thermalfoundation:material:129>, dustTin);
furnace.addRecipe(<thermalfoundation:material:129> * 2, clusterTin);

/*Silver Ingot*/
furnace.addRecipe(<thermalfoundation:material:130, oreSilver);
furnace.addRecipe(<thermalfoundation:material:130, dustSilver);
furnace.addRecipe(<thermalfoundation:material:130> * 2, clusterSilver);

/*Lead Ingot*/
furnace.addRecipe(<thermalfoundation:material:131>, oreLead);
furnace.addRecipe(<thermalfoundation:material:131>, dustLead);
furnace.addRecipe(<thermalfoundation:material:131> * 2, clusterLead);

/*Aluminium Ingot*/
furnace.addRecipe(<thermalfoundation:material:132>, oreAluminium);
furnace.addRecipe(<thermalfoundation:material:132>, dustAluminium);
furnace.addRecipe(<thermalfoundation:material:132> * 2, clusterAluminium);

/*Platinum Ingot*/
furnace.addRecipe(<thermalfoundation:material:133>, orePlatinum);
furnace.addRecipe(<thermalfoundation:material:133>, dustPlatinum);
furnace.addRecipe(<thermalfoundation:material:133> * 2, clusterPlatinum);

/*Iridium Ingot*/
furnace.addRecipe(<thermalfoundation:material:134>, oreIridium);
furnace.addRecipe(<thermalfoundation:material:134>, dustIridium);
furnace.addRecipe(<thermalfoundation:material:134> * 2, clusterIridium);

/*Mana Infused Ingot*/
furnace.addRecipe(<thermalfoundation:material:135>, oreMithril);
furnace.addRecipe(<thermalfoundation:material:135>, dustMithril);
furnace.addRecipe(<thermalfoundation:material:135> * 2, clusterMithril);

/*Steel Dust*/


/*Electrum Ingot*/
furnace.addRecipe(<thermalfoundation:material:161>, dustElectrum);

/*Invar Ingot*/
furnace.addRecipe(<thermalfoundation:material:162>, dustInvar);

/*Bronze Ingot*/
furnace.addRecipe(<thermalfoundation:material:163>, dustBronze);

/*Constantan Ingot*/
furnace.addRecipe(<thermalfoundation:material:164>, dustConstantan);

/*Signalum Ingot*/


/*Lumium Ingot*/


/*Enderium Ingot*/


/*Tinker's Construct*/
/*Cobalt Ingot*/


/*Ardite Ingot*/
