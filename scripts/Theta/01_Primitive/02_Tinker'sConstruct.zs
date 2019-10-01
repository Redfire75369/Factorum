#loader crafttweaker
#priority -10102

recipes.addShaped("seared_brick", <tconstruct:materials>, [
	[<contenttweaker:seared_shard>, <contenttweaker:seared_shard>],
	[<contenttweaker:seared_shard>, <contenttweaker:seared_shard>]
]);
mods.inworldcrafting.FluidToFluid.transform(<liquid:wood_fuel>, <liquid:water>, [<contenttweaker:low_grade_charcoal> * 4], true);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:seared_shard>, <liquid:fire_water>, [<minecraft:cobblestone>], false);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:low_grade_charcoal>, <liquid:fire_water>, [oreDict["logWood"]], false);

mods.tconstruct.Drying.addRecipe(<contenttweaker:dried_paste>, <contenttweaker:mud>, 100);
mods.tconstruct.Drying.addRecipe(<contenttweaker:dried_paste>, <contenttweaker:seared_paste>, 100);

recipes.remove(<tconstruct:pattern>);
recipes.remove(<tconstruct:toolforge:*>);
recipes.remove(<tconstruct:tooltables:*>);
for item in loadedMods["tconstruct"].items {
	if (item.commandString has "tconstruct:toolforge" && item.tag != {textureBlock: {id: "minecraft:iron_block", Count: 1 as byte, Damage: 0 as short}}) {
		mods.jei.JEI.hide(item);
	}
	if (item.commandString has "tconstruct:tooltables:1" && item.tag != {textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}) {
		mods.jei.JEI.hide(item);
	}
	if (item.commandString has "tconstruct:tooltables:2" && item.tag != {textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}) {
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

recipes.remove(<tconstruct:deco_ground>);
recipes.remove(<tconstruct:dried_clay:1>);
recipes.remove(<tconstruct:seared:*>);
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.remove(<tconstruct:seared_glass>);
recipes.remove(<tconstruct:seared_tank:*>);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.remove(<tconstruct:smeltery_io>);
recipes.remove(<tconstruct:tinker_tank_controller>);

mods.chisel.Carving.removeGroup("seared_block");

recipes.addShaped("mud_bricks", <tconstruct:deco_ground>, [
	[null, <tconstruct:materials:1>, null],
	[<tconstruct:materials:1>, <contenttweaker:mud>, <tconstruct:materials:1>],
	[null, <tconstruct:materials:1>, null]
]);
recipes.addShaped("dried_bricks", <tconstruct:dried_clay:1>, [
	[null, <tconstruct:materials:2>, null],
	[<tconstruct:materials:2>, <contenttweaker:dried_paste>, <tconstruct:materials:2>],
	[null, <tconstruct:materials:2>, null]
]);
recipes.addShapeless("seared_cobble_repair", <tconstruct:seared>, [
	<tconstruct:seared:1>, <contenttweaker:seared_paste>
]);
recipes.addShaped("seared_paver", <tconstruct:seared:2> * 4, [
	[<tconstruct:seared>, <tconstruct:seared>],
	[<tconstruct:seared>, <tconstruct:seared>]
]);
recipes.addShaped("seared_bricks", <tconstruct:seared:3>, [
	[null, <tconstruct:materials>, null],
	[<tconstruct:materials>, <contenttweaker:seared_paste>, <tconstruct:materials>],
	[null, <tconstruct:materials>, null]
]);
recipes.addShapeless("seared_brick_cracked_repair", <tconstruct:seared:3>, [
	<tconstruct:seared:4>, <contenttweaker:seared_paste>
]);
recipes.addShapeless("seared_bricks_fancy", <tconstruct:seared:5>, [
	<tconstruct:seared:6>
]);
recipes.addShaped("seared_brick_square", <tconstruct:seared:6> * 4, [
	[<tconstruct:seared:3>, <tconstruct:seared:3>],
	[<tconstruct:seared:3>, <tconstruct:seared:3>, null]
]);
recipes.addShaped("seared_road", <tconstruct:seared:7> * 4, [
	[<tconstruct:seared:2>, <tconstruct:seared:2>],
	[<tconstruct:seared:2>, <tconstruct:seared:2>]
]);
recipes.addShapeless("seared_creeperface", <tconstruct:seared:8>, [
	<tconstruct:seared>, <chisel:chisel_iron>.transformDamage(1)
]);
recipes.addShaped("seared_brick_triangle", <tconstruct:seared:9>, [
	[null, <tconstruct:seared:3>, null],
	[null, null, null],
	[<tconstruct:seared:3>, null, <tconstruct:seared:3>]
]);
recipes.addShaped("seared_brick_small", <tconstruct:seared:10>, [
	[<tconstruct:seared:3>, <tconstruct:seared:3>, <tconstruct:seared:3>],
	[<tconstruct:seared:3>, <tconstruct:seared:3>, <tconstruct:seared:3>],
	[<tconstruct:seared:3>, <tconstruct:seared:3>, <tconstruct:seared:3>]
]);
recipes.addShaped("seared_tile", <tconstruct:seared:11>, [
	[<tconstruct:seared:7>, <tconstruct:seared:7>],
	[<tconstruct:seared:7>, <tconstruct:seared:7>]
]);

recipes.addShaped("seared_glass", <tconstruct:seared_glass>, [
	[<contenttweaker:seared_paste>, <tconstruct:materials>, <contenttweaker:seared_paste>],
	[<tconstruct:materials>, hashBlock["Glass"], <tconstruct:materials>],
	[<contenttweaker:seared_paste>, <tconstruct:materials>, <contenttweaker:seared_paste>]
]);
recipes.addShaped("seared_tank", <tconstruct:seared_tank>, [
	[<tconstruct:materials>, <tcomplement:materials>, <tconstruct:materials>],
	[<tcomplement:materials>, <tconstruct:seared:6>, <tcomplement:materials>],
	[<tconstruct:materials>, <tcomplement:materials>, <tconstruct:materials>],
]);
recipes.addShaped("seared_gauge", <tconstruct:seared_tank:1>, [
	[<tconstruct:materials>, hashBlock["Glass"] , <tconstruct:materials>],
	[hashBlock["Glass"], <contenttweaker:seared_paste>, hashBlock["Glass"]],
	[<tconstruct:materials>, hashBlock["Glass"], <tconstruct:materials>]
]);
recipes.addShaped("seared_window", <tconstruct:seared_tank:2>, [
	[<tconstruct:materials>, hashBlock["Glass"] , <tconstruct:materials>],
	[<tconstruct:materials>, hashBlock["Glass"], <tconstruct:materials>],
	[<tconstruct:materials>, hashBlock["Glass"], <tconstruct:materials>]
]);

recipes.addShaped("seared_furnace", <tconstruct:seared_furnace_controller>, [
	[<tconstruct:seared:1>, <tconstruct:seared:1>, <tconstruct:seared:1>],
	[<tconstruct:seared:9>, <contenttweaker:low_grade_charcoal>, <tconstruct:seared:9>],
	[<tconstruct:seared:1>, <tconstruct:seared:1>, <tconstruct:seared:1>]
]);
recipes.addShaped("smeltery", <tconstruct:smeltery_controller>, [
	[<contenttweaker:seared_paste>, <tconstruct:seared:2>, <contenttweaker:seared_paste>],
	[<tconstruct:seared:2>, <contenttweaker:block_low_grade_charcoal>, <tconstruct:seared:2>],
	[<contenttweaker:seared_paste>, <tconstruct:seared:2>, <contenttweaker:seared_paste>]
]);
recipes.addShaped("smeltery_drain", <tconstruct:smeltery_io>, [
	[<tconstruct:materials>, <tconstruct:materials>, <contenttweaker:seared_paste>],
	[null, null, null],
	[<tconstruct:materials>, <tconstruct:materials>, <contenttweaker:seared_paste>]
]);
recipes.addShaped("tinker_tank", <tconstruct:tinker_tank_controller>, [
	[<contenttweaker:seared_paste>, <tconstruct:seared:8>, <contenttweaker:seared_paste>],
	[<tconstruct:seared_tank:1>, <minecraft:bucket>, <tconstruct:seared_tank>],
	[<tconstruct:seared:9>, <tconstruct:seared_tank:2>, <tconstruct:seared:9>]
]);