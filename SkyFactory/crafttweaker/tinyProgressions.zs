import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Массивы функции и тд=============================================================================================================


//Описание предметов===============================================================================================================


//Полное удаление предметов========================================================================================================

    recipes.remove(<tp:compressed_nether_block>);
    recipes.remove(<tp:double_compressed_nether_block>);
    recipes.remove(<tp:triple_compressed_nether_block>);
    recipes.remove(<tp:quadruple_compressed_nether_block>);
    recipes.remove(<tp:quintuple_compressed_nether_block>);
    recipes.remove(<tp:sextuple_compressed_nether_block>);

//Изменение крафтов================================================================================================================

    //
        recipes.remove(<tp:cobblegen_block>);
        recipes.addShaped(<tp:cobblegen_block>, 
        [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
        [<minecraft:water_bucket>.noReturn(), <ore:blockGlass>, <minecraft:lava_bucket>.noReturn()], 
        [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
        recipes.addShaped(<tp:cobblegen_block>, 
        [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
        [<minecraft:lava_bucket>.noReturn(), <ore:blockGlass>, <minecraft:water_bucket>.noReturn()], 
        [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

    //
        recipes.remove(<tp:septuple_compressed_nether_block>);
        recipes.addShaped(<tp:septuple_compressed_nether_block>,
        [[<extrautils2:compressednetherrack:5>, <extrautils2:compressednetherrack:5>, <extrautils2:compressednetherrack:5>],
        [<extrautils2:compressednetherrack:5>, <extrautils2:compressednetherrack:5>, <extrautils2:compressednetherrack:5>],
        [<extrautils2:compressednetherrack:5>, <extrautils2:compressednetherrack:5>, <extrautils2:compressednetherrack:5>]]);

    //
        recipes.remove(<tp:growth_block>);
        recipes.addShaped(<tp:growth_block>,
        [[<minecraft:bone_block>, <contenttweaker:mulch_yellow>, <minecraft:bone_block>],
        [<contenttweaker:mulch_yellow>, <appliedenergistics2:material>, <contenttweaker:mulch_yellow>],
        [<minecraft:bone_block>, <contenttweaker:mulch_yellow>, <minecraft:bone_block>]]);

    //
        recipes.remove(<tp:wooden_shears>);
        recipes.addShaped(<tp:wooden_shears>,
        [[<ore:stickWood>, null, null],
        [<ore:stickWood>, null, null],
        [<ore:plankWood>, <ore:stickWood>, <ore:stickWood>]]);

    //
        recipes.remove(<tp:reinforced_obsidian>);
        recipes.addShaped(<tp:reinforced_obsidian> * 2,
        [[<minecraft:iron_bars>, <minecraft:obsidian>, <minecraft:iron_bars>],
        [<minecraft:obsidian>, <minecraft:iron_bars>, <minecraft:obsidian>],
        [<minecraft:iron_bars>, <minecraft:obsidian>, <minecraft:iron_bars>]]);

        recipes.addShaped(<tp:reinforced_obsidian>,
        [[<tp:reinforced_obsidian_ingot>, <tp:reinforced_obsidian_ingot>, <tp:reinforced_obsidian_ingot>],
        [<tp:reinforced_obsidian_ingot>, <tp:reinforced_obsidian_ingot>, <tp:reinforced_obsidian_ingot>],
        [<tp:reinforced_obsidian_ingot>, <tp:reinforced_obsidian_ingot>, <tp:reinforced_obsidian_ingot>]]);

    //
        recipes.remove(<tp:reinforced_glass>);
        recipes.addShaped(<tp:reinforced_glass> * 2,
        [[<tp:dirty_glass>, <minecraft:obsidian>, <tp:dirty_glass>],
        [<minecraft:obsidian>, <tp:dirty_glass>, <minecraft:obsidian>],
        [<tp:dirty_glass>, <minecraft:obsidian>, <tp:dirty_glass>]]);


