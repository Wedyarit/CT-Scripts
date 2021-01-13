# ProdigyTech

import mods.integrateddynamics.Squeezer;
import mods.inworldcrafting.FireCrafting;
import mods.prodigytech.solderer;
import mods.prodigytech.rotarygrinder;
import mods.prodigytech.magneticreassembler;
import mods.prodigytech.atomicreshaper;


print("Initializing 'ProdigyTech'...");

//----------// Squeezer Recipes //----------//

// Wet Sand
Squeezer.addRecipe(<alchemistry:wet_sand>, 
	<atum:sand>, 0.3,
	<prodigytech:ferramic_dust_tiny> * 8, 1.0,
	<prodigytech:ferramic_dust_tiny> * 5, 0.3,
	null);


//----------// Default Recipes //----------//

// Explosion Furnace
recipes.remove(<prodigytech:iron_dust_tiny>);
recipes.addShapeless(<prodigytech:iron_dust_tiny> * 3, [<bloodmagic:component:19>]);

// Explosion Furnace
recipes.remove(<prodigytech:explosion_furnace>);
recipes.addShaped(<prodigytech:explosion_furnace>,
[[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
 [<minecraft:stone>, <minecraft:gunpowder>, <minecraft:stone>],
 [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);

// Magmatic Aeroheater
recipes.remove(<prodigytech:magmatic_aeroheater>);
recipes.addShaped(<prodigytech:magmatic_aeroheater>,
[[<prodigytech:ferramic_ingot>, <minecraft:magma_cream>, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <evilcraft:dark_power_gem>, <prodigytech:ferramic_ingot>],
 [<minecraft:stone_slab>, <minecraft:magma_cream>, <minecraft:stone_slab>]]);

// Energion Aeroheater
recipes.remove(<prodigytech:energion_aeroheater>);
recipes.addShaped(<prodigytech:energion_aeroheater>,
[[<prodigytech:ferramic_ingot>, <prodigytech:circuit_crude>, <prodigytech:ferramic_ingot>],
 [<evilcraft:dark_gem>, <evilcraft:dark_power_gem>, <evilcraft:dark_gem>],
 [<prodigytech:ferramic_ingot>, <minecraft:furnace>, <prodigytech:ferramic_ingot>]]);

// Capacitor Aeroheater
recipes.remove(<prodigytech:capacitor_aeroheater>);
recipes.addShaped(<prodigytech:capacitor_aeroheater>,
[[<prodigytech:ferramic_ingot>, null, <prodigytech:ferramic_ingot>],
 [<evilcraft:dark_gem>, <prodigytech:circuit_refined>, <evilcraft:dark_gem>],
 [<prodigytech:ferramic_ingot>, <prodigytech:ferramic_ingot>, <prodigytech:ferramic_ingot>]]);

// Rotary Grinder
recipes.remove(<prodigytech:rotary_grinder>);
recipes.addShaped(<prodigytech:rotary_grinder>,
[[<prodigytech:ferramic_ingot>, <prodigytech:ferramic_ingot>, <prodigytech:ferramic_ingot>],
 [<soulus:gear_bone_dry>, <soulus:gear_bone_dry>, <soulus:gear_bone_dry>],
 [<prodigytech:ferramic_ingot>, null, <prodigytech:ferramic_ingot>]]);

// Heat Sawmill
recipes.remove(<prodigytech:heat_sawmill>);
recipes.addShaped(<prodigytech:heat_sawmill>,
[[<prodigytech:ferramic_ingot>, null, <prodigytech:ferramic_ingot>],
 [<evilcraft:dark_spike>, <evilcraft:dark_spike>, <evilcraft:dark_spike>],
 [<prodigytech:ferramic_ingot>, <soulus:gear_bone_dry>, <prodigytech:ferramic_ingot>]]);

// Food Purifier
recipes.remove(<prodigytech:food_purifier>);
recipes.addShaped(<prodigytech:food_purifier>,
[[<prodigytech:ferramic_ingot>, <uniquecrops:invisiglass>, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <soulus:gear_bone_dry>, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <prodigytech:carbon_plate>, <prodigytech:ferramic_ingot>]]);

 // Incinerator
recipes.remove(<prodigytech:incinerator>);
recipes.addShaped(<prodigytech:incinerator>,
[[<prodigytech:ferramic_ingot>, null, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <soulus:gear_bone_dry>, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <minecraft:flint_and_steel>, <prodigytech:ferramic_ingot>]]);

 // Solid Fuel Aeroheater
recipes.remove(<prodigytech:solid_fuel_aeroheater>);
recipes.addShaped(<prodigytech:solid_fuel_aeroheater>,
[[<prodigytech:ferramic_ingot>, <soulus:gear_bone_dry>, <prodigytech:ferramic_ingot>],
 [<evilcraft:dark_power_gem>, <evilcraft:blood_infuser>, <evilcraft:dark_power_gem>],
 [<prodigytech:ferramic_ingot>, <prodigytech:ash>, <prodigytech:ferramic_ingot>]]);

 // Solderer
recipes.remove(<prodigytech:solderer>);
recipes.addShaped(<prodigytech:solderer>,
[[<prodigytech:ferramic_ingot>, <minecraft:magma>, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <evilcraft:dark_power_gem>, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <prodigytech:carbon_plate>, <prodigytech:ferramic_ingot>]]);

// Fuel Processor
recipes.remove(<prodigytech:fuel_processor>);
recipes.addShaped(<prodigytech:fuel_processor>,
[[<prodigytech:ferramic_ingot>, null, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <prodigytech:circuit_crude>, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <evilcraft:dark_gem>, <prodigytech:ferramic_ingot>]]);

// Automatic Crystal Cutter
recipes.remove(<prodigytech:automatic_crystal_cutter>);
recipes.addShaped(<prodigytech:automatic_crystal_cutter>,
[[<prodigytech:ferramic_ingot>, <uniquecrops:invisiglass>, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <prodigytech:circuit_crude>, <prodigytech:crystal_cutter>],
 [<prodigytech:ferramic_ingot>, <uniquecrops:invisiglass>, <prodigytech:ferramic_ingot>]]);

// Atomic Reshaper
recipes.remove(<prodigytech:atomic_reshaper>);
recipes.addShaped(<prodigytech:atomic_reshaper>,
[[<prodigytech:ferramic_ingot>, <evilcraft:dark_power_gem>, <prodigytech:ferramic_ingot>],
 [<prodigytech:carbon_plate>, <prodigytech:circuit_perfected>, <prodigytech:carbon_plate>],
 [<prodigytech:ferramic_ingot>, <evilcraft:dark_block>, <prodigytech:ferramic_ingot>]]);

// Food Enricher
recipes.remove(<prodigytech:food_enricher>);
recipes.addShaped(<prodigytech:food_enricher>,
[[<prodigytech:ferramic_ingot>, <evilcraft:dark_power_gem>, <prodigytech:ferramic_ingot>],
 [<evilcraft:dark_gem>, <prodigytech:circuit_refined>, <prodigytech:ferramic_ingot>],
 [<soulus:gear_bone_dry>, <prodigytech:carbon_plate>, <prodigytech:ferramic_ingot>]]);

// Ore Refinery
recipes.remove(<prodigytech:ore_refinery>);
recipes.addShaped(<prodigytech:ore_refinery>,
[[<evilcraft:dark_gem>, <evilcraft:dark_power_gem>, <prodigytech:ferramic_ingot>],
 [<prodigytech:ferramic_ingot>, <prodigytech:circuit_refined>, <prodigytech:ferramic_ingot>],
 [<evilcraft:dark_gem>, <evilcraft:dark_power_gem>, <prodigytech:ferramic_ingot>]]);

// Magnetic Reassembler
recipes.remove(<prodigytech:magnetic_reassembler>);
recipes.addShaped(<prodigytech:magnetic_reassembler>,
[[<prodigytech:ferramic_ingot>, <evilcraft:dark_power_gem>, <prodigytech:ferramic_ingot>],
 [<evilcraft:dark_gem>, <prodigytech:circuit_refined>, <evilcraft:dark_gem>],
 [<prodigytech:ferramic_ingot>, <evilcraft:dark_power_gem>, <prodigytech:ferramic_ingot>]]);

// Crystal Cutter
recipes.remove(<prodigytech:crystal_cutter>);
recipes.addShaped(<prodigytech:crystal_cutter>,
[[<prodigytech:ferramic_gear>, <soulus:gear_bone_dry>, <prodigytech:ferramic_gear>],
 [null, <prodigytech:ferramic_ingot>, null],
 [null, <evilcraft:dark_stick>, null]]);

// 125‎°C Heat Capacitor
recipes.remove(<prodigytech:heat_capacitor_0:12000>);
recipes.addShaped(<prodigytech:heat_capacitor_0:12000>,
[[null, <prodigytech:ferramic_ingot>, null],
 [<prodigytech:ferramic_ingot>, <evilcraft:dark_gem>, <prodigytech:ferramic_ingot>],
 [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>]]);

// 250‎°C Heat Capacitor
recipes.remove(<prodigytech:heat_capacitor_1:12000>);
recipes.addShaped(<prodigytech:heat_capacitor_1:12000>,
[[null, <prodigytech:heat_capacitor_0:12000>, null],
 [<prodigytech:carbon_plate>, <evilcraft:dark_power_gem>, <prodigytech:carbon_plate>],
 [null, <prodigytech:heat_capacitor_0:12000>, null]]);

// 500‎°C Heat Capacitor
recipes.remove(<prodigytech:heat_capacitor_2:12000>);
recipes.addShaped(<prodigytech:heat_capacitor_2:12000>,
[[null, <prodigytech:heat_capacitor_1:12000>, null],
 [<evilcraft:dark_power_gem>, <evilcraft:dark_block>, <evilcraft:dark_power_gem>],
 [null, <prodigytech:heat_capacitor_1:12000>, null]]);

// Energion Dust
recipes.remove(<prodigytech:energion_dust>);
recipes.addShaped(<prodigytech:energion_dust>,
[[<prodigytech:coal_dust>, <prodigytech:inferno_fuel>, <prodigytech:inferno_fuel>],
 [<prodigytech:coal_dust>, <prodigytech:ferramic_dust>, <uniquecrops:generic:4>],
 [<evilcraft:dull_dust>, <evilcraft:dull_dust>, <uniquecrops:generic:4>]]);

// Pattern Circuit Crude
recipes.remove(<prodigytech:pattern_circuit_crude>);

// Circuit Plate
recipes.remove(<prodigytech:circuit_plate>);
recipes.addShaped(<prodigytech:circuit_plate> * 2,
[[<ore:dyeGreen>, <ceramics:unfired_clay:8>, <soulus:glue>],
 [<minecraft:paper>, <ore:nuggetIron>, null],
 [null, null, null]]);
 

//----------// FireCrafting Recipes //----------//

// Coal Dust
	FireCrafting.addRecipe(<prodigytech:coal_dust>, <ore:dustWood> * 8);


//----------// Rotary Grinder Recipes //----------//

// Tiny Gold Dust
rotarygrinder.addRecipe(<uniquecrops:generic:6>, <prodigytech:gold_dust_tiny>);
// Iron Sand
rotarygrinder.addRecipe(<uniquecrops:oldcobble>, <bloodmagic:component:19>);
// Bone Meal
rotarygrinder.addRecipe(<soulus:bone_normal>, <minecraft:dye:15> * 3);

//----------// Magnetic Reassembler Recipes //----------//

// Dry Bone
mods.prodigytech.explosionfurnace.recipes.addRecipe(<minecraft:bone>, <soulus:bone_dry>, 180);

// Blackened Bone
mods.prodigytech.explosionfurnace.recipes.addRecipe(<soulus:bone_dry>, <soulus:bone_nether>, 90);

// Diamond
mods.prodigytech.explosionfurnace.recipes.addRecipe(<minecraft:coal_block>, <minecraft:diamond>, 133120);


//----------// Explosion Furnace Recipes //----------//

// End Crystal
mods.prodigytech.explosionfurnace.explosives.add(<minecraft:end_crystal>, 16640);

// Thower's Emblem
mods.prodigytech.explosionfurnace.dampeners.add(<uniquecrops:emblem.weight>, 16640);

// Soul Sand
mods.prodigytech.explosionfurnace.dampeners.add(<minecraft:soul_sand>, 720);


//----------// Solderer Recipes //----------//

// Variable
//recipes.remove(<integrateddynamics:variable>);
recipes.removeShaped(<integrateddynamics:variable> * 24, [[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <ore:paper>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);

mods.prodigytech.solderer.addRecipe(<prodigytech:pattern_circuit_perfected>, <integrateddynamics:crystalized_menril_block>, <integrateddynamics:variable> * 4, 8, 128);

// Logic Director
recipes.remove(<integrateddynamics:logic_director>);
solderer.addRecipe(<prodigytech:pattern_circuit_perfected>, <integrateddynamics:crystalized_chorus_block>, <integrateddynamics:logic_director> * 2, 8, 128);

// Crude Circuit
solderer.removeRecipe(<prodigytech:pattern_circuit_crude>, null);
solderer.addRecipe(<prodigytech:pattern_circuit_crude>, <prodigytech:ferramic_nugget>, <prodigytech:circuit_crude>, 3, 128);

// Refined Circuit
solderer.removeRecipe(<prodigytech:pattern_circuit_refined>, <minecraft:iron_ingot>);
solderer.addRecipe(<prodigytech:pattern_circuit_refined>, <minecraft:iron_nugget>, <prodigytech:circuit_refined>, 6, 128);

// PerfectedCircuit 
solderer.removeRecipe(<prodigytech:pattern_circuit_perfected>, <minecraft:diamond>);
solderer.addRecipe(<prodigytech:pattern_circuit_perfected>, <uniquecrops:generic:7>, <prodigytech:circuit_perfected>, 9, 128);


//----------// Atomic Reshaper Recipes //----------//

// Ores
atomicreshaper.removeRecipe(<ore:cobblestone>);
atomicreshaper.removeRecipe(<ore:stone>);


//----------// Squeezer Recipes //----------//

// Crude circuit pattern
recipes.remove(<prodigytech:pattern_circuit_crude>);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:iron_block>, <prodigytech:pattern_circuit_crude>, null);
// Refined circuit pattern
recipes.remove(<prodigytech:pattern_circuit_refined>);
mods.integrateddynamics.Squeezer.addRecipe(<prodigytech:ferramic_block>, <prodigytech:pattern_circuit_refined>, null);
// Perfected circuit pattern
recipes.remove(<prodigytech:pattern_circuit_perfected>);
mods.integrateddynamics.Squeezer.addRecipe(<minecraft:gold_block>, <prodigytech:pattern_circuit_perfected>, null);


print("Initializied 'ProdigyTech'");