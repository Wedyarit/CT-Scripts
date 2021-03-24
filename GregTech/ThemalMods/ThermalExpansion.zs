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
// Магмовый тигель
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped("thermalexpansion_magma_crucible", <thermalexpansion:machine:6>,
 [[<gregtech:meta_item_1:12183>, <thermalfoundation:glass_alloy:2>, <gregtech:meta_item_1:12183>],
  [<gregtech:meta_item_1:12183>, <gregtech:machine:502>, <gregtech:meta_item_1:12183>],
  [<thermalfoundation:material:513>, <gregtech:meta_item_2:32489>, <thermalfoundation:material:513>]]);

// Энергетический зарядник
recipes.remove(<thermalexpansion:machine:9>);
recipes.addShaped("thermalexpansion_energy_charger", <thermalexpansion:machine:9>,
 [[<gregtech:meta_item_2:32490>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_2:32490>],
  [<gregtech:cable:8018>, <gregtech:machine:682>, <gregtech:cable:8237>],
  [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>]]);

// Вулканический пресс
recipes.remove(<thermalexpansion:machine:15>);
recipes.addShaped("thermalexpansion_volcanic_press", <thermalexpansion:machine:15>,
 [[<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32308>, <gregtech:meta_item_1:12183>],
  [<thermalfoundation:glass:3>, <gregtech:machine:502>, <thermalfoundation:glass:3>],
  [<gregtech:meta_item_2:32489>, <thermalfoundation:material:513>, <gregtech:meta_item_2:32489>]]);

// Водный накопитель
recipes.remove(<thermalexpansion:device>);
recipes.addShaped("thermalexpansion_water_storage", <thermalexpansion:device>,
 [[<gregtech:meta_item_1:12001>, <minecraft:bucket>, <gregtech:meta_item_1:12001>],
  [<ore:blockGlass>, <gregtech:machine:501>, <ore:blockGlass>],
  [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:32610>, <gregtech:meta_item_1:12001>]]);

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Расширения  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Вспомогательная принимающая катушка
recipes.remove(<thermalexpansion:augment:128>);
recipes.addShaped("thermalexpansion_extension_auxiliary_take_up_coil", <thermalexpansion:augment:128>,
 [[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12001>],
  [<gregtech:meta_item_1:12112>, <thermalfoundation:material:513>, <gregtech:meta_item_1:12112>],
  [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12001>]]);

// Пироконвективная петля
recipes.remove(<thermalexpansion:augment:352>);
recipes.addShaped("thermalexpansion_extension_pyroconvective_loop", <thermalexpansion:augment:352>,
 [[<gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12126>],
  [<gregtech:meta_item_1:32641>, <thermalfoundation:material:515>, <gregtech:meta_item_1:32641>],
  [<gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12126>]]);

// Концентратор связей флакса
recipes.remove(<thermalexpansion:augment:400>);
recipes.addShaped("thermalexpansion_extension_flux_bond_concentrator", <thermalexpansion:augment:400>,
 [[<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>],
  [<thermalfoundation:material:513>, <thermalfoundation:material:514>, <thermalfoundation:material:515>],
  [<gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>, <gregtech:meta_item_1:12062>]]);

// Пирокластические инъекции
recipes.remove(<thermalexpansion:augment:496>);
recipes.addShaped("thermalexpansion_extension_pyroclastic_injections", <thermalexpansion:augment:496>,
 [[<gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12126>],
  [<thermalfoundation:material:1025>, <extrautils2:klein>, <thermalfoundation:material:1025>],
  [<gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12126>, <gregtech:meta_item_1:12126>]]);

// Осколочное осаждение
recipes.remove(<thermalexpansion:augment:497>);
recipes.addShaped("thermalexpansion_extension_fragmentation", <thermalexpansion:augment:497>,
 [[<gregtech:meta_item_1:12044>, <gregtech:meta_item_1:12044>, <gregtech:meta_item_1:12044>],
  [<thermalfoundation:material:1026>, <thermalfoundation:material:515>, <thermalfoundation:material:1026>],
  [<gregtech:meta_item_1:12044>, <gregtech:meta_item_1:12044>, <gregtech:meta_item_1:12044>]]);


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

print("Initialized 'ThermalExpansion'");