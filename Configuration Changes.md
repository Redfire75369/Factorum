# Configuration Changes

## AdvGenerators/client.cfg

## AdvGenerators/overrides/*
- Add Turbine Fuels
- Add Carbon Values
- Add Heat Exchanger Recipes
- Add Capacitor Materials
	- Add Tier
	- Add MJ Capacity
	- Add Upgrade Kit
- Add Turbine Materials
	- Add Tier
	- Add Inertia Multiplier
	- Add Max MJ/t
	- Add Rotor
	- Add Blade
	- Add Upgrade Kit
	- Registered Only If OreDict Present

## AE2Stuff/overrides

## agricraft/config.cfg
- B:"Disable particles"=false
	- Change to true
- I:"Crop Stat Divisor"=2
	- 
- S:"Crossover Chance"=0.15
	-
- B:"Disable Vanilla Farming"=false
	- Change to true
- S:"Growth rate multiplier"=1.0
	-
- S:"Mutation Chance"=0.2
	-
- I:"Channel Capacity"=500
	- Change to 1000
- B:"Fill tank from flowing water"=false
	- Change to true

## apotheosis/apotheosis.cfg
-  B:"Enable Deadly Module"=true
	- Change to false
-  B:"Enable Potion Module"=true
	- Change to false

## apotheosis/deadly.cfg

## apotheosis/enchantability.cfg
- Change Enchantability Values

## apotheosis/enchantment_module.cfg
- S:"Max Normal Power"=20.0
	- Change to 40.0
- S:"Max Power"=75.0
	- Change to 490.0

## apotheosis/enchantments.cfg
- Configure Max Levels for Enchants
- Configure Min Levels for Enchants
- \Configure Max Enchanting Power\
- Configure Min Enchanting Power

## apotheosis/garden.cfg
- I:"Cactus Height"=5
	- Change to 7
- I:"Reed Height"=255
	- Change to 63
## apotheosis/potions.cfg

## apotheosis/spawner.cfg
- S:"Banned Mobs" <>
	- Add Boss Mobs and Rare Mobs
- Edit Modifier Appliers
- Ask Expert For Help with "The amount each item changes this stat"

## AppliedEnergistics2/AppliedEnergistics2.cfg
- I:chargedStaff=8000
	- Change to 128000
- I:colorApplicator=20000
	- Change to 320000
- I:entropyManipulator=200000
	- Change to 3200000
- I:matterCannon=200000
	- Change to 3200000
- I:portableCell=20000
	- Change to 320000
- I:wirelessTerminal=1600000
	- Change to 12800000
- S:SEARCH_MODE=AUTOSEARCH
	- Change to AUTOSEARCH_KEEP
- B:disableColoredCableRecipesInJEI=true
	- Change to false
- I:MatterBalls=256
	- Change to 4096
- I:Singularity=256000
	- Change to 524288000
- D:oreDoublePercentage=90.0
	- Change to 50.0
- D:UsageMultiplier=1.0
	- Change to 4.0
- D:spatialPowerExponent=1.35
	- Change to 1.50
- D:spatialPowerMultiplier=1250.0
	- Change to 2000.0
- D:wirelessBaseCost=8.0
	- Change to 2048.0
- D:wirelessBaseRange=16.0
	- Change to 128.0
- D:wirelessBoosterExp=1.5
	- Change to 1.6
- D:wirelessBoosterRangeMultiplier=1.0
	- Change to 1.6
- D:wirelessCostMultiplier=1.0
	- Change to 4.0
- D:wirelessTerminalDrainMultiplier=1.0
	 - Change to 4.0

## AppliedEnergistics2/CustomRecipes.cfg
- B:exportItemNames=true
	- Change to false

## AppliedEnergistics2/extracells.cfg
- B:shortenedBuckets=true
	- Change to false

## AppliedEnergistics2/Facades.cfg
- facades {

	    minecraft {
	        I:glass=16
	        I:stained_glass=16
	    }
	
	    appliedenergistics2 {
	        I:quartz_glass=16
	        I:quartz_vibrant_glass=16
	    }
	
	}
			- Add 
			actuallyadditions {
				I:block_greenhouse_glass=16
			}
			astralsorcery {
				I:iteminfusedglass=16
			}
			bloodarsenal {
				I:blood_stained_glass=16
			}
			botania {
				I:elfglass=16
				I:managlass=16
			}
			botany {
				I:stained=16
			}
			chisel {
				I:glass=16
				I:glassdyedblack=16
				I:glassdyedblue=16
				I:glassdyedbrown=16
				I:glassdyedcyan=16
				I:glassdyedgray=16
				I:glassdyedgreen=16
				I:glassdyedlightblue=16
				I:glassdyedlightgray=16
				I:glassdyedlime=16
				I:glassdyedmagenta=16
				I:glassdyedorange=16
				I:glassdyedpink=16
				I:glassdyedpurple=16
				I:glassdyedred=16
				I:glassdyedwhite=16
				I:glassdyedyellow=16
			}
			cyclicmagic {
				I:glass_strong=16
			}
			enderio {
				I:block_dark_fused_glass=16
				I:block_dark_fused_quartz=16
				I:block_enlightened_fused_glass=16
				I:block_enlightened_fused_quartz=16
				I:block_fused_glass=16
				I:block_fused_quartz=16
			}
			extratrees {
				I:stainedglass=16
			}
			glassential {
				I:glass_clear=16
				I:glass_dark=16
				I:glass_ethereal=16
				I:glass_ethereal_reverse=16
				I:glass_ghostly=16
				I:glass_light=16
				I:glass_redstone=16
			}
			integratedterminals {
				I:chorus_glass=16
				I:menril_glass=16
			}
			mysticalagriculture {
				I:soul_glass=16
				I:witherproof_glass=16
			}
			naturalpledge {
				I:aqua_glass=16
			}
			sonarcore {
				I:clearstableglass=16
				I:stableglass=16
			}
			tconstruct {
				I:clear_glass=16
				I:clear_stained_glass=16
			}
			techreborn {
				I:reinforced_glass=16
			}
			tg {
				I:fortified_glass=16
			}
			thermalfoundation {
				I:glass=16
				I:glass_alloy=16
			}

## AppliedEnergistics2/VersionChecker.cfg
- S:level=Beta
	- Change to Alpha

## astralsorcery/aevitas_ore_perk.cfg
- S:data <
        oreCoal;5200
        oreIron;2500
        oreGold;550
        oreLapis;140
        oreRedstone;700
        oreDiamond;180
        oreEmerald;100
        oreAluminum;600
        oreCopper;1100
        oreTin;1500
        oreLead;1000
        oreCertusQuartz;500
        oreNickel;270
        orePlatinum;90
        oreSilver;180
        oreMithril;1
        oreRuby;400
        oreSapphire;400
        oreUranium;550
        oreYellorite;560
        oreZinc;300
        oreSulfur;600
        oreOsmium;950>
     - Edit Weights of Ores

## astralsorcery/amulet_enchantments.cfg
- S:data <
        minecraft:protection:10
        minecraft:fire_protection:5
        minecraft:feather_falling:5
        minecraft:blast_protection:2
        minecraft:projectile_protection:5
        minecraft:respiration:2
        minecraft:aqua_affinity:2
        minecraft:thorns:1
        minecraft:depth_strider:2
        minecraft:frost_walker:2
        minecraft:sharpness:10
        minecraft:smite:5
        minecraft:bane_of_arthropods:5
        minecraft:knockback:5
        minecraft:fire_aspect:2
        minecraft:looting:2
        minecraft:sweeping:2
        minecraft:efficiency:10
        minecraft:silk_touch:1
        minecraft:unbreaking:5
        minecraft:fortune:2
        minecraft:power:10
        minecraft:punch:2
        minecraft:flame:2
        minecraft:infinity:1
        minecraft:luck_of_the_sea:2
        minecraft:lure:2
        minecraft:mending:2
        draconicevolution:enchant_reaper:2
        extrautils2:xu.kaboomerang:10
        extrautils2:xu.zoomerang:10
        extrautils2:xu.burnerang:10
        extrautils2:xu.bladerang:10
        extrautils2:xu.boomereaperang:10
        randomthings:magnetic:1
        minecraft:tb.eldritchbane:2
        minecraft:tb.elderknowledge:2
        minecraft:tb.tainted:2
        endercore:xpboost:5
        endercore:autosmelt:2
        enderio:soulbound:1
        enderio:shimmer:1
        enderio:witherarrow:5
        enderio:repellent:1
        enderio:witherweapon:5
        bewitchment:extra_mp:2
        bewitchment:protection_spirit:5
        bewitchment:protection_demon:5
        bewitchment:potent_ward:1
        bewitchment:desperate_ward:10
        bewitchment:hex_protection:5
        bewitchment:occultation:5
        bewitchment:taglock_protection:2
        bibliocraft:bibliocraft.deathcompassench:1
        bibliocraft:bibliocraft.readingench:5
        naturalpledge:heavy:10
        naturalpledge:light:10
        tg:regen_primal:1
        woot:headhunter:2
        yoyos:collecting:5
        cyclicmagic:enchantment.autosmelt:2
        cyclicmagic:enchantment.beheading:1
        cyclicmagic:enchantment.excavation:1
        cyclicmagic:enchantment.launch:10
        cyclicmagic:enchantment.lifeleech:10
        cyclicmagic:enchantment.magnet:1
        cyclicmagic:enchantment.multishot:1
        cyclicmagic:enchantment.quickdraw:1
        cyclicmagic:enchantment.reach:1
        cyclicmagic:enchantment.venom:10
        cyclicmagic:enchantment.waterwalking:1
        cyclicmagic:enchantment.expboost:1
        apotheosis:hell_infusion:1
        apotheosis:mounted_strike:2
        apotheosis:depth_miner:2
        apotheosis:stable_footing:2
        apotheosis:scavenger:1
        apotheosis:icy_thorns:2
        apotheosis:tempting:5
        apotheosis:shield_bash:2
        apotheosis:reflective:2
        apotheosis:knowledge:2
        apotheosis:splitting:2
        apotheosis:natures_blessing:2
        apotheosis:rebounding:2
        apotheosis:magic_protection:5
        apotheosis:capturing:1
        apotheosis:true_infinity:1
        astralsorcery:enchantment.as.nightvision:1
        astralsorcery:enchantment.as.smelting:1
        cofhcore:holding:5
        cofhcore:insight:5
        cofhcore:leech:5
        cofhcore:multishot:5
        cofhcore:smashing:2
        cofhcore:smelting:2
        cofhcore:soulbound:5
        cofhcore:vorpal:2
        enderzoo:witherarrow:5
        enderzoo:witherweapon:5>
	- Edit Weights of Enchantments which can be buffed by the Enchantment Amulet

## astralsorcery/fluid_rarities.cfg
- S:data <
        water;2147483647;2147483647;14000
        lava;4000000;1000000;7500
        crystaloil;600000;400000;800
        empoweredoil;350000;150000;200
        redstone;120000;70000;500
        glowstone;120000;70000;500
        ender;140000;60000;250
        pyrotheum;200000;120000;200
        cryotheum;200000;120000;200
        refined_oil;480000;400000;600
        refined_fuel;450000;300000;550
        iron;600000;350000;900
        gold;400000;350000;600
        cobalt;150000;150000;80
        ardite;150000;150000;80
        emerald;60000;90000;30
        fluidoil;500000;350000;900
        fluidnitrodiesel;400000;250000;450
        ic2uu_matter;600;800;1
        ic2biomass;300000;200000;600
        ic2biogas;250000;150000;500
        mana;550000;120000;1500
        nacre;150000;250000;250>
	- Edit Weights of Fluids from evershifting fountains' neromantic prime

## astralsorcery/herdable_animals_blacklist.cfg
- S:data <>
	- Edit Animals that can't be used in a Bootes ritual
	
## astralsorcery/mineralis_ritual.cfg
- S:data <
        oreCoal;5200
        oreIron;2500
        oreGold;550
        oreLapis;140
        oreRedstone;700
        oreDiamond;180
        oreEmerald;100
        oreAluminum;600
        oreCopper;1100
        oreTin;1500
        oreLead;1000
        oreCertusQuartz;500
        oreNickel;270
        orePlatinum;90
        oreSilver;180
        oreMithril;1
        oreRuby;400
        oreSapphire;400
        oreUranium;550
        oreYellorite;560
        oreZinc;300
        oreSulfur;600
        oreOsmium;950>
	- Edit Weights of Ores from Mineralis Ritual

## astralsorcery/perk_void_trash_replacement.cfg
- S:data <
        oreCoal;5200
        oreIron;2500
        oreGold;550
        oreLapis;140
        oreRedstone;700
        oreDiamond;180
        oreEmerald;100
        oreAluminum;600
        oreCopper;1100
        oreTin;1500
        oreLead;1000
        oreCertusQuartz;500
        oreNickel;270
        orePlatinum;90
        oreSilver;180
        oreMithril;1
        oreRuby;400
        oreSapphire;400
        oreUranium;550
        oreYellorite;560
        oreZinc;300
        oreSulfur;600
        oreOsmium;950>
	- Edit Weights of Ores

## astralsorcery/treasure_shrine.cfg
**S:data <
        oreCoal;5200
        oreIron;2500
        oreGold;550
        oreLapis;140
        oreRedstone;700
        oreDiamond;180
        oreEmerald;100
        oreAluminum;600
        oreCopper;1100
        oreTin;1500
        oreLead;1000
        oreCertusQuartz;500
        oreNickel;270
        orePlatinum;90
        oreSilver;180
        oreMithril;1
        oreRuby;400
        oreSapphire;400
        oreUranium;550
        oreYellorite;560
        oreZinc;300
        oreSulfur;600
        oreOsmium;950
        >**
	- Edit Weights of Ores in Treasure Shrines

## bloodarsenal/bloodarsenal.cfg
- I:bloodBurnerRitualActivationCost=10000
	- Change to 25000 (Less if early game)
- I:bloodBurnerRitualRefreshCost=200
	- Change to 100
- I:infusionRitualActivationCost=10000
	- Change to 100000
- I:infusionRitualRefreshCost=100
	- Change to 7200
- I:purificationRitualMinLP=10000
	- Change to 50000
- I:purificationRitualRefreshCost=20
	- Change to 250
- I:purificationtRitualActivationCost=10000
	- Change to 40000
- I:refinedLifeEssenceConversion=10
	- Change to 25
- I:imperfectEnchantResetActivationCost=5000
	- Change to 15000
- I:imperfectIceActivationCost=500
	- Change to 2500
- I:imperfectLightningActivationCost=5000
	- Change to 27500
- I:imperfectSnowActivationCost=500
	- Change to 1500
- Values {
	}
	- Edit Accordingly
