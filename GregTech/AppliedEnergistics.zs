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

// Логический процессор
Inscriber.removeRecipe(<appliedenergistics2:material:22>); 
Etcher.removeRecipe(<appliedenergistics2:material:22>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:18>, <appliedenergistics2:material:20>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16018> * 2, <gregtech:meta_item_2:32460>, <gregtech:meta_item_2:32458>)
    .outputs(<appliedenergistics2:material:22>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();

// Вычислительный процессор
Inscriber.removeRecipe(<appliedenergistics2:material:23>); 
Etcher.removeRecipe(<appliedenergistics2:material:23>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:16>, <appliedenergistics2:material:20>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16026> * 2, <gregtech:meta_item_2:32460>, <gregtech:meta_item_2:32458>, <gregtech:meta_item_2:32459>)
    .outputs(<appliedenergistics2:material:23>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Инженерный процессор
Inscriber.removeRecipe(<appliedenergistics2:material:24>); 
Etcher.removeRecipe(<appliedenergistics2:material:24>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:17>, <appliedenergistics2:material:20>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32460>, <gregtech:meta_item_2:32458>, <gregtech:meta_item_2:32459>, <gregtech:meta_item_2:32457>)
    .outputs(<appliedenergistics2:material:24>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();

// Массивный параллельный процессор
Etcher.removeRecipe(<threng:material:6>); 
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32453> * 2, <threng:material:5>, <appliedenergistics2:material:9>, <gregtech:meta_item_2:32481>)
    .outputs(<threng:material:6>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Спекулятивный процессор
Etcher.removeRecipe(<threng:material:14>); 
assembler.recipeBuilder()
    .inputs(<threng:material:6>, <appliedenergistics2:material:24>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:16051> * 2, <gregtech:meta_item_2:32480>)
    .outputs(<threng:material:14>)
    .duration(10 * 20)
    .EUt(320)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

print("Initialized 'Applied Energistics 2'");