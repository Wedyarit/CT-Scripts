import mods.industrialforegoing.Extractor;
//Описание предметов===============================================================================================================

//Полное удаление предметов========================================================================================================

//Изменение крафтов================================================================================================================

    //инфинити дрель
        recipes.remove(<industrialforegoing:infinity_drill>);
        recipes.addShaped(<industrialforegoing:infinity_drill>,
        [[null, <tconstruct:metal:2>, <thermalfoundation:storage_alloy:7>],
        [null, <thermalinnovation:drill:4>, <thermalfoundation:storage_alloy:6>],
        [<thermalfoundation:material:327>, <ic2:te:74>, <thermalfoundation:material:327>]]);

    //Удаление крафта машинной рамки из Tesla Core Lib и добавление сложного
        recipes.remove(<teslacorelib:machine_case>);
        recipes.addShaped(<teslacorelib:machine_case>,
        [[<ic2:crafting:2>, <ic2:plate:3>, <ic2:crafting:2>],
        [<ic2:plate:3>, <thermalfoundation:material:261>, <ic2:plate:3>],
        [<ic2:crafting:2>, <ic2:plate:3>, <ic2:crafting:2>]]);

    //Улучшение радуса действия - усложение крафта
        recipes.remove(<industrialforegoing:range_addon>);
        recipes.addShaped(<industrialforegoing:range_addon>,
        [[<minecraft:cobblestone>, <thermalfoundation:material:326>, <minecraft:cobblestone>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:1>);
        recipes.addShaped(<industrialforegoing:range_addon:1>,
        [[<minecraft:lapis_block>, <industrialforegoing:range_addon>, <minecraft:lapis_block>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:2>);
        recipes.addShaped(<industrialforegoing:range_addon:2>,
        [[<ore:blockIron>, <industrialforegoing:range_addon:1>, <ore:blockIron>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:3>);
        recipes.addShaped(<industrialforegoing:range_addon:3>,
        [[<ore:blockTin>, <industrialforegoing:range_addon:2>, <ore:blockTin>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:4>);
        recipes.addShaped(<industrialforegoing:range_addon:4>,
        [[<ore:blockCopper>, <industrialforegoing:range_addon:3>, <ore:blockCopper>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:5>);
        recipes.addShaped(<industrialforegoing:range_addon:5>,
        [[<ore:blockBronze>, <industrialforegoing:range_addon:4>, <ore:blockBronze>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:6>);
        recipes.addShaped(<industrialforegoing:range_addon:6>,
        [[<ore:blockSilver>, <industrialforegoing:range_addon:5>, <ore:blockSilver>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:7>);
        recipes.addShaped(<industrialforegoing:range_addon:7>,
        [[<ore:blockGold>, <industrialforegoing:range_addon:6>, <ore:blockGold>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:8>);
        recipes.addShaped(<industrialforegoing:range_addon:8>,
        [[<ore:blockAluminum>, <industrialforegoing:range_addon:7>, <ore:blockAluminum>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:9>);
        recipes.addShaped(<industrialforegoing:range_addon:9>,
        [[<ore:blockDiamond>, <industrialforegoing:range_addon:8>, <ore:blockDiamond>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:10>);
        recipes.addShaped(<industrialforegoing:range_addon:10>,
        [[<ore:blockPlatinum>, <industrialforegoing:range_addon:9>, <ore:blockPlatinum>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

        recipes.remove(<industrialforegoing:range_addon:11>);
        recipes.addShaped(<industrialforegoing:range_addon:11>,
        [[<ore:blockEmerald>, <industrialforegoing:range_addon:10>, <ore:blockEmerald>],
        [<ic2:te:41>, <industrialforegoing:plastic>, <ic2:te:41>],
        [<teslacorelib:base_addon>, <teslacorelib:base_addon>, <teslacorelib:base_addon>]]);

    //Завод камня - усложнение крафта
        recipes.remove(<industrialforegoing:material_stonework_factory>);
        recipes.addShaped(<industrialforegoing:material_stonework_factory>,
        [[<industrialforegoing:plastic>, <extrautils2:klein>, <industrialforegoing:plastic>],
        [<minecraft:diamond_pickaxe>, <teslacorelib:machine_case>|<thermalexpansion:frame>, <appliedenergistics2:grindstone>],
        [<ic2:fluid_cell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <industrialforegoing:pink_slime>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "lava", Amount: 1000}})]]);

    //Генератор на твердом топливе - усложнение крафта 
        recipes.remove(<industrialforegoing:petrified_fuel_generator>);
        recipes.addShaped(<industrialforegoing:petrified_fuel_generator>,
        [[<industrialforegoing:plastic>, <appliedenergistics2:vibration_chamber>, <industrialforegoing:plastic>],
        [<ic2:upgrade>, <teslacorelib:machine_case>|<thermalexpansion:frame>, <ic2:upgrade>],
        [<thermalfoundation:material:357>, <ic2:te:3>, <thermalfoundation:material:357>]]);

    //Сеятель растений - усложнение крафта
        recipes.remove(<industrialforegoing:crop_sower>);
        recipes.addShaped(<industrialforegoing:crop_sower>,
        [[<industrialforegoing:plastic>, <forestry:ffarm:3>.withTag({FarmBlock: 0}), <industrialforegoing:plastic>],
        [<ceramics:unfired_clay:9>, <teslacorelib:machine_case>|<thermalexpansion:frame>, <ceramics:unfired_clay:9>],
        [<ore:gearCopper>, <tp:growth_block>, <ore:gearIron>]]);

    //Сборщик растений - усложнение крафта
        recipes.remove(<industrialforegoing:crop_recolector>);
        recipes.addShaped(<industrialforegoing:crop_recolector>,
        [[<industrialforegoing:plastic>, <minecraft:diamond_hoe>, <industrialforegoing:plastic>],
        [<minecraft:diamond_axe>, <teslacorelib:machine_case>|<thermalexpansion:frame>, <minecraft:diamond_axe>],
        [<forestry:hardened_machine>, <forestry:ffarm:5>.withTag({FarmBlock: 0}), <forestry:hardened_machine>]]);

    //Авто-рыболов - усложение крафта 
        recipes.remove(<industrialforegoing:water_resources_collector>);
        recipes.addShaped(<industrialforegoing:water_resources_collector>,
        [[<industrialforegoing:plastic>, <tconstruct:materials:15>, <industrialforegoing:plastic>],
        [<thermalfoundation:tool.fishing_rod_diamond>, <teslacorelib:machine_case>|<thermalexpansion:frame>, <thermalfoundation:tool.fishing_rod_diamond>],
        [<minecraft:water_bucket>, <tconstruct:materials:15>, <minecraft:water_bucket>]]);

    //Извлекатель жидкости из дерева - усложнение крафта
        recipes.remove(<industrialforegoing:tree_fluid_extractor>);
        recipes.addShaped(<industrialforegoing:tree_fluid_extractor>,
        [[<tconstruct:materials:15>, <extratrees:durable_hammer>,<tconstruct:materials:15>],
        [<ic2:treetap>, <minecraft:furnace>, <ic2:treetap>],
        [<tconstruct:materials:15>, <minecraft:redstone_block>, <tconstruct:materials:15>]]);

    //Юнит производства латекса - усложнение крафта 
        recipes.remove(<industrialforegoing:latex_processing_unit>);
        recipes.addShaped(<industrialforegoing:latex_processing_unit>,
        [[<minecraft:water_bucket>, <ic2:crafting:2>, <minecraft:water_bucket>],
        [<tconstruct:materials:15>, <teslacorelib:machine_case>|<thermalexpansion:frame>, <tconstruct:materials:15>],
        [<minecraft:water_bucket>, <ic2:crafting:6>, <minecraft:water_bucket>]]);

    //Производитель лавы - усложнение крафта
        recipes.remove(<industrialforegoing:lava_fabricator>);
        recipes.addShaped(<industrialforegoing:lava_fabricator>,
        [[<industrialforegoing:plastic>, <minecraft:magma_cream>, <industrialforegoing:plastic>],
        [<minecraft:magma>, <teslacorelib:machine_case>|<thermalexpansion:frame>, <minecraft:magma>],
        [<minecraft:lava_bucket>, <genetics:misc:2>, <minecraft:lava_bucket>]]);

    //Производительная печь - усложнение крафта 

        recipes.remove(<industrialforegoing:resourceful_furnace>);
        recipes.addShaped(<industrialforegoing:resourceful_furnace>,
        [[<industrialforegoing:plastic>, <extrautils2:ingredients:11>, <industrialforegoing:plastic>],
        [<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), <teslacorelib:machine_case>|<thermalexpansion:frame>, <extrautils2:machine>.withTag({Type: "extrautils2:furnace"})],
        [<ore:xuRedstoneCoil>, <genetics:misc:2>, <ore:xuRedstoneCoil>]]);

    //Взаимодействователь с растениями - усложнение крафта
        recipes.remove(<industrialforegoing:plant_interactor>);
        recipes.addShaped(<industrialforegoing:plant_interactor>,
        [[<industrialforegoing:plastic>, <minecraft:golden_hoe>, <industrialforegoing:plastic>],
        [<minecraft:diamond_hoe>, <teslacorelib:machine_case>|<thermalexpansion:frame>, <minecraft:diamond_hoe>],
        [<forestry:hardened_machine>, <ic2:crafting:6>, <forestry:hardened_machine>]]);

    //
        recipes.remove(<industrialforegoing:froster>);
        recipes.addShaped(<industrialforegoing:froster>,
        [[<industrialforegoing:plastic>, <minecraft:diamond>, <industrialforegoing:plastic>],
        [<minecraft:water_bucket>, <teslacorelib:machine_case>|<thermalexpansion:frame>, <minecraft:water_bucket>],
        [<industrialforegoing:plastic>, <ore:gearGold>, <industrialforegoing:plastic>]]);

    //More logs to collect Latex
        Extractor.add(<sky_orchards:log_cobalt>, <liquid:latex> * 4);
        Extractor.add(<sky_orchards:log_ardite>, <liquid:latex> * 4);
        Extractor.add(<sky_orchards:log_iron>, <liquid:iron> * 1, 0.15);
        Extractor.add(<sky_orchards:log_gold>, <liquid:gold> * 1, 0.15);
        Extractor.add(<sky_orchards:log_copper>, <liquid:copper> * 1, 0.15);
        Extractor.add(<sky_orchards:log_lead>, <liquid:lead> * 1, 0.15);
        Extractor.add(<sky_orchards:log_tin>, <liquid:tin> * 1, 0.15);
        Extractor.add(<sky_orchards:log_silver>, <liquid:silver> * 1, 0.15);
        Extractor.add(<sky_orchards:log_nickel>, <liquid:nickel> * 1, 0.15);
        Extractor.add(<sky_orchards:log_cobalt>, <liquid:cobalt> * 1, 0.15);
        Extractor.add(<sky_orchards:log_ardite>, <liquid:ardite> * 1, 0.15);

    //SF4
        recipes.addShaped(<thermalfoundation:material:96> * 1,
        [[<ore:dustIron>, <ore:dustCoal>]]);

        recipes.addShaped(<thermalfoundation:material:97> * 2,
        [[<ore:dustGold>, <ore:dustSilver>]]);

        recipes.addShaped(<thermalfoundation:material:98> * 3,
        [[<ore:dustIron>, <ore:dustIron>, <ore:dustNickel>]]);

        recipes.addShaped(<thermalfoundation:material:99> * 4,
        [[<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>]]);

        recipes.addShaped(<thermalfoundation:material:101> * 4,
        [[<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustSilver>, <forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000})]]);

        recipes.addShaped(<thermalfoundation:material:102> * 4,
        [[<ore:dustTin>, <ore:dustTin>, <ore:dustTin>, <ore:dustSilver>, <forge:bucketfilled>.withTag({FluidName: "glowstone", Amount: 1000})]]);

        recipes.addShaped(<thermalfoundation:material:103> * 4,
        [[<ore:dustLead>, <ore:dustLead>, <ore:dustLead>, <ore:dustPlatinum>, <forge:bucketfilled>.withTag({FluidName: "ender", Amount: 1000})]]);

        recipes.removeByRegex("thermalfoundation:fertilizer_2");
        recipes.removeByRegex("thermalfoundation:fertilizer_3");
        recipes.removeByRegex("thermalfoundation:block_dirt");
