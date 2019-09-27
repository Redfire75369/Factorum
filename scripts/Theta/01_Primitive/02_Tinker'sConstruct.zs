#loader crafttweaker
#priority -10102

recipes.remove(<tconstruct:seared:*>);
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.remove(<tconstruct:seared_tank:*>);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.remove(<tconstruct:smeltery_io>);
recipes.remove(<tconstruct:tinker_tank_controller>);

recipes.addShaped("seared_bricks", <tconstruct:seared:3>, [
	[null, <tconstruct:materials>, null],
	[<tconstruct:materials>, <contenttweaker:seared_paste>, <tconstruct:materials>],
	[null, <tconstruct:materials>, null]
]);

recipes.removeShaped("seared_furnace", <tconstruct:seared_furnace_controller>, [
	[<tconstruct:seared:1>, <tconstruct:seared:1>, <tconstruct:seared:1>],
	[<tconstruct:seared:1>, <contenttweaker:low_grade_charcoal>, <tconstruct:seared:1>],
	[<tconstruct:seared:1>, <tconstruct:seared:1>, <tconstruct:seared:1>]
]);
