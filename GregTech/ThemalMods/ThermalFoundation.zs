#priority 1
# ThermalFoundation

print("Initializing 'ThermalFoundation'...");


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
    .inputs(<gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12112>,  <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12183>,  <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12112>)
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

print("Initialized 'ThermalFoundation'");