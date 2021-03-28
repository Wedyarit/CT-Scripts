#priority 1
# ThermalExpansion

print("Initializing 'ThermalExpansion'...");


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
// Рамка энергетической ячейки
recipes.remove(<thermalexpansion:frame:128>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:14035> * 48, <gregtech:meta_item_1:19112> * 24, <gregtech:meta_item_1:18184> * 24)
    .outputs(<thermalexpansion:frame:128>)
    .duration(60 * 20)
    .EUt(128)
    .buildAndRegister();

// Энергетическая ячейка
recipes.remove(<thermalexpansion:cell>);
assembler.recipeBuilder()
    .inputs(<thermalfoundation:material:515> * 6, <appliedenergistics2:energy_cell> * 5, <thermalexpansion:frame:128>, <gregtech:meta_item_1:12237> * 6)
    .outputs(<thermalexpansion:cell>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Лесопилка
recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped("thermalexpansion_sawmill", <thermalexpansion:machine:2>,
 [[<gregtech:meta_item_1:12183>, <thermalfoundation:glass_alloy:2>, <gregtech:meta_item_1:12183>],
  [<gregtech:meta_item_1:12183>, <gregtech:machine:502>, <gregtech:meta_item_1:12183>],
  [<thermalfoundation:material:513>, <gregtech:meta_item_2:32489>, <thermalfoundation:material:513>]]);

// Магмовый тигель
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped("thermalexpansion_magma_crucible", <thermalexpansion:machine:6>,
 [[<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32721>, <gregtech:meta_item_1:12183>],
  [<gregtech:meta_item_1:32631>, <gregtech:machine_casing:2>, <gregtech:meta_item_1:32631>],
  [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32601>, <gregtech:meta_item_1:12183>]]);

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

// Лексический трансмутатор
recipes.remove(<thermalexpansion:device:7>);
recipes.addShaped("thermalexpansion_lexical_transmutator", <thermalexpansion:device:7>,
 [[<gregtech:meta_item_1:12001>, <thermalfoundation:tome_lexicon>, <gregtech:meta_item_1:12001>],
  [<gregtech:meta_item_1:32630>, <gregtech:machine:501>, <gregtech:meta_item_1:32630>],
  [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>]]);
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


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Резервуары  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Переносной резервуар
recipes.remove(<thermalexpansion:tank>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12087> * 2, <gregtech:meta_item_1:14087> * 8, <gregtech:meta_item_1:17087> * 8, <gregtech:meta_item_1:14184> * 4, <gregtech:meta_item_1:18184> * 8, <gregtech:meta_item_1:18184> * 4, <minecraft:glass_pane> * 4)
    .outputs(<thermalexpansion:tank>)
    .duration(15 * 20)
    .EUt(128)
    .buildAndRegister();

// Резервуар (Основной)
recipes.remove(<thermalexpansion:reservoir>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32454> * 2, <gtadditions:ga_meta_item:87> * 2, <gregtech:meta_item_1:12087> * 2, <gregtech:meta_item_1:18001> * 2)
    .outputs(<thermalexpansion:reservoir>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();

// Резервуар (Усиленный)
recipes.remove(<thermalexpansion:reservoir:1>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12183> * 2, <gtadditions:ga_meta_item:183> * 2, <thermalexpansion:reservoir>)
    .outputs(<thermalexpansion:reservoir:1>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();

// Резервуар (Укрепленный)
recipes.remove(<thermalexpansion:reservoir:2>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12072> * 2, <gtadditions:ga_meta_item:72> * 2, <thermalexpansion:reservoir:1>)
    .outputs(<thermalexpansion:reservoir:2>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();

// Резервуар (Синаловый)
recipes.remove(<thermalexpansion:reservoir:3>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12235> * 2, <gtadditions:ga_meta_item:235> * 2, <thermalexpansion:reservoir:2>)
    .outputs(<thermalexpansion:reservoir:3>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();

// Резервуар (Резонирующий)
recipes.remove(<thermalexpansion:reservoir:4>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12308> * 2, <gtadditions:ga_meta_item:308> * 2, <thermalexpansion:reservoir:3>)
    .outputs(<thermalexpansion:reservoir:4>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Лейки ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Лейка (Основная)
recipes.remove(<thermalcultivation:watering_can>);
assembler.recipeBuilder()
    .inputs(<thermalexpansion:reservoir>, <gtadditions:ga_meta_item:87> * 2, <gregtech:meta_item_1:12087> * 2, <gregtech:meta_item_1:18095>)
    .outputs(<thermalcultivation:watering_can>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();

// Лейка (Усиленная)
recipes.remove(<thermalcultivation:watering_can:1>);
assembler.recipeBuilder()
    .inputs(<thermalexpansion:reservoir:1>, <gregtech:meta_item_1:19183> * 4, <thermalcultivation:watering_can>)
    .outputs(<thermalcultivation:watering_can:1>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();

// Лейка (Укрепленная)
recipes.remove(<thermalcultivation:watering_can:2>);
assembler.recipeBuilder()
    .inputs(<thermalexpansion:reservoir:2>, <gregtech:meta_item_1:19072> * 4, <thermalcultivation:watering_can:1>)
    .outputs(<thermalcultivation:watering_can:2>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();

// Лейка (Синаловая)
recipes.remove(<thermalcultivation:watering_can:3>);
assembler.recipeBuilder()
    .inputs(<thermalexpansion:reservoir:3>, <gregtech:meta_item_1:19235> * 4, <thermalcultivation:watering_can:2>)
    .outputs(<thermalcultivation:watering_can:3>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();

// Лейка (Резонирующая)
recipes.remove(<thermalcultivation:watering_can:4>);
assembler.recipeBuilder()
    .inputs(<thermalexpansion:reservoir:4>, <gregtech:meta_item_1:19308> * 4, <thermalcultivation:watering_can:3>)
    .outputs(<thermalcultivation:watering_can:4>)
    .duration(16 * 20)
    .EUt(16)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

print("Initialized 'ThermalExpansion'");