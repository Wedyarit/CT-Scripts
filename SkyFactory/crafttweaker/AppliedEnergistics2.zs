import mods.appliedenergistics2.Inscriber;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
//Описание предметов===============================================================================================================



//Полное удаление предметов========================================================================================================

    mods.jei.JEI.hide(<appliedenergistics2:facade>);

    //дюп любых вещей
        recipes.remove(<appliedenergistics2:part:220>);
        recipes.remove(<appliedenergistics2:part:221>);
        recipes.remove(<appliedenergistics2:part:302>);
        recipes.remove(<appliedenergistics2:part:321>);
        recipes.remove(<appliedenergistics2:part:320>);
        recipes.remove(<appliedenergistics2:part:300>);
        recipes.remove(<appliedenergistics2:part:301>);

    //пространсвенные вещи - гриферит
        recipes.remove(<appliedenergistics2:material:32>);
        recipes.remove(<appliedenergistics2:material:33>);
        recipes.remove(<appliedenergistics2:material:34>);

    //Удаление упрощенного роста кварцевых семян всех видов
        mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed>.withTag({progress: 0}), <minecraft:glowstone_dust>);
        mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed:600>.withTag({progress: 600}), <minecraft:glowstone_dust>);
        mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200}), <minecraft:glowstone_dust>);

    //Удаление крафта заряженного кварца через Energetic Infuser
        mods.thermalexpansion.Infuser.removeRecipe(<appliedenergistics2:material>);


//Изменение крафтов================================================================================================================


    // Приемщик энергии - усложнение крафта
        recipes.remove(<appliedenergistics2:energy_acceptor>);
        recipes.addShaped(<appliedenergistics2:energy_acceptor>,
        [[<ore:plateSilver>, <ic2:advanced_re_battery:*>, <ore:plateSilver>],
        [<ic2:dust:6>, <appliedenergistics2:material:9>, <ic2:dust:6>],
        [<ore:plateSilver>, <appliedenergistics2:material:24>, <ore:plateSilver>]]);

    // МЭ контролер - усложнение крафта

        recipes.remove(<appliedenergistics2:controller>);
        recipes.addShaped(<appliedenergistics2:controller> * 1,
        [[<appliedenergistics2:smooth_sky_stone_block>, <thermalfoundation:upgrade:1>, <appliedenergistics2:smooth_sky_stone_block>],
        [<ic2:dust:6>, <appliedenergistics2:energy_acceptor>, <ic2:dust:6>],
        [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:23>, <appliedenergistics2:smooth_sky_stone_block>]]);

    //SF4
        recipes.remove(<appliedenergistics2:material:35>);
        recipes.addShaped(<appliedenergistics2:material:35>,
        [[<minecraft:redstone>, <appliedenergistics2:material:7>, <minecraft:redstone>],
        [<appliedenergistics2:material:7>, <appliedenergistics2:material:22>, <appliedenergistics2:material:7>],
        [<minecraft:redstone>, <appliedenergistics2:material:7>, <minecraft:redstone>]]);

        recipes.remove(<appliedenergistics2:material:54>);
        recipes.addShaped(<appliedenergistics2:material:54>,
        [[<ore:dyeBlue>, <appliedenergistics2:material:7>, <ore:dyeBlue>],
        [<appliedenergistics2:material:7>, <appliedenergistics2:material:22>, <appliedenergistics2:material:7>],
        [<ore:dyeBlue>, <appliedenergistics2:material:7>, <ore:dyeBlue>]]);

        recipes.remove(<appliedenergistics2:material:42>);
        recipes.addShaped(<appliedenergistics2:material:42> * 2,
        [[<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, <ore:dustEnderPearl>],
        [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

        recipes.remove(<appliedenergistics2:energy_cell>);
        recipes.addShaped(<appliedenergistics2:energy_cell>,
        [[<appliedenergistics2:material:11>, <appliedenergistics2:material:8>, <appliedenergistics2:material:11>],
        [<appliedenergistics2:material:8>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:8>],
        [<appliedenergistics2:material:11>, <appliedenergistics2:material:8>,<appliedenergistics2:material:11>]]);

        recipes.remove(<appliedenergistics2:material:52>);
        recipes.addShaped(<appliedenergistics2:material:52>,
        [[<appliedenergistics2:quartz_glass>, <minecraft:glowstone_dust>, <appliedenergistics2:quartz_glass>],
        [<minecraft:glowstone_dust>, <appliedenergistics2:material:7>, <minecraft:glowstone_dust>],
        [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

        recipes.remove(<appliedenergistics2:view_cell>);
        recipes.addShaped(<appliedenergistics2:view_cell>,
        [[<appliedenergistics2:material:39>, <appliedenergistics2:material:7>]]);
        recipes.addShaped(<appliedenergistics2:view_cell>,
        [[<appliedenergistics2:quartz_glass>, <minecraft:redstone>, <appliedenergistics2:quartz_glass>],
        [<minecraft:redstone>, <appliedenergistics2:material:7>, <minecraft:redstone>],
        [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

        recipes.remove(<appliedenergistics2:quantum_ring>);
        recipes.addShaped(<appliedenergistics2:quantum_ring>,
        [[<ore:ingotIron>, <appliedenergistics2:material:22>, <ore:ingotIron>],
        [<appliedenergistics2:material:24>, <appliedenergistics2:energy_cell>, <appliedenergistics2:part:16>],
        [<ore:ingotIron>, <appliedenergistics2:material:22>, <ore:ingotIron>]]);

        recipes.addShaped(<appliedenergistics2:part:469>,
        [[null, <ore:ingotIron>, null],
        [<ore:ingotIron>, <appliedenergistics2:material:24>, <ore:ingotIron>],
        [<appliedenergistics2:material:7>, <appliedenergistics2:material:7>, <appliedenergistics2:material:7>]]);

        recipes.addShaped(<appliedenergistics2:part:469>,
        [[null, <ore:ingotIron>, null],
        [<ore:ingotIron>, <appliedenergistics2:material:24>, <ore:ingotIron>],
        [<appliedenergistics2:material:12>, <appliedenergistics2:material:12>, <appliedenergistics2:material:12>]]);

