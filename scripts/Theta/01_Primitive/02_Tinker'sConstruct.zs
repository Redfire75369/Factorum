#loader crafttweaker
#priority -10102
#packmode theta

import crafttweaker.data.IData;

/* Essential Items */

recipes.addShaped("seared_brick", <tconstruct:materials>, [
	[<contenttweaker:seared_shard>, <contenttweaker:seared_shard>],
	[<contenttweaker:seared_shard>, <contenttweaker:seared_shard>]
]);

furnace.addRecipe(<contenttweaker:medium_grade_charcoal> * 2, <contenttweaker:wood_pile>, 0.005000);
furnace.setFuel(<contenttweaker:medium_grade_charcoal>, 800);
furnace.setFuel(<contenttweaker:low_grade_charcoal>, 400);
furnace.setFuel(oreDict["plankWood"], 50);

mods.inworldcrafting.FluidToFluid.transform(<liquid:wood_fuel>, <liquid:water>, [<contenttweaker:low_grade_charcoal> * 4], true);

mods.inworldcrafting.FluidToItem.transform(<contenttweaker:mud> * 3, <liquid:water>, [<minecraft:dirt>], false);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:seared_paste>, <liquid:fire_water>, [<minecraft:rotten_flesh>], false);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:seared_shard>, <liquid:fire_water>, [<minecraft:cobblestone>], false);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:block_burnt_wood>, <liquid:fire_water>, [oreDict["logWood"]], false);
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:low_grade_charcoal>, <liquid:fire_water>, [<contenttweaker:block_burnt_wood>], false);

mods.tconstruct.Drying.addRecipe(<contenttweaker:dried_paste>, <contenttweaker:mud>, 150);
mods.tconstruct.Drying.addRecipe(<contenttweaker:dried_paste>, <contenttweaker:seared_paste>, 150);


/* Multiblock Components */
recipes.remove(<tcomplement:alloy_tank>);
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

recipes.addShaped("alloy_tank", <tcomplement:alloy_tank>, [
	[<contenttweaker:seared_paste>, <forge:bucketfilled>.withTag({FluidName: "wood_fuel", Amount: 1000}), <contenttweaker:seared_paste>],
	[<tconstruct:faucet>, <tconstruct:seared_tank>, <tconstruct:faucet>]
[);
recipes.addShaped("high_oven_controller", <tcomplement:high_oven_controller>, [
	[<tcomplement:materials:1>, <tcomplement:scorched_block:6>, <tcomplement:materials:1>],
	[<forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}), <contenttweaker:furnace_assembly>, <forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000})],
	[hashIngot["Ardite"], <immersiveengineering:stone_decoration:1>, hashIngot["Ardite"]]
]);
recipes.addShapedMirrored("scorched_drain", <tcomplement:high_oven_io>, [
	[<tcomplement:materials:1>, <tcomplement:materials:1>, <contenttweaker:scorched_paste>],
	[null, null, null],
	[<tcomplement:materials:1>, <tcomplement:materials:1>, <contenttweaker:scorched_paste>]
]);
recipes.addShaped("scorched_chute", <tcomplement:high_oven_io:1>, [
	[<tcomplement:materials:1>, <contenttweaker:scorched_paste>, <tcomplement:materials:1>],
	[<contenttweaker:scorched_paste>, null, <contenttweaker:scorched_paste>],
	[<tcomplement:materials:1> <contenttweaker:scorched_paste>, <tcomplement:materials:1>]
]);
recipes.addShaped("scorched_duct", <tcomplement:high_oven_io:2>, [
	[<tcomplement:materials:1>, <minecraft:stone>, <tcomplement:materials:1>],
	[<contenttweaker:scorched_paste>, null, <contenttweaker:scorched_paste>],
	[<tcomplement:materials:1>, <minecraft:stone>, <tcomplement:materials:1>]
]);
recipes.addShaped("scorched_casting_table", <tcomplement:scorched_casting>, [
	[<tcomplement:scorched_block>, <tconstruct:large_plate>.withTag({MaterialType: "stone"}), <tcomplement:scorched_block>],
	[<tcomplement:materials:1>, null, <tcomplement:materials:1>],
	[<tcomplement:materials:1>, null, <tcomplement:materials:1>]
]);
recipes.addShaped("scorched_casting_basin", <tcomplement:scorched_casting:1>, [
	[<tcomplement:materials:1>, null, <tcomplement:materials:1>],
	[<tcomplement:materials:1>, null, <tcomplement:materials:1>],
	[<tcomplement:scorched_block>, <tconstruct:large_plate>.withTag({MaterialType: "stone"}), <tcomplement:scorched_block>]
]);
recipes.addShaped("seared_melter", <tcomplement:melter>, [
	[<contenttweaker:seared_paste>, <forge:bucketfilled>.withTag({FluidName: "wood_fuel", Amount: 1000}), <contenttweaker:seared_paste>],
	[<tconstruct:materials>, <tconstruct:seared_tank>, <tconstruct:materials>],
	[<tcomplement:scorched_block:2>, <tconstruct:seared:2>, <tcomplement:scorched_block:2>]
]);
recipes.addShaped("seared_heater", <tcomplement:melter:8>, [
	[<contenttweaker:seared_paste>, <contenttweaker:low_grade_charcoal>, <contenttweaker:seared_paste>],
	[<tconstruct:materials>, <contenttweaker:furnace_assembly>, <tconstruct:materials>],
	[<tcomplement:scorched_block:2>, <tconstruct:seared:2>, <tcomplement:scorched_block:2>]
]);
recipes.addShaped("seared_casting_table", <tconstruct:casting>, [
	[<tconstruct:seared>, <tconstruct:large_plate>.withTag({MaterialType: "stone"}), <tconstruct:seared>],
	[<tconstruct:materials>, null, <tconstruct:materials>],
	[<tconstruct:materials>, null, <tconstruct:materials>]
]);
recipes.addShaped("seared_casting_basin", <tconstruct:casting:1>, [
	[<tconstruct:materials>, null, <tconstruct:materials>],
	[<tconstruct:materials>, null, <tconstruct:materials>],
	[<tconstruct:seared>, <tconstruct:large_plate>.withTag({MaterialType: "stone"}), <tconstruct:seared>]
]);
recipes.addShaped("seared_furnace", <tconstruct:seared_furnace_controller>, [
	[<tconstruct:materials>, <tconstruct:materials:2>, <tconstruct:materials>],
	[<contenttweaker:block_low_grade_charcoal>, <contenttweaker:furnace_assembly>, <contenttweaker:block_low_grade_charcoal>],
	[<tconstruct:materials>, <tconstruct:materials:2>, <tconstruct:materials>],
]);
recipes.addShaped("smeltery", <tconstruct:smeltery_controller>, [
	[<tconstruct:materials>, <tconstruct:seared:6>, <tconstruct:materials>],
	[<forge:bucketfilled>.withTag({FluidName: "wood_fuel", Amount: 1000}), <contenttweaker:furnace_assembly>, <forge:bucketfilled>.withTag({FluidName: "wood_fuel", Amount: 1000})],
	[<tcomplement:materials:1>, <tcomplement:materials:1>, <tcomplement:materials:1>],
]);
recipes.addShapedMirrored("smeltery_drain", <tconstruct:smeltery_io>, [
	[<tconstruct:materials>, <tconstruct:materials>, <contenttweaker:seared_paste>],
	[null, null, null],
	[<tconstruct:materials>, <tconstruct:materials>, <contenttweaker:seared_paste>]
]);
recipes.addShaped("tinker_tank", <tconstruct:tinker_tank_controller>, [
	[<contenttweaker:seared_paste>, <tconstruct:seared:8>, <contenttweaker:seared_paste>],
	[<tconstruct:seared_tank:1>, <minecraft:bucket>, <tconstruct:seared_tank:1>],
	[<tconstruct:seared:9>, <tconstruct:seared_tank:2>, <tconstruct:seared:9>]
]);
recipes.addShaped("solid_fuel_input", <tinker_io:fuel_input_machine>, [
	[<tconstruct:materials>, <tcomplement:materials>, <tconstruct:materials>],
	[<tconstruct:channel>, <forge:bucketfilled>.withTag({FluidName: "fluidnitrodiesel", Amount: 1000}), <tconstruct:channel>],
	[<tconstruct:materials>, <tcomplement:materials>, <tconstruct:materials>]
]);
recipes.addShaped("smart_output", <tinker_io:smart_output>, [
	[<tconstruct:materials>, <tcomplement:materials>, <tconstruct:materials>],
	[<tconstruct:channel>, <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000}), <tconstruct:channel>],
	[<tconstruct:materials>, <tcomplement:materials>, <tconstruct:materials>]
]);

/* Glass-Based Blocks*/
recipes.remove(<tconstruct:seared_glass>);
recipes.remove(<tconstruct:seared_tank:*>);

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
	[<tconstruct:materials:1>, <tconstruct:materials:1>],
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
} as IData;

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
