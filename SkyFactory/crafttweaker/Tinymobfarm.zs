//Массивы функции и тд=============================================================================================================


//Описание предметов===============================================================================================================

    <tinymobfarm:inferno_farm>.addTooltip("§6Можно приобрести в донат магазине");

//Полное удаление предметов========================================================================================================

    recipes.remove(<tinymobfarm:ultimate_farm>);
    recipes.remove(<tinymobfarm:inferno_farm>);

//Изменение крафтов================================================================================================================

    //lasso
    recipes.remove(<tinymobfarm:lasso>);
        recipes.addShaped(<tinymobfarm:lasso>, 
        [[<minecraft:bone_block>, <minecraft:slime_ball>, <minecraft:bone_block>], 
        [<minecraft:coal>, <minecraft:lead>, <minecraft:coal>], 
        [<tconstruct:soil:3>, <minecraft:slime_ball>, <tconstruct:soil:3>]]);


    //stone_farm
        recipes.remove(<tinymobfarm:stone_farm>);
        recipes.addShaped(<tinymobfarm:stone_farm>, 
        [[<thermalfoundation:material:1024>, <minecraft:obsidian>, <minecraft:ghast_tear>], 
        [<tinymobfarm:wood_farm>, <minecraft:bookshelf>, <tinymobfarm:wood_farm>], 
        [<minecraft:ghast_tear>, <minecraft:obsidian>, <thermalfoundation:material:1024>]]);

    //iron_farm
        recipes.remove(<tinymobfarm:iron_farm>);
        recipes.addShaped(<tinymobfarm:iron_farm>, 
        [[<minecraft:blaze_rod>, <tconstruct:metal:3>, <minecraft:blaze_rod>], 
        [<tinymobfarm:stone_farm>, <minecraft:obsidian>, <tinymobfarm:stone_farm>], 
        [<minecraft:blaze_rod>, <tconstruct:metal:3>, <minecraft:blaze_rod>]]);


    //gold_farm
        recipes.remove(<tinymobfarm:gold_farm>);
        recipes.addShaped(<tinymobfarm:gold_farm>, 
        [[<minecraft:end_crystal>, <thermalfoundation:storage_alloy:6>, <minecraft:end_crystal>], 
        [<tinymobfarm:iron_farm>, <ic2:energy_crystal:*>, <tinymobfarm:iron_farm>], 
        [<minecraft:end_crystal>, <thermalfoundation:storage_alloy:6>, <minecraft:end_crystal>]]);


    //diamond_farm
        recipes.remove(<tinymobfarm:diamond_farm>);
        recipes.addShaped(<tinymobfarm:diamond_farm>, 
        [[<tp:reinforced_obsidian>, <ic2:charging_lapotron_crystal:*>, <tp:reinforced_obsidian>], 
        [<tinymobfarm:gold_farm>, <minecraft:ender_eye>, <tinymobfarm:gold_farm>], 
        [<tp:reinforced_obsidian>, <ic2:charging_lapotron_crystal:*>, <tp:reinforced_obsidian>]]);
