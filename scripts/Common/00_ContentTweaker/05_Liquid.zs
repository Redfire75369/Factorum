#loader contenttweaker
#priority -00005

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

var woodFuel = VanillaFactory.createFluid("wood_fuel", Color.fromHex("FF8080")) as Fluid;
woodFuel.temperature = 1400;
woodFuel.register();