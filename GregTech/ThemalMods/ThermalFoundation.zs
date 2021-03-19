# ThermalFoundation

import mods.gregtech.recipe.RecipeMap;

print("Initializing 'ThermalFoundation'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


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


print("Initialized 'ThermalFoundation'");