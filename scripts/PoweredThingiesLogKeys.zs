#loader crafttweaker
#priority 10000
#packmode theta sigma omega

import mods.poweredthingies.Tweaker;

var machines = [

	Tweaker.compoundTweaker();
	Tweaker.fluidCompoundTweaker();
	Tweaker.fluidBurnerFuelTweaker();
	Tweaker.fluidBurnerCoolantTweaker();
	Tweaker.itemCompoundProducerTweaker();
	Tweaker.incineratorTweaker();
	Tweaker.itemLiquefierTweaker();
	Tweaker.poweredKilnTweaker();
	Tweaker.powderMakerTweaker();

];

for i in machines {
	i.logKeys();
}
