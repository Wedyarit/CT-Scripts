# Ceramics

import mods.inworldcrafting.FireCrafting;

print("Initializing 'Ceramics'...");


//----------// Default Recipes //----------//

// Unfired Clay Bucket
recipes.remove(<ceramics:unfired_clay>);
recipes.addShaped(<ceramics:unfired_clay>,
[[<minecraft:clay_ball>,<minecraft:clay_ball>],
 [<minecraft:clay_ball>]]);


//----------// FireCrafting Recipes //----------//

// Clay Shears
FireCrafting.addRecipe(<ceramics:clay_shears>, <ceramics:unfired_clay:1>, 200);
// Clay Bucket
FireCrafting.addRecipe(<ceramics:clay_bucket>, <ceramics:unfired_clay>);


print("Initialized 'Ceramics'");