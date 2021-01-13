# Alchemistry

import mods.inworldcrafting.FluidToItem;

print("Initializing 'Alchemistry'...");

//----------// Default Recipes //----------//

// Fision Core
recipes.remove(<alchemistry:fission_core>);
recipes.addShaped(<alchemistry:fission_core>,
[[<alchemistry:ingot:24>, <alchemistry:fission_casing>, <alchemistry:ingot:24>],
 [<alchemistry:ingot:24>, <minecraft:nether_star>, <alchemistry:ingot:24>],
 [<alchemistry:ingot:24>, <alchemistry:fission_casing>, <alchemistry:ingot:24>]]);

// Atomizer
recipes.remove(<alchemistry:atomizer>);
recipes.addShaped(<alchemistry:atomizer>,
[[<soulus:ingot_niobium>, <soulus:ingot_endersteel_dark>, <soulus:ingot_niobium>],
 [<evilcraft:dark_stick>, <evilcraft:environmental_accumulation_core>, <evilcraft:dark_stick>],
 [<prodigytech:ferramic_gear>, <soulus:ingot_endersteel_dark>, <prodigytech:ferramic_gear>]]);

// Electrolyzer
recipes.remove(<alchemistry:electrolyzer>);
recipes.addShaped(<alchemistry:electrolyzer>,
[[null, <soulus:ingot_niobium>, null],
 [<integrateddynamics:crystalized_menril_chunk>, <soulus:crystal_dark>, <integrateddynamics:crystalized_menril_chunk>],
 [<soulus:ingot_endersteel>, <integrateddynamics:crystalized_menril_chunk>, <soulus:ingot_endersteel>]]);

// Chemical Dissolver
recipes.remove(<alchemistry:chemical_dissolver>);
recipes.addShaped(<alchemistry:chemical_dissolver>,
[[<evilcraft:dark_stick>, <soulus:ingot_niobium>, <evilcraft:dark_stick>],
 [<integrateddynamics:crystalized_menril_chunk>, <soulus:dust_midnight>, <integrateddynamics:crystalized_menril_chunk>],
 [<evilcraft:dark_stick>, <soulus:ingot_niobium>, <evilcraft:dark_stick>]]);

// Chemical Combiner
recipes.remove(<alchemistry:chemical_combiner>);
recipes.addShaped(<alchemistry:chemical_combiner>,
[[<soulus:ingot_niobium>, <evilcraft:dark_stick>, <soulus:ingot_niobium>],
 [<integrateddynamics:crystalized_menril_chunk>, <evilcraft:blood_infusion_core>, <integrateddynamics:crystalized_menril_chunk>],
 [<soulus:ingot_endersteel>, <soulus:ingot_endersteel>, <soulus:ingot_endersteel>]]);
 
// Evaporator>
recipes.remove(<alchemistry:evaporator>);
recipes.addShaped(<alchemistry:evaporator>,
[[<soulus:ingot_endersteel>, null, <soulus:ingot_endersteel>],
 [<soulus:ingot_endersteel_dark>, <evilcraft:environmental_accumulation_core>, <soulus:ingot_endersteel_dark>],
 [<evilcraft:dark_stick>, <soulus:ingot_endersteel_dark>, <evilcraft:dark_stick>]]);
 
// Liquifier
recipes.remove(<alchemistry:liquifier>);
recipes.addShaped(<alchemistry:liquifier>,
[[<soulus:ingot_endersteel>, <soulus:crystal_dark>, <soulus:ingot_endersteel>],
 [<evilcraft:dark_stick>, null, <evilcraft:dark_stick>],
 [<soulus:ingot_endersteel>, <soulus:ingot_niobium>, <soulus:ingot_endersteel>]]);


//----------// FluidToItem Recipes //----------//

// Wet Sand
FluidToItem.transform(<alchemistry:wet_sand>, <liquid:water>, [<minecraft:sand>], false);

//----------// Dissolver Recipes //----------//

// Thory
mods.alchemistry.Dissolver.removeRecipe(<minecraft:end_stone>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:end_stone>, false, 1,
[[14.01, <alchemistry:element:80>], 
 [14.01, <alchemistry:element:90>],
 [14.01, <alchemistry:element:3>],
 [1.4, <alchemistry:element:60>],
 [56.57, <alchemistry:compound:1> * 2]]);

mods.alchemistry.Dissolver.removeRecipe(<minecraft:end_bricks>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:end_bricks>, false, 1,
[[14.01, <alchemistry:element:80>], 
 [14.01, <alchemistry:element:90>],
 [14.01, <alchemistry:element:3>],
 [1.4, <alchemistry:element:60>],
 [56.57, <alchemistry:compound:1> * 2]]);

print("Initializied 'Alchemistry'");