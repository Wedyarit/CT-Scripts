# IntegratedDynamics

import mods.uniquecrops.SeedCrafting;
import mods.soulus.Composer;

print("Initializing 'IntegratedDynamics'...");

//----------// Default Recipes //----------//

// Crafting Interface
recipes.remove(<integratedcrafting:part_interface_crafting_item>);
recipes.addShaped(<integratedcrafting:part_interface_crafting_item>,
[[<alchemistry:ingot:56>, <uniquecrops:seedartisia>, <alchemistry:ingot:56>],
 [<integrateddynamics:variable_transformer>, <integrateddynamics:crystalized_menril_block>, <integrateddynamics:variable_transformer:1>],
 [<alchemistry:ingot:56>, <uniquecrops:seedartisia>, <alchemistry:ingot:56>]]);

// Crafting Writer
recipes.remove(<integratedcrafting:part_crafting_writer_item>);
recipes.addShaped(<integratedcrafting:part_crafting_writer_item>,
[[<uniquecrops:seedartisia>, <uniquecrops:seedartisia>, <uniquecrops:seedartisia>],
 [<minecraft:crafting_table>, <integrateddynamics:variable_transformer>, <minecraft:crafting_table>],
 [<uniquecrops:seedartisia>, <uniquecrops:seedartisia>, <uniquecrops:seedartisia>]]);

// Drying Bassin
recipes.remove(<integrateddynamics:drying_basin>);

// Wrench
recipes.remove(<integrateddynamics:wrench>);
recipes.addShaped(<integrateddynamics:wrench>,
[[null, <integrateddynamics:crystalized_menril_chunk>, <soulus:nugget_niobium>],
 [null, <evilcraft:dark_stick>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, null, null]]);

// Squeezer
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped(<integrateddynamics:squeezer>,
[[<minecraft:stick>, <evilcraft:dark_block>, <minecraft:stick>],
 [<minecraft:stick>, null, <minecraft:stick>],
 [<ore:plankWood>, <evilcraft:dark_gem>, <ore:plankWood>]]);

// Output Variable Transformer	
recipes.remove(<integrateddynamics:variable_transformer> * 4);
recipes.addShaped(<integrateddynamics:variable_transformer> * 4,
[[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:variable>, null],
 [<integrateddynamics:crystalized_menril_chunk>, <soulus:gear_oscillating>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:variable>, null]]);

// Mechanical Drying Basin
recipes.remove(<integrateddynamics:mechanical_drying_basin>);
recipes.addShaped(<integrateddynamics:mechanical_drying_basin>,
[[<alchemistry:ingot:57>, <minecraft:obsidian>, <alchemistry:ingot:57>],
 [<integrateddynamics:energy_battery>, <integrateddynamics:drying_basin>, <integrateddynamics:energy_battery>],
 [<alchemistry:ingot:57>, <minecraft:obsidian>, <alchemistry:ingot:57>]]);

// Mechanical Squeezer
recipes.remove(<integrateddynamics:mechanical_squeezer>);
recipes.addShaped(<integrateddynamics:mechanical_squeezer>,
[[<alchemistry:ingot:57>, <minecraft:obsidian>, <alchemistry:ingot:57>],
 [<integrateddynamics:energy_battery>, <integrateddynamics:squeezer>, <integrateddynamics:energy_battery>],
 [<alchemistry:ingot:57>, <minecraft:obsidian>, <alchemistry:ingot:57>]]);

// Logic Programmer
recipes.remove(<integrateddynamics:logic_programmer>);
recipes.addShaped(<integrateddynamics:logic_programmer>,
[[<alchemistry:ingot:78>, <integrateddynamics:variable>, <alchemistry:ingot:78>],
 [<integrateddynamics:variable_transformer>, <soulus:composer>, <integrateddynamics:variable_transformer:1>],
 [<alchemistry:ingot:78>, <integrateddynamics:variable>, <alchemistry:ingot:78>]]);

// Variable Store
recipes.remove(<integrateddynamics:variablestore>);
recipes.addShaped(<integrateddynamics:variablestore>,
[[<alchemistry:ingot:78>, <integrateddynamics:variable>, <alchemistry:ingot:78>],
 [<integrateddynamics:crystalized_menril_chunk>, <ore:chestWood>, <integrateddynamics:crystalized_menril_chunk>],
 [<alchemistry:ingot:78>, <integrateddynamics:variable>, <alchemistry:ingot:78>]]);

// Materializer
recipes.remove(<integrateddynamics:materializer>);
recipes.addShaped(<integrateddynamics:materializer>,
[[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:variable>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:variablestore>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, <alchemistry:ingot:45>, <integrateddynamics:crystalized_menril_chunk>]]);

// Energy Battery
recipes.remove(<integrateddynamics:energy_battery>);
recipes.addShaped(<integrateddynamics:energy_battery>,
[[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_brick>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, <soulus:block_niobium>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_brick>, <integrateddynamics:crystalized_menril_chunk>]]);

// Input Variable Transformer	
recipes.remove(<integrateddynamics:variable_transformer:1> * 4);
recipes.addShaped(<integrateddynamics:variable_transformer:1> * 4,
[[null, <integrateddynamics:variable>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, <soulus:gear_oscillating>, <integrateddynamics:crystalized_menril_chunk>],
 [null, <integrateddynamics:variable>, <integrateddynamics:crystalized_menril_chunk>]]);

// Output Variable Transformer	
recipes.remove(<integrateddynamics:variable_transformer> * 4);
recipes.addShaped(<integrateddynamics:variable_transformer> * 4,
[[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:variable>, null],
 [<integrateddynamics:crystalized_menril_chunk>, <soulus:gear_oscillating>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:variable>, null]]);


//----------// Composer Recipes //----------//

// Logic Cable
recipes.remove(<integrateddynamics:cable>);
Composer.recipe("integrateddynamics:cable", <integrateddynamics:cable> * 4)
	.setTime(16)
	.setShaped([
		[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>],
		[<soulus:bars_endersteel:4>, <evilcraft:vengeance_essence>, <soulus:bars_endersteel:4>],
		[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]
	])
	.create();
	
// Energy Interface
recipes.remove(<integratedtunnels:part_interface_energy_item>);
Composer.recipe("integratedtunnels:part_interface_energy_item", <integratedtunnels:part_interface_energy_item>)
	.setTime(16)
	.setShaped([
		[<evilcraft:vengeance_essence>, <soulus:bars_endersteel:5>, <evilcraft:vengeance_essence>],
		[<soulus:bars_endersteel:5>, <integrateddynamics:cable>, <soulus:bars_endersteel:5>],
		[<evilcraft:vengeance_essence>, <soulus:bars_endersteel:5>, <evilcraft:vengeance_essence>]
	])
	.create();

// Item Interface
recipes.remove(<integratedtunnels:part_interface_item_item>);
Composer.recipe("integratedtunnels:part_interface_item_item", <integratedtunnels:part_interface_item_item>)
	.setTime(16)
	.setShaped([
		[<alchemistry:ingot:77>, <soulus:bars_endersteel:5>, <alchemistry:ingot:77>],
		[<soulus:bars_endersteel:5>, <integrateddynamics:cable>, <soulus:bars_endersteel:5>],
		[<alchemistry:ingot:77>, <soulus:bars_endersteel:5>, <alchemistry:ingot:77>]
	])
	.create();
	
// Fluid Interface
recipes.remove(<integratedtunnels:part_interface_fluid_item>);
Composer.recipe("integratedtunnels:part_interface_fluid_item", <integratedtunnels:part_interface_fluid_item>)
	.setTime(16)
	.setShaped([
		[<alchemistry:ingot:21>, <soulus:bars_endersteel:5>, <alchemistry:ingot:21>],
		[<soulus:bars_endersteel:5>, <integrateddynamics:cable>, <soulus:bars_endersteel:5>],
		[<alchemistry:ingot:21>, <soulus:bars_endersteel:5>, <alchemistry:ingot:21>]
	])
	.create();
	

//----------// SeedCrafting Recipes //----------//

// Drying Basin
SeedCrafting.addRecipe(<integrateddynamics:drying_basin>, <minecraft:iron_ingot>, <minecraft:stick>, <minecraft:stick>);


//----------// Mechanical Drying Basin Recipes //----------//

// Sand
mods.integrateddynamics.MechanicalSqueezer.removeRecipesWithOutput(<minecraft:flint> * 2);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<minecraft:gravel>, <minecraft:sand>, null, 20);


print("Initializied 'IntegratedDynamics'");