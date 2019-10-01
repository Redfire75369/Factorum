#loader crafttweaker
#priority -00304

recipes.removeShaped(hashIngot["BaseEssence"], [
	[null, oreDict["shardProsperity"] , null],
	[oreDict["shardProsperity"], hashIngot["Iron"], oreDict["shardProsperity"]],
	[null, oreDict["shardProsperity"] , null]
]);
recipes.removeShaped(hashIngot["Blutonium"], [
	[hashIngot["Cyanite"], hashIngot["Cyanite"], hashIngot["Cyanite"]],
	[hashIngot["Cyanite"], null, hashIngot["Cyanite"]],
	[hashIngot["Cyanite"], hashIngot["Cyanite"], hashIngot["Cyanite"]]
]);
recipes.removeShapeless(hashIngot["Bronze"], [
	hashIngot["Tin"], hashIngot["Copper"], hashIngot["Copper"], 
	hashIngot["Copper"]
]);
recipes.removeShaped(hashIngot["CrystalMatrix"], [
	[<avaritia:resource>, oreDict["starNether"], <avaritia:resource>],
	[<avaritia:resource>, oreDict["starNether"], <avaritia:resource>]
]);
recipes.removeShaped(hashIngot["EbonyPsi"], [
	[oreDict["substanceEbony"], oreDict["substanceEbony"], oreDict["substanceEbony"]], 
	[oreDict["substanceEbony"], hashIngot["Psi"], oreDict["substanceEbony"]],
	[oreDict["substanceEbony"], oreDict["substanceEbony"], oreDict["substanceEbony"]]
]);
recipes.removeShaped(hashIngot["Inferium"], [
	[null, oreDict["essenceInferium"] , null],
	[oreDict["essenceInferium"], hashIngot["BaseEssence"], oreDict["essenceInferium"]],
	[null, oreDict["essenceInferium"] , null]
]);
recipes.removeShaped(hashIngot["Insanium"], [
	[null, oreDict["essenceInsanium"] , null],
	[oreDict["essenceInsanium"], hashIngot["Superium"], oreDict["essenceInsanium"]],
	[null, oreDict["essenceInsanium"] , null]
]);
recipes.removeShaped(hashIngot["Intermedium"], [
	[null, oreDict["essenceIntermedium"] , null],
	[oreDict["essenceIntermedium"], hashIngot["Prudenfium"], oreDict["essenceIntermedium"]],
	[null, oreDict["essenceIntermedium"] , null]
]);
recipes.removeShaped(hashIngot["IridiumAlloy"], [
	[hashIngot["Iridium"], hashPlate["AdvancedAlloy"], hashIngot["Iridium"]],
	[hashPlate["AdvancedAlloy"], hashDust["Diamond"], hashPlate["AdvancedAlloy"]],
	[hashIngot["Iridium"], hashPlate["AdvancedAlloy"], hashIngot["Iridium"]]
]);
recipes.removeShaped(hashIngot["IvoryPsi"], [
	[oreDict["substanceIvory"], oreDict["substanceIvory"], oreDict["substanceIvory"]],
	[oreDict["substanceIvory"], hashIngot["Psi"], oreDict["substanceIvory"]],
	[oreDict["substanceIvory"], oreDict["substanceIvory"], oreDict["substanceIvory"]]
]);
recipes.removeShaped(hashIngot["Prudentium"], [
	[null, oreDict["essencePrudentium"] , null],
	[oreDict["essencePrudentium"], hashIngot["Inferium"], oreDict["essencePrudentium"]],
	[null, oreDict["essencePrudentium"] , null]
]);
recipes.removeShaped(hashIngot["Superium"], [
	[null, oreDict["essenceSuperium"] , null],
	[oreDict["essenceSuperium"], hashIngot["Supremium"], oreDict["essenceSuperium"]],
	[null, oreDict["essenceSuperium"] , null]
]);
recipes.removeShaped(hashIngot["Supremium"], [
	[null, oreDict["essenceSupremium"] , null],
	[oreDict["essenceSupremium"], hashIngot["Intermedium"], oreDict["essenceSupremium"]],
	[null, oreDict["essenceSupremium"] , null]
]);

mods.techreborn.blastFurnace.removeInputRecipe(<minecraft:iron_ore>);
mods.techreborn.blastFurnace.removeInputRecipe(<techreborn:ore:5>);
mods.techreborn.blastFurnace.removeInputRecipe(<techreborn:dust:22> * 2);
mods.techreborn.blastFurnace.removeInputRecipe(<techreborn:smalldust:23> * 8);
mods.techreborn.compressor.removeInputRecipe(<techreborn:dust:65>);

mods.techreborn.alloySmelter.removeRecipe(<techreborn:ingot:4>, <techreborn:ingot:18>);
mods.techreborn.alloySmelter.removeRecipe(<techreborn:ingot:4>, <techreborn:ingot:14>);
mods.techreborn.alloySmelter.removeRecipe(<minecraft:gold_ingot>, <techreborn:ingot:11>);
mods.techreborn.alloySmelter.removeRecipe(<minecraft:iron_ingot>, <techreborn:ingot:9>);

mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:3>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:6>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:12>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:14>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:15>);
mods.techreborn.blastFurnace.removeRecipe(<techreborn:ingot:16>);
mods.techreborn.vacuumFreezer.removeRecipe(<techreborn:ingot:17>);

for key, dictIngot in hashIngot {
	if (hashOre has key) {
		recipes.removeShapeless(dictIngot, [
			hashOre[key], hashDust["Pyrotheum"]
		]);
		recipes.removeShapeless(dictIngot, [
			hashOre[key], hashDust["Petrotheum"], hashDust["Pyrotheum"]
		]);
		
		for itemIngot in hashOre[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemIngot, sand);
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemIngot, cinnabar);
		}
		for itemIngot in dictIngot.items {
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemIngot);
			for itemOre in hashOre[key].items {
				if ((itemOre.definition.owner == itemIngot.definition.owner)||(itemIngot.definition.owner == "thermalfoundation")) {
					furnace.remove(itemIngot, itemOre);
				}
			}
		}
	}
	if (hashCluster has key) {
		for itemIngot in dictIngot.items {
			furnace.remove(itemIngot, hashCluster[key]);
		}
	}
	if (hashNugget has key) {
		recipes.removeShaped(dictIngot, [
			[hashNugget[key], hashNugget[key], hashNugget[key]],
			[hashNugget[key], hashNugget[key], hashNugget[key]],
			[hashNugget[key], hashNugget[key], hashNugget[key]]
		]);
		recipes.removeShapeless(dictIngot, [
			hashNugget[key], hashNugget[key], hashNugget[key],
			hashNugget[key], hashNugget[key], hashNugget[key],
			hashNugget[key], hashNugget[key], hashNugget[key]
		]);
	}
	if (hashDust has key) {
		recipes.removeShapeless(dictIngot, [
			hashDust[key], hashDust["Pyrotheum"]
		]);
		
		for itemIngot in hashDust[key].items {
			mods.thermalexpansion.InductionSmelter.removeRecipe(itemIngot, sand);
		}
		for itemIngot in dictIngot.items {
			furnace.remove(itemIngot, hashDust[key]);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemIngot);
			for itemDust in hashDust[key].items {
				if ((itemDust.definition.owner == itemIngot.definition.owner)||(itemIngot.definition.owner == "thermalfoundation")) {
					furnace.remove(itemIngot, itemDust);
				}
			}
		}
	}
	if (hashBlock has key) {
		recipes.removeShapeless(dictIngot, [
			hashBlock[key]
		]);
	}
	if (hashMolten has key) {
		for itemIngot in dictIngot.items {
			mods.embers.Stamper.remove(itemIngot);
			mods.tconstruct.Casting.removeTableRecipe(itemIngot);
		}
	}
}
