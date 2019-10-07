#loader crafttweaker
#priority -00400

import crafttweaker.liquid.ILiquidDefinition;

var def = null as ILiquidDefinition;
for liquid in game.liquids {
	def = liquid.definition; 
	if (def.temperature % 100 == 0) {
		def.temperature -= 5;
	}
}

<liquid:clay>.definition.temperature = 1350;
<liquid:heliumplasma>.definition.temperature = 12995;
<liquid:sic_vapor>.definition.temperature = 2995;
