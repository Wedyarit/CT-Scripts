# EvilCraft

import mods.uniquecrops.SeedCrafting;
import mods.inworldcrafting.FireCrafting;
import mods.evilcraft.BloodInfuser;
import mods.evilcraft.EnvironmentalAccumulator;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("Initializing 'EvilCraft'...");

        val evilcraft_delete = 
        [<evilcraft:exalted_crafter:*>]
        as IIngredient[];

    for item_tip_ev in evilcraft_delete {
        item_tip_ev.addTooltip("\u00a74\u00a7l\u0412 \u0434\u0430\u043d\u043d\u043e\u0439 \u0441\u0431\u043e\u0440\u043a\u0435 \u044d\u0442\u043e\u0442 \u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d");
    }

    for item_delete_ev in evilcraft_delete {
        recipes.remove(item_delete_ev);
    }

//----------// Default Recipes //----------//

// Dark Gem
recipes.remove(<evilcraft:dark_gem>);
recipes.addShapeless(<evilcraft:dark_gem>,
[<minecraft:magma_cream>, <uniquecrops:democord>, <soulus:ash>]);

// Blood Infusion Core
recipes.remove(<evilcraft:blood_infusion_core>);
recipes.addShaped(<evilcraft:blood_infusion_core>,
[[<evilcraft:hardened_blood_shard>, <evilcraft:hardened_blood_shard>, <evilcraft:hardened_blood_shard>],
[<evilcraft:hardened_blood_shard>, <evilcraft:dark_gem>, <evilcraft:hardened_blood_shard>],
[<evilcraft:hardened_blood_shard>, <evilcraft:hardened_blood_shard>, <evilcraft:hardened_blood_shard>]]);

// Vengeance Essence
recipes.addShaped(<evilcraft:vengeance_essence>,
[[<prodigytech:energion_dust>, <prodigytech:energion_dust>, <prodigytech:energion_dust>],
 [<prodigytech:energion_dust>, <prodigytech:tartaric_stoker>, <prodigytech:energion_dust>],
 [<prodigytech:energion_dust>, <prodigytech:energion_dust>, <prodigytech:energion_dust>]]);

// Environmental Accumulation Core
recipes.addShaped(<evilcraft:environmental_accumulation_core>,
[[<uniquecrops:generic:10>, <prodigytech:zorrasteel_ingot>, <uniquecrops:generic:10>],
 [<prodigytech:zorrasteel_ingot>, <minecraft:magma_cream>, <prodigytech:zorrasteel_ingot>],
 [<uniquecrops:generic:10>, <prodigytech:zorrasteel_ingot>, <uniquecrops:generic:10>]]);

// Scepter of Thunder
recipes.remove(<evilcraft:sceptre_of_thunder>);
recipes.addShaped(<evilcraft:sceptre_of_thunder>,
[[null, <evilcraft:dark_power_gem_block>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"})],
[null, <minecraft:blaze_rod>, <evilcraft:dark_power_gem_block>],
[<minecraft:blaze_rod>, null, null]]);

// Dark Spike
recipes.remove(<evilcraft:dark_spike>);
recipes.addShaped(<evilcraft:dark_spike> * 4,
[[null, <evilcraft:dark_gem>, null],
[null, <ore:ingotIron>, null],
[null, null, null]]);


//----------// FireCrafting Recipes //----------//

// Hardened Blood Shard
FireCrafting.addRecipe(<evilcraft:hardened_blood_shard> * 9, <evilcraft:hardened_blood>);


//----------// SeedCrafting Recipes //----------//

// Undead Sapling
SeedCrafting.addRecipe(<evilcraft:undead_sapling>, <superfishing:bone_fish>, <uniquecrops:generic:7>, <minecraft:magma_cream>);


//----------// BloodInfuser Recipes //----------//

// Obsidian
BloodInfuser.addRecipe(<uniquecrops:oldcobble>, <liquid:evilcraftblood> * 1000, 1, <minecraft:obsidian>, 1200, 0.5);
BloodInfuser.addRecipe(<minecraft:magma>, <liquid:water> * 1000, 2, <minecraft:obsidian>, 60, 0.5);

// Diamond Promise Acceptor
BloodInfuser.removeRecipesWithOutput(<evilcraft:promise_acceptor:2>);
BloodInfuser.addRecipe(<evilcraft:dark_block>, <liquid:evilcraftblood> * 160000, 2, <evilcraft:promise_acceptor:2>, 60, 10.0);

// Blaze Rod
BloodInfuser.removeRecipesWithOutput(<minecraft:blaze_rod>);
BloodInfuser.addRecipe(<ore:bone>, <liquid:evilcraftblood> * 2500, 3, <minecraft:blaze_rod>, 25, 2);

// Niobium
BloodInfuser.addRecipe(<alchemistry:ingot:41>, <liquid:evilcraftblood> * 10000, 2, <soulus:ingot_niobium>, 60, 10);

//----------// EnvironmentalAccumulator Recipes //----------//

// Remove
EnvironmentalAccumulator.removeRecipesWithOutput(<evilcraft:weather_container:1>, "RAIN");
EnvironmentalAccumulator.removeRecipesWithOutput(<evilcraft:weather_container:2>, "CLEAR");
EnvironmentalAccumulator.removeRecipesWithOutput(<evilcraft:weather_container:3>, "CLEAR");
EnvironmentalAccumulator.removeRecipesWithOutput(<evilcraft:weather_container:3>, "RAIN");
EnvironmentalAccumulator.removeRecipesWithOutput(<evilcraft:biome_extract:1>, "RAIN");

// Inverted Potentia
EnvironmentalAccumulator.removeRecipesWithOutput(<evilcraft:inverted_potentia:1>, "RAIN");
EnvironmentalAccumulator.addRecipe(<evilcraft:inverted_potentia>, "ANY", <evilcraft:inverted_potentia:1>, "ANY", 10, 1200, -1);

// Exalted Crafter
EnvironmentalAccumulator.removeRecipesWithOutput(<evilcraft:exalted_crafter:3>, "RAIN");
EnvironmentalAccumulator.addRecipe(<evilcraft:exalted_crafter:1>, "ANY", <evilcraft:exalted_crafter:3>, "ANY", 10, 1200, -1);

// Exalted Crafter (Ender)
EnvironmentalAccumulator.removeRecipesWithOutput(<evilcraft:exalted_crafter:2>, "RAIN");
EnvironmentalAccumulator.addRecipe(<evilcraft:exalted_crafter>, "ANY", <evilcraft:exalted_crafter:2>, "ANY", 10, 1200, -1);

// Endersteel Bar
recipes.remove(<soulus:bars_endersteel:4>);
EnvironmentalAccumulator.addRecipe(<soulus:bars_endersteel>, "ANY", <soulus:bars_endersteel:4>, "ANY", 10, 20, -1);

print("Initializied 'EvilCraft'");