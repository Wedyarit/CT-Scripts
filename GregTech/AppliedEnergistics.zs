# AppliedEnergistics

import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher;

print("Initializing 'Applied Energistics 2'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
val mixer = RecipeMap.getByName("mixer");
val chemical_reactor = RecipeMap.getByName("chemical_reactor");
val metal_bender = RecipeMap.getByName("metal_bender");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Crafting Tools  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val hammer = <ore:craftingToolHardHammer>.transformDamage(4);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Материалы    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Небесный камень
assembler.recipeBuilder()
    .inputs(<gregtech:granite> * 8, <gregtech:meta_item_1:2001>, <appliedenergistics2:material:46>, <gregtech:meta_item_1:2025>)
    .fluidInputs([<liquid:phosphoric_acid> * 1000])
    .outputs(<appliedenergistics2:sky_stone_block> * 8)
    .duration(60 * 20)
    .EUt(30)
    .buildAndRegister();

// Кристалл истинного кварца
chemical_reactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8202>, <gregtech:meta_item_1:2063>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<appliedenergistics2:material>)
    .duration(20 * 20)
    .EUt(32)
    .buildAndRegister();

// Изменчивый кристалл
chemical_reactor.recipeBuilder()
    .inputs(<appliedenergistics2:material>, <appliedenergistics2:material:3>, <minecraft:redstone>)
    .fluidInputs([<liquid:water> * 200])
    .outputs(<appliedenergistics2:material:7>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Ядро формирования
recipes.remove(<appliedenergistics2:material:43>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:22>, <ore:crystalPureCertusQuartz>, <appliedenergistics2:material:8>, <gregtech:meta_item_1:12071>, <gregtech:meta_item_1:19018> * 2, <gregtech:meta_item_1:19112> * 2)
    .outputs(<appliedenergistics2:material:43>)
    .duration(10 * 20)
    .EUt(72)
    .buildAndRegister();

// Ядро истребления
recipes.remove(<appliedenergistics2:material:44>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:22>, <ore:gemNetherQuartz>, <appliedenergistics2:material:8>, <gregtech:meta_item_1:12071>, <gregtech:meta_item_1:19018> * 2, <gregtech:meta_item_1:19001> * 2)
    .outputs(<appliedenergistics2:material:44>)
    .duration(10 * 20)
    .EUt(72)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Процессоры    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Отпечатанный вычислительный контур
Inscriber.removeRecipe(<appliedenergistics2:material:16>); 
metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12202>, <gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:16>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Отпечатанный инженерный контур
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 
metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12111>, <gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:17>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Отпечатанный логический контур
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 
metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:18>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Отпечатанный кремний
Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12061>, <gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:20>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Логический процессор
Inscriber.removeRecipe(<appliedenergistics2:material:22>); 
Etcher.removeRecipe(<appliedenergistics2:material:22>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:18>, <appliedenergistics2:material:20>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16018> * 2, <gregtech:meta_item_2:32460>, <gregtech:meta_item_2:32458>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:22>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:18>, <appliedenergistics2:material:20>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16018> * 2, <gregtech:meta_item_2:32460>, <gregtech:meta_item_2:32458>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:22>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();

// Вычислительный процессор
Inscriber.removeRecipe(<appliedenergistics2:material:23>); 
Etcher.removeRecipe(<appliedenergistics2:material:23>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:16>, <appliedenergistics2:material:20>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16026> * 2, <gregtech:meta_item_2:32460>, <gregtech:meta_item_2:32458>, <gregtech:meta_item_2:32459>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:23>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:16>, <appliedenergistics2:material:20>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16026> * 2, <gregtech:meta_item_2:32460>, <gregtech:meta_item_2:32458>, <gregtech:meta_item_2:32459>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:23>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Инженерный процессор
Inscriber.removeRecipe(<appliedenergistics2:material:24>); 
Etcher.removeRecipe(<appliedenergistics2:material:24>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:17>, <appliedenergistics2:material:20>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32460>, <gregtech:meta_item_2:32458>, <gregtech:meta_item_2:32459>, <gregtech:meta_item_2:32457>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:24>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:17>, <appliedenergistics2:material:20>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32460>, <gregtech:meta_item_2:32458>, <gregtech:meta_item_2:32459>, <gregtech:meta_item_2:32457>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:24>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();

// Массивный параллельный процессор
Etcher.removeRecipe(<threng:material:6>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32453> * 2, <threng:material:5>, <appliedenergistics2:material:9>, <gregtech:meta_item_2:32481>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<threng:material:6>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32453> * 2, <threng:material:5>, <appliedenergistics2:material:9>, <gregtech:meta_item_2:32481>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<threng:material:6>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Спекулятивный процессор
Etcher.removeRecipe(<threng:material:14>); 
assembler.recipeBuilder()
    .inputs(<threng:material:6>, <appliedenergistics2:material:24>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32480>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<threng:material:14>)
    .duration(10 * 20)
    .EUt(320)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<threng:material:6>, <appliedenergistics2:material:24>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32480>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<threng:material:14>)
    .duration(10 * 20)
    .EUt(320)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~    Компоненты хранения    ~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// 1К МЭ компонент хранения
recipes.remove(<appliedenergistics2:material:35>);
assembler.recipeBuilder()
    .inputs(<ore:crystalCertusQuartz> * 4, <gregtech:meta_item_1:12237> * 4, <appliedenergistics2:material:22>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:35>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:crystalCertusQuartz> * 4, <gregtech:meta_item_1:12237> * 4, <appliedenergistics2:material:22>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:35>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 4К МЭ компонент хранения
recipes.remove(<appliedenergistics2:material:36>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:35> * 4, <gregtech:meta_item_1:12237> * 4, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:36>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:35> * 4, <gregtech:meta_item_1:12237> * 4, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:36>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 16К МЭ компонент хранения
recipes.remove(<appliedenergistics2:material:37>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:36> * 4, <gregtech:meta_item_1:12330> * 4, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:37>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:36> * 4, <gregtech:meta_item_1:12330> * 4, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:37>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 64К МЭ компонент хранения
recipes.remove(<appliedenergistics2:material:38>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:37> * 4, <gregtech:meta_item_1:12330> * 4, <appliedenergistics2:material:24>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:38>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:37> * 4, <gregtech:meta_item_1:12330> * 4, <appliedenergistics2:material:24>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:38>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 1К МЭ жидкостный компонент хранения
recipes.remove(<appliedenergistics2:material:54>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:10> * 4, <gregtech:meta_item_1:12128> * 4, <appliedenergistics2:material:22>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:54>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:10> * 4, <gregtech:meta_item_1:12128> * 4, <appliedenergistics2:material:22>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:54>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 4К МЭ жидкостный компонент хранения
recipes.remove(<appliedenergistics2:material:55>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:54> * 4, <gregtech:meta_item_1:12128> * 4, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:55>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:54> * 4, <gregtech:meta_item_1:12128> * 4, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:55>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 16К МЭ жидкостный компонент хранения
recipes.remove(<appliedenergistics2:material:56>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:55> * 4, <gregtech:meta_item_1:12128> * 4, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:56>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:55> * 4, <gregtech:meta_item_1:12128> * 4, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:56>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// 64К МЭ жидкостный компонент хранения
recipes.remove(<appliedenergistics2:material:57>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:56> * 4, <gregtech:meta_item_1:12128> * 4, <appliedenergistics2:material:24>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:57>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:56> * 4, <gregtech:meta_item_1:12128> * 4, <appliedenergistics2:material:24>, <gregtech:meta_item_1:12209>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:57>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Терминалы    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Осветительная панель
recipes.remove(<appliedenergistics2:part:180>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12237>, <gregtech:cable:237> * 4, <gregtech:meta_item_1:12330>, <gregtech:meta_item_1:12209>)
    .outputs(<appliedenergistics2:part:180>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ монитор хранения
recipes.remove(<appliedenergistics2:part:400>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:180>, <appliedenergistics2:part:280>, <gregtech:cable:237>)
    .outputs(<appliedenergistics2:part:400>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();
    
// МЭ монитор преобразования
recipes.remove(<appliedenergistics2:part:420>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:400>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <gregtech:cable:18> * 2)
    .outputs(<appliedenergistics2:part:420>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ терминал
recipes.remove(<appliedenergistics2:part:380>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:180>, <appliedenergistics2:material:22>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <gregtech:cable:18> * 4)
    .outputs(<appliedenergistics2:part:380>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ терминал крафта
recipes.remove(<appliedenergistics2:part:360>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:380>, <appliedenergistics2:material:23>, <appliedenergistics2:material:53>, <gregtech:cable:18> * 2)
    .outputs(<appliedenergistics2:part:360>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ терминал интерфейсов
recipes.remove(<appliedenergistics2:part:480>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:180>, <appliedenergistics2:material:24>, <appliedenergistics2:interface>, <gregtech:cable:26> * 2)
    .outputs(<appliedenergistics2:part:480>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ терминал шаблонов
recipes.remove(<appliedenergistics2:part:340>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:360>, <appliedenergistics2:material:24>, <gregtech:cable:26>)
    .outputs(<appliedenergistics2:part:340>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();

// МЭ жидкостный терминал интерфейсов 
recipes.remove(<appliedenergistics2:part:520>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:380>, <appliedenergistics2:part:420>, <appliedenergistics2:material:22>, <gregtech:meta_item_1:12128>, <gregtech:cable:18> * 4)
    .outputs(<appliedenergistics2:part:520>)
    .duration(20 * 20)
    .EUt(196)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Кабели    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Кварцевое оптическое волокно
recipes.remove(<appliedenergistics2:part:140>);
blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32453>, <appliedenergistics2:material:3>)
    .fluidInputs([<liquid:oxygen> * 1000])
    .outputs(<appliedenergistics2:part:140>)
    .property("temperature", 1200)
    .duration(15 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ стеклянный кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:16>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:140>, <appliedenergistics2:material:8>)
    .fluidInputs([<liquid:glue> * 100])
    .outputs(<appliedenergistics2:part:16>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ закрытый кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:36>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16>, <minecraft:string> * 8, <gregtech:meta_item_1:18152> * 2)
    .outputs(<appliedenergistics2:part:36>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ умный кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:56>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:36>, <minecraft:redstone>, <minecraft:glowstone_dust>)
    .fluidInputs([<liquid:glue> * 100])
    .outputs(<appliedenergistics2:part:56>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ плотный закрытый кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:516>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:36> * 4)
    .fluidInputs([<liquid:glue> * 200])
    .outputs(<appliedenergistics2:part:516>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ плотный умный кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:76>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:56> * 4)
    .fluidInputs([<liquid:glue> * 200])
    .outputs(<appliedenergistics2:part:76>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:516>, <minecraft:redstone> * 2, <minecraft:glowstone_dust> * 2)
    .fluidInputs([<liquid:glue> * 200])
    .outputs(<appliedenergistics2:part:76>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Шины    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// МЭ шина экспорта
recipes.remove(<appliedenergistics2:part:260>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12033> * 4, <appliedenergistics2:material:43>, <gregtech:meta_item_1:32632>)
    .outputs(<appliedenergistics2:part:260>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ жидкостная шина экспорта
recipes.remove(<appliedenergistics2:part:261>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12033> * 2, <appliedenergistics2:material:43>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12128> * 2)
    .outputs(<appliedenergistics2:part:261>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ шина импорта
recipes.remove(<appliedenergistics2:part:240>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12033> * 4, <appliedenergistics2:material:44>, <gregtech:meta_item_1:32632>)
    .outputs(<appliedenergistics2:part:240>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ жидкостная шина импорта
recipes.remove(<appliedenergistics2:part:241>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12033> * 2, <appliedenergistics2:material:44>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12128> * 2)
    .outputs(<appliedenergistics2:part:241>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ излучатель уровня
recipes.remove(<appliedenergistics2:part:280>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:140>, <appliedenergistics2:material:23>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:32450>, <gregtech:meta_item_1:19237> * 2)
    .outputs(<appliedenergistics2:part:280>)
    .duration(15 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ жидкостный излучатель уровня
recipes.remove(<appliedenergistics2:part:281>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:140>, <appliedenergistics2:material:23>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:32450>, <gregtech:meta_item_1:19237> * 2, <gregtech:meta_item_1:15216>)
    .outputs(<appliedenergistics2:part:281>)
    .duration(15 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ шина переключения
recipes.remove(<appliedenergistics2:part:80>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16> * 2, <gregtech:meta_item_1:19237> * 2, <gregtech:meta_item_2:16237>)
    .outputs(<appliedenergistics2:part:80>)
    .duration(15 * 20)
    .EUt(64)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Другое    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Гаечный ключ из незер-кварца
recipes.remove(<appliedenergistics2:nether_quartz_wrench>);
recipes.addShaped("appliedenergistics2_nether_quartz_wrench", <appliedenergistics2:nether_quartz_wrench>,
 [[<gregtech:meta_item_1:12201>, hammer, <gregtech:meta_item_1:12201>],
  [null, <gregtech:meta_item_1:12201>, null],
  [<gregtech:meta_item_1:12201>, null, <gregtech:meta_item_1:12201>]]);

// Гаечный ключ из истинного кварца
recipes.remove(<appliedenergistics2:certus_quartz_wrench>);
recipes.addShaped("appliedenergistics2_certus_quartz_wrench", <appliedenergistics2:certus_quartz_wrench>,
 [[<gregtech:meta_item_1:12202>, hammer, <gregtech:meta_item_1:12202>],
  [null, <gregtech:meta_item_1:12202>, null],
  [<gregtech:meta_item_1:12202>, null, <gregtech:meta_item_1:12202>]]);

// Сетевой инструмент
recipes.remove(<appliedenergistics2:network_tool>);
assembler.recipeBuilder()
    .inputs(<ore:itemQuartzWrench>, <appliedenergistics2:part:180>, <appliedenergistics2:material:23>, <gregtech:cable:18> * 2)
    .outputs(<appliedenergistics2:network_tool>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Пустой шаблон
recipes.remove(<appliedenergistics2:material:52>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:12330> * 4, <appliedenergistics2:material:10>, <gregtech:meta_item_1:12033> * 4)
    .outputs(<appliedenergistics2:material:52>)
    .duration(5 * 20)
    .EUt(96)
    .buildAndRegister();

// МЭ корпус ячейки хранения
recipes.remove(<appliedenergistics2:material:39>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:12237> * 4, <gregtech:meta_item_1:12184> * 4)
    .outputs(<appliedenergistics2:material:39>)
    .duration(5 * 20)
    .EUt(96)
    .buildAndRegister();

// Биометрическая карта
recipes.remove(<appliedenergistics2:biometric_card>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:24>, <gregtech:cable:26>, <gregtech:cable:237>, <gregtech:meta_item_2:16026> * 2, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_1:19033> * 4)
    .outputs(<appliedenergistics2:biometric_card>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Карта памяти
recipes.remove(<appliedenergistics2:memory_card>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:23>, <gregtech:cable:26>, <gregtech:cable:237>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16026> * 2, <gregtech:meta_item_1:19033> * 2)
    .outputs(<appliedenergistics2:memory_card>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'Applied Energistics 2'");