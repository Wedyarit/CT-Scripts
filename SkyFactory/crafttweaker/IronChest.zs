import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;


/*******************************************************************
************* переменные шалкеров и их тегов ***********************
*******************************************************************/

    var shulkerTag_default = {BlockEntityTag: {}} as IData;
    var ironShulkers_default = [<minecraft:white_shulker_box>, <minecraft:orange_shulker_box>, <minecraft:magenta_shulker_box>, <minecraft:light_blue_shulker_box>, <minecraft:yellow_shulker_box>, <minecraft:lime_shulker_box>, <minecraft:pink_shulker_box>, <minecraft:gray_shulker_box>, <minecraft:silver_shulker_box>, <minecraft:cyan_shulker_box>, <minecraft:purple_shulker_box>, <minecraft:blue_shulker_box>, <minecraft:brown_shulker_box>, <minecraft:green_shulker_box>, <minecraft:red_shulker_box>, <minecraft:black_shulker_box>] as IItemStack[];

    var shulkerTag_0 = {BlockEntityTag: {facing: 1 as byte, ShulkerBoxSize: 54}} as IData;
    var ironShulkers_0 = [<ironchest:iron_shulker_box_white>, <ironchest:iron_shulker_box_orange>, <ironchest:iron_shulker_box_magenta>, <ironchest:iron_shulker_box_light_blue>, <ironchest:iron_shulker_box_yellow>, <ironchest:iron_shulker_box_lime>, <ironchest:iron_shulker_box_pink>, <ironchest:iron_shulker_box_gray>, <ironchest:iron_shulker_box_silver>, <ironchest:iron_shulker_box_cyan>, <ironchest:iron_shulker_box_purple>, <ironchest:iron_shulker_box_blue>, <ironchest:iron_shulker_box_brown>, <ironchest:iron_shulker_box_green>, <ironchest:iron_shulker_box_red>, <ironchest:iron_shulker_box_black>] as IItemStack[];

    var shulkerTag_1 = {BlockEntityTag: {facing: 1 as byte, ShulkerBoxSize: 81}} as IData;
    var ironShulkers_1 = [<ironchest:iron_shulker_box_white:1>, <ironchest:iron_shulker_box_orange:1>, <ironchest:iron_shulker_box_magenta:1>, <ironchest:iron_shulker_box_light_blue:1>, <ironchest:iron_shulker_box_yellow:1>, <ironchest:iron_shulker_box_lime:1>, <ironchest:iron_shulker_box_pink:1>, <ironchest:iron_shulker_box_gray:1>, <ironchest:iron_shulker_box_silver:1>, <ironchest:iron_shulker_box_cyan:1>, <ironchest:iron_shulker_box_purple:1>, <ironchest:iron_shulker_box_blue:1>, <ironchest:iron_shulker_box_brown:1>, <ironchest:iron_shulker_box_green:1>, <ironchest:iron_shulker_box_red:1>, <ironchest:iron_shulker_box_black:1>] as IItemStack[];

    var shulkerTag_2 = {BlockEntityTag: {facing: 1 as byte, ShulkerBoxSize: 108}} as IData;
    var ironShulkers_2 = [<ironchest:iron_shulker_box_white:2>, <ironchest:iron_shulker_box_orange:2>, <ironchest:iron_shulker_box_magenta:2>, <ironchest:iron_shulker_box_light_blue:2>, <ironchest:iron_shulker_box_yellow:2>, <ironchest:iron_shulker_box_lime:2>, <ironchest:iron_shulker_box_pink:2>, <ironchest:iron_shulker_box_gray:2>, <ironchest:iron_shulker_box_silver:2>, <ironchest:iron_shulker_box_cyan:2>, <ironchest:iron_shulker_box_purple:2>, <ironchest:iron_shulker_box_blue:2>, <ironchest:iron_shulker_box_brown:2>, <ironchest:iron_shulker_box_green:2>, <ironchest:iron_shulker_box_red:2>, <ironchest:iron_shulker_box_black:2>] as IItemStack[];

    var shulkerTag_3 = {BlockEntityTag: {facing: 1 as byte, ShulkerBoxSize: 45}} as IData;
    var ironShulkers_3 = [<ironchest:iron_shulker_box_white:3>, <ironchest:iron_shulker_box_orange:3>, <ironchest:iron_shulker_box_magenta:3>, <ironchest:iron_shulker_box_light_blue:3>, <ironchest:iron_shulker_box_yellow:3>, <ironchest:iron_shulker_box_lime:3>, <ironchest:iron_shulker_box_pink:3>, <ironchest:iron_shulker_box_gray:3>, <ironchest:iron_shulker_box_silver:3>, <ironchest:iron_shulker_box_cyan:3>, <ironchest:iron_shulker_box_purple:3>, <ironchest:iron_shulker_box_blue:3>, <ironchest:iron_shulker_box_brown:3>, <ironchest:iron_shulker_box_green:3>, <ironchest:iron_shulker_box_red:3>, <ironchest:iron_shulker_box_black:3>] as IItemStack[];

    var shulkerTag_4 = {BlockEntityTag: {facing: 1 as byte, ShulkerBoxSize: 72}} as IData;
    var ironShulkers_4 = [<ironchest:iron_shulker_box_white:4>, <ironchest:iron_shulker_box_orange:4>, <ironchest:iron_shulker_box_magenta:4>, <ironchest:iron_shulker_box_light_blue:4>, <ironchest:iron_shulker_box_yellow:4>, <ironchest:iron_shulker_box_lime:4>, <ironchest:iron_shulker_box_pink:4>, <ironchest:iron_shulker_box_gray:4>, <ironchest:iron_shulker_box_silver:4>, <ironchest:iron_shulker_box_cyan:4>, <ironchest:iron_shulker_box_purple:4>, <ironchest:iron_shulker_box_blue:4>, <ironchest:iron_shulker_box_brown:4>, <ironchest:iron_shulker_box_green:4>, <ironchest:iron_shulker_box_red:4>, <ironchest:iron_shulker_box_black:4>] as IItemStack[];

    var shulkerTag_5 = {BlockEntityTag: {facing: 1 as byte, ShulkerBoxSize: 108}} as IData;
    var ironShulkers_5 = [<ironchest:iron_shulker_box_white:5>, <ironchest:iron_shulker_box_orange:5>, <ironchest:iron_shulker_box_magenta:5>, <ironchest:iron_shulker_box_light_blue:5>, <ironchest:iron_shulker_box_yellow:5>, <ironchest:iron_shulker_box_lime:5>, <ironchest:iron_shulker_box_pink:5>, <ironchest:iron_shulker_box_gray:5>, <ironchest:iron_shulker_box_silver:5>, <ironchest:iron_shulker_box_cyan:5>, <ironchest:iron_shulker_box_purple:5>, <ironchest:iron_shulker_box_blue:5>, <ironchest:iron_shulker_box_brown:5>, <ironchest:iron_shulker_box_green:5>, <ironchest:iron_shulker_box_red:5>, <ironchest:iron_shulker_box_black:5>] as IItemStack[];

    var shulkerTag_6 = {BlockEntityTag: {facing: 1 as byte, ShulkerBoxSize: 108}} as IData;
    var ironShulkers_6 = [<ironchest:iron_shulker_box_white:6>, <ironchest:iron_shulker_box_orange:6>, <ironchest:iron_shulker_box_magenta:6>, <ironchest:iron_shulker_box_light_blue:6>, <ironchest:iron_shulker_box_yellow:6>, <ironchest:iron_shulker_box_lime:6>, <ironchest:iron_shulker_box_pink:6>, <ironchest:iron_shulker_box_gray:6>, <ironchest:iron_shulker_box_silver:6>, <ironchest:iron_shulker_box_cyan:6>, <ironchest:iron_shulker_box_purple:6>, <ironchest:iron_shulker_box_blue:6>, <ironchest:iron_shulker_box_brown:6>, <ironchest:iron_shulker_box_green:6>, <ironchest:iron_shulker_box_red:6>, <ironchest:iron_shulker_box_black:6>] as IItemStack[];


/*******************************************************************
************* предметы крафта для разных сборок ********************
*******************************************************************/

    // typeGem - камешек, typeIngot - слиток, typeDust - пыль
        var diamond_ironchest_typeGem = <ore:gemDiamond>;
        var glass_ironchest_typeIngot = <minecraft:glass>;
        var glass_ironchest_typeDust = <minecraft:glass_pane>;

        var iron_ironchest_typeIngot = <ore:ingotIron>;
        var iron_ironchest_typeDust = <ore:dustIron>;
        var gold_ironchest_typeIngot = <ore:ingotGold>;
        var gold_ironchest_typeDust = <ore:dustGold>;

        var copper_ironchest_typeIngot = <ore:ingotCopper>;
        var copper_ironchest_typeDust = <ore:dustCopper>;
        var silver_ironchest_typeIngot = <ore:ingotSilver>;
        var silver_ironchest_typeDust = <ore:dustSilver>;


/*******************************************************************
************************** шалкеры *********************************
*******************************************************************/

    for i, shulker in ironShulkers_3 {
        recipes.remove(ironShulkers_3[i]);
        mods.tconstruct.Casting.addBasinRecipe(ironShulkers_3[i].withTag(shulkerTag_3), ironShulkers_default[i].withTag(shulkerTag_default), <liquid:copper>, 1152, true, 200);}

    for i, shulker in ironShulkers_0 {
        recipes.remove(ironShulkers_0[i]);
        mods.tconstruct.Casting.addBasinRecipe(ironShulkers_0[i].withTag(shulkerTag_0), ironShulkers_3[i].withTag(shulkerTag_3), <liquid:iron>, 1152, true, 200);}

    for i, shulker in ironShulkers_4 {
        recipes.remove(ironShulkers_4[i]);
        mods.tconstruct.Casting.addBasinRecipe(ironShulkers_4[i].withTag(shulkerTag_4), ironShulkers_0[i].withTag(shulkerTag_0), <liquid:silver>, 1152, true, 200);}

    for i, shulker in ironShulkers_1 {
        recipes.remove(ironShulkers_1[i]);
        mods.tconstruct.Casting.addBasinRecipe(ironShulkers_1[i].withTag(shulkerTag_1), ironShulkers_4[i].withTag(shulkerTag_4), <liquid:gold>, 1152, true, 200);}

    for i, shulker in ironShulkers_2 {
        recipes.remove(ironShulkers_2[i]);
        mods.tconstruct.Casting.addBasinRecipe(ironShulkers_2[i].withTag(shulkerTag_2), ironShulkers_1[i].withTag(shulkerTag_1), <liquid:diamond>, 1152, true, 200);}

    for i, shulker in ironShulkers_5 {
        recipes.remove(ironShulkers_5[i]);
        mods.tconstruct.Casting.addBasinRecipe(ironShulkers_5[i].withTag(shulkerTag_5), ironShulkers_2[i].withTag(shulkerTag_2), <liquid:glass>, 8000, true, 200);}

    for i, shulker in ironShulkers_6 {
        recipes.remove(ironShulkers_6[i]);
        mods.tconstruct.Casting.addBasinRecipe(ironShulkers_6[i].withTag(shulkerTag_6), ironShulkers_2[i].withTag(shulkerTag_2), <liquid:obsidian>, 1152, true, 200);}

/*******************************************************************
************************** сундуки *********************************
*******************************************************************/

        recipes.remove(<ironchest:iron_chest>);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:iron_chest:3>, <minecraft:chest>, <liquid:copper>, 1152, true, 200);

        recipes.remove(<ironchest:iron_chest:3>);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:iron_chest>, <ironchest:iron_chest:3>, <liquid:iron>, 1152, true, 200);
        
        recipes.remove(<ironchest:iron_chest:4>);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:iron_chest:4>, <ironchest:iron_chest>, <liquid:silver>, 1152, true, 200);

        recipes.remove(<ironchest:iron_chest:1>);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:iron_chest:1>, <ironchest:iron_chest:4>, <liquid:gold>, 1152, true, 200);

        recipes.remove(<ironchest:iron_chest:2>);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:iron_chest:2>, <ironchest:iron_chest:1>, <liquid:diamond>, 1152, true, 200);

        recipes.remove(<ironchest:iron_chest:5>);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:iron_chest:5>, <ironchest:iron_chest:2>, <liquid:glass>, 8000, true, 200);

        recipes.remove(<ironchest:iron_chest:6>);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:iron_chest:6>, <ironchest:iron_chest:2>, <liquid:obsidian>, 1152, true, 200);


/*******************************************************************
************************** улучшения *******************************
*******************************************************************/

    // [Сундуки]

        recipes.remove(<ironchest:wood_iron_chest_upgrade>);
        recipes.remove(<ironchest:wood_copper_chest_upgrade>);
        recipes.remove(<ironchest:copper_silver_chest_upgrade>);
        recipes.remove(<ironchest:copper_iron_chest_upgrade>);
        recipes.remove(<ironchest:iron_gold_chest_upgrade>);
        recipes.remove(<ironchest:silver_gold_chest_upgrade>);
        recipes.remove(<ironchest:diamond_crystal_chest_upgrade>);
        recipes.remove(<ironchest:diamond_obsidian_chest_upgrade>);
        recipes.remove(<ironchest:gold_diamond_chest_upgrade>);

        mods.tconstruct.Casting.addBasinRecipe(<ironchest:wood_iron_chest_upgrade>, <ore:plankWood>, <liquid:iron>, 1152, true, 200);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:copper_iron_chest_upgrade>, copper_ironchest_typeIngot, <liquid:iron>, 1152, true, 200);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:iron_gold_chest_upgrade>, iron_ironchest_typeIngot, <liquid:gold>, 1152, true, 200);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:silver_gold_chest_upgrade>, silver_ironchest_typeIngot, <liquid:gold>, 1152, true, 200);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:diamond_crystal_chest_upgrade>, diamond_ironchest_typeGem, <liquid:glass>, 8000, true, 200);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:diamond_obsidian_chest_upgrade>, diamond_ironchest_typeGem, <liquid:obsidian>, 1152, true, 200);

        recipes.addShaped(<ironchest:gold_diamond_chest_upgrade>, [
        [glass_ironchest_typeDust, glass_ironchest_typeDust, glass_ironchest_typeDust],
        [diamond_ironchest_typeGem , gold_ironchest_typeIngot, diamond_ironchest_typeGem],
        [glass_ironchest_typeDust, glass_ironchest_typeDust, glass_ironchest_typeDust]]);


        mods.tconstruct.Casting.addBasinRecipe(<ironchest:wood_copper_chest_upgrade>, <ore:plankWood>, <liquid:copper>, 1152, true, 200);
        mods.tconstruct.Casting.addBasinRecipe(<ironchest:copper_silver_chest_upgrade>, copper_ironchest_typeIngot, <liquid:silver>, 1152, true, 200);


    // [/Сундуки]

    // [Шалкеры]

        recipes.remove(<ironchest:vanilla_iron_shulker_upgrade>);
        mods.tconstruct.Casting.addTableRecipe(<ironchest:vanilla_iron_shulker_upgrade>, <minecraft:chorus_fruit_popped>, <liquid:iron>, 1152, true, 200);

        recipes.remove(<ironchest:copper_iron_shulker_upgrade>);
        mods.tconstruct.Casting.addTableRecipe(<ironchest:copper_iron_shulker_upgrade>, copper_ironchest_typeDust, <liquid:iron>, 1152, true, 200);

        recipes.remove(<ironchest:iron_gold_shulker_upgrade>);
        mods.tconstruct.Casting.addTableRecipe(<ironchest:iron_gold_shulker_upgrade>, iron_ironchest_typeDust, <liquid:gold>, 1152, true, 200);

        recipes.remove(<ironchest:silver_gold_shulker_upgrade>);
        mods.tconstruct.Casting.addTableRecipe(<ironchest:silver_gold_shulker_upgrade>, silver_ironchest_typeDust, <liquid:gold>, 1152, true, 200);

        recipes.remove(<ironchest:diamond_crystal_shulker_upgrade>);
        mods.tconstruct.Casting.addTableRecipe(<ironchest:diamond_crystal_shulker_upgrade>, glass_ironchest_typeIngot, <liquid:glass>, 8000, true, 200);

        recipes.remove(<ironchest:diamond_obsidian_shulker_upgrade>);
        mods.tconstruct.Casting.addTableRecipe(<ironchest:diamond_obsidian_shulker_upgrade>, glass_ironchest_typeIngot, <liquid:obsidian>, 1152, true, 200);

        recipes.remove(<ironchest:gold_diamond_shulker_upgrade>);
        recipes.addShaped(<ironchest:gold_diamond_shulker_upgrade>, [
        [glass_ironchest_typeIngot, glass_ironchest_typeIngot, glass_ironchest_typeIngot],
        [diamond_ironchest_typeGem , gold_ironchest_typeDust, diamond_ironchest_typeGem],
        [glass_ironchest_typeIngot, glass_ironchest_typeIngot, glass_ironchest_typeIngot]]);


        recipes.remove(<ironchest:vanilla_copper_shulker_upgrade>);
        mods.tconstruct.Casting.addTableRecipe(<ironchest:vanilla_copper_shulker_upgrade>, <minecraft:chorus_fruit_popped>, <liquid:copper>, 1152, true, 200);

        recipes.remove(<ironchest:copper_silver_shulker_upgrade>);
        mods.tconstruct.Casting.addTableRecipe(<ironchest:copper_silver_shulker_upgrade>, copper_ironchest_typeDust, <liquid:silver>, 1152, true, 200);


    // [/Шалкеры]

