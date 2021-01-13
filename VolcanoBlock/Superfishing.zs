# Superfishing

import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.FluidToItem;

print("Initializing 'Superfishing'...");


//----------// Default Recipes //----------//

// Fish Trap
recipes.addShaped(<superfishing:simple_fish_trap>,
[[null, <minecraft:iron_ingot>, null],
 [<minecraft:iron_ingot>, <superfishing:obsidian_fishing_rod>, <minecraft:iron_ingot>],
 [null, <minecraft:iron_ingot>, null]]);

// Trap Bailt
recipes.addShapeless(<superfishing:fish_trap_bait> * 3,
[<superfishing:combustive_cod>]);


//----------// FireCrafting Recipes //----------//

// Blaze Fishing Rod
FireCrafting.addRecipe(<superfishing:blaze_fishing_rod>, <minecraft:fishing_rod:*>);

// Smoldering Fishing Rod
FireCrafting.addRecipe(<superfishing:smoldering_fishing_rod>, <uniquecrops:generic:6> * 16);


// FluidToItemRecipes //

// Cooled Cod
FluidToItem.transform(<superfishing:cooled_cod>, <liquid:water>, [<superfishing:combustive_cod>], false);


print("Initializied 'Superfishing'");