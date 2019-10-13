#loader crafttweaker
#priority -00314
#packmode theta sigma omega

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

mods.techreborn.alloySmelter.removeAll();
mods.techreborn.blastFurnace.removeAll();
mods.techreborn.vacuumFreezer.removeAll();

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
			furnace.remove(itemIngot);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemIngot);
		}
	}
	if (hashChunk has key) {
		for itemIngot in dictIngot.items {
			furnace.remove(itemIngot);
		}
	}
	if (hashCluster has key) {
		for itemIngot in dictIngot.items {
			furnace.remove(itemIngot);
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
			furnace.remove(itemIngot);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemIngot);
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
			mods.nuclearcraft.ingot_former.removeRecipeWithOutput(itemIngot);
			mods.tconstruct.Casting.removeTableRecipe(itemIngot);
		}
	}
}
