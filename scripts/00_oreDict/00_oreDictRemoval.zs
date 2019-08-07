#debug
#priority -0000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

val arrayRemoveDictOre = [

	<bewitchment:silver_ore>, 
	<cyclicmagic:end_coal_ore>, 
	<cyclicmagic:end_diamond_ore>, 
	<cyclicmagic:end_emerald_ore>, 
	<cyclicmagic:end_gold_ore>, 
	<cyclicmagic:end_iron_ore>, 
	<cyclicmagic:end_lapis_ore>, 
	<cyclicmagic:end_redstone_ore>, 
	<cyclicmagic:nether_coal_ore>, 
	<cyclicmagic:nether_diamond_ore>, 
	<cyclicmagic:nether_emerald_ore>, 
	<cyclicmagic:nether_gold_ore>, 
	<cyclicmagic:nether_iron_ore>, 
	<cyclicmagic:nether_lapis_ore>, 
	<cyclicmagic:nether_redstone_ore>, 
	<embers:ore_aluminum>, 
	<embers:ore_copper>, 
	<embers:ore_lead>, 
	<embers:ore_nickel>, 
	<embers:ore_lead>, 
	<embers:ore_quartz>, 
	<embers:ore_silver>, 
	<embers:ore_tin>, 
	<forestry:resources:1>, 
	<forestry:resources:2>, 
	<immersiveengineering:ore>, 
	<immersiveengineering:ore:1>, 
	<immersiveengineering:ore:2>, 
	<immersiveengineering:ore:3>, 
	<immersiveengineering:ore:4>, 
	<immersiveengineering:ore:5>, 
	<mekanism:oreblock:1>, 
	<mekanism:oreblock:2>, 
	<mysticalworld:amethyst_ore>, 
	<mysticalworld:copper_ore>, 
	<mysticalworld:silver_ore>, 
	<nuclearcraft:ore>, 
	<nuclearcraft:ore:1>, 
	<nuclearcraft:ore:2>, 
	<techreborn:ore:1>, 
	<techreborn:ore2>, 
	<techreborn:ore:12>, 
	<techreborn:ore:13>, 
	<techreborn:ore2:1>, 
	<thaumcraft:ore_cinnabar>, 
	<tconstruct:metal:0>

] as IItemStack[];

val arrayRemoveDictCluster = [


] as IItemStack[];

val arrayRemoveDictIngot = [

	<botania:manaresource:14>, 
	<bewitchment:silver_ingot>, 
	<bigreactors:ingotgraphite>, 
	<bigreactors:ingotsteel>, 
	<embers:ingot_aluminum>, 
	<embers:ingot_bronze>, 
	<embers:ingot_copper>, 
	<embers:ingot_dawnstone>, 
	<embers:ingot_electrum>, 
	<embers:ingot_lead>, 
	<embers:ingot_nickel>, 
	<embers:ingot_silver>, 
	<embers:ingot_tin>, 
	<forestry:ingot_bronze>, 
	<forestry:ingot_copper>, 
	<forestry:ingot_tin>, 
	<immersiveengineering:metal>, 
	<immersiveengineering:metal:1>, 
	<immersiveengineering:metal:2>, 
	<immersiveengineering:metal:3>, 
	<immersiveengineering:metal:4>, 
	<immersiveengineering:metal:5>, 
	<immersiveengineering:metal:6>, 
	<immersiveengineering:metal:7>, 
	<immersiveengineering:metal:8>, 
	<mekanism:ingot:2>, 
	<mekanism:ingot:4>, 
	<mekanism:ingot:5>, 
	<mekanism:ingot:6>, 
	<mysyicalworld:copper_ingot>, 
	<mysticalworld:silver_ingot>, 
	<nuclearcraft:alloy>, 
	<nuclearcraft:alloy:5>, 
	<nuclearcraft:ingot>, 
	<nuclearcraft:ingot:1>, 
	<nuclearcraft:ingot:2>, 
	<nuclearcraft:ingot:12>, 
	<nuclearcraft:ingot:13>, 
	<planarartifice:alkimium_ingot>, 
	<plustic:invaringot>, 
	<simplyjetpacks:metaitemmods:3>, 
	<techreborn:ingot>, 
	<techreborn:ingot:2>, 
	<techreborn:ingot:4>, 
	<techreborn:ingot:5>, 
	<techreborn:ingot:6>, 
	<techreborn:ingot:7>, 
	<techreborn:ingot:8>, 
	<techreborn:ingot:9>, 
	<techreborn:ingot:10>, 
	<techreborn:ingot:11>, 
	<techreborn:ingot:12>, 
	<techreborn:ingot:13>, 
	<tcomplement:materials:10>

] as IItemStack[];

val arrayRemoveDictGem = [

	<cyclicmagic:crystallized_amber>, 
	<cyclicmagic:crystallized_obsidian>, 
	<thaumcraft:quicksilver>
	
] as IItemStack[];

val arrayRemoveDictCrystal = [


] as IItemStack[];

val arrayRemoveDictDust = [
	
	<actuallyadditions:item_dust>, 
	<actuallyadditions:item_dust:1>, 
	<actuallyadditions:item_dust:2>, 
	<actuallyadditions:item_dust:3>, 
	<actuallyadditions:item_dust:4>, 
	<actuallyadditions:item_dust:5>, 
	<actuallyadditions:item_dust:6>, 
	<appliedenergistics2:material:3>, 
	<appliedenergistics2:material:46>, 
	<appliedenergistics2:material:49>, 
	<appliedenergistics2:material:51>, 
	<extratrees:misc>, 
	<bloodmagic:component:19>, 
	<bloodmagic:component:20>, 
	<bloodmagic:component:21>, 
	<bloodmagic:component:23>, 
	<bloodmagic:component:24>, 
	<enderio:item_material:21>, 
	<enderio:item_material:23>, 
	<enderio:item_material:24>, 
	<enderio:item_material:25>, 
	<enderio:item_material:26>, 
	<enderio:item_material:27>, 
	<enderio:item_material:28>, 
	<enderio:item_material:29>, 
	<enderio:item_material:30>, 
	<enderio:item_material:31>, 
	<enderio:item_material:32>, 
	<enderio:item_material:33>, 
	<bigreactors:dustgraphite>, 
	<bigreactors:duststeel>, 
	<forestry:ash>, 
	<immersiveengineering:material:24>, 
	<immersiveengineering:material:25>, 
	<immersiveengineering:metal:9>, 
	<immersiveengineering:metal:10>, 
	<immersiveengineering:metal:11>, 
	<immersiveengineering:metal:12>, 
	<immersiveengineering:metal:13>, 
	<immersiveengineering:metal:14>, 
	<immersiveengineering:metal:15>, 
	<immersiveengineering:metal:16>, 
	<immersiveengineering:metal:17>, 
	<immersiveengineering:metal:18>, 
	<immersiveengineering:metal:19>, 
	<immersivetech:material>, 
	<mekanism:dust>, 
	<mekanism:dust:1>, 
	<mekanism:dust:3>, 
	<mekanism:dust:4>, 
	<mekanism:dust:5>, 
	<mekanism:dust:6>, 
	<mekanism:otherdust>, 
	<mekanism:otherdust:1>, 
	<mekanism:otherdust:2>, 
	<mekanism:otherdust:3>, 
	<mekanism:otherdust:4>, 
	<mekanism:otherdust:6>, 
	<mekanism:salt>, 
	<mekanism:sawdust>, 
	<mysticalworld:copper_dust>, 
	<mysticalworld:gold_dust>, 
	<mysticalworld:iron_dust>, 
	<mysticalworld:silver_dust>, 
	<nuclearcraft:dust>, 
	<nuclearcraft:dust:1>, 
	<nuclearcraft:dust:2>, 
	<nuclearcraft:dust:7>, 
	<nuclearcraft:dust:12>, 
	<nuclearcraft:dust:13>, 
	<nuclearcraft:gem_dust>, 
	<nuclearcraft:gem_dust:2>, 
	<nuclearcraft:gem_dust:3>, 
	<nuclearcraft:gem_dust:6>, 
	<nuclearcraft:gem_dust:7>, 
	<nuclearcraft:gem_dust:11>, 
	<thermalfoundation:material>, 
	<thermalfoundation:material:1>, 
	<thermalfoundation:material:64>, 
	<thermalfoundation:material:65>, 
	<thermalfoundation:material:66>, 
	<thermalfoundation:material:67>, 
	<thermalfoundation:material:68>, 
	<thermalfoundation:material:69>, 
	<thermalfoundation:material:70>, 
	<thermalfoundation:material:71>, 
	<thermalfoundation:material:96>, 
	<thermalfoundation:material:97>, 
	<thermalfoundation:material:98>, 
	<thermalfoundation:material:99>, 
	<thermalfoundation:material:768>, 
	<thermalfoundation:material:769>, 
	<thermalfoundation:material:770>, 
	<thermalfoundation:material:800>, 
	
] as IItemStack[];

val arrayRemoveDictPlate = [

	<embers:plate_aluminum>, 
	<embers:plate_bronze>, 
	<embers:plate_copper>, 
	<embers:plate_electrum>, 
	<embers:plate_gold>, 
	<embers:plate_iron>, 
	<embers:plate_lead>, 
	<embers:plate_nickel>, 
	<embers:plate_silver>, 
	<embers:plate_tin>, 
	<immersiveengineering:metal:30>, 
	<immersiveengineering:metal:31>, 
	<immersiveengineering:metal:32>, 
	<immersiveengineering:metal:33>, 
	<immersiveengineering:metal:34>, 
	<immersiveengineering:metal:36>, 
	<immersiveengineering:metal:37>, 
	<immersiveengineering:metal:38>, 
	<immersiveengineering:metal:39>, 
	<immersiveengineering:metal:40>, 
	<planarartifice:alkimium_plate>, 
	<thaumcraft:plate>, 
	<thaumcraft:plate:1>, 
	<thermalfoundation:material:32>, 
	<thermalfoundation:material:33>, 
	<thermalfoundation:material:320>, 
	<thermalfoundation:material:321>, 
	<thermalfoundation:material:322>, 
	<thermalfoundation:material:323>, 
	<thermalfoundation:material:324>, 
	<thermalfoundation:material:325>, 
	<thermalfoundation:material:326>, 
	<thermalfoundation:material:327>, 
	<thermalfoundation:material:328>, 
	<thermalfoundation:material:352>, 
	<thermalfoundation:material:353>, 
	<thermalfoundation:material:354>, 
	<thermalfoundation:material:355>
	
] as IItemStack[];

val arrayRemoveDictPlateDense = [


] as IItemStack[];

val arrayRemoveDictRod = [
	
	
] as IItemStack[];

for ore in arrayRemoveDictOre{
	for dict in ore.ores{
		dict.remove(ore);
	}
}
for cluster in arrayRemoveDictCluster{
	for dict in cluster.ores{
		dict.remove(cluster);
	}
}
for ingot in arrayRemoveDictIngot{
	for dict in ingot.ores{
		dict.remove(ingot);
	}
}
for gem in arrayRemoveDictGem{
	for dict in gem.ores{
		dict.remove(gem);
	}
}
for crystal in arrayRemoveCrystal{
	for dict in crystal.ores{
		dict.remove(crystal);
	}
}
for dust in arrayRemoveDictDust{
	for dict in dust.ores{
		dict.remove(dust);
	}
}
for plate in arrayRemoveDictPlate{
	for dict in plate.ores{
		dict.remove(plate);
	}
}
for plateDense in arrayRemoveDictPlateDense{
	for dict in plateDense.ores{
		dict.remove(plateDense);
	}
}
for rod in arrayRemoveDictRod{
	for dict in rod.ores{
		dict.remove(rod);
	}
}
