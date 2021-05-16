//Описание предметов===============================================================================================================


	val asp_enegrelvl = <advanced_solar_panels:machines>.definition;
	val asp_metadata_level = [0,1,2,3,4,5] as int[];

	for i in asp_metadata_level{
        asp_enegrelvl.makeStack(i).addShiftTooltip(function(item) {   
    	return "\u00a74\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435:";});}
	for i in asp_metadata_level{
        asp_enegrelvl.makeStack(i).addShiftTooltip(function(item) {    
    	return "\u00a77\u0441\u043e\u0431\u043b\u044e\u0434\u0430\u0439\u0442\u0435 \u044d\u043d\u0435\u0440\u0433\u043e\u0443\u0440\u043e\u0432\u0435\u043d\u044c, \u0438\u043d\u0430\u0447\u0435 \u043c\u0435\u0445\u0430\u043d\u0438\u0437\u043c \u0432\u0437\u043e\u0440\u0432\u0451\u0442\u0441\u044f." ;}, 
		function(item){return "\u0417\u0430\u0436\u043c\u0438\u0442\u0435 \u00a7o\u00a7eshift \u00a77\u0434\u043b\u044f \u043f\u043e\u0434\u0440\u043e\u0431\u043d\u043e\u0441\u0442\u0438";});}


	<advanced_solar_panels:machines:2>.addTooltip("\n§7Хранилище:§6 32000 §7Eu\n§7Генерация днём:§6 8 §7Eu/Тик\n§7Генерация ночью:§6 1 §7Eu/Тик\n§7Макс. выход:§6 32 §7Eu/Тик\n");
	<advanced_solar_panels:machines:3>.addTooltip("\n§7Хранилище:§6 100000 §7Eu\n§7Генерация днём:§6 64 §7Eu/Тик\n§7Генерация ночью:§6 8 §7Eu/Тик\n§7Макс. выход:§6 128 §7Eu/Тик\n");
	<advanced_solar_panels:machines:4>.addTooltip("\n§7Хранилище:§6 1000000 §7Eu\n§7Генерация днём:§6 512 §7Eu/Тик\n§7Генерация ночью:§6 64 §7Eu/Тик\n§7Макс. выход:§6 512 §7Eu/Тик\n");
	<advanced_solar_panels:machines:5>.addTooltip("\n§7Хранилище:§6 10000000 §7Eu\n§7Генерация днём:§6 4096 §7Eu/Тик\n§7Генерация ночью:§6 2048 §7Eu/Тик\n§7Макс. выход:§6 8192 §7Eu/Тик\n");

//Полное удаление предметов========================================================================================================


//усложнение крафта - Саннариум	

	recipes.remove(<advanced_solar_panels:crafting>);	


//Изменение крафтов================================================================================================================


	//усложнение крафта - Улучшенная солнечная панель 

		recipes.remove(<advanced_solar_panels:machines:2>);
		recipes.addShaped(<advanced_solar_panels:machines:2>,
		[[<extrautils2:passivegenerator:1>, <thermalfoundation:glass:3>, <extrautils2:passivegenerator:1>],
		[<extrautils2:ingredients:15>, <ic2:te:8>, <extrautils2:ingredients:15>],
		[<ic2:crafting:2>, <thermalfoundation:material:513>, <ic2:crafting:2>]]);


	//усложнение крафта - Гибридная солнечная панель

		recipes.remove(<advanced_solar_panels:machines:3>);
		recipes.addShaped(<advanced_solar_panels:machines:3>,
		[[<thermalfoundation:glass_alloy:7>, <thermalfoundation:glass_alloy:7>, <thermalfoundation:glass_alloy:7>],
		[<ic2:iridium_reflector>, <advanced_solar_panels:machines:2>, <ic2:iridium_reflector>],
		[<thermalfoundation:material:326>, <appliedenergistics2:material:38>, <thermalfoundation:material:326>]]);


	//усложнение крафта - Ультимативная солнечная панель

		recipes.remove(<advanced_solar_panels:machines:4>);
		recipes.addShaped(<advanced_solar_panels:machines:4>,
		[[<advanced_solar_panels:crafting:12>, <advanced_solar_panels:crafting:5>, <advanced_solar_panels:crafting:12>],
		[<forestry:crafting_material:1>, <advanced_solar_panels:machines:3>, <forestry:crafting_material:1>],
		[<extrautils2:compressednetherrack:4>, <extrautils2:ingredients:16>, <extrautils2:compressednetherrack:4>]]);


	//усложнение крафта - Квантовая солнечная панель	

		recipes.remove(<advanced_solar_panels:machines:5>);
		recipes.addShaped(<advanced_solar_panels:machines:5>,
		[[<advanced_solar_panels:crafting:7>, <advanced_solar_panels:crafting:13>, <advanced_solar_panels:crafting:7>],
		[<advanced_solar_panels:crafting:13>, <advanced_solar_panels:machines:4>, <advanced_solar_panels:crafting:13>],
		[<advanced_solar_panels:crafting:7>, <extrautils2:opinium:8>, <advanced_solar_panels:crafting:7>]]);
