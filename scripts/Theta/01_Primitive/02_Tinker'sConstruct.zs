#loader crafttweaker
#priority -10102

recipes.remove(<tconstruct:deco_ground>);
recipes.remove(<tconstruct:dried_clay>);
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
	[<tconstruct:seared:3>, <tconstruct:seared:3, <tconstruct:seared:3>],
	[<tconstruct:seared:3>, <tconstruct:seared:3, <tconstruct:seared:3>],
	[<tconstruct:seared:3>, <tconstruct:seared:3, <tconstruct:seared:3>]
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
	[hashBlock["Glass"], <contenttweaker:seared_paste>, hashBlock["Glass"],
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
