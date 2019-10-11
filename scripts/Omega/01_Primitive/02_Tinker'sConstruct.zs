#loader crafttweaker
#priority -30101
#packmode omega

/* Essential Materials */
recipes.addShapeless("wood_pile", <contenttweaker:wood_pile>, [
	oreDict["logWood"], oreDict["logWood"], oreDict["logWood"],
	oreDict["logWood"], oreDict["logWood"], oreDict["logWood"],
	oreDict["logWood"], oreDict["logWood"], oreDict["logWood"]
]);
recipes.addShaped("seared_brick", <tconstruct:materials>, [
	[null, <contenttweaker:seared_shard>, null],
	[<contenttweaker:seared_shard>, <contenttweaker:seared_paste>, <contenttweaker:seared_shard>],
	[null, <contenttweaker:seared_shard>, null]
]);

furnace.addRecipe(<contenttweaker:medium_grade_charcoal>, <contenttweaker:wood_pile>, 0.001000);

mods.inworldcrafting.FluidToFluid.transform(<liquid:wood_fuel>, <liquid:water>, [<contenttweaker:low_grade_charcoal> * 8], true);

mods.inworldcrafting.FluidToItem.transform(<contenttweaker:mud> * 3, <liquid:water>, [<minecraft:dirt> * 2], false);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:seared_paste>, <liquid:fire_water>, [<minecraft:rotten_flesh>], false);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:seared_shard>, <liquid:fire_water>, [<minecraft:cobblestone> * 4], false);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:burnt_wood>, <liquid:fire_water>, [<minecraft:wood_pile>], false);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:low_grade_charcoal>, <liquid:fire_water>, [<contenttweaker:burnt_wood> * 2], false);

mods.tconstruct.Drying.addRecipe(<contenttweaker:dried_paste>, <contenttweaker:mud>, 1200);
mods.tconstruct.Drying.addRecipe(<contenttweaker:dried_paste>, <contenttweaker:seared_paste>, 1200);


/* Multiblock Components */
recipes.remove(<tcomplement:high_oven_controller>);
recipes.remove(<tcomplement:high_oven_io:*>);
recipes.remove(<tcomplement:scorched_casting:*>);
recipes.remove(<tcomplement:melter:*>);
recipes.remove(<tconstruct:casting:*>);
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.remove(<tconstruct:smeltery_io>);
recipes.remove(<tconstruct:tinker_tank_controller>);
recipes.remove(<tinker_io:fuel_input_machine>);
recipes.remove(<tinker_io:smart_output>);


/* Decoration Blocks */
recipes.remove(<tcomplement:scorched_block:*>);
recipes.remove(<tconstruct:deco_ground>);
recipes.remove(<tconstruct:dried_clay:1>);
recipes.remove(<tconstruct:seared:*>);

recipes.addShapeless("scorched_cobble_repair", <tcomplement:scorched_block>, [
	<tcomplement:scorched_block:1>, <contenttweaker:scorched_paste>
]);
recipes.addShaped("scorched_paver", <tcomplement:scorched_block:2> * 4, [
	[<tcomplement:scorched_block>, <tcomplement:scorched_block>],
	[<tcomplement:scorched_block>, <tcomplement:scorched_block>]
]);
recipes.addShaped("scorched_bricks", <tcomplement:scorched_block:3>, [
	[<tcomplement:materials:1>, <tcomplement:materials:1>],
	[<tcomplement:materials:1>, <tcomplement:materials:1>]
]);
recipes.addShapeless("scorched_brick_cracked_repair", <tcomplement:scorched_block:3>, [
	<tcomplement:scorched_block:4>, <contenttweaker:scorched_paste>
]);
recipes.addShapeless("scorched_bricks_fancy", <tcomplement:scorched_block:5>, [
	<tcomplement:scorched_block:6>
]);
recipes.addShaped("scorched_brick_square", <tcomplement:scorched_block:6> * 4, [
	[<tcomplement:scorched_block:3>, <tcomplement:scorched_block:3>],
	[<tcomplement:scorched_block:3>, <tcomplement:scorched_block:3>]
]);
recipes.addShaped("scorched_road", <tcomplement:scorched_block:7> * 4, [
	[<tcomplement:scorched_block:2>, <tcomplement:scorched_block:2>],
	[<tcomplement:scorched_block:2>, <tcomplement:scorched_block:2>]
]);
recipes.addShapeless("scorched_creeperface", <tcomplement:scorched_block:8>, [
	<tcomplement:scorched_block>, <chisel:chisel_iron>.transformDamage(1)
]);
recipes.addShaped("scorched_brick_triangle", <tcomplement:scorched_block:9> * 3, [
	[null, <tcomplement:scorched_block:3>, null],
	[null, null, null],
	[<tcomplement:scorched_block:3>, null, <tcomplement:scorched_block:3>]
]);
recipes.addShaped("scorched_brick_small", <tcomplement:scorched_block:10>, [
	[<tcomplement:scorched_block:3>, <tcomplement:scorched_block:3>, <tcomplement:scorched_block:3>],
	[<tcomplement:scorched_block:3>, <tcomplement:scorched_block:3>, <tcomplement:scorched_block:3>],
	[<tcomplement:scorched_block:3>, <tcomplement:scorched_block:3>, <tcomplement:scorched_block:3>]
]);
recipes.addShaped("scorched_tiles", <tcomplement:scorched_block:11>, [
	[<tcomplement:scorched_block:7>, <tcomplement:scorched_block:7>],
	[<tcomplement:scorched_block:7>, <tcomplement:scorched_block:7>]
]);

recipes.addShaped("mud_bricks", <tconstruct:deco_ground>, [
	[<tconstruct:materials:1>, <tconstructa:materials:1>],
	[<tconstruct:materials:1>, <tconstruct:materials:1>]
]);
recipes.addShaped("dried_bricks", <tconstruct:dried_clay:1>, [
	[<tconstruct:materials:2>, <tconstruct:materials:2>],
	[<tconstruct:materials:2>, <tconstruct:materials:2>]
]);
recipes.addShapeless("seared_cobble_repair", <tconstruct:seared>, [
	<tconstruct:seared:1>, <contenttweaker:seared_paste>
]);
recipes.addShaped("seared_paver", <tconstruct:seared:2> * 4, [
	[<tconstruct:seared>, <tconstruct:seared>],
	[<tconstruct:seared>, <tconstruct:seared>]
]);
recipes.addShaped("seared_bricks", <tconstruct:seared:3>, [
	[<tconstruct:materials>, <tconstruct:materials>],
	[<tconstruct:materials>, <tconstruct:materials>]
]);
recipes.addShapeless("seared_brick_cracked_repair", <tconstruct:seared:3>, [
	<tconstruct:seared:4>, <contenttweaker:seared_paste>
]);
recipes.addShapeless("seared_bricks_fancy", <tconstruct:seared:5>, [
	<tconstruct:seared:6>
]);
recipes.addShaped("seared_brick_square", <tconstruct:seared:6> * 4, [
	[<tconstruct:seared:3>, <tconstruct:seared:3>],
	[<tconstruct:seared:3>, <tconstruct:seared:3>]
]);
recipes.addShaped("seared_road", <tconstruct:seared:7> * 4, [
	[<tconstruct:seared:2>, <tconstruct:seared:2>],
	[<tconstruct:seared:2>, <tconstruct:seared:2>]
]);
recipes.addShapeless("seared_creeperface", <tconstruct:seared:8>, [
	<tconstruct:seared>, <chisel:chisel_iron>.transformDamage(1)
]);
recipes.addShaped("seared_brick_triangle", <tconstruct:seared:9> * 3, [
	[null, <tconstruct:seared:3>, null],
	[null, null, null],
	[<tconstruct:seared:3>, null, <tconstruct:seared:3>]
]);
recipes.addShaped("seared_brick_small", <tconstruct:seared:10>, [
	[<tconstruct:seared:3>, <tconstruct:seared:3>, <tconstruct:seared:3>],
	[<tconstruct:seared:3>, <tconstruct:seared:3>, <tconstruct:seared:3>],
	[<tconstruct:seared:3>, <tconstruct:seared:3>, <tconstruct:seared:3>]
]);
recipes.addShaped("seared_tiles", <tconstruct:seared:11>, [
	[<tconstruct:seared:7>, <tconstruct:seared:7>],
	[<tconstruct:seared:7>, <tconstruct:seared:7>]
]);


/* Glass-Based Blocks*/



/* Tool Stations */
val forge = {
	textureBlock : {
		id: "minecraft:iron_block",
		Count: 1 as byte,
		Damage: 0 as short
	}
} as IData;
val stencil = {
	textureBlock: {
		id: "minecraft:planks",
		Count: 1 as byte,
		Damage: 0 as short
	}
} as IData;
val part = {
	textureBlock: {
		id: "minecraft:log",
		Count: 1 as byte,
		Damage: 0 as short
	}
}

for item in loadedMods["tconstruct"].items {
	if (item.commandString == "<tconstruct:toolforge>" && item.tag != forge) {
		mods.jei.JEI.hide(item);
	}
	if (item.commandString == "<tconstruct:tooltables:1>" && item.tag != stencil) {
		mods.jei.JEI.hide(item);
	}
	if (item.commandString == "<tconstruct:tooltables:2>" && item.tag != part) {
		mods.jei.JEI.hide(item);
	}
}

recipes.addShaped("blank_pattern", <tconstruct:pattern> * 2, [
	[oreDict["plankWood"], <minecraft:stick>],
	[<minecraft:stick>, oreDict["plankWood"]]
]);
recipes.addShaped("tool_forge", <tconstruct:toolforge>.withTag({textureBlock: {id: "minecraft:iron_block", Count: 1 as byte, Damage: 0 as short}}), [
	[<tconstruct:seared>, <tconstruct:seared>, <tconstruct:seared>],
	[hashBlock["Bronze"], <tconstruct:tooltables:3>, hashBlock["Bronze"]],
	[hashBlock["Bronze"], null, hashBlock["Bronze"]]
]);
recipes.addShaped("crafting_station", <tconstruct:tooltables>, [
	[<minecraft:flint>, <minecraft:crafting_table>, <minecraft:flint>]
]);
recipes.addShaped("stencil_table", <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}), [
	[<tconstruct:pattern>, <tconstruct:pattern>, <tconstruct:pattern>],
	[oreDict["plankWood"], <minecraft:crafting_table>, oreDict["plankWood"]],
	[oreDict["plankWood"], null, oreDict["plankWood"]]
]);
recipes.addShaped("part_builder", <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}), [
	[<tconstruct:pattern>, <minecraft:flint>, <tconstruct:pattern>],
	[oreDict["logWood"], <minecraft:crafting_table>, oreDict["logWood"]],
	[oreDict["logWood"], null, oreDict["logWood"]]
]);
recipes.addShaped("tool_station", <tconstruct:tooltables:3>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}), [
	[<tconstruct:pattern>, <minecraft:stone_pickaxe>, <tconstruct:pattern>],
	[<minecraft:stick>, <minecraft:crafting_table>, <minecraft:stick>],
	[oreDict["plankWood"] , null, oreDict["plankWood"]]
]);
recipes.addShaped("pattern_chest", <tconstruct:tooltables:4>, [
	[<tconstruct:pattern>, <tconstruct:pattern>.withTag({PartType: "tconstruct:tool_rod"}), <tconstruct:pattern>],
	[<tconstruct:pattern>.withTag({PartType: "tconstruct:pick_head"}), <minecraft:chest>, <tconstruct:pattern>.withTag({PartType: "tconstruct:axe_head"})],
	[<tconstruct:pattern>, <tconstruct:pattern>.withTag({PartType: "tconstruct:sword_blade"}), <tconstruct:pattern>]
]);
recipes.addShaped("part_chest", <tconstruct:tooltables:5>, [
	[oreDict["plankWood"], <tconstruct:tool_rod>.withTag({Material: "cactus"}), oreDict["plankWood"]],
	[<tconstruct:pick_head>.withTag({Material: "flint"}), <minecraft:chest>, <tconstruct:axe_head>.withTag({Material: "stone"})],
	[oreDict["plankWood"], <tconstruct:sword_blade>.withTag({Material: "bone"}), oreDict["plankWood"]]
]);

/* Other Items */
recipes.remove(<tconstruct:throwball:*>);
recipes.remove(<tconstruct:wood_rail>);
recipes.remove(<tconstruct:wood_rail_trapdoor>);
recipes.remove(<tconstruct:wooden_hopper>);

recipes.addShaped("glowball", <tconstruct:throwball> * 4, [
	[hashDust["Glowstone"], <minecraft:snowball>, hashDust["Glowstone"]],
	[<minecraft:snowball>, null, <minecraft:snowball>],
	[hashDust["Glowstone"], <minecraft:snowball>, hashDust["Glowstone"]]
]);
recipes.addShaped("efln", <tconstruct:throwball:1> * 16, [
	[<minecraft:flint>, <minecraft:gunpowder>, <minecraft:flint>],
	[<minecraft:gunpowder>, null, <minecraft:gunpowder>],
	[<minecraft:flint>, <minecraft:gunpowder>, <minecraft:flint>]
]);
recipes.addShaped("wooden_rail", <tconstruct:wood_rail>, [
	[<minecraft:stick>, null, <minecraft:stick>],
	[<minecraft:stick>, oreDict["plankWood"], <minecraft:stick>],
	[<minecraft:stick>, null, <minecraft:stick>]
]);
recipes.addShaped("wooden_rail_trapdoor", <tconstruct:wood_rail_trapdoor>, [
	[<minecraft:stick>, <minecraft:trapdoor:*>, <minecraft:stick>],
	[<minecraft:stick>, oreDict["plankWood"], <minecraft:stick>],
	[<minecraft:stick>, <minecraft:trapdoor:*>, <minecraft:stick>]
]);
recipes.addShaped("wooden_hopper", <tconstruct:wooden_hopper>, [
	[oreDict["plankWood"], <minecraft:trapdoor:*>, oreDict["plankWood"]],
	[oreDict["plankWood"], <minecraft:chest>, oreDict["plankWood"]],
	[null, <minecraft:chest>, null]
]);
