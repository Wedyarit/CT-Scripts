# Soulus

import mods.soulus.Composer;
import crafttweaker.item.IItemTransformer;
import mods.inworldcrafting.FluidToItem;

print("Initializing 'Soulus'...");


//----------// Default Recipes //----------//

// Chunks
recipes.remove(<soulus:bone_chunk_normal>);
recipes.remove(<soulus:bone_chunk_dry>);
recipes.remove(<soulus:bone_chunk_fungal>);
recipes.remove(<soulus:bone_chunk_frozen>);
recipes.remove(<soulus:bone_chunk_scale>);

// Endersteel Bars
recipes.remove(<soulus:bars_endersteel>);
recipes.addShaped(<soulus:bars_endersteel>,
[[<soulus:ingot_endersteel_dark>, <soulus:ingot_endersteel_dark>, <soulus:ingot_endersteel_dark>],
 [<soulus:ingot_endersteel_dark>, <soulus:ingot_endersteel_dark>, <soulus:ingot_endersteel_dark>]]);

// Summoner
recipes.remove(<soulus:summoner>);
recipes.addShaped(<soulus:summoner>,
[[<soulus:bars_endersteel>, <soulus:bars_endersteel>, <soulus:bars_endersteel>],
 [<soulus:bars_endersteel>, null, <soulus:bars_endersteel>],
 [<soulus:bars_endersteel>, <soulus:bars_endersteel>, <soulus:bars_endersteel>]]);

// Gear Oscillating
recipes.remove(<soulus:gear_oscillating> * 2);

// Normal Bone
recipes.addShapeless(<soulus:bone_normal>,
[<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>]);

// Dry Bone
recipes.addShaped(<soulus:bone_dry>,
[[<soulus:dust_wood>, <soulus:dust_wood>, <soulus:dust_wood>],
 [<soulus:dust_wood>, <soulus:bone_normal>, <soulus:dust_wood>],
 [<soulus:dust_wood>, <soulus:dust_wood>, <soulus:dust_wood>]]);
 
// Fungal Bone
recipes.addShaped(<soulus:bone_fungal>,
[[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>],
 [<minecraft:tallgrass:1>, <soulus:bone_dry>, <minecraft:tallgrass:1>],
 [<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>]]);

// Hammer & Ender Dust
val hammer = <soulus:sledgehammer>.anyDamage().transformDamage();
recipes.addShapeless(<soulus:dust_ender> * 2, 
[hammer, <minecraft:ender_pearl>]);

// Composer Cell
recipes.remove(<soulus:composer_cell>);
recipes.addShaped(<soulus:composer_cell>,
[[<minecraft:obsidian>, <soulus:block_endersteel_dark>, <minecraft:obsidian>],
 [<soulus:gear_oscillating>, <prodigytech:zorra_altar>, <soulus:gear_oscillating>],
 [<prodigytech:zorrasteel_ingot>, <prodigytech:zorrasteel_ingot>, <prodigytech:zorrasteel_ingot>]]);

// Composer
recipes.remove(<soulus:composer>);
recipes.addShaped(<soulus:composer>,
[[<soulus:block_endersteel_dark>, <soulus:block_endersteel_dark>, <soulus:block_endersteel_dark>],
 [<soulus:gear_oscillating>, <soulus:composer_cell>, <soulus:gear_oscillating>],
 [<soulus:block_endersteel>, <soulus:block_endersteel>, <soulus:block_endersteel>]]);

// Bloody Emerald
recipes.remove(<soulus:emerald_coated>);
recipes.addShapeless(<soulus:emerald_coated>,
[<evilcraft:dark_gem>, <soulus:emerald_burnt>, <soulus:glue>]);

// Endersteel Bars
recipes.remove(<soulus:bars_endersteel:5>);
recipes.addShaped(<soulus:bars_endersteel:5>,
[[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, <soulus:bars_endersteel:4>, <integrateddynamics:crystalized_menril_chunk>],
 [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);
 
 
//----------// Composer Recipes //----------//

// Petal Apothecary
recipes.remove(<botania:altar>);
Composer.remove(<botania:altar>);
Composer.recipe("botania_altar", <botania:altar>)
	.setTime(16)
	.setShaped([
		[<uniquecrops:oldcobble>, <evilcraft:bowl_of_promises:5>, <uniquecrops:oldcobble>],
		[<minecraft:stone_slab:3>, <uniquecrops:oldcobble>, <minecraft:stone_slab:3>],
		[null, <uniquecrops:oldcobble>, null]
	])
	.create();

// Runic Altar
recipes.remove(<botania:runealtar>);
Composer.remove(<botania:runealtar>);
Composer.recipe("botania_runealtar", <botania:runealtar>)
	.setTime(16)
	.setShaped([
		[null, null, null],
		[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
		[<evilcraft:sanguinary_pedestal>, <prodigytech:zorra_altar>, <evilcraft:sanguinary_pedestal>]
	])
	.create();

// Blood Altar
recipes.remove(<bloodmagic:altar>);
Composer.remove(<bloodmagic:altar>);
Composer.recipe("blood_magic_blood_altar", <bloodmagic:altar>)
	.setTime(16)
	.setShaped([
		[<evilcraft:blood_infusion_core>, <botania:runealtar>, <evilcraft:blood_infusion_core>],
		[<evilcraft:hardened_blood>, <evilcraft:blood_infuser>, <evilcraft:hardened_blood>],
		[<evilcraft:hardened_blood>, <evilcraft:dark_power_gem_block>, <evilcraft:hardened_blood>]
	])
	.create();

// Menril Sapling
Composer.recipe("menril_sapling", <integrateddynamics:menril_sapling>)
	.setTime(16)
	.setShaped([
		[<soulus:dust_ender>, <prodigytech:energion_dust>, <prodigytech:tartaric_stoker>],
		[<prodigytech:energion_dust>, <prodigytech:zorra_sapling>, <prodigytech:energion_dust>],
		[<prodigytech:tartaric_stoker>, <prodigytech:energion_dust>, <soulus:dust_ender>]
	])
	.create();


//----------// FluidToItem Recipes //----------//

// Glue
FluidToItem.transform(<soulus:glue>, <liquid:water>, [<minecraft:sugar>, <ore:bonemeal>], true);


print("Initializied 'Soulus'");