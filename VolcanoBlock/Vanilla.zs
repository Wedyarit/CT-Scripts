# Vanilla

import mods.uniquecrops.SeedCrafting;
import mods.integrateddynamics.DryingBasin;
import mods.integrateddynamics.Squeezer;
import mods.inworldcrafting.FireCrafting;
import mods.soulus.Composer;

print("Initializing 'Vanilla'...");


//----------// FireCrafting Recipes //----------//

// Baked Potato
FireCrafting.addRecipe(<minecraft:baked_potato>, <minecraft:potato>);
// Stone
FireCrafting.addRecipe(<minecraft:stone>, <minecraft:cobblestone>);
// Torch
FireCrafting.addRecipe(<minecraft:torch>, <minecraft:stick>);

//----------// Default Recipes //----------//

// Nether Star
recipes.remove(<minecraft:nether_star>);
recipes.addShaped(<minecraft:nether_star>, 
[[<alchemistry:element:71> * 32, <alchemistry:element:1> * 64, <alchemistry:element:22> * 32],
 [<alchemistry:element:1> * 64, <alchemistry:element:1> * 64, <alchemistry:element:1> * 64],
 [<alchemistry:element:66> * 32, <alchemistry:element:1> * 64, <alchemistry:element:101> * 32]]);

// Iron Ingot
furnace.remove(<minecraft:iron_ingot>, <bloodmagic:component:19>);

// Dragon's Breath
recipes.addShapeless(<minecraft:dragon_breath>, 
[<botania:manaresource:9>, <alchemistry:element:54>]);

// Clock
recipes.remove(<minecraft:clock>);
recipes.addShaped(<minecraft:clock>,
[[<alchemistry:ingot:47>, <minecraft:gold_ingot>, <alchemistry:ingot:47>],
 [<minecraft:gold_ingot>, <minecraft:redstone>, <minecraft:gold_ingot>],
 [<alchemistry:ingot:47>, <minecraft:gold_ingot>, <alchemistry:ingot:47>]]);

// Chorus
recipes.addShapeless(<minecraft:chorus_fruit>,
[<minecraft:dye:13>, <minecraft:ender_pearl>, <minecraft:beetroot>]);

// Squid
recipes.addShapeless(<minecraft:dye>,
[<superfishing:cooled_cod>, <minecraft:stick>, <prodigytech:coal_dust>]);

// Emerald
recipes.addShaped(<minecraft:emerald>,
[[<uniquecrops:generic:7>, <uniquecrops:generic:7>, <uniquecrops:generic:7>],
 [<uniquecrops:generic:7>, <soulus:crystal_dark>, <uniquecrops:generic:7>],
 [<uniquecrops:generic:7>, <uniquecrops:generic:7>, <uniquecrops:generic:7>]]);

// Wooden Hoe
recipes.remove(<minecraft:wooden_hoe>);
recipes.addShaped(<minecraft:wooden_hoe>,
[[<minecraft:stick>,<minecraft:stick>],
 [null,<minecraft:stick>]]);

// Grass
recipes.addShaped(<minecraft:grass>,
[[<minecraft:wheat>,<minecraft:wheat>],
 [<minecraft:wheat>,<minecraft:wheat>]]);

// Clay Ball
recipes.remove(<minecraft:clay_ball>);
recipes.addShaped(<minecraft:clay_ball>,
[[<ore:bonemeal>,<ore:bonemeal>],
 [<minecraft:dirt>,<ore:bonemeal>]]);

// Chest
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>,
[[<minecraft:stick>,<minecraft:stick>, <minecraft:stick>],
 [<minecraft:stick>, <uniquecrops:seedartisia>, <minecraft:stick>],
 [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);

// Ender Pearl
recipes.remove(<minecraft:ender_pearl>);
recipes.addShaped(<minecraft:ender_pearl>,
[[<uniquecrops:generic:5>, <uniquecrops:generic:5>, <uniquecrops:generic:5>],
 [<uniquecrops:generic:5>, <minecraft:magma_cream>, <uniquecrops:generic:5>],
 [<uniquecrops:generic:5>, <uniquecrops:generic:5>, <uniquecrops:generic:5>]]);

// Spider Eye
recipes.remove(<minecraft:spider_eye>);
recipes.addShaped(<minecraft:spider_eye>,
[[null, <prodigytech:primordium>, null],
 [<prodigytech:primordium>, <uniquecrops:generic:16>, <prodigytech:primordium>],
 [null, <prodigytech:primordium>, null]]);

// Book
recipes.remove(<minecraft:book>);
recipes.addShapeless(<minecraft:book>,
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>,<soulus:glue>]);
recipes.addShapeless(<minecraft:book>,
[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>,<minecraft:leather>]);

// Gunpower
recipes.addShapeless(<minecraft:gunpowder>,
[<soulus:ash>, <uniquecrops:democord>]);

// Bone meal
recipes.addShapeless(<minecraft:dye:15> * 2,
[<superfishing:bone_fish>]);

// End Stone
recipes.addShaped(<minecraft:end_stone>,
[[null, <minecraft:sand>, null],
 [<minecraft:sand>, <minecraft:ender_pearl>, <minecraft:sand>],
 [null, <minecraft:sand>, null]]);



//----------// SeedCrafting Recipes //----------//

// Hay Block
recipes.remove(<minecraft:hay_block>);
SeedCrafting.removeRecipe(<minecraft:hay_block>);
SeedCrafting.addRecipe(<minecraft:hay_block>, <minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>);

// Crafting Table
SeedCrafting.addRecipe(<minecraft:crafting_table>, <minecraft:stone>, <minecraft:wooden_pickaxe>, <minecraft:stick>);


//----------// DryingBasin Recipes //----------//
	
// Water
DryingBasin.addRecipe(<minecraft:hay_block>, null, <minecraft:stick>, <liquid:water> * 1000, 400);

// Gravel
DryingBasin.addRecipe(<minecraft:cobblestone>, null, <minecraft:gravel>, null, 200);


//----------// Squeezer Recipes //----------//

// Sand
Squeezer.removeRecipesWithOutput(<minecraft:flint>, 1,
	<minecraft:flint>, 0.5,
	null);
Squeezer.addRecipe(<minecraft:gravel>, <minecraft:sand>, null);


//----------// Composer Recipes //----------//

// Skull
Composer.recipe("minecraft:skull", <minecraft:skull>)
	.setTime(16)
	.setShaped([
		[<soulus:bone_fungal>, <soulus:bone_fungal>, <soulus:bone_fungal>],
		[<soulus:bone_fungal>, <evilcraft:garmonbozia>, <soulus:bone_fungal>],
		[<soulus:bone_fungal>, <soulus:bone_fungal>, <soulus:bone_fungal>]
	])
	.create();


print("Initializied 'Vanilla'");