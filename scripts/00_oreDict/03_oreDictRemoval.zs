#priority -0003

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

/***** Declaring Arrays of Items to Have Ore Dictionary Removed *****/

val arrayRemoveDictOre = [
//SILK_SORTING: BEGIN@Ore
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
    <techreborn:ore:12>, 
    <techreborn:ore:13>, 
    <techreborn:ore2>, 
    <techreborn:ore2:1>, 
    <thaumcraft:ore_cinnabar>,
    <tp:ender_ore>, 
    <tp:lava_block>, 
    <tp:nether_lava_block>, 
    <tp:wub_ore>
//SILK_SORTING: END@Ore
] as IItemStack[];

val arrayRemoveDictCluster = [
//SILK_SORTING: BEGIN@Cluster

//SILK_SORTING: END@Cluster
] as IItemStack[];

val arrayRemoveDictIngot = [
//SILK_SORTING: BEGIN@Ingot
    <bewitchment:silver_ingot>,
    <bigreactors:ingotgraphite>,
    <bigreactors:ingotsteel>,
    <botania:manaresource:14>,
    <embers:ingot_aluminum>,
    <embers:ingot_bronze>,
    <embers:ingot_copper>,
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
    <mysticalworld:copper_ingot>,
    <mysticalworld:silver_ingot>,
    <nuclearcraft:alloy>,
    <nuclearcraft:alloy:5>,
    <nuclearcraft:ingot>,
    <nuclearcraft:ingot:1>,
    <nuclearcraft:ingot:2>,
    <nuclearcraft:ingot:12>,
    <nuclearcraft:ingot:13>,
    <plustic:invaringot>,
    <simplyjetpacks:metaitemmods:3>,
    <tcomplement:materials:10>,
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
    <techreborn:ingot:13>
//SILK_SORTING: END@Ingot
] as IItemStack[];

val arrayRemoveDictGem = [
//SILK_SORTING: BEGIN@Gem
    <cyclicmagic:crystallized_amber>, 
    <thaumcraft:quicksilver>
//SILK_SORTING: END@Gem
] as IItemStack[];

val arrayRemoveDictCrystal = [
//SILK_SORTING: BEGIN@Crystal

//SILK_SORTING: END@Crystal
] as IItemStack[];

val arrayRemoveDictEnderIO = [
//SILK_SORTING: BEGIN@EnderIO

//SILK_SORTING: END@EnderIO
] as IItemStack[];

val arrayRemoveDictClathrate = [
//SILK_SORTING: BEGIN@Clathrate

//SILK_SORTING: END@Clathrate
] as IItemStack[];

val arrayRemoveDictDust = [
//SILK_SORTING: BEGIN@Dust
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
    <bigreactors:dustgraphite>, 
    <bigreactors:duststeel>, 
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
    <enderio:item_material:29>, 
    <enderio:item_material:30>, 
    <enderio:item_material:31>, 
    <extratrees:misc>, 
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
    <thermalfoundation:material:800>
//SILK_SORTING: END@Dust
] as IItemStack[];

val arrayRemoveDictPlate = [
//SILK_SORTING: BEGIN@Plate
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
//SILK_SORTING: END@Plate
] as IItemStack[];

val arrayRemoveDictPlateDense = [
//SILK_SORTING: BEGIN@PlateDense

//SILK_SORTING: END@PlateDense
] as IItemStack[];

val arrayRemoveDictRod = [
//SILK_SORTING: BEGIN@Rod
    
//SILK_SORTING: END@Rod
] as IItemStack[];

val arrayRemoveDictGear = [
//SILK_SORTING: BEGIN@Gear
    <appliedenergistics2:material:40>, 
    <enderio:item_material:9>, 
    <enderio:item_material:10>, 
    <forestry:gear_bronze>, 
    <forestry:gear_copper>, 
    <forestry:gear_tin>, 
    <thermalfoundation:material:22>, 
    <thermalfoundation:material:23>, 
    <thermalfoundation:material:24>, 
    <thermalfoundation:material:25>, 
    <thermalfoundation:material:26>, 
    <thermalfoundation:material:256>, 
    <thermalfoundation:material:257>, 
    <thermalfoundation:material:258>, 
    <thermalfoundation:material:259>, 
    <thermalfoundation:material:260>, 
    <thermalfoundation:material:261>, 
    <thermalfoundation:material:289>, 
    <thermalfoundation:material:291>
//SILK_SORTING: END@Gear
] as IItemStack[];

val arrayRemoveDictNugget = [
//SILK_SORTING: BEGIN@Nugget
    <agricraft:agri_nugget>, 
    <agricraft:agri_nugget:1>, 
    <agricraft:agri_nugget:2>, 
    <agricraft:agri_nugget:3>, 
    <agricraft:agri_nugget:4>, 
    <agricraft:agri_nugget:5>, 
    <agricraft:agri_nugget:6>, 
    <agricraft:agri_nugget:7>, 
    <agricraft:agri_nugget:8>, 
    <agricraft:agri_nugget:9>, 
    <agricraft:agri_nugget:10>, 
    <agricraft:agri_nugget:11>, 
    <bewitchment:silver_nugget>, 
    <embers:nugget_aluminum>, 
    <embers:nugget_bronze>, 
    <embers:nugget_copper>, 
    <embers:nugget_electrum>, 
    <embers:nugget_lead>, 
    <embers:nugget_nickel>, 
    <embers:nugget_silver>, 
    <embers:nugget_tin>, 
    <extendedcrafting:material:128>, 
    <extendedcrafting:material:129>, 
    <immersiveengineering:metal:20>, 
    <immersiveengineering:metal:21>, 
    <immersiveengineering:metal:22>, 
    <immersiveengineering:metal:23>, 
    <immersiveengineering:metal:24>, 
    <immersiveengineering:metal:26>, 
    <immersiveengineering:metal:27>, 
    <immersiveengineering:metal:28>, 
    <immersiveengineering:metal:29>, 
    <magicbees:orepart>, 
    <magicbees:orepart:1>, 
    <magicbees:orepart:3>, 
    <magicbees:orepart:4>, 
    <magicbees:orepart:5>, 
    <mekanism:nugget:2>, 
    <mekanism:nugget:4>, 
    <mekanism:nugget:5>, 
    <mekanism:nugget:6>, 
    <mysticalworld:copper_nugget>, 
    <mysticalworld:silver_nugget>, 
    <tcomplement:materials:20>, 
    <techreborn:nuggets>, 
    <techreborn:nuggets:2>, 
    <techreborn:nuggets:4>, 
    <techreborn:nuggets:5>, 
    <techreborn:nuggets:6>, 
    <techreborn:nuggets:7>, 
    <techreborn:nuggets:8>, 
    <techreborn:nuggets:9>, 
    <techreborn:nuggets:10>, 
    <techreborn:nuggets:11>, 
    <techreborn:nuggets:12>, 
    <techreborn:nuggets:13>, 
    <techreborn:nuggets:23>, 
    <techreborn:nuggets:24>, 
    <thaumcraft:nugget>, 
    <thaumcraft:nugget:1>, 
    <thaumcraft:nugget:2>, 
    <thaumcraft:nugget:3>, 
    <thaumcraft:nugget:4>
//SILK_SORTING: END@Nugget
] as IItemStack[];

val arrayRemoveDictBlock = [
//SILK_SORTING: BEGIN@Block
    <actuallyadditions:block_misc:5>, 
    <bigreactors:blockgraphite>, 
    <bigreactors:blocksteel>, 
    <embers:block_aluminum>, 
    <embers:block_bronze>, 
    <embers:block_copper>, 
    <embers:block_electrum>, 
    <embers:block_lead>, 
    <embers:block_nickel>, 
    <embers:block_silver>, 
    <embers:block_tin>, 
    <forestry:charcoal>, 
    <forestry:resource_storage:1>, 
    <forestry:resource_storage:2>, 
    <forestry:resource_storage:3>, 
    <immersiveengineering:storage>, 
    <immersiveengineering:storage:1>, 
    <immersiveengineering:storage:2>, 
    <immersiveengineering:storage:3>, 
    <immersiveengineering:storage:4>, 
    <immersiveengineering:storage:5>, 
    <immersiveengineering:storage:6>, 
    <immersiveengineering:storage:7>, 
    <immersiveengineering:storage:8>, 
    <mekanism:basicblock:1>, 
    <mekanism:basicblock:3>, 
    <mekanism:basicblock:5>, 
    <mekanism:basicblock:12>, 
    <mekanism:basicblock:13>, 
    <mekanism:saltblock>, 
    <mysticalworld:amethyst_block>, 
    <mysticalworld:copper_block>, 
    <mysticalworld:silver_block>, 
    <nuclearcraft:ingot_block>, 
    <nuclearcraft:ingot_block:1>, 
    <nuclearcraft:ingot_block:2>, 
    <nuclearcraft:ingot_block:12>, 
    <nuclearcraft:ingot_block:13>, 
    <plustic:invarblock>, 
    <tcomplement:storage>, 
    <tcomplement:storage:1>, 
    <tconstruct:metal>, 
    <techreborn:storage>, 
    <techreborn:storage:1>, 
    <techreborn:storage:4>, 
    <techreborn:storage:6>, 
    <techreborn:storage:7>, 
    <techreborn:storage:9>, 
    <techreborn:storage:11>, 
    <techreborn:storage:12>, 
    <techreborn:storage:13>, 
    <techreborn:storage:14>, 
    <techreborn:storage2:8>, 
    <techreborn:storage2:9>, 
    <thaumcraft:metal_brass>
//SILK_SORTING: END@Block
] as IItemStack[];

val arrayRemoveDictDustTiny = [
//SILK_SORTING: BEGIN@DustTiny
    <mysticalworld:gold_dust_tiny>, 
    <mysticalworld:iron_dust_tiny>
//SILK_SORTING: END@DustTiny
] as IItemStack[];

val arrayRemoveDictDustSmall = [
//SILK_SORTING: BEGIN@DustSmall

//SILK_SORTING: END@DustSmall
] as IItemStack[];

val arrayRemoveDictDustDirty = [
//SILK_SORTING: BEGIN@DustDirty

//SILK_SORTING: END@DustDirty
] as IItemStack[];

val arrayRemoveDictClump = [
//SILK_SORTING: BEGIN@Clump

//SILK_SORTING: END@Clump
] as IItemStack[];

val arrayRemoveDictShard = [
//SILK_SORTING: BEGIN@Shard

//SILK_SORTING: END@Shard
] as IItemStack[];


/***** Removing Ore Dictionaries *****/

if (!(arrayRemoveDictOre.length == 0)) {
	for ore in arrayRemoveDictOre {
	    for dict in ore.ores {
	        dict.remove(ore);
	    }
	}
}
if (!(arrayRemoveDictCluster.length == 0)) {
	for cluster in arrayRemoveDictCluster {
	    for dict in cluster.ores {
	        dict.remove(cluster);
	    }
	}
}
if (!(arrayRemoveDictIngot.length == 0)) {
	for ingot in arrayRemoveDictIngot {
	    for dict in ingot.ores {
	        dict.remove(ingot);
	    }
	}
}
if (!(arrayRemoveDictGem.length == 0)) {
	for gem in arrayRemoveDictGem {
	    for dict in gem.ores {
	        dict.remove(gem);
	    }
	}
}
if (!(arrayRemoveDictCrystal.length == 0)) {
	for crystal in arrayRemoveDictCrystal {
	    for dict in crystal.ores {
	        dict.remove(crystal);
	    }
	}
}
if (!(arrayRemoveDictEnderIO.length == 0)) {
	for enderIO in arrayRemoveDictEnderIO {
	    for dict in enderIO.ores {
	        dict.remove(enderIO);
	    }
	}
}
if (!(arrayRemoveDictClathrate.length == 0)) {
	for clathrate in arrayRemoveDictClathrate {
	    for dict in clathrate.ores {
	        dict.remove(clathrate);
	    }
	}
}
if (!(arrayRemoveDictDust.length == 0)) {
	for dust in arrayRemoveDictDust {
	    for dict in dust.ores {
	        dict.remove(dust);
	    }
	}
}
if (!(arrayRemoveDictPlate.length == 0)) {
	for plate in arrayRemoveDictPlate {
	    for dict in plate.ores {
	        dict.remove(plate);
	    }
	}
}
if (!(arrayRemoveDictPlateDense.length == 0)) {
	for plateDense in arrayRemoveDictPlateDense {
	    for dict in plateDense.ores {
	        dict.remove(plateDense);
	    }
	}
}if (!(arrayRemoveDictRod.length == 0)) {
	for rod in arrayRemoveDictRod {
	    for dict in rod.ores {
	        dict.remove(rod);
	    }
	}
}
if (!(arrayRemoveDictGear.length == 0)) {
	for gear in arrayRemoveDictGear {
	    for dict in gear.ores {
	        dict.remove(gear);
	    }
	}
}
if (!(arrayRemoveDictNugget.length == 0)) {
	for nugget in arrayRemoveDictNugget {
	    for dict in nugget.ores {
	        dict.remove(nugget);
	    }
	}
}
if (!(arrayRemoveDictBlock.length == 0)) {
	for block in arrayRemoveDictBlock {
	    for dict in block.ores {
	        dict.remove(block);
	    }
	}
}
if (!(arrayRemoveDictDustTiny.length == 0)) {
	for dustTiny in arrayRemoveDictDustTiny {
	    for dict in dustTiny.ores {
	        dict.remove(dustTiny);
	    }
	}
}
if (!(arrayRemoveDictDustSmall.length == 0)) {
	for dustSmall in arrayRemoveDictDustSmall {
	    for dict in dustSmall.ores {
	        dict.remove(dustSmall);
	    }
	}
}
if (!(arrayRemoveDictDustDirty.length == 0)) {
	for dustDirty in arrayRemoveDictDustDirty {
	    for dict in dustDirty.ores {
	        dict.remove(dustDirty);
	    }
	}
}
if (!(arrayRemoveDictClump.length == 0)) {
	for clump in arrayRemoveDictClump {
	    for dict in clump.ores {
	        dict.remove(clump);
	    }
	}
}
if (!(arrayRemoveDictShard.length == 0)) {
	for shard in arrayRemoveDictShard {
	    for dict in shard.ores {
	        dict.remove(shard);
	    }
	}
}