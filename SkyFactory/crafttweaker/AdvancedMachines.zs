
//Описание предметов===============================================================================================================

    val am_enegrelvl = <advanced_machines:machines>.definition;
    val am_metadata_level = [0,1,2,3,4,5,6,7] as int[];

	for i in am_metadata_level{
        am_enegrelvl.makeStack(i).addShiftTooltip(function(item) {   
    	return "§4Предупреждение:";});}
	
    for i in am_metadata_level{
        am_enegrelvl.makeStack(i).addShiftTooltip(function(item) {    
    	return "§7соблюдайте энергоуровень, иначе механизм взорвётся." ;}, 
		function(item){return "Зажмите §o§eshift §7для подробности";});} 

//Полное удаление предметов========================================================================================================


//Изменение крафтов================================================================================================================

    // Вращающийся дробитель
        recipes.remove(<advanced_machines:machines>);
        recipes.addShaped(<advanced_machines:machines>,
        [[<thermalfoundation:material:262>, <ic2:resource:13>, <thermalfoundation:material:262>],
        [<thermalexpansion:machine:1>, <ic2:te:47>, <thermalexpansion:machine:1>],
        [<extrautils2:machine>, <thermalfoundation:upgrade:3>, <extrautils2:machine>]]);

    // Сингулярный компрессор
        recipes.remove(<advanced_machines:machines:1>);
        recipes.addShaped(<advanced_machines:machines:1>,
        [[<thermalfoundation:material:262>, <ic2:resource:13>, <thermalfoundation:material:262>],
        [<ic2:crafting:2>, <ic2:te:43>, <ic2:crafting:2>],
        [<thermalexpansion:machine:10>, <thermalfoundation:upgrade:3>, <thermalexpansion:machine:10>]]);

    // Центробежный экстрактор
        recipes.remove(<advanced_machines:machines:2>);
        recipes.addShaped(<advanced_machines:machines:2>,
        [[<thermalfoundation:material:262>, <ic2:resource:13>, <thermalfoundation:material:262>],
        [<ic2:crafting:2>, <ic2:te:45>, <ic2:crafting:2>],
        [<industrialforegoing:tree_fluid_extractor>, <thermalfoundation:upgrade:3>, <industrialforegoing:tree_fluid_extractor>]]);

    // Уплотненный утилизатор
        recipes.remove(<advanced_machines:machines:3>);
        recipes.addShaped(<advanced_machines:machines:3>,
        [[<thermalfoundation:material:262>, <ic2:block_cutting_blade:1>, <thermalfoundation:material:262>],
        [<ic2:resource:13>, <ic2:te:48>, <ic2:resource:13>],
        [<ic2:te:43>, <thermalfoundation:upgrade:3>, <ic2:te:43>]]);

    // Растворящий экструдер
        recipes.remove(<advanced_machines:machines:4>);
        recipes.addShaped(<advanced_machines:machines:4>,
        [[<thermalfoundation:material:262>, <ic2:resource:13>, <thermalfoundation:material:262>],
        [<ic2:crafting:2>, <ic2:te:55>, <ic2:crafting:2>],
        [<ic2:cutter>, <thermalfoundation:upgrade:3>, <ic2:cutter>]]);

    // Крыльчатый каток
        recipes.remove(<advanced_machines:machines:5>);
        recipes.addShaped(<advanced_machines:machines:5>,
        [[<thermalfoundation:material:262>, <ic2:resource:13>, <thermalfoundation:material:262>],
        [<ic2:crafting:2>, <ic2:te:55>, <ic2:crafting:2>],
        [<ic2:forge_hammer>, <thermalfoundation:upgrade:3>, <ic2:forge_hammer>]]);

    // Водоструйный резак
        recipes.remove(<advanced_machines:machines:6>);
        recipes.addShaped(<advanced_machines:machines:6>,
        [[<thermalfoundation:material:262>, <ic2:resource:13>, <thermalfoundation:material:262>],
        [<ic2:crafting:2>, <ic2:te:55>, <ic2:crafting:2>],
        [<ic2:block_cutting_blade:1>, <thermalfoundation:upgrade:3>, <ic2:block_cutting_blade:1>]]);

    // Термический промыватель 
        recipes.remove(<advanced_machines:machines:7>);
        recipes.addShaped(<advanced_machines:machines:7>,
        [[<thermalfoundation:material:262>, <ic2:resource:13>, <thermalfoundation:material:262>],
        [<ic2:crafting:2>, <ic2:te:56>, <ic2:crafting:2>],
        [<industrialforegoing:ore_washer>, <thermalfoundation:upgrade:3>, <industrialforegoing:ore_washer>]]);