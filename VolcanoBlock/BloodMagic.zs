# BloodMagic

import crafttweaker.item.IIngredient;
import mods.soulus.Composer;
import mods.inworldcrafting.FireCrafting;

print("Initializing 'BloodMagic'...");


        val Blood_tooltip = 
        [<bloodmagic:teleposer>, <bloodmagic:sigil_holding>, <bloodmagic:sigil_teleposition>, <bloodmagic:sigil_transposition>, <bloodmagic:mimic:*>]
        as IIngredient[];

        for item_tip_b in Blood_tooltip{
        item_tip_b.addTooltip("\u00a74\u00a7l\u0412 \u0434\u0430\u043d\u043d\u043e\u0439 \u0441\u0431\u043e\u0440\u043a\u0435 \u044d\u0442\u043e\u0442 \u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d");
        }

    //поддельный блок
    recipes.remove(<bloodmagic:mimic:*>);

    //удаление разумного камня 
        mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:diamond_chestplate>, <minecraft:iron_block>, <minecraft:obsidian>, <bloodmagic:soul_gem:1>.withTag({})]);

    //сигилы
        mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:sigil_holding>, <bloodmagic:slate:2>);
        mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:sigil_teleposition>, <bloodmagic:slate:3>);
        mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:sigil_transposition>, <bloodmagic:slate:3>);
        mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:27>, <bloodmagic:slate:2>);
        mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:17>, <bloodmagic:slate:3>);
        mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:18>, <bloodmagic:slate:3>);
        mods.bloodmagic.AlchemyTable.removeRecipe([<bloodmagic:sigil_holding>]);

    //телепозер
        recipes.remove(<bloodmagic:teleposer>);


//----------// Composer Recipes //----------//

// Petal Apothecary
recipes.remove(<bloodmagic:soul_forge>);
Composer.remove(<bloodmagic:soul_forge>);
Composer.recipe("bloodmagic:soul_forge", <bloodmagic:soul_forge>)
	.setTime(16)
	.setShaped([
		[<minecraft:prismarine_crystals>, null, <minecraft:prismarine_crystals>],
		[<alchemistry:ingot:60>, <minecraft:prismarine_crystals>, <alchemistry:ingot:60>],
		[<alchemistry:ingot:60>, <evilcraft:dark_block>, <alchemistry:ingot:60>]
	])
	.create();


//----------// FireCrafting Recipes //----------//
// Iron Sand
    FireCrafting.addRecipe(<bloodmagic:component:19>, <uniquecrops:oldcobble>);

print("Initialized 'BloodMagic'");