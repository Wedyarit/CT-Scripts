import crafttweaker.item.IIngredient;

//Массивы функции и тд=============================================================================================================
        
        val ic2_enegrelvl = <ic2:te>.definition;
        val ic2_metadata_level = [3,4,6,7,8,10,11,12,16,27,28,30,32,36,37,38,40,41,42,43,44,45,47,48,49,51,52,54,55,56,57,58,59,60,61,63,64,68,69,70,71,72,73,74,75,76,82,84,85,] as int[];

        val ic2_trans = <ic2:te>.definition;
        val ic2_metadata_trans = [77,78,79,80] as int[];
        

//Описание предметов===============================================================================================================


    //Добавление описания для машинок из IC2//Добавление описания для машинок из IC2//Добавление описания для машинок из IC2//Добавление описания для 
        for i in ic2_metadata_level{
            ic2_enegrelvl.makeStack(i).addShiftTooltip(function(item) {   
            return "§4Предупреждение:";});}
        for i in ic2_metadata_level{
            ic2_enegrelvl.makeStack(i).addShiftTooltip(function(item) {    
            return "§7соблюдайте энергоуровень, иначе механизм взорвётся." ;}, 
            function(item){return "Зажмите §o§eshift §7для подробности";});}

    //описание трансорматорам
        for i in ic2_metadata_trans{
            ic2_enegrelvl.makeStack(i).addShiftTooltip(function(item) {   
            return "§4Предупреждение:";});}
        for i in ic2_metadata_trans{
            ic2_trans.makeStack(i).addShiftTooltip(function(item) {    
            return "§7Используется для повышения или понижения энергоуровня." ;}, 
            function(item){return "Зажмите §o§eshift §7для подробности";});}

//Полное удаление предметов========================================================================================================

    //трубы - абуз через тинкер
        mods.tconstruct.Melting.removeRecipe(<liquid:steel>,<ic2:pipe:1>);
        mods.tconstruct.Melting.removeRecipe(<liquid:bronze>,<ic2:pipe>);

    //иридий через верстак
        recipes.remove(<ic2:misc_resource:1>);

//Изменение крафтов================================================================================================================

    // Режучщий механизм - усложнение крафта
        recipes.remove(<ic2:te:51>);
        recipes.addShaped(<ic2:te:51>,
        [[null, <ic2:crafting:2>, null],
        [null, <ic2:resource:13>, null],
        [null, <ic2:crafting:6>, null]]);

    // Ферментер - усложнение крафта
        recipes.remove(<ic2:te:53>);
        recipes.addShaped(<ic2:te:53>,
        [[<ic2:casing:3>, <ic2:casing:3>, <ic2:casing:3>],
        [<ic2:fluid_cell>, <ic2:resource:12>, <ic2:fluid_cell>],
        [<ic2:casing:3>, <ic2:crafting:7>, <ic2:casing:3>]]);

    //улучшения для машин - исправление бага
        recipes.remove(<ic2:upgrade:3>);
        recipes.addShaped(<ic2:upgrade:3>,
        [[<ore:plateTin>, <minecraft:lever>, <ore:plateTin>],
        [<minecraft:lever>, <thermalfoundation:upgrade>, <minecraft:lever>],
        [<ore:plateTin>, <minecraft:lever>, <ore:plateTin>]]);

        recipes.remove(<ic2:upgrade:8>);
        recipes.addShaped(<ic2:upgrade:8>,
        [[<ore:plateTin>, <ic2:crafting:6>, <ore:plateTin>],
        [null, <thermalfoundation:upgrade>, null],
        [<ore:plateTin>, <ic2:crafting:6>, <ore:plateTin>]]);

        recipes.remove(<ic2:upgrade:9>);
        recipes.addShaped(<ic2:upgrade:9>,
        [[<ore:plateTin>, null, <ore:plateTin>],
        [<ic2:crafting:6>, <thermalfoundation:upgrade>, <ic2:crafting:6>],
        [<ore:plateTin>, null, <ore:plateTin>]]);

        recipes.remove(<ic2:upgrade:6>);
        recipes.addShaped(<ic2:upgrade:6>,
        [[<ore:plateTin>, null, <ore:plateTin>],
        [<minecraft:sticky_piston>, <thermalfoundation:upgrade>, <minecraft:sticky_piston>],
        [<ore:plateTin>, null, <ore:plateTin>]]);

        recipes.remove(<ic2:upgrade:4>);
        recipes.addShaped(<ic2:upgrade:4>,
        [[<ore:plateTin>, <minecraft:sticky_piston>, <ore:plateTin>],
        [null, <thermalfoundation:upgrade>, null],
        [<ore:plateTin>, <minecraft:sticky_piston>, <ore:plateTin>]]);

        recipes.remove(<ic2:upgrade>);
        recipes.addShaped(<ic2:upgrade>,
        [[<ore:plateTin>, <ic2:heat_storage>, <ore:plateTin>],
        [null, <thermalfoundation:upgrade>, null],
        [<ore:plateTin>, <ic2:heat_storage>, <ore:plateTin>]]);

    
    //изменение крафта трансформаторам
        recipes.remove(<ic2:te:78>);
        recipes.addShaped(<ic2:te:78>, [[<ore:ingotSteel>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte}), <ore:ingotSteel>],
        [<ic2:te:77>, <ic2:resource:13>, <ic2:te:77>], 
        [<ore:ingotSteel>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte}), <ore:ingotSteel>]]);

        recipes.remove(<ic2:te:77>);
        recipes.addShaped(<ic2:te:77>, [[<minecraft:leather>, <ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte}), <minecraft:leather>],
        [<ic2:crafting:6>, <ic2:crafting:2> , <ic2:crafting:6>], 
        [<minecraft:leather>, <ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte}), <minecraft:leather>]]);

        recipes.remove(<ic2:te:79>);
        recipes.addShaped(<ic2:te:79>,
        [[<ic2:plate:7>, <ic2:advanced_re_battery:*>, <ic2:plate:7>],
        [<ic2:te:78>, <thermalexpansion:frame:132>, <ic2:te:78>],
        [<ic2:plate:7>, <thermalfoundation:upgrade:35>, <ic2:plate:7>]]);

        recipes.remove(<ic2:te:80>);
        recipes.addShaped(<ic2:te:80>,
        [[<ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}), <ic2:advanced_charging_re_battery:*>, <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte})],
        [<ic2:plate:7>, <ic2:te:79>, <ic2:plate:7>],
        [<ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}), <ic2:lapotron_crystal:*>, <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte})]]);

        recipes.remove(<ic2:upgrade:1>);
        recipes.addShaped(<ic2:upgrade:1>,
        [[<ic2:plate:7>, <ic2:charging_re_battery:*>, <ic2:plate:7>],
        [<ic2:upgrade>, <ic2:lapotron_crystal:*>, <ic2:upgrade>],
        [<ic2:plate:7>, <ic2:charging_re_battery:*>, <ic2:plate:7>]]);

    //стекловолоконный кабель
        recipes.remove(<ic2:cable:1>);
        recipes.addShaped(<ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte}) * 3, [[<thermalfoundation:glass_alloy:5>,<thermalfoundation:glass_alloy:5>,<thermalfoundation:glass_alloy:5>],[<ic2:dust:6>, <ore:dustTin>, <ic2:dust:6>],
        [<thermalfoundation:glass_alloy:5>, <thermalfoundation:glass_alloy:5>, <thermalfoundation:glass_alloy:5>]]);

    //энерго пыль - усложнение крафта
        recipes.remove(<ic2:dust:6>);
        mods.thermalexpansion.Transposer.addFillRecipe(<ic2:dust:6>, <ic2:dust:5>, <liquid:redstone> * 400, 100);	

    //Солнечная панель - усложнение крафта
        recipes.remove(<ic2:te:8>);
        recipes.addShaped(<ic2:te:8>,
        [[<extrautils2:passivegenerator>, <extrautils2:passivegenerator:1>, <extrautils2:passivegenerator>],
        [<teslacorelib:base_addon>, <ic2:resource:12>, <teslacorelib:base_addon>],
        [<ore:plateBronze>, <ic2:te:3>, <ore:plateBronze>]]);

    // Базовый корпус механизма - усложнение крафта 
        recipes.remove(<ic2:resource:12>);
        recipes.addShaped(<ic2:resource:12>,
        [[<ore:plateIron>, <ore:plateTin>, <ore:plateIron>],
        [<ore:plateTin>, null, <ore:plateTin>],
        [<ore:plateIron>, <ore:plateTin>, <ore:plateIron>]]);

    //Энергохранилище - усложнение крафта
        recipes.remove(<ic2:te:72>);
        recipes.addShaped(<ic2:te:72>,
        [[<ore:plankWood>, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), <ore:plankWood>],
        [<ic2:re_battery:*>, <ore:plateTin>, <ic2:re_battery:*>],
        [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

    // Геотермальный генератор - усложнение крафта
        recipes.remove(<ic2:te:4>);
        recipes.addShaped(<ic2:te:4>,
        [[<ic2:ingot>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "lava", Amount: 1000}}), <ic2:ingot>],
        [<thermalfoundation:material:326>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <thermalfoundation:material:326>],
        [<ore:plateObsidian>, <ic2:te:3>, <ore:plateObsidian>]]);

    //МЭСН - усложнение крафта
        recipes.remove(<ic2:te:73>);
        recipes.addShaped(<ic2:te:73>,
        [[<ore:plateBronze>, <ic2:dust:6>, <ore:plateBronze>],
        [<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ic2:te:72>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte})],
        [<ore:plateBronze>, <ic2:dust:6>, <ore:plateBronze>]]);


    //Кинетический генератор - усложнение крафта
        recipes.remove(<ic2:te:5>);
        recipes.addShaped(<ic2:te:5>,
        [[<ic2:casing:5>, <ic2:crafting:6>, <ic2:casing:5>],
        [<ic2:te:3>, <ic2:resource:12>, <ic2:crafting:29>],
        [<ic2:casing:5>, <ic2:crafting:6>, <ic2:casing:5>]]);


    //Кинетический ветрогенератор - усложнение крафта 
        recipes.remove(<ic2:te:21>);
        recipes.addShaped(<ic2:te:21>,
        [[<ore:platePlatinum>, <ic2:te:5>, <ore:platePlatinum>],
        [<thermalfoundation:material:295>, <ic2:resource:13>, <ic2:crafting:6>],
        [<ore:platePlatinum>, <ic2:te:5>, <ore:platePlatinum>]]);


    //Углеволоконный ротор - усложнение крафта 
        recipes.remove(<ic2:rotor_carbon>);
        recipes.addShaped(<ic2:rotor_carbon>,
        [[<ic2:crafting:15>, <ic2:crafting:34>, <ic2:crafting:15>],
        [<ic2:crafting:34>, <ic2:rotor_steel>, <ic2:crafting:34>],
        [<ic2:crafting:15>, <ic2:crafting:34>, <ic2:crafting:15>]]);


    //base_addon - усложнение крафта
        recipes.remove(<teslacorelib:base_addon>);
        recipes.addShaped(<teslacorelib:base_addon>,
        [[<ore:dyeBlue>, <appliedenergistics2:material:46>, <ore:dyeBlue>],
        [<appliedenergistics2:material:46>, <ore:plateIron>, <appliedenergistics2:material:46>],
        [<ore:dyeBlue>, <appliedenergistics2:material:46>, <ore:dyeBlue>]]);

    //Катушка теслы - небольшое облегчение крафта
        recipes.remove(<ic2:te:41>);
        recipes.addShaped(<ic2:te:41>,
        [[<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ic2:plate:5>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte})],
        [<ic2:plate:5>, <ic2:te:77>, <ic2:plate:5>],
        [<appliedenergistics2:material:5>, <ic2:crafting:2>, <appliedenergistics2:material:5>]]);

    //Солнечный опреснитель - усложнение крафта 
        recipes.remove(<ic2:te:33>);
        recipes.addShaped(<ic2:te:33>,
        [[<minecraft:stained_glass:15>, null, <minecraft:stained_glass:15>],
        [<extrautils2:passivegenerator>, <thermalfoundation:material:640>, <extrautils2:passivegenerator>],
        [<ic2:fluid_cell>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <ic2:resource:12>, <ic2:fluid_cell>.withTag({Fluid: {FluidName: "water", Amount: 1000}})]]);
