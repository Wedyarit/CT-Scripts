# UniqueCrops

import mods.uniquecrops.SeedCrafting;
import mods.inworldcrafting.FluidToItem;

print("Initializing 'UniqueCrops'");


//----------// Default Recipes //----------//

// Artisia
recipes.remove(<uniquecrops:seedartisia>);
recipes.addShaped(<uniquecrops:seedartisia>,
[[<uniquecrops:seednormal>,<uniquecrops:seednormal>],
 [<uniquecrops:seednormal>,<uniquecrops:seednormal>]]);
 
// Time Meal
recipes.remove(<uniquecrops:generic:10>);
recipes.addShaped(<uniquecrops:generic:10>,
[[null, <minecraft:dye:15>, null],
 [<minecraft:dye:15>, <uniquecrops:generic:4>, <minecraft:dye:15>],
 [null, <minecraft:dye:15>, null]]);
 
// 3D Glasses
recipes.remove(<uniquecrops:3dglasses>);
recipes.addShaped(<uniquecrops:3dglasses>,
[[<evilcraft:obscured_glass>,<ore:ingotIron>,<evilcraft:obscured_glass>]]);

// Hourglass
recipes.remove(<uniquecrops:hourglass>);
recipes.addShaped(<uniquecrops:hourglass>,
[[<minecraft:stone>,<minecraft:glass_pane>,<minecraft:stone>],
 [<minecraft:glass_pane>,<uniquecrops:generic:10>,<minecraft:glass_pane>],
 [<minecraft:stone>,<minecraft:glass_pane>,<minecraft:stone>]]);
 
 
//----------// FluidToItem Recipes //----------//

// Dark Block
FluidToItem.transform(<uniquecrops:darkblock> * 8, <liquid:water>, [<uniquecrops:seedpetramia>, <minecraft:obsidian> * 8], false);


//----------// SeedCrafting Recipes //----------//

// Cobblonia
SeedCrafting.removeRecipe(<uniquecrops:seedcobblonia>);
SeedCrafting.addRecipe(<uniquecrops:seedcobblonia>, <minecraft:grass>, <minecraft:grass>, <uniquecrops:seednormal>);

// Pixelsius
SeedCrafting.removeRecipe(<uniquecrops:seedpixelsius>);
SeedCrafting.addRecipe(<uniquecrops:seedpixelsius>, <uniquecrops:seedartisia>, <minecraft:baked_potato>, <ore:bonemeal>);

//Collis
SeedCrafting.removeRecipe(<uniquecrops:seedcollis>);
SeedCrafting.addRecipe(<uniquecrops:seedcollis>, <uniquecrops:seedartisia>, <uniquecrops:generic:26>, <minecraft:sugar>);

// Instabilis
SeedCrafting.removeRecipe(<uniquecrops:seedinstabilis>);
SeedCrafting.addRecipe(<uniquecrops:seedinstabilis>, <uniquecrops:seedartisia>,<uniquecrops:generic:23>, <uniquecrops:generic:24>);

// EULA
SeedCrafting.removeRecipe(<uniquecrops:seedeula>);
SeedCrafting.addRecipe(<uniquecrops:seedeula>, <uniquecrops:seedartisia>, <minecraft:blaze_powder>, <minecraft:blaze_rod>);

// Precision
SeedCrafting.removeRecipe(<uniquecrops:seedprecision>);
SeedCrafting.addRecipe(<uniquecrops:seedprecision>, <minecraft:blaze_rod>, <uniquecrops:seedcollis>, <uniquecrops:seedinstabilis>);

// Maryjane
SeedCrafting.removeRecipe(<uniquecrops:seedmaryjane>);
SeedCrafting.addRecipe(<uniquecrops:seedmaryjane>, <evilcraft:dark_gem>, <minecraft:blaze_powder>, <uniquecrops:generic:11>);

// Invisibilia
SeedCrafting.removeRecipe(<uniquecrops:seedinvisibilia>);
SeedCrafting.addRecipe(<uniquecrops:seedinvisibilia>, <evilcraft:dark_gem>, <minecraft:glass>, <uniquecrops:generic:6>);

// Merlinia
SeedCrafting.removeRecipe(<uniquecrops:seedmerlinia>);
SeedCrafting.addRecipe(<uniquecrops:seedmerlinia>, <uniquecrops:seedartisia>, <minecraft:dye:1>, <minecraft:dye:11>);

// Ender Lily
SeedCrafting.removeRecipe(<uniquecrops:seedenderlily>);
SeedCrafting.addRecipe(<uniquecrops:seedenderlily>, <prodigytech:zorrasteel_ingot>, <uniquecrops:generic:11>, <uniquecrops:seeddirigible>);


print("Initialized 'UniqueCrops'");