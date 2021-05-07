import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.industrialforegoing.Extractor;
//Изменение Oredict и переменные===================================================================================================

	var Thermal_Gear = [
		<thermalfoundation:material:128>, <thermalfoundation:material:129>, <thermalfoundation:material:130>, <thermalfoundation:material:131>, <thermalfoundation:material:132>, <thermalfoundation:material:133>, <thermalfoundation:material:134>, <thermalfoundation:material:135>, <thermalfoundation:material:136>, <thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>, <thermalfoundation:material:163>, <thermalfoundation:material:164>, <thermalfoundation:material:165>, <thermalfoundation:material:166>, <thermalfoundation:material:167>, <ic2:misc_resource:1>, <minecraft:iron_ingot>, <minecraft:gold_ingot>, <extrautils2:ingredients>] 
		as IItemStack[];

	var Thermal_Mint = [
		<thermalfoundation:material:128>, <thermalfoundation:material:129>, <thermalfoundation:material:130>, <thermalfoundation:material:131>, <thermalfoundation:material:132>, <thermalfoundation:material:133>, <thermalfoundation:material:134>, <thermalfoundation:material:135>, <thermalfoundation:material:136>, <thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>, <thermalfoundation:material:163>, <thermalfoundation:material:164>, <thermalfoundation:material:165>, <thermalfoundation:material:166>, <thermalfoundation:material:167>, <minecraft:iron_ingot>, <minecraft:gold_ingot>] 
		as IItemStack[];

	var Thermal_Storage = [
		<thermalfoundation:material:128>, <thermalfoundation:material:129>, <thermalfoundation:material:130>, <thermalfoundation:material:131>, <thermalfoundation:material:132>, <thermalfoundation:material:133>, <thermalfoundation:material:134>, <thermalfoundation:material:135>, <thermalfoundation:material:136>, <thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>, <thermalfoundation:material:163>, <thermalfoundation:material:164>, <thermalfoundation:material:165>, <thermalfoundation:material:166>, <thermalfoundation:material:167>, <minecraft:dye:4>, <minecraft:brick>, <ic2:misc_resource:1>, <minecraft:gold_ingot>, <thermalfoundation:material:2053>, <thermalfoundation:material:2049>, <thermalfoundation:material:2051>, <minecraft:blaze_powder>,<threng:material:3>, <minecraft:iron_ingot>] 
		as IItemStack[];

	var Thermal_Press = [
		<thermalfoundation:material:2053>, <thermalfoundation:material:2049>, <thermalfoundation:material:2051>, <minecraft:blaze_powder>, <ic2:crafting:18>, <ic2:crafting:16>, <threng:material:3>, <ic2:crafting:17>] 
		as IItemStack[];

//Описание предметов===============================================================================================================


//Полное удаление предметов========================================================================================================

	// Удаление крафтов шестеренок - что бы оставить крафт только в тинкер печке 
		recipes.remove(<thermalfoundation:material:256>);
		recipes.remove(<thermalfoundation:material:257>);
		recipes.remove(<thermalfoundation:material:258>);
		recipes.remove(<thermalfoundation:material:259>);
		recipes.remove(<thermalfoundation:material:260>);
		recipes.remove(<thermalfoundation:material:261>);
		recipes.remove(<thermalfoundation:material:262>);
		recipes.remove(<thermalfoundation:material:263>);
		recipes.remove(<thermalfoundation:material:264>);
		recipes.remove(<thermalfoundation:material:288>);
		recipes.remove(<thermalfoundation:material:289>);
		recipes.remove(<thermalfoundation:material:290>);
		recipes.remove(<thermalfoundation:material:291>);
		recipes.remove(<thermalfoundation:material:292>);
		recipes.remove(<thermalfoundation:material:293>);
		recipes.remove(<thermalfoundation:material:294>);
		recipes.remove(<thermalfoundation:material:295>);
		recipes.remove(<thermalfoundation:material:24>);
		recipes.remove(<thermalfoundation:material:25>);
		recipes.remove(<thermalfoundation:material:26>);
		recipes.remove(<thermalfoundation:material:27>);
	
		<ore:oreIridium>.remove(<thermalfoundation:ore:7>);

	for Thermal in Thermal_Gear {
		mods.thermalexpansion.Compactor.removeGearRecipe(Thermal);
	}
	for Thermal in Thermal_Mint {
		mods.thermalexpansion.Compactor.removeMintRecipe(Thermal);
	}
	for Thermal in Thermal_Storage {
		mods.thermalexpansion.Compactor.removeStorageRecipe(Thermal);
	}
	for Thermal in Thermal_Press {
		mods.thermalexpansion.Compactor.removePressRecipe(Thermal);
	}


//Изменение крафтов================================================================================================================

	//Удаление получения иридия через дробление платины  
		mods.thermalexpansion.Pulverizer.removeRecipe(<thermalfoundation:ore:6>);

	//Добавление крафта платиновой пыли без иридия
		mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:70> * 2, <thermalfoundation:ore:6>, 4000);

	//Удаление получения иридия через плавку Платиновой руды в InductionSmelter
		mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:ore:6>, <thermalfoundation:material:866>);

	//Добавление получения платиновых слитков через InductionSmelter без иридия
		mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:134> * 4, <thermalfoundation:ore:6>, <thermalfoundation:material:866>, 6000, <thermalfoundation:material:133>, 100);

	//рамка механизма - усложнение крафта
		recipes.remove(<thermalexpansion:frame>);
		recipes.addShaped(<thermalexpansion:frame>,
		[[<ic2:plate:3>, <ic2:crafting:2>, <ic2:plate:3>],	
		[<ic2:crafting:2>, <thermalfoundation:material:261>, <ic2:crafting:2>],	
		[<ic2:plate:3>, <ic2:crafting:2>, <ic2:plate:3>]]);
		
	//Новый крафт рамке устройства - усложнение крафта
		recipes.remove(<thermalexpansion:frame:64>);
		recipes.addShaped(<thermalexpansion:frame:64>,
		[[<ic2:crafting:2>, <ic2:plate:8>, <ic2:crafting:2>],
		[<ic2:plate:8>, <thermalfoundation:material:256>, <ic2:plate:8>],
		[<ic2:crafting:2>, <ic2:plate:8>, <ic2:crafting:2>]]);

	//удаление расширения для нумизматического генератора
		recipes.remove(<thermalexpansion:augment:720>);

	//Наборы обновлений - усложнение крафта 	
		recipes.remove(<thermalfoundation:upgrade>);
		recipes.addShaped(<thermalfoundation:upgrade>,
		[[<thermalfoundation:material:354>, <thermalfoundation:material:290>, <thermalfoundation:material:354>],
		[<thermalfoundation:material:24>, <extrautils2:ingredients:9>, <thermalfoundation:material:24>],
		[<thermalfoundation:material:354>, <thermalfoundation:material:261>, <thermalfoundation:material:354>]]);
		
		recipes.remove(<thermalfoundation:upgrade:1>);
		recipes.addShaped(<thermalfoundation:upgrade:1>,
		[[<thermalfoundation:material:353>, <thermalfoundation:material:290>, <thermalfoundation:material:353>],
		[<thermalfoundation:material:290>, <extrautils2:ingredients:6>, <thermalfoundation:material:290>],
		[<thermalfoundation:material:353>, <thermalfoundation:material:289>, <thermalfoundation:material:353>]]);
		
		recipes.remove(<thermalfoundation:upgrade:2>);
		recipes.addShaped(<thermalfoundation:upgrade:2>,
		[[<thermalfoundation:material:357>, <thermalfoundation:material:289>, <thermalfoundation:material:357>],
		[<thermalfoundation:material:289>, <extrautils2:ingredients:15>, <thermalfoundation:material:289>],
		[<thermalfoundation:material:357>, <thermalfoundation:material:293>, <thermalfoundation:material:357>]]);
		
		recipes.remove(<thermalfoundation:upgrade:3>);
		recipes.addShaped(<thermalfoundation:upgrade:3>,
		[[<thermalfoundation:material:359>, <thermalfoundation:material:293>, <thermalfoundation:material:359>],
		[<thermalfoundation:material:293>, <extrautils2:ingredients:16>, <thermalfoundation:material:293>],
		[<thermalfoundation:material:359>, <thermalfoundation:material:295>, <thermalfoundation:material:359>]]);
		
	//Удаление легкого крафта головки от дрели и Добавление крафта головки от дрели
		recipes.remove(<thermalfoundation:material:656>);
		recipes.addShaped(<thermalfoundation:material:656>,
		[[null, <ore:plateIron>, null],
		[<ore:plateIron>, <ore:gearCopper>, <ore:plateIron>],
		[<ore:ingotSilver>, <ore:plateIron>, <ore:ingotSilver>]]);

	//Удаление легкого крафта для корпуса инструмента и Добавление сложного крафта для корпуса инструмента
		recipes.remove(<thermalfoundation:material:640>);
		recipes.addShaped(<thermalfoundation:material:640>,
		[[null, <ore:dustRedstone>, null],
		[<ore:plateGold>, <ore:dustRedstone>, <ore:plateGold>],
		[<ore:dustRedstone>, <ore:gearInvar>, <ore:dustRedstone>]]);

	//Удаление крафта для дрели первого уровня легкого, и Добавление сложного крафта дрели первого уровня, и Добавление крафта бурам с красителе
		recipes.remove(<thermalinnovation:drill>);
		recipes.addShaped(<thermalinnovation:drill>, 
		[[<ore:plateIron>, <ic2:crafting:12>, <ore:plateIron>],
		[<ore:plateSilver>, <thermalfoundation:material:640>, <ore:plateSilver>], 
		[<ore:ingotLead>, <thermalexpansion:frame>, <ore:ingotLead>]]);

	//Удаление крафта для дрели второго уровня и Добавление нового крафта
		recipes.remove(<thermalinnovation:drill:1>);
		recipes.addShaped(<thermalinnovation:drill:1>, 
		[[<thermalfoundation:glass:2>, <ic2:drill:*>, <thermalfoundation:glass:2>],
		[<ore:plateInvar>, <thermalinnovation:drill>, <ore:plateInvar>], 
		[<thermalfoundation:glass_alloy:2>, <thermalfoundation:upgrade>, <thermalfoundation:glass_alloy:2>]]);

	//Удаление крафта для дрели третьего уровня и Добавление нового крафта
		recipes.remove(<thermalinnovation:drill:2>);
		recipes.addShaped(<thermalinnovation:drill:2>, 
		[[<ore:plateElectrum>, <ic2:diamond_drill:*>, <ore:plateElectrum>],
		[<thermalfoundation:glass_alloy:1>, <thermalinnovation:drill:1>, <thermalfoundation:glass_alloy:1>], 
		[<appliedenergistics2:material:24>, <thermalfoundation:upgrade:1>, <appliedenergistics2:material:24>]]);

	//Удаление крафта для дрели четвертого уровня и Добавление нового крафта
		recipes.remove(<thermalinnovation:drill:3>);
		recipes.addShaped(<thermalinnovation:drill:3>, 
		[[<ore:plateSignalum>, <ic2:te:56>, <ore:plateSignalum>],
		[<thermalfoundation:material:1027>, <thermalinnovation:drill:2>, <thermalfoundation:material:1027>], 
		[<thermalfoundation:glass_alloy:5>, <thermalfoundation:upgrade:2>, <thermalfoundation:glass_alloy:5>]]);

	//Удаление крафта для дрели пятого уровня и Добавление нового крафта
		recipes.remove(<thermalinnovation:drill:4>);
		recipes.addShaped(<thermalinnovation:drill:4>.withTag({Energy: 0, Mode: 2}),
		[[<ore:plateLumium>, <gravisuite:advanceddrill:*>, <ore:plateLumium>],
		[<ore:gearEnderium>, <thermalinnovation:drill:3>, <ore:gearEnderium>],
		[<thermalfoundation:glass_alloy:6>, <thermalfoundation:upgrade:3>, <thermalfoundation:glass_alloy:6>]]);
		
	//Добавление крафтов рамкам энергетических ячеек
		recipes.addShaped(<thermalexpansion:frame:129>,
		[[<thermalfoundation:material:162>, <thermalfoundation:glass_alloy:2>, <thermalfoundation:material:162>],
		[<thermalfoundation:glass_alloy:2>, <thermalexpansion:frame:128>, <thermalfoundation:glass_alloy:2>],
		[<thermalfoundation:material:162>, <thermalfoundation:glass_alloy:2>, <thermalfoundation:material:162>]]);

		recipes.addShaped(<thermalexpansion:frame:130>,
		[[<thermalfoundation:material:161>, <thermalfoundation:glass_alloy:1>, <thermalfoundation:material:161>],
		[<thermalfoundation:glass_alloy:1>, <thermalexpansion:frame:129>, <thermalfoundation:glass_alloy:1>],
		[<thermalfoundation:material:161>, <thermalfoundation:glass_alloy:1>, <thermalfoundation:material:161>]]);
		
		recipes.addShaped(<thermalexpansion:frame:131>,
		[[<thermalfoundation:material:165>, <thermalfoundation:glass_alloy:5>, <thermalfoundation:material:165>],
		[<thermalfoundation:glass_alloy:5>, <thermalexpansion:frame:130>, <thermalfoundation:glass_alloy:5>],
		[<thermalfoundation:material:165>, <thermalfoundation:glass_alloy:5>, <thermalfoundation:material:165>]]);

		recipes.addShaped(<thermalexpansion:frame:132>,
		[[<thermalfoundation:material:167>, <thermalfoundation:glass_alloy:7>, <thermalfoundation:material:167>],
		[<thermalfoundation:glass_alloy:7>, <thermalexpansion:frame:131>, <thermalfoundation:glass_alloy:7>],
		[<thermalfoundation:material:167>, <thermalfoundation:glass_alloy:7>, <thermalfoundation:material:167>]]);

	//Флаксовый конденсатор - усложнение крафта
		recipes.remove(<thermalexpansion:capacitor>);
		recipes.addShaped(<thermalexpansion:capacitor>,
		[[<minecraft:redstone_block>, <thermalfoundation:material:640>, <minecraft:redstone_block>],
		[<ore:ingotCopper>, <thermalexpansion:frame:128>, <ore:ingotCopper>],
		[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);

		recipes.remove(<thermalexpansion:capacitor:1>);
		recipes.addShaped(<thermalexpansion:capacitor:1>,
		[[<minecraft:redstone_block>, <thermalexpansion:capacitor>, <minecraft:redstone_block>],
		[<thermalfoundation:material:162>, <thermalexpansion:frame:129>, <thermalfoundation:material:162>],
		[<thermalfoundation:material:162>, <thermalfoundation:upgrade>, <thermalfoundation:material:162>]]);

		recipes.remove(<thermalexpansion:capacitor:2>);
		recipes.addShaped(<thermalexpansion:capacitor:2>,
		[[<minecraft:redstone_block>, <thermalexpansion:capacitor:1>, <minecraft:redstone_block>],
		[<thermalfoundation:material:161>, <thermalexpansion:frame:130>, <thermalfoundation:material:161>],
		[<thermalfoundation:material:161>, <thermalfoundation:upgrade:1>, <thermalfoundation:material:161>]]);

		recipes.remove(<thermalexpansion:capacitor:3>);
		recipes.addShaped(<thermalexpansion:capacitor:3>,
		[[<minecraft:redstone_block>, <thermalexpansion:capacitor:2>, <minecraft:redstone_block>],
		[<thermalfoundation:material:165>, <thermalexpansion:frame:131>, <thermalfoundation:material:165>],
		[<thermalfoundation:material:165>, <thermalfoundation:upgrade:2>, <thermalfoundation:material:165>]]);

		recipes.remove(<thermalexpansion:capacitor:4>);
		recipes.addShaped(<thermalexpansion:capacitor:4>,
		[[<minecraft:redstone_block>, <thermalexpansion:capacitor:3>, <minecraft:redstone_block>],
		[<thermalfoundation:material:167>, <thermalexpansion:frame:132>, <thermalfoundation:material:167>],
		[<thermalfoundation:material:167>, <thermalfoundation:upgrade:3>, <thermalfoundation:material:167>]]);

	//Лейки - усложнение крафта
		recipes.remove(<thermalcultivation:watering_can>);
		recipes.addShaped(<thermalcultivation:watering_can>,
		[[<thermalfoundation:material:320>, <ic2:crop_res:2>, <thermalfoundation:glass>],
		[<thermalfoundation:material:320>, <minecraft:water_bucket>, <thermalfoundation:material:320>],
		[null, <thermalfoundation:material:320>, null]]);

		recipes.remove(<thermalcultivation:watering_can:1>);
		recipes.addShaped(<thermalcultivation:watering_can:1>,
		[[<thermalfoundation:material:354>, <thermalfoundation:fertilizer>, <thermalfoundation:glass_alloy:2>],
		[<thermalfoundation:material:354>, <thermalcultivation:watering_can>, <thermalfoundation:material:354>],
		[null, <thermalfoundation:material:354>, null]]);
		
		recipes.remove(<thermalcultivation:watering_can:2>);
		recipes.addShaped(<thermalcultivation:watering_can:2>,
		[[<thermalfoundation:material:353>, <thermalfoundation:fertilizer:1>, <thermalfoundation:glass_alloy:1>],
		[<thermalfoundation:material:353>, <thermalcultivation:watering_can:1>, <thermalfoundation:material:353>],
		[null, <thermalfoundation:material:353>, null]]);

		recipes.remove(<thermalcultivation:watering_can:3>);
		recipes.addShaped(<thermalcultivation:watering_can:3>,
		[[<thermalfoundation:material:357>, <thermalfoundation:fertilizer:2>, <thermalfoundation:glass_alloy:5>],
		[<thermalfoundation:material:357>, <thermalcultivation:watering_can:2>, <thermalfoundation:material:357>],
		[null, <thermalfoundation:material:357>, null]]);

		recipes.remove(<thermalcultivation:watering_can:4>);	
		recipes.addShaped(<thermalcultivation:watering_can:4>,
		[[<thermalfoundation:material:359>, <thermalfoundation:fertilizer:2>, <thermalfoundation:glass_alloy:7>,],
		[<thermalfoundation:material:359>, <thermalcultivation:watering_can:3>, <thermalfoundation:material:359>],
		[null, <thermalfoundation:material:359>, null]]);
		
	//Магниты - усложнение крафтов
		recipes.remove(<thermalinnovation:magnet>);
		recipes.addShaped(<thermalinnovation:magnet>,
		[[<ic2:crafting:29>, null, <ic2:crafting:30>],
		[<thermalfoundation:material:513>, <extrautils2:opinium:2>, <thermalfoundation:material:513>],
		[<ore:ingotCopper>, <thermalfoundation:material:640>, <ore:ingotCopper>]]);

		recipes.remove(<thermalinnovation:magnet:1>);
		recipes.addShaped(<thermalinnovation:magnet:1>,
		[[<ic2:crafting:29>, null, <ic2:crafting:30>],
		[<thermalfoundation:material:513>, <thermalinnovation:magnet>, <thermalfoundation:material:513>],
		[<thermalfoundation:material:162>, <thermalfoundation:material:640>, <thermalfoundation:material:162>]]);

		recipes.remove(<thermalinnovation:magnet:2>);
		recipes.addShaped(<thermalinnovation:magnet:2>,
		[[<ic2:crafting:29>, null, <ic2:crafting:30>],
		[<thermalfoundation:material:513>, <thermalinnovation:magnet:1>, <thermalfoundation:material:513>],
		[<thermalfoundation:material:161>, <thermalfoundation:material:640>, <thermalfoundation:material:161>]]);

		recipes.remove(<thermalinnovation:magnet:3>);
		recipes.addShaped(<thermalinnovation:magnet:3>,
		[[<ic2:crafting:29>, null, <ic2:crafting:30>],
		[<thermalfoundation:material:513>, <thermalinnovation:magnet:2>, <thermalfoundation:material:513>],
		[<thermalfoundation:material:165>, <thermalfoundation:material:640>, <thermalfoundation:material:165>]]);

		recipes.remove(<thermalinnovation:magnet:4>);
		recipes.addShaped(<thermalinnovation:magnet:4>,
		[[<ic2:crafting:29>, null, <ic2:crafting:30>],
		[<thermalfoundation:material:513>, <thermalinnovation:magnet:3>, <thermalfoundation:material:513>],
		[<thermalfoundation:material:167>, <thermalfoundation:material:640>, <thermalfoundation:material:167>]]);	
		
	//Резервуар - усложнение крафта 
		recipes.remove(<thermalexpansion:reservoir>);
		recipes.addShaped(<thermalexpansion:reservoir>,
		[[null, <thermalfoundation:glass>, null],
		[<thermalfoundation:material:320>, <extrautils2:klein>, <thermalfoundation:material:320>],
		[<thermalfoundation:material:192>, <thermalfoundation:material:320>, <thermalfoundation:material:192>]]);

		recipes.remove(<thermalexpansion:reservoir:1>);
		recipes.addShaped(<thermalexpansion:reservoir:1>,
		[[null, <thermalfoundation:glass_alloy:2>, null],
		[<thermalfoundation:material:354>, <thermalexpansion:reservoir>, <thermalfoundation:material:354>],
		[<thermalfoundation:material:226>, <thermalfoundation:material:354>, <thermalfoundation:material:226>]]);

		recipes.remove(<thermalexpansion:reservoir:2>);
		recipes.addShaped(<thermalexpansion:reservoir:2>,
		[[null, <thermalfoundation:glass_alloy:1>, null],
		[<thermalfoundation:material:353>, <thermalexpansion:reservoir:1>, <thermalfoundation:material:353>],
		[<thermalfoundation:material:225>, <thermalfoundation:material:353>, <thermalfoundation:material:225>]]);

		recipes.remove(<thermalexpansion:reservoir:3>);
		recipes.addShaped(<thermalexpansion:reservoir:3>,
		[[null, <thermalfoundation:glass_alloy:5>, null],
		[<thermalfoundation:material:357>, <thermalexpansion:reservoir:2>, <thermalfoundation:material:357>],
		[<thermalfoundation:material:229>, <thermalfoundation:material:357>, <thermalfoundation:material:229>]]);

		recipes.remove(<thermalexpansion:reservoir:4>);
		recipes.addShaped(<thermalexpansion:reservoir:4>,
		[[null, <thermalfoundation:glass_alloy:7>, null],
		[<thermalfoundation:material:359>, <thermalexpansion:reservoir:3>, <thermalfoundation:material:359>],
		[<thermalfoundation:material:231>, <thermalfoundation:material:359>, <thermalfoundation:material:231>]]);

	//Удаление крафта измурдуной шестерни через Компактор из Thermal и Добавление крафта изумрудной шестерни 
		mods.thermalexpansion.Compactor.removeGearRecipe(<minecraft:emerald> * 4);
		mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:27>, <tconstruct:cast_custom:4>, <liquid:emerald>, 2664, false, 400);

	//Удаление крафта алмазной шестерни через Компактор из TE и Добавление крафта алмазной шестерни через верстак
		mods.thermalexpansion.Compactor.removeGearRecipe(<minecraft:diamond> * 4);
		recipes.addShaped(<thermalfoundation:material:26>,
		[[null, <ore:gemDiamond>, null], 
		[<ore:gemDiamond>, <ore:gemEmerald>, <ore:gemDiamond>],
		[null, <ore:gemDiamond>, null]]);

	//Вакуумулятор - усложнение кратфа 
		recipes.remove(<thermalexpansion:device:12>);
		recipes.addShaped(<thermalexpansion:device:12>,
		[[<ore:ingotTin>, <minecraft:hopper>, <ore:ingotTin>],
		[<ic2:cable:3>.withTag({type: 3 as byte, insulation: 2 as byte}), <thermalexpansion:frame:64>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 2 as byte})],
		[<ore:gearIron>, <thermalfoundation:material:640>, <ore:gearIron>]]);

	//Флаксовые трубы - усложнение кратфа
		recipes.remove(<thermaldynamics:duct_0>);
		recipes.addShaped(<thermaldynamics:duct_0>*3,
		[[<thermalfoundation:glass:3>, <ore:ingotTin>, <thermalfoundation:glass:3>],
		[<ore:ingotTin>, <minecraft:redstone_block>, <ore:ingotTin>],
		[<thermalfoundation:glass:3>, <ore:ingotTin>, <thermalfoundation:glass:3>]]);

		recipes.remove(<thermaldynamics:duct_0:1>);
		recipes.addShaped(<thermaldynamics:duct_0:1>*3,
		[[<thermalfoundation:glass_alloy:2>, <thermaldynamics:duct_0>, <thermalfoundation:glass_alloy:2>],
		[<thermaldynamics:duct_0>, <thermalfoundation:material:354>, <thermaldynamics:duct_0>],
		[<thermalfoundation:glass_alloy:2>, <thermaldynamics:duct_0>, <thermalfoundation:glass_alloy:2>]]);

		recipes.remove(<thermaldynamics:duct_0:6>);
		recipes.addShaped(<thermaldynamics:duct_0:6>*3,
		[[<thermalfoundation:glass_alloy:1>, <thermaldynamics:duct_0:1>, <thermalfoundation:glass_alloy:1>],
		[<thermaldynamics:duct_0:1>, <thermalfoundation:material:353>, <thermaldynamics:duct_0:1>],
		[<thermalfoundation:glass_alloy:1>, <thermaldynamics:duct_0:1>, <thermalfoundation:glass_alloy:1>]]);

		recipes.remove(<thermaldynamics:duct_0:3>);
		recipes.addShaped(<thermaldynamics:duct_0:3>*3,
		[[<thermalfoundation:glass_alloy:5>, <thermaldynamics:duct_0:2>, <thermalfoundation:glass_alloy:5>],
		[<thermaldynamics:duct_0:2>, <thermalfoundation:material:357>, <thermaldynamics:duct_0:2>],
		[<thermalfoundation:glass_alloy:5>, <thermaldynamics:duct_0:2>, <thermalfoundation:glass_alloy:5>]]);

		recipes.remove(<thermaldynamics:duct_0:7>);
		recipes.addShaped(<thermaldynamics:duct_0:7>*3,
		[[<thermalfoundation:glass_alloy:5>, <thermaldynamics:duct_0:6>, <thermalfoundation:glass_alloy:5>],
		[<thermaldynamics:duct_0:6>, <thermalfoundation:material:357>, <thermaldynamics:duct_0:6>],
		[<thermalfoundation:glass_alloy:5>, <thermaldynamics:duct_0:6>, <thermalfoundation:glass_alloy:5>]]);

		recipes.remove(<thermaldynamics:duct_0:4>);
		recipes.addShaped(<thermaldynamics:duct_0:4>*3,
		[[<thermalfoundation:glass_alloy:7>, <thermaldynamics:duct_0:3>, <thermalfoundation:glass_alloy:7>],
		[<thermaldynamics:duct_0:3>, <thermalfoundation:material:359>, <thermaldynamics:duct_0:3>],
		[<thermalfoundation:glass_alloy:7>, <thermaldynamics:duct_0:3>, <thermalfoundation:glass_alloy:7>]]);

		recipes.remove(<thermaldynamics:duct_0:8>);
		recipes.addShaped(<thermaldynamics:duct_0:8>*3,
		[[<thermalfoundation:glass_alloy:7>, <thermaldynamics:duct_0:7>, <thermalfoundation:glass_alloy:7>],
		[<thermaldynamics:duct_0:7>, <thermalfoundation:material:359>, <thermaldynamics:duct_0:7>],
		[<thermalfoundation:glass_alloy:7>, <thermaldynamics:duct_0:7>, <thermalfoundation:glass_alloy:7>]]);

		recipes.remove(<thermaldynamics:duct_0:9>);
		recipes.addShaped(<thermaldynamics:duct_0:9>*3,
		[[<thermalfoundation:material:167>, <thermaldynamics:duct_0:4>, <thermalfoundation:material:167>],
		[<thermaldynamics:duct_0:4>, <thermalfoundation:material:833>, <thermaldynamics:duct_0:4>],
		[<thermalfoundation:material:167>, <thermaldynamics:duct_0:4>, <thermalfoundation:material:167>]]);

	//Жидкостная труба - усложнение кратфа
		recipes.remove(<thermaldynamics:duct_16>);
		recipes.addShaped(<thermaldynamics:duct_16>*3,
		[[<minecraft:redstone>, <thermalfoundation:glass>, <minecraft:redstone>],
		[<thermalfoundation:glass>, <minecraft:bucket>, <thermalfoundation:glass>],
		[<minecraft:redstone>, <thermalfoundation:glass>, <minecraft:redstone>]]);

		recipes.remove(<thermaldynamics:duct_16:1>);
		recipes.addShaped(<thermaldynamics:duct_16:1>*3,
		[[<minecraft:redstone>, <thermalfoundation:material:320>, <minecraft:redstone>],
		[<thermalfoundation:material:320>, <minecraft:bucket>, <thermalfoundation:material:320>],
		[<minecraft:redstone>, <thermalfoundation:material:320>, <minecraft:redstone>]]);

		recipes.remove(<thermaldynamics:duct_16:2>);
		recipes.addShaped(<thermaldynamics:duct_16:2>*3,
		[[<minecraft:redstone>, <thermalfoundation:glass_alloy:2>, <minecraft:redstone>],
		[<thermalfoundation:glass_alloy:2>, <minecraft:bucket>, <thermalfoundation:glass_alloy:2>],
		[<minecraft:redstone>, <thermalfoundation:glass_alloy:2>, <minecraft:redstone>]]);

		recipes.remove(<thermaldynamics:duct_16:3>);
		recipes.addShaped(<thermaldynamics:duct_16:3>*3,
		[[<minecraft:redstone>, <thermalfoundation:material:354>, <minecraft:redstone>],
		[<thermalfoundation:material:354>, <minecraft:bucket>, <thermalfoundation:material:354>],
		[<minecraft:redstone>, <thermalfoundation:material:354>, <minecraft:redstone>]]);

	//Предметная труба - усложнение крафта 
		recipes.remove(<thermaldynamics:duct_32>);
		recipes.addShaped(<thermaldynamics:duct_32>*3,
		[[<ore:ingotNickel>, <thermalfoundation:glass:4>, <ore:ingotNickel>],
		[<thermalfoundation:glass:4>, <minecraft:hopper>, <thermalfoundation:glass:4>],
		[<ore:ingotNickel>, <thermalfoundation:glass:4>, <ore:ingotNickel>]]);

		recipes.remove(<thermaldynamics:duct_32:1>);
		recipes.addShaped(<thermaldynamics:duct_32:1>*3,
		[[<ore:ingotNickel>, <thermalfoundation:material:324>, <ore:ingotNickel>],
		[<thermalfoundation:material:324>, <minecraft:hopper>, <thermalfoundation:material:324>],
		[<ore:ingotNickel>, <thermalfoundation:material:324>, <ore:ingotNickel>]]);

