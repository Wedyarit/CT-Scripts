#priority 1
# ThermalFoundation

import crafttweaker.item.IItemStack;

print("Initializing 'ThermalFoundation'...");

// Ненужные и запрещенные предметы
var items = [<thermalexpansion:frame:64>, <thermalexpansion:frame>, <thermalfoundation:material:1024>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("§cВ данной сборке этот предмет выключен");
}

// Шестеренки
var gears = [<thermalfoundation:material:22>, <thermalfoundation:material:23>, <thermalfoundation:material:24>, <thermalfoundation:material:25>, <thermalfoundation:material:26>, <thermalfoundation:material:27>, <thermalfoundation:material:256>, <thermalfoundation:material:257>, <thermalfoundation:material:258>, <thermalfoundation:material:259>, <thermalfoundation:material:260>, <thermalfoundation:material:262>, <thermalfoundation:material:263>, <thermalfoundation:material:264>, <thermalfoundation:material:288>, <thermalfoundation:material:289>, <thermalfoundation:material:290>, <thermalfoundation:material:291>] as IItemStack[];
for gear in gears {
    mods.jei.JEI.removeAndHide(gear);
	gear.addTooltip("§cВ данной сборке этот предмет выключен");
}

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Наборы обновления  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Усиленный набор обновления
recipes.remove(<thermalfoundation:upgrade>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12184>,  <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:32601>, <gregtech:meta_item_1:12001>,  <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12184>)
    .outputs(<thermalfoundation:upgrade>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Укрепленный набор обновления
recipes.remove(<thermalfoundation:upgrade:1>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12112>,  <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32602>, <gregtech:meta_item_1:12183>,  <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12112>)
    .outputs(<thermalfoundation:upgrade:1>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();

// Синаловый набор обновления
recipes.remove(<thermalfoundation:upgrade:2>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12190>,  <gregtech:meta_item_1:12072>, <gregtech:meta_item_1:32603>, <gregtech:meta_item_1:12072>,  <gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12190>)
    .outputs(<thermalfoundation:upgrade:2>)
    .duration(10 * 20)
    .EUt(1024)
    .buildAndRegister();

// Резонирующий набор обновления
recipes.remove(<thermalfoundation:upgrade:3>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>, <gregtech:meta_item_1:12235>, <gregtech:meta_item_2:32435>,  <gregtech:meta_item_1:12235>, <gregtech:meta_item_1:32604>, <gregtech:meta_item_1:12235>,  <gregtech:meta_item_2:32435>, <gregtech:meta_item_1:12235>, <gregtech:meta_item_2:32435>)
    .outputs(<thermalfoundation:upgrade:3>)
    .duration(10 * 20)
    .EUt(2048)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Катушки  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Красная принимающая катушка
recipes.remove(<thermalfoundation:material:513>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16237>, <gregtech:meta_item_2:16026>, <gregtech:meta_item_2:16237>, <gregtech:cable:1026>, <gregtech:cable:1026>, <gregtech:cable:1026>, <gregtech:meta_item_2:16237>, <gregtech:meta_item_2:16026>, <gregtech:meta_item_2:16237>)
    .outputs(<thermalfoundation:material:513>)
    .duration(7 * 20)
    .EUt(32)
    .buildAndRegister();

// Красная отдающая катушка
recipes.remove(<thermalfoundation:material:514>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16237>, <gregtech:meta_item_2:16062>, <gregtech:meta_item_2:16237>, <gregtech:cable:1062>, <gregtech:cable:1062>, <gregtech:cable:1062>, <gregtech:meta_item_2:16237>, <gregtech:meta_item_2:16062>, <gregtech:meta_item_2:16237>)
    .outputs(<thermalfoundation:material:514>)
    .duration(7 * 20)
    .EUt(32)
    .buildAndRegister();

// Красная проводящая катушка
recipes.remove(<thermalfoundation:material:515>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16237>, <gregtech:meta_item_2:16112>, <gregtech:meta_item_2:16237>, <gregtech:cable:1112>, <gregtech:cable:1112>, <gregtech:cable:1112>, <gregtech:meta_item_2:16237>, <gregtech:meta_item_2:16112>, <gregtech:meta_item_2:16237>)
    .outputs(<thermalfoundation:material:515>)
    .duration(7 * 20)
    .EUt(32)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Порошки  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Порошок Блитца
mixer.recipeBuilder()
    .inputs(<ore:dustSaltpeter>, <ore:dustSaltpeter>, <gregtech:meta_item_1:2219>, <ore:dustSaltpeter>)
    .outputs(<thermalfoundation:material:2051>)
    .duration(10 * 20)
    .EUt(10)
    .buildAndRegister();

// Порошок Близза
mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2120>, <gregtech:meta_item_1:2120>, <gregtech:meta_item_1:2219>, <gregtech:meta_item_1:2120>)
    .outputs(<thermalfoundation:material:2049>)
    .duration(10 * 20)
    .EUt(10)
    .buildAndRegister();

// Порошок Базальца
mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2138>, <gregtech:meta_item_1:2138>, <gregtech:meta_item_1:2219>, <gregtech:meta_item_1:2138>)
    .outputs(<thermalfoundation:material:2053>)
    .duration(10 * 20)
    .EUt(10)
    .buildAndRegister();

// Стержень Близза
mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2219>, <forestry:crafting_material:5>)
    .outputs(<thermalfoundation:material:2048>)
    .duration(15 * 20)
    .EUt(32)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Стекла  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Усиленное свинцовое стекло
recipes.remove(<thermalfoundation:glass:3>);
recipes.addShaped("thermalfoundation_reinforced_lead_glass", <thermalfoundation:glass:3>,
 [[<gregtech:meta_item_1:2138>, <gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2138>],
  [<gregtech:meta_item_1:2035>, <ore:blockGlass>, <gregtech:meta_item_1:2035>],
  [<gregtech:meta_item_1:2138>, <minecraft:blaze_powder>, <gregtech:meta_item_1:2138>]]);

// Усиленное инваровое стекло
recipes.remove(<thermalfoundation:glass_alloy:2>);
recipes.addShaped("thermalfoundation_reinforced_invar_glass", <thermalfoundation:glass_alloy:2>,
 [[<gregtech:meta_item_1:2138>, <gregtech:meta_item_1:2126>, <gregtech:meta_item_1:2138>],
  [<gregtech:meta_item_1:2126>, <ore:blockGlass>, <gregtech:meta_item_1:2126>],
  [<gregtech:meta_item_1:2138>, <minecraft:blaze_powder>, <gregtech:meta_item_1:2138>]]);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Броня  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
recipes.remove(<thermalfoundation:armor.helmet_nickel>);
recipes.addShaped(<thermalfoundation:armor.helmet_nickel>, [
[<ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>], 
[<ore:plateCurvedNickel>, hammer, <ore:plateCurvedNickel>]
]);
recipes.remove(<thermalfoundation:armor.plate_nickel>);
recipes.addShaped(<thermalfoundation:armor.plate_nickel>, [
[<ore:plateNickel>, hammer, <ore:plateNickel>], 
[<ore:plateCurvedNickel>, <ore:plateNickel>, <ore:plateCurvedNickel>], 
[<ore:plateCurvedNickel>, <ore:plateNickel>, <ore:plateCurvedNickel>]
]);
recipes.remove(<thermalfoundation:armor.legs_nickel>);
recipes.addShaped(<thermalfoundation:armor.legs_nickel>, [
[<ore:plateNickel>, <ore:plateCurvedNickel>, <ore:plateNickel>], 
[<ore:plateCurvedNickel>, hammer, <ore:plateCurvedNickel>], 
[<ore:plateCurvedNickel>, null, <ore:plateCurvedNickel>]
]);
recipes.remove(<thermalfoundation:armor.boots_nickel>);
recipes.addShaped(<thermalfoundation:armor.boots_nickel>, [
[<ore:plateNickel>, null, <ore:plateNickel>], 
[<ore:plateCurvedNickel>, hammer, <ore:plateCurvedNickel>]
]);

recipes.remove(<thermalfoundation:armor.helmet_copper>);
recipes.addShaped(<thermalfoundation:armor.helmet_copper>, [
[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], 
[<ore:plateCurvedCopper>, hammer, <ore:plateCurvedCopper>]
]);
recipes.remove(<thermalfoundation:armor.plate_copper>);
recipes.addShaped(<thermalfoundation:armor.plate_copper>, [
[<ore:plateCopper>, hammer, <ore:plateCopper>], 
[<ore:plateCurvedCopper>, <ore:plateCopper>, <ore:plateCurvedCopper>], 
[<ore:plateCurvedCopper>, <ore:plateCopper>, <ore:plateCurvedCopper>]
]);
recipes.remove(<thermalfoundation:armor.legs_copper>);
recipes.addShaped(<thermalfoundation:armor.legs_copper>, [
[<ore:plateCopper>, <ore:plateCurvedCopper>, <ore:plateCopper>], 
[<ore:plateCurvedCopper>, hammer, <ore:plateCurvedCopper>], 
[<ore:plateCurvedCopper>, null, <ore:plateCurvedCopper>]
]);
recipes.remove(<thermalfoundation:armor.boots_copper>);
recipes.addShaped(<thermalfoundation:armor.boots_copper>, [
[<ore:plateCopper>, null, <ore:plateCopper>], 
[<ore:plateCurvedCopper>, hammer, <ore:plateCurvedCopper>]
]);

recipes.remove(<thermalfoundation:armor.helmet_tin>);
recipes.addShaped(<thermalfoundation:armor.helmet_tin>, [
[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>], 
[<ore:plateCurvedTin>, hammer, <ore:plateCurvedTin>]
]);
recipes.remove(<thermalfoundation:armor.plate_tin>);
recipes.addShaped(<thermalfoundation:armor.plate_tin>, [
[<ore:plateTin>, hammer, <ore:plateTin>], 
[<ore:plateCurvedTin>, <ore:plateTin>, <ore:plateCurvedTin>], 
[<ore:plateCurvedTin>, <ore:plateTin>, <ore:plateCurvedTin>]
]);
recipes.remove(<thermalfoundation:armor.legs_tin>);
recipes.addShaped(<thermalfoundation:armor.legs_tin>, [
[<ore:plateTin>, <ore:plateCurvedTin>, <ore:plateTin>], 
[<ore:plateCurvedTin>, hammer, <ore:plateCurvedTin>], 
[<ore:plateCurvedTin>, null, <ore:plateCurvedTin>]
]);
recipes.remove(<thermalfoundation:armor.boots_tin>);
recipes.addShaped(<thermalfoundation:armor.boots_tin>, [
[<ore:plateTin>, null, <ore:plateTin>], 
[<ore:plateCurvedTin>, hammer, <ore:plateCurvedTin>]
]);

recipes.remove(<thermalfoundation:armor.helmet_silver>);
recipes.addShaped(<thermalfoundation:armor.helmet_silver>, [
[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
[<ore:plateCurvedSilver>, hammer, <ore:plateCurvedSilver>]
]);
recipes.remove(<thermalfoundation:armor.plate_silver>);
recipes.addShaped(<thermalfoundation:armor.plate_silver>, [
[<ore:plateSilver>, hammer, <ore:plateSilver>], 
[<ore:plateCurvedSilver>, <ore:plateSilver>, <ore:plateCurvedSilver>], 
[<ore:plateCurvedSilver>, <ore:plateSilver>, <ore:plateCurvedSilver>]
]);
recipes.remove(<thermalfoundation:armor.legs_silver>);
recipes.addShaped(<thermalfoundation:armor.legs_silver>, [
[<ore:plateSilver>, <ore:plateCurvedSilver>, <ore:plateSilver>], 
[<ore:plateCurvedSilver>, hammer, <ore:plateCurvedSilver>], 
[<ore:plateCurvedSilver>, null, <ore:plateCurvedSilver>]
]);
recipes.remove(<thermalfoundation:armor.boots_silver>);
recipes.addShaped(<thermalfoundation:armor.boots_silver>, [
[<ore:plateSilver>, null, <ore:plateSilver>], 
[<ore:plateCurvedSilver>, hammer, <ore:plateCurvedSilver>]
]);

recipes.remove(<thermalfoundation:armor.helmet_lead>);
recipes.addShaped(<thermalfoundation:armor.helmet_lead>, [
[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>], 
[<ore:plateCurvedLead>, hammer, <ore:plateCurvedLead>]
]);
recipes.remove(<thermalfoundation:armor.plate_lead>);
recipes.addShaped(<thermalfoundation:armor.plate_lead>, [
[<ore:plateLead>, hammer, <ore:plateLead>], 
[<ore:plateCurvedLead>, <ore:plateLead>, <ore:plateCurvedLead>], 
[<ore:plateCurvedLead>, <ore:plateLead>, <ore:plateCurvedLead>]
]);
recipes.remove(<thermalfoundation:armor.legs_lead>);
recipes.addShaped(<thermalfoundation:armor.legs_lead>, [
[<ore:plateLead>, <ore:plateCurvedLead>, <ore:plateLead>], 
[<ore:plateCurvedLead>, hammer, <ore:plateCurvedLead>], 
[<ore:plateCurvedLead>, null, <ore:plateCurvedLead>]
]);
recipes.remove(<thermalfoundation:armor.boots_lead>);
recipes.addShaped(<thermalfoundation:armor.boots_lead>, [
[<ore:plateLead>, null, <ore:plateLead>], 
[<ore:plateCurvedLead>, hammer, <ore:plateCurvedLead>]
]);

recipes.remove(<thermalfoundation:armor.helmet_aluminum>);
recipes.addShaped(<thermalfoundation:armor.helmet_aluminum>, [
[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>], 
[<ore:plateCurvedAluminium>, hammer, <ore:plateCurvedAluminium>]
]);
recipes.remove(<thermalfoundation:armor.plate_aluminum>);
recipes.addShaped(<thermalfoundation:armor.plate_aluminum>, [
[<ore:plateAluminium>, hammer, <ore:plateAluminium>], 
[<ore:plateCurvedAluminium>, <ore:plateAluminium>, <ore:plateCurvedAluminium>], 
[<ore:plateCurvedAluminium>, <ore:plateAluminium>, <ore:plateCurvedAluminium>]
]);
recipes.remove(<thermalfoundation:armor.legs_aluminum>);
recipes.addShaped(<thermalfoundation:armor.legs_aluminum>, [
[<ore:plateAluminium>, <ore:plateCurvedAluminium>, <ore:plateAluminium>], 
[<ore:plateCurvedAluminium>, hammer, <ore:plateCurvedAluminium>], 
[<ore:plateCurvedAluminium>, null, <ore:plateCurvedAluminium>]
]);
recipes.remove(<thermalfoundation:armor.boots_aluminum>);
recipes.addShaped(<thermalfoundation:armor.boots_aluminum>, [
[<ore:plateAluminium>, null, <ore:plateAluminium>], 
[<ore:plateCurvedAluminium>, hammer, <ore:plateCurvedAluminium>]
]);

recipes.remove(<thermalfoundation:armor.helmet_platinum>);
recipes.addShaped(<thermalfoundation:armor.helmet_platinum>, [
[<ore:platePlatinum>, <ore:platePlatinum>, <ore:platePlatinum>], 
[<ore:plateCurvedPlatinum>, hammer, <ore:plateCurvedPlatinum>]
]);
recipes.remove(<thermalfoundation:armor.plate_platinum>);
recipes.addShaped(<thermalfoundation:armor.plate_platinum>, [
[<ore:platePlatinum>, hammer, <ore:platePlatinum>], 
[<ore:plateCurvedPlatinum>, <ore:platePlatinum>, <ore:plateCurvedPlatinum>], 
[<ore:plateCurvedPlatinum>, <ore:platePlatinum>, <ore:plateCurvedPlatinum>]
]);
recipes.remove(<thermalfoundation:armor.legs_platinum>);
recipes.addShaped(<thermalfoundation:armor.legs_platinum>, [
[<ore:platePlatinum>, <ore:plateCurvedPlatinum>, <ore:platePlatinum>], 
[<ore:plateCurvedPlatinum>, hammer, <ore:plateCurvedPlatinum>], 
[<ore:plateCurvedPlatinum>, null, <ore:plateCurvedPlatinum>]
]);
recipes.remove(<thermalfoundation:armor.boots_platinum>);
recipes.addShaped(<thermalfoundation:armor.boots_platinum>, [
[<ore:platePlatinum>, null, <ore:platePlatinum>], 
[<ore:plateCurvedPlatinum>, hammer, <ore:plateCurvedPlatinum>]
]);

recipes.remove(<thermalfoundation:armor.helmet_steel>);
recipes.addShaped(<thermalfoundation:armor.helmet_steel>, [
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
[<ore:plateCurvedSteel>, hammer, <ore:plateCurvedSteel>]
]);
recipes.remove(<thermalfoundation:armor.plate_steel>);
recipes.addShaped(<thermalfoundation:armor.plate_steel>, [
[<ore:plateSteel>, hammer, <ore:plateSteel>], 
[<ore:plateCurvedSteel>, <ore:plateSteel>, <ore:plateCurvedSteel>], 
[<ore:plateCurvedSteel>, <ore:plateSteel>, <ore:plateCurvedSteel>]
]);
recipes.remove(<thermalfoundation:armor.legs_steel>);
recipes.addShaped(<thermalfoundation:armor.legs_steel>, [
[<ore:plateSteel>, <ore:plateCurvedSteel>, <ore:plateSteel>], 
[<ore:plateCurvedSteel>, hammer, <ore:plateCurvedSteel>], 
[<ore:plateCurvedSteel>, null, <ore:plateCurvedSteel>]
]);
recipes.remove(<thermalfoundation:armor.boots_steel>);
recipes.addShaped(<thermalfoundation:armor.boots_steel>, [
[<ore:plateSteel>, null, <ore:plateSteel>], 
[<ore:plateCurvedSteel>, hammer, <ore:plateCurvedSteel>]
]);

recipes.remove(<thermalfoundation:armor.helmet_electrum>);
recipes.addShaped(<thermalfoundation:armor.helmet_electrum>, [
[<ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>], 
[<ore:plateCurvedElectrum>, hammer, <ore:plateCurvedElectrum>]
]);
recipes.remove(<thermalfoundation:armor.plate_electrum>);
recipes.addShaped(<thermalfoundation:armor.plate_electrum>, [
[<ore:plateElectrum>, hammer, <ore:plateElectrum>], 
[<ore:plateCurvedElectrum>, <ore:plateElectrum>, <ore:plateCurvedElectrum>], 
[<ore:plateCurvedElectrum>, <ore:plateElectrum>, <ore:plateCurvedElectrum>]
]);
recipes.remove(<thermalfoundation:armor.legs_electrum>);
recipes.addShaped(<thermalfoundation:armor.legs_electrum>, [
[<ore:plateElectrum>, <ore:plateCurvedElectrum>, <ore:plateElectrum>], 
[<ore:plateCurvedElectrum>, hammer, <ore:plateCurvedElectrum>], 
[<ore:plateCurvedElectrum>, null, <ore:plateCurvedElectrum>]
]);
recipes.remove(<thermalfoundation:armor.boots_electrum>);
recipes.addShaped(<thermalfoundation:armor.boots_electrum>, [
[<ore:plateElectrum>, null, <ore:plateElectrum>], 
[<ore:plateCurvedElectrum>, hammer, <ore:plateCurvedElectrum>]
]);

recipes.remove(<thermalfoundation:armor.helmet_invar>);
recipes.addShaped(<thermalfoundation:armor.helmet_invar>, [
[<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>], 
[<ore:plateCurvedInvar>, hammer, <ore:plateCurvedInvar>]
]);
recipes.remove(<thermalfoundation:armor.plate_invar>);
recipes.addShaped(<thermalfoundation:armor.plate_invar>, [
[<ore:plateInvar>, hammer, <ore:plateInvar>], 
[<ore:plateCurvedInvar>, <ore:plateInvar>, <ore:plateCurvedInvar>], 
[<ore:plateCurvedInvar>, <ore:plateInvar>, <ore:plateCurvedInvar>]
]);
recipes.remove(<thermalfoundation:armor.legs_invar>);
recipes.addShaped(<thermalfoundation:armor.legs_invar>, [
[<ore:plateInvar>, <ore:plateCurvedInvar>, <ore:plateInvar>], 
[<ore:plateCurvedInvar>, hammer, <ore:plateCurvedInvar>], 
[<ore:plateCurvedInvar>, null, <ore:plateCurvedInvar>]
]);
recipes.remove(<thermalfoundation:armor.boots_invar>);
recipes.addShaped(<thermalfoundation:armor.boots_invar>, [
[<ore:plateInvar>, null, <ore:plateInvar>], 
[<ore:plateCurvedInvar>, hammer, <ore:plateCurvedInvar>]
]);

recipes.remove(<thermalfoundation:armor.helmet_bronze>);
recipes.addShaped(<thermalfoundation:armor.helmet_bronze>, [
[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], 
[<ore:plateCurvedBronze>, hammer, <ore:plateCurvedBronze>]
]);
recipes.remove(<thermalfoundation:armor.plate_bronze>);
recipes.addShaped(<thermalfoundation:armor.plate_bronze>, [
[<ore:plateBronze>, hammer, <ore:plateBronze>], 
[<ore:plateCurvedBronze>, <ore:plateBronze>, <ore:plateCurvedBronze>], 
[<ore:plateCurvedBronze>, <ore:plateBronze>, <ore:plateCurvedBronze>]
]);
recipes.remove(<thermalfoundation:armor.legs_bronze>);
recipes.addShaped(<thermalfoundation:armor.legs_bronze>, [
[<ore:plateBronze>, <ore:plateCurvedBronze>, <ore:plateBronze>], 
[<ore:plateCurvedBronze>, hammer, <ore:plateCurvedBronze>], 
[<ore:plateCurvedBronze>, null, <ore:plateCurvedBronze>]
]);
recipes.remove(<thermalfoundation:armor.boots_bronze>);
recipes.addShaped(<thermalfoundation:armor.boots_bronze>, [
[<ore:plateBronze>, null, <ore:plateBronze>], 
[<ore:plateCurvedBronze>, hammer, <ore:plateCurvedBronze>]
]);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Прочее  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Фито-Гро
recipes.remove(<thermalfoundation:fertilizer>);
mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2196>, <gregtech:meta_item_1:2156>, <gregtech:meta_item_1:2101>, <gregtech:meta_item_2:32570>)
    .outputs(<thermalfoundation:fertilizer> * 8)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Обогащенный Фито-Гро
recipes.remove(<thermalfoundation:fertilizer:1>);
mixer.recipeBuilder()
    .inputs(<thermalfoundation:fertilizer> * 3, <gregtech:meta_item_1:2226>)
    .outputs(<thermalfoundation:fertilizer:1> * 4)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'ThermalFoundation'");