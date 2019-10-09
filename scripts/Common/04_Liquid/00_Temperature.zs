#loader crafttweaker
#priority -00400

import crafttweaker.liquid.ILiquidDefinition;

var def = null as ILiquidDefinition;
var newTemp = null as int;
for liquid in game.liquids {
	if (liquid.temperature % 100 == 0) {
		newTemp = liquid.temperature - 5;
		liquid.temperature = newTemp;
	}
}

<liquid:clay>.definition.temperature = 1350;
<liquid:heliumplasma>.definition.temperature = 12995;
<liquid:sic_vapor>.definition.temperature = 2995;
