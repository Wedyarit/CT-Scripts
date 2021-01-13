# Atum

import mods.tconstruct.Casting;

print("Initializing 'Atum'...");


//----------// Default Recipes //----------//

// Bone Ladder
recipes.remove(<atum:bone_ladder>);
recipes.addShaped(<atum:bone_ladder> * 6,
[[<ore:bonemeal>, null, <ore:bonemeal>],
 [<ore:bonemeal>, <ore:bonemeal>, <ore:bonemeal>],
 [<ore:bonemeal>, null, <ore:bonemeal>]]);
 
// Golden Necklace
recipes.remove(<atum:loot_gold_necklace>);
recipes.addShaped(<atum:loot_gold_necklace>,
[[<evilcraft:golden_string>, <evilcraft:golden_string>, <evilcraft:golden_string>],
 [<evilcraft:golden_string>, <ore:nuggetGold>, <evilcraft:golden_string>],
 [<evilcraft:golden_string>, <evilcraft:golden_string>, <evilcraft:golden_string>]]);


//----------// Casting Recipes //----------//

// Golden Coin
Casting.addBasinRecipe(<atum:coin_gold>, <soulus:nugget_niobium>, <liquid:gold>, 144, true);

// Golden Scepter
Casting.addBasinRecipe(<atum:loot_gold_scepter>, <evilcraft:dark_stick>, <liquid:gold>, 144, true);

// Golden Broach
Casting.addBasinRecipe(<atum:loot_gold_broach>, <uniquecrops:generic:7>, <liquid:gold>, 144, true);

// Golden Ring
Casting.addBasinRecipe(<atum:loot_gold_ring>, <prodigytech:ferramic_nugget>, <liquid:gold>, 144, false);


print("Initialized 'Atum'");