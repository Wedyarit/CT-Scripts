# ThermalExpansion

import mods.gregtech.recipe.RecipeMap;

print("Initializing 'ThermalExpansion'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Конденсаторы  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Флаксовый конденсатор (основной)
recipes.remove(<thermalexpansion:capacitor>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12035>, <gregtech:meta_item_1:12237>, <gregtech:meta_item_1:12035>, <gregtech:cable:5237>, <gregtech:meta_item_1:32501>, <gregtech:cable:5237>, <gregtech:meta_item_1:12035>, <gregtech:meta_item_1:12237>, <gregtech:meta_item_1:12035>)
    .outputs(<thermalexpansion:capacitor>)
    .duration(20 * 20)
    .EUt(128)
    .buildAndRegister();

// Флаксовый конденсатор (усиленный)
recipes.remove(<thermalexpansion:capacitor:1>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12184>, <gregtech:cable:6237>, <thermalexpansion:capacitor>, <gregtech:cable:6237>, <gregtech:meta_item_1:12184>, <thermalfoundation:upgrade>, <gregtech:meta_item_1:12184>)
    .outputs(<thermalexpansion:capacitor:1>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Флаксовый конденсатор (укрепленный)
recipes.remove(<thermalexpansion:capacitor:2>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12112>, <gregtech:cable:7237>, <thermalexpansion:capacitor:1>, <gregtech:cable:7237>, <gregtech:meta_item_1:12112>, <thermalfoundation:upgrade:1>, <gregtech:meta_item_1:12112>)
    .outputs(<thermalexpansion:capacitor:2>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();

// Флаксовый конденсатор (синаловый)
recipes.remove(<thermalexpansion:capacitor:3>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12190>, <gregtech:cable:8237>, <thermalexpansion:capacitor:2>, <gregtech:cable:8237>, <gregtech:meta_item_1:12190>, <thermalfoundation:upgrade:2>, <gregtech:meta_item_1:12190>)
    .outputs(<thermalexpansion:capacitor:3>)
    .duration(20 * 20)
    .EUt(1024)
    .buildAndRegister();

// Флаксовый конденсатор (синаловый)
recipes.remove(<thermalexpansion:capacitor:4>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>, <gregtech:meta_item_1:12235>, <gregtech:meta_item_2:32435>, <gregtech:cable:9237>, <thermalexpansion:capacitor:3>, <gregtech:cable:9237>, <gregtech:meta_item_2:32435>, <thermalfoundation:upgrade:2>, <gregtech:meta_item_2:32435>)
    .outputs(<thermalexpansion:capacitor:4>)
    .duration(20 * 20)
    .EUt(2048)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Механизмы  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Энергетический зарядник
recipes.remove(<thermalexpansion:machine:9>);
recipes.addShaped("energy_charger", <thermalexpansion:machine:9>,
 [[<gregtech:meta_item_2:32490>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_2:32490>],
  [<gregtech:cable:8018>, <gregtech:machine:682>, <gregtech:cable:8237>],
  [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>]]);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

print("Initialized 'ThermalExpansion'");