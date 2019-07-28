val oreDictRemoval = [<bewitchment:silver_ore>, <forestry:resources:1>, <forestry:resources:2>, <immersiveengineering:ore>, <immersiveengineering:ore:1>, <immersiveengineering:ore:2>, <immersiveengineering:ore:3>, <immersiveengineering:ore:4>, <immersiveengineering:ore:5>, <mekansim:oreblock:1>, <mekanism:oreblock:2>, <nuclearcraft:ore>, <nuclearcraft:ore:1>, <nuclearcraft:ore:2>,<techreborn:ore:1>, <techreborn:ore:12>, <techreborn:ore:13>, <techreborn:ore2>, <techreborn:ore2:1>] as IItemstack[];
for item in oreDictRemoval{
	for dict in item.ores{
		dict.remove(item);
	}
} 
