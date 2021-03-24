# ThermalDynamics

import mods.gregtech.recipe.RecipeMap;

print("Initializing 'ThermalDynamics'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Crafting Tools  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val hammer = <ore:craftingToolHardHammer>.transformDamage(4);
val wrench = <ore:craftingToolWrench>.transformDamage(4);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Фильтры  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Фильтр
recipes.remove(<thermaldynamics:filter>);
recipes.addShaped("thermaldynamics_filter", <thermaldynamics:filter>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:32729>, <gregtech:meta_item_1:12033>],
  [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:32628>, <gregtech:meta_item_1:12033>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:32729>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:32628>, <gregtech:meta_item_1:12033>)
    .outputs(<thermaldynamics:filter>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Усиленный фильтр
recipes.remove(<thermaldynamics:filter:1>);
recipes.addShaped("thermaldynamics_reinforced_filter", <thermaldynamics:filter:1>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12001>, <thermaldynamics:filter>, <gregtech:meta_item_1:12001>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>, <thermaldynamics:filter>, <gregtech:meta_item_1:12001>)
    .outputs(<thermaldynamics:filter:1>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Укрепленный фильтр
recipes.remove(<thermaldynamics:filter:2>);
recipes.addShaped("thermaldynamics_fortified_filter", <thermaldynamics:filter:2>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12112>],
  [<gregtech:meta_item_1:12183>, <thermaldynamics:filter:1>, <gregtech:meta_item_1:12183>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12183>, <thermaldynamics:filter:1>, <gregtech:meta_item_1:12183>)
    .outputs(<thermaldynamics:filter:2>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();
    
// Синаловый фильтр
recipes.remove(<thermaldynamics:filter:3>);
recipes.addShaped("thermaldynamics_sinal_filter", <thermaldynamics:filter:3>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12190>],
  [<gregtech:meta_item_1:12072>, <thermaldynamics:filter:2>, <gregtech:meta_item_1:12072>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12072>, <thermaldynamics:filter:2>, <gregtech:meta_item_1:12072>)
    .outputs(<thermaldynamics:filter:3>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Резонирующий фильтр
recipes.remove(<thermaldynamics:filter:4>);
recipes.addShaped("thermaldynamics_resonant_filter", <thermaldynamics:filter:4>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12032>, <gregtech:meta_item_1:12032>, <gregtech:meta_item_1:12032>],
  [<gregtech:meta_item_1:12074>, <thermaldynamics:filter:3>, <gregtech:meta_item_1:12074>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12032>, <gregtech:meta_item_1:12032>, <gregtech:meta_item_1:12032>, <gregtech:meta_item_1:12074>, <thermaldynamics:filter:3>, <gregtech:meta_item_1:12074>)
    .outputs(<thermaldynamics:filter:4>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Поисковики  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Поисковик
recipes.remove(<thermaldynamics:retriever>);
recipes.addShaped("thermaldynamics_retriever", <thermaldynamics:retriever>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12033>, <thermaldynamics:filter>, <gregtech:meta_item_1:12033>],
  [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12219>, <gregtech:meta_item_1:12033>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12033>, <thermaldynamics:filter>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12219>, <gregtech:meta_item_1:12033>)
    .outputs(<thermaldynamics:retriever>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Усиленный поисковик
recipes.remove(<thermaldynamics:retriever:1>);
recipes.addShaped("thermaldynamics_reinforced_retriever", <thermaldynamics:retriever:1>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12184>, <thermaldynamics:filter:1>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12001>, <thermaldynamics:retriever>, <gregtech:meta_item_1:12001>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184>, <thermaldynamics:filter:1>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>, <thermaldynamics:retriever>, <gregtech:meta_item_1:12001>)
    .outputs(<thermaldynamics:retriever:1>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Укрепленный поисковик
recipes.remove(<thermaldynamics:retriever:2>);
recipes.addShaped("thermaldynamics_fortified_retriever", <thermaldynamics:retriever:2>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12112>, <thermaldynamics:filter:2>, <gregtech:meta_item_1:12112>],
  [<gregtech:meta_item_1:12183>, <thermaldynamics:retriever:1>, <gregtech:meta_item_1:12183>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12112>, <thermaldynamics:filter:2>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12183>, <thermaldynamics:retriever:1>, <gregtech:meta_item_1:12183>)
    .outputs(<thermaldynamics:retriever:2>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();
    
// Синаловый поисковик
recipes.remove(<thermaldynamics:retriever:3>);
recipes.addShaped("thermaldynamics_sinal_retriever", <thermaldynamics:retriever:3>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12190>, <thermaldynamics:filter:3>, <gregtech:meta_item_1:12190>],
  [<gregtech:meta_item_1:12072>, <thermaldynamics:retriever:2>, <gregtech:meta_item_1:12072>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12190>, <thermaldynamics:filter:3>, <gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12072>, <thermaldynamics:retriever:2>, <gregtech:meta_item_1:12072>)
    .outputs(<thermaldynamics:retriever:3>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Резонирующий поисковик
recipes.remove(<thermaldynamics:retriever:4>);
recipes.addShaped("thermaldynamics_resonant_retriever", <thermaldynamics:retriever:4>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12032>, <thermaldynamics:filter:4>, <gregtech:meta_item_1:12032>],
  [<gregtech:meta_item_1:12074>, <thermaldynamics:retriever:3>, <gregtech:meta_item_1:12074>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12032>, <thermaldynamics:filter:4>, <gregtech:meta_item_1:12032>, <gregtech:meta_item_1:12074>, <thermaldynamics:retriever:3>, <gregtech:meta_item_1:12074>)
    .outputs(<thermaldynamics:retriever:4>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Сервомеханизмы  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Сервомеханизм
recipes.remove(<thermaldynamics:servo>);
recipes.addShaped("thermaldynamics_servo", <thermaldynamics:servo>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12033>, <thermaldynamics:filter>, <gregtech:meta_item_1:12033>],
  [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12237>, <gregtech:meta_item_1:12033>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12033>, <thermaldynamics:filter>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12237>, <gregtech:meta_item_1:12033>)
    .outputs(<thermaldynamics:servo>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Усиленный сервомеханизм
recipes.remove(<thermaldynamics:servo:1>);
recipes.addShaped("thermaldynamics_reinforced_servo", <thermaldynamics:servo:1>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12184>, <thermaldynamics:filter:1>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12001>, <thermaldynamics:servo>, <gregtech:meta_item_1:12001>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184>, <thermaldynamics:filter:1>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>, <thermaldynamics:servo>, <gregtech:meta_item_1:12001>)
    .outputs(<thermaldynamics:servo:1>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Укрепленный сервомеханизм
recipes.remove(<thermaldynamics:servo:2>);
recipes.addShaped("thermaldynamics_fortified_servo", <thermaldynamics:servo:2>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12112>, <thermaldynamics:filter:2>, <gregtech:meta_item_1:12112>],
  [<gregtech:meta_item_1:12183>, <thermaldynamics:servo:1>, <gregtech:meta_item_1:12183>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12112>, <thermaldynamics:filter:2>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12183>, <thermaldynamics:servo:1>, <gregtech:meta_item_1:12183>)
    .outputs(<thermaldynamics:servo:2>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();
    
// Синаловый сервомеханизм
recipes.remove(<thermaldynamics:servo:3>);
recipes.addShaped("thermaldynamics_sinal_servo", <thermaldynamics:servo:3>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12190>, <thermaldynamics:filter:3>, <gregtech:meta_item_1:12190>],
  [<gregtech:meta_item_1:12072>, <thermaldynamics:servo:2>, <gregtech:meta_item_1:12072>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12190>, <thermaldynamics:filter:3>, <gregtech:meta_item_1:12190>, <gregtech:meta_item_1:12072>, <thermaldynamics:servo:2>, <gregtech:meta_item_1:12072>)
    .outputs(<thermaldynamics:servo:3>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Резонирующий сервомеханизм
recipes.remove(<thermaldynamics:servo:4>);
recipes.addShaped("thermaldynamics_resonant_servo", <thermaldynamics:servo:4>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12032>, <thermaldynamics:filter:4>, <gregtech:meta_item_1:12032>],
  [<gregtech:meta_item_1:12074>, <thermaldynamics:servo:3>, <gregtech:meta_item_1:12074>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12032>, <thermaldynamics:filter:4>, <gregtech:meta_item_1:12032>, <gregtech:meta_item_1:12074>, <thermaldynamics:servo:3>, <gregtech:meta_item_1:12074>)
    .outputs(<thermaldynamics:servo:4>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Красное реле
recipes.remove(<thermaldynamics:relay>);
recipes.addShaped("thermaldynamics_red_relay", <thermaldynamics:relay>,
 [[hammer, null, wrench],
  [<gregtech:meta_item_1:12184>, <minecraft:repeater>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12237>, <minecraft:comparator>, <gregtech:meta_item_1:12237>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184>, <minecraft:repeater>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12237>, <minecraft:comparator>, <gregtech:meta_item_1:12237>)
    .outputs(<thermaldynamics:relay>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Предметные трубы  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Предметная труба
recipes.remove(<thermaldynamics:duct_32>);
recipes.addShaped("thermaldynamics_item_tube", <thermaldynamics:duct_32>,
 [[<gregtech:meta_item_1:12071>, <thermalfoundation:glass:3>, <gregtech:meta_item_1:12071>],
  [hammer, null, wrench],
  [<gregtech:meta_item_1:12071>, <thermalfoundation:glass:3>, <gregtech:meta_item_1:12071>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12071>, <thermalfoundation:glass:3>, <gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12071>, <thermalfoundation:glass:3>, <gregtech:meta_item_1:12071>)
    .outputs(<thermaldynamics:duct_32>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Плотная предметная труба
recipes.remove(<thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}));
recipes.addShaped("thermaldynamics_item_tube_solid", <thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}),
 [[null, hammer, null],
  [<gregtech:meta_item_1:12035>, <thermaldynamics:duct_32>, <gregtech:meta_item_1:12035>],
  [null, wrench, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12035>, <thermaldynamics:duct_32>, <gregtech:meta_item_1:12035>)
    .outputs(<thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}))
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Вакуумная предметная труба 
recipes.remove(<thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}));
recipes.addShaped("thermaldynamics_item_tube_vacuum", <thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}),
 [[null, hammer, null],
  [<gregtech:meta_item_1:12062>, <thermaldynamics:duct_32>, <gregtech:meta_item_1:12062>],
  [null, wrench, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12062>, <thermaldynamics:duct_32>, <gregtech:meta_item_1:12062>)
    .outputs(<thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}))
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Предметная труба (Непрозрачная)
recipes.remove(<thermaldynamics:duct_32:1>);
recipes.addShaped("thermaldynamics_item_tube_opaque", <thermaldynamics:duct_32:1>,
 [[<gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12035>, <gregtech:meta_item_1:12071>],
  [hammer, null, wrench],
  [<gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12035>, <gregtech:meta_item_1:12071>]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12035>, <gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12035>, <gregtech:meta_item_1:12071>)
    .outputs(<thermaldynamics:duct_32:1>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Плотная предметная труба (Непрозрачная)
recipes.remove(<thermaldynamics:duct_32:1>.withTag({DenseType: 1 as byte}));
recipes.addShaped("thermaldynamics_item_tube_solid_opaque", <thermaldynamics:duct_32:1>.withTag({DenseType: 1 as byte}),
 [[null, hammer, null],
  [<gregtech:meta_item_1:12035>, <thermaldynamics:duct_32:1>, <gregtech:meta_item_1:12035>],
  [null, wrench, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12035>, <thermaldynamics:duct_32:1>, <gregtech:meta_item_1:12035>)
    .outputs(<thermaldynamics:duct_32:1>.withTag({DenseType: 1 as byte}))
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Вакуумная предметная труба (Непрозрачная)
recipes.remove(<thermaldynamics:duct_32:1>.withTag({DenseType: 2 as byte}));
recipes.addShaped("thermaldynamics_item_tube_vacuum_opaque", <thermaldynamics:duct_32:1>.withTag({DenseType: 2 as byte}),
 [[null, hammer, null],
  [<gregtech:meta_item_1:12062>, <thermaldynamics:duct_32:1>, <gregtech:meta_item_1:12062>],
  [null, wrench, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12062>, <thermaldynamics:duct_32:1>, <gregtech:meta_item_1:12062>)
    .outputs(<thermaldynamics:duct_32:1>.withTag({DenseType: 2 as byte}))
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Импульсная предметная труба
recipes.remove(<thermaldynamics:duct_32:2>);
recipes.addShaped("thermaldynamics_item_tube_impulse", <thermaldynamics:duct_32:2>,
 [[null, wrench, null],
  [<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32>, <gregtech:meta_item_1:12330>],
  [null, hammer, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32>, <gregtech:meta_item_1:12330>)
    .outputs(<thermaldynamics:duct_32:2>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Импульсная плотная предметная труба
recipes.remove(<thermaldynamics:duct_32:2>.withTag({DenseType: 1 as byte}));
recipes.addShaped("thermaldynamics_item_tube_impulse_solid", <thermaldynamics:duct_32:2>.withTag({DenseType: 1 as byte}),
 [[null, wrench, null],
  [<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}), <gregtech:meta_item_1:12330>],
  [null, hammer, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}), <gregtech:meta_item_1:12330>)
    .outputs(<thermaldynamics:duct_32:2>.withTag({DenseType: 1 as byte}))
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Импульсная вакуумная предметная труба
recipes.remove(<thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}));
recipes.addShaped("thermaldynamics_item_tube_impulse_solid", <thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}),
 [[null, wrench, null],
  [<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}), <gregtech:meta_item_1:12330>],
  [null, hammer, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}), <gregtech:meta_item_1:12330>)
    .outputs(<thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}))
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Импульсная предметная труба (Непрозрачная)
recipes.remove(<thermaldynamics:duct_32:3>);
recipes.addShaped("thermaldynamics_item_tube_impulse_opaque", <thermaldynamics:duct_32:3>,
 [[null, wrench, null],
  [<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32:1>, <gregtech:meta_item_1:12330>],
  [null, hammer, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32:1>, <gregtech:meta_item_1:12330>)
    .outputs(<thermaldynamics:duct_32:3>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Импульсная плотная предметная труба (Непрозрачная)
recipes.remove(<thermaldynamics:duct_32:3>.withTag({DenseType: 1 as byte}));
recipes.addShaped("thermaldynamics_item_tube_impulse_solid_opaque", <thermaldynamics:duct_32:3>.withTag({DenseType: 1 as byte}),
 [[null, wrench, null],
  [<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32:1>.withTag({DenseType: 1 as byte}), <gregtech:meta_item_1:12330>],
  [null, hammer, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32:1>.withTag({DenseType: 1 as byte}), <gregtech:meta_item_1:12330>)
    .outputs(<thermaldynamics:duct_32:3>.withTag({DenseType: 1 as byte}))
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Импульсная вакуумная предметная труба (Непрозрачная)
recipes.remove(<thermaldynamics:duct_32:3>.withTag({DenseType: 2 as byte}));
recipes.addShaped("thermaldynamics_item_tube_impulse_solid_opaque", <thermaldynamics:duct_32:3>.withTag({DenseType: 2 as byte}),
 [[null, wrench, null],
  [<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32:3>.withTag({DenseType: 2 as byte}), <gregtech:meta_item_1:12330>],
  [null, hammer, null]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12330>, <thermaldynamics:duct_32:3>.withTag({DenseType: 2 as byte}), <gregtech:meta_item_1:12330>)
    .outputs(<thermaldynamics:duct_32:3>.withTag({DenseType: 2 as byte}))
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'ThermalDynamics'");