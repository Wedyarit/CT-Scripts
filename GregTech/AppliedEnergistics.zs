#priority 1
# Applied Energistics 2

import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher;
import crafttweaker.item.IItemStack;

print("Initializing 'Applied Energistics 2'...");


// Ненужные предметы
var items = [<appliedenergistics2:certus_quartz_spade>, <appliedenergistics2:certus_quartz_axe>, <appliedenergistics2:certus_quartz_hoe>, <appliedenergistics2:certus_quartz_sword>, <appliedenergistics2:nether_quartz_pickaxe>, <appliedenergistics2:nether_quartz_spade>, <appliedenergistics2:nether_quartz_axe>, <appliedenergistics2:nether_quartz_hoe>, <appliedenergistics2:nether_quartz_sword>, <appliedenergistics2:certus_quartz_pickaxe>, <appliedenergistics2:inscriber>, <appliedenergistics2:quantum_ring>, <appliedenergistics2:quantum_link>, <appliedenergistics2:condenser>, <appliedenergistics2:entropy_manipulator>, <appliedenergistics2:charged_staff>, <appliedenergistics2:color_applicator>, <threng:machine:2>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("§cВ данной сборке этот предмет выключен");
}

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
mixer.recipeBuilder()
    .inputs(<appliedenergistics2:material:1>, <appliedenergistics2:material:3>, <minecraft:redstone>)
    .fluidInputs([<liquid:water> * 200])
    .outputs(<appliedenergistics2:material:7>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Изменчивая жемчужина
recipes.remove(<appliedenergistics2:material:9>);
blast_furnace.recipeBuilder()
    .inputs(<appliedenergistics2:material:8> * 8, <minecraft:ender_pearl>)
    .fluidInputs([<liquid:nitrogen> * 1000])
    .outputs(<appliedenergistics2:material:9>)
    .property("temperature", 1500)
    .duration(60 * 20)
    .EUt(120)
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
    .inputs(<gregtech:meta_item_1:12202>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:16>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Отпечатанный инженерный контур
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 
metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12111>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:17>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Отпечатанный логический контур
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 
metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12026>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<appliedenergistics2:material:18>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Отпечатанный кремний
Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12061>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
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

// Беспроводной терминал
recipes.remove(<appliedenergistics2:wireless_terminal>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:part:380>, <appliedenergistics2:material:41>, <appliedenergistics2:part:16> * 2, <gregtech:cable:26> * 2, <gregtech:meta_item_2:32435> * 2)
    .outputs(<appliedenergistics2:wireless_terminal>)
    .duration(20 * 20)
    .EUt(1024)
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
    .inputs(<appliedenergistics2:part:36> * 4, <gregtech:meta_item_1:18152> * 2)
    .fluidInputs([<liquid:glue> * 200])
    .outputs(<appliedenergistics2:part:516>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// МЭ плотный умный кабель - Изменчивый
recipes.remove(<appliedenergistics2:part:76>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:56> * 4, <gregtech:meta_item_1:18152> * 2)
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
    .inputs(<appliedenergistics2:part:140>, <appliedenergistics2:material:23>, <gregtech:meta_item_2:16237> * 2, <gregtech:meta_item_2:32450>, <gregtech:meta_item_1:19237> * 2, <gregtech:meta_item_1:15154>)
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


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~    Карты улучшений    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Базовая карта
recipes.remove(<appliedenergistics2:material:25>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:23>, <gregtech:cable:26> * 3, <gregtech:cable:237> * 3, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12071>, <gregtech:meta_item_1:19033>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:25>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:23>, <gregtech:cable:26> * 3, <gregtech:cable:237> * 3, <gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12071>, <gregtech:meta_item_1:19033>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:25>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Продвинутая карта
recipes.remove(<appliedenergistics2:material:28>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:23>, <gregtech:cable:1> * 3, <gregtech:cable:237> * 3, <gregtech:meta_item_1:19033>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12071>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:28>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:23>, <gregtech:cable:1> * 3, <gregtech:cable:237> * 3, <gregtech:cable:237>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12071>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:28>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта емкости
recipes.remove(<appliedenergistics2:material:27>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <gregtech:meta_item_1:12202>, <gregtech:cable:237>, <gregtech:cable:26>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:27>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <gregtech:meta_item_1:12202>, <gregtech:cable:237>, <gregtech:cable:26>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:27>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта крафта
recipes.remove(<appliedenergistics2:material:53>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <minecraft:crafting_table>, <gregtech:cable:237>, <gregtech:cable:26>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:53>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <minecraft:crafting_table>, <gregtech:cable:237>, <gregtech:cable:26>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:53>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта красного камня
recipes.remove(<appliedenergistics2:material:26>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <gregtech:meta_item_1:12237>, <gregtech:cable:237>, <gregtech:cable:26>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:26>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>, <gregtech:meta_item_1:12237>, <gregtech:cable:237>, <gregtech:cable:26>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:26>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта инвертирования
recipes.remove(<appliedenergistics2:material:31>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <gregtech:meta_item_1:12237>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:31>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <gregtech:meta_item_1:12237>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:31>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта нечеткости
recipes.remove(<appliedenergistics2:material:29>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <forestry:crafting_material:1>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:29>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <forestry:crafting_material:1>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:29>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();

// Карта ускорения
recipes.remove(<appliedenergistics2:material:30>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <appliedenergistics2:material:9>, <gregtech:cable:237>, <gregtech:cable:1>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:material:30>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:28>, <appliedenergistics2:material:9>, <gregtech:cable:237>, <gregtech:cable:1>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:material:30>)
    .duration(5 * 20)
    .EUt(64)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Ячейки хранения    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// 1К МЭ ячейка хранения
recipes.remove(<appliedenergistics2:storage_cell_1k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:35>, <gregtech:cable:71> * 4, <gregtech:meta_item_1:12018> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:storage_cell_1k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:35>, <gregtech:cable:71> * 4, <gregtech:meta_item_1:12018> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:storage_cell_1k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 4К МЭ ячейка хранения
recipes.remove(<appliedenergistics2:storage_cell_4k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:36>, <appliedenergistics2:material:39>, <gregtech:cable:18> * 4, <gregtech:meta_item_1:12026> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:storage_cell_4k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:36>, <appliedenergistics2:material:39>, <gregtech:cable:18> * 4, <gregtech:meta_item_1:12026> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:storage_cell_4k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 16К МЭ ячейка хранения
recipes.remove(<appliedenergistics2:storage_cell_16k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:37>, <gregtech:cable:26> * 4, <gregtech:meta_item_1:12113> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:storage_cell_16k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:37>, <gregtech:cable:26> * 4, <gregtech:meta_item_1:12113> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:storage_cell_16k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 64К МЭ ячейка хранения
recipes.remove(<appliedenergistics2:storage_cell_64k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:38>, <gregtech:cable:1> * 8, <gregtech:meta_item_1:12218> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:storage_cell_64k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:38>, <gregtech:cable:1> * 8, <gregtech:meta_item_1:12218> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:storage_cell_64k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 1К жидкостная МЭ ячейка хранения
recipes.remove(<appliedenergistics2:fluid_storage_cell_1k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:54>, <gregtech:cable:71> * 4, <gregtech:meta_item_1:12018> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:fluid_storage_cell_1k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:54>, <gregtech:cable:71> * 4, <gregtech:meta_item_1:12018> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:fluid_storage_cell_1k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 4К жидкостная МЭ ячейка хранения
recipes.remove(<appliedenergistics2:fluid_storage_cell_4k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:55>, <gregtech:cable:18> * 4, <gregtech:meta_item_1:12026> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:fluid_storage_cell_4k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:55>, <gregtech:cable:18> * 4, <gregtech:meta_item_1:12026> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:fluid_storage_cell_4k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 16К жидкостная МЭ ячейка хранения
recipes.remove(<appliedenergistics2:fluid_storage_cell_16k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:56>, <gregtech:cable:26> * 4, <gregtech:meta_item_1:12113> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:fluid_storage_cell_16k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:56>, <gregtech:cable:26> * 4, <gregtech:meta_item_1:12113> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:fluid_storage_cell_16k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();

// 64К жидкостная МЭ ячейка хранения
recipes.remove(<appliedenergistics2:fluid_storage_cell_64k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:57>, <gregtech:cable:1> * 8, <gregtech:meta_item_1:12218> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<appliedenergistics2:fluid_storage_cell_64k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:57>, <gregtech:cable:1> * 8, <gregtech:meta_item_1:12218> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<appliedenergistics2:fluid_storage_cell_64k>)
    .duration(15 * 20)
    .EUt(192)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Механизмы    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Кварцевый дробитель
recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped("appliedenergistics2_grindstone", <appliedenergistics2:grindstone>,
 [[<ore:stone>, <gregtech:meta_item_2:26033>, <ore:stone>],
  [<gregtech:meta_item_1:8203>, <ore:stone>, <gregtech:meta_item_1:8203>],
  [<ore:stone>, <gregtech:meta_item_1:8203>, <ore:stone>]]);

// Вибрационная камера
recipes.remove(<appliedenergistics2:vibration_chamber>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184> * 6, <minecraft:furnace>, <appliedenergistics2:energy_acceptor>)
    .outputs(<appliedenergistics2:vibration_chamber>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// МЭ интерфейс
recipes.remove(<appliedenergistics2:interface>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine_casing:3>, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <gregtech:meta_item_1:32632>, <gregtech:cable:26> * 6)
    .outputs(<appliedenergistics2:interface>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// МЭ контроллер
recipes.remove(<appliedenergistics2:controller>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:energy_acceptor>, <gregtech:meta_item_2:32491> * 4, <appliedenergistics2:part:16> * 8, <gregtech:cable:237> * 16, <gregtech:meta_item_1:12330> * 6, <gregtech:meta_item_1:12204> * 6)
    .outputs(<appliedenergistics2:controller>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();

// МЭ накопитель
recipes.remove(<appliedenergistics2:drive>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine:503>, <appliedenergistics2:material:24> * 2, <appliedenergistics2:part:16> * 4, <gregtech:meta_item_2:32491> * 2, <gregtech:meta_item_2:32506> * 10, <gregtech:meta_item_1:12152> * 10, <gregtech:meta_item_1:12183> * 5)
    .outputs(<appliedenergistics2:drive>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();

// Приемщик энергии
recipes.remove(<appliedenergistics2:energy_acceptor>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine:503>, <gregtech:cable:26> * 2, <gregtech:cable:237> * 32, <gregtech:meta_item_1:12183> * 6)
    .outputs(<appliedenergistics2:energy_acceptor>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();

// МЭ сундук
recipes.remove(<appliedenergistics2:chest>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine:503>, <gregtech:meta_item_2:32491> * 2, <appliedenergistics2:part:380>, <appliedenergistics2:part:16> * 4, <gregtech:meta_item_2:32506>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:12183> * 5)
    .outputs(<appliedenergistics2:chest>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();
    
// МЭ жидкостный интерфейс
recipes.remove(<appliedenergistics2:fluid_interface>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine_casing:3>, <gregtech:meta_item_1:12128> * 6, <appliedenergistics2:material:43>, <appliedenergistics2:material:44>, <gregtech:meta_item_1:32612>, <gregtech:cable:26> * 6)
    .outputs(<appliedenergistics2:fluid_interface>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Молекулярный сборщик
recipes.remove(<appliedenergistics2:molecular_assembler>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:14183> * 12, <appliedenergistics2:material:53>, <appliedenergistics2:material:44>, <appliedenergistics2:material:43>, <gregtech:cable:26> * 4)
    .outputs(<appliedenergistics2:molecular_assembler>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// МЭ терминал безопасности
recipes.remove(<appliedenergistics2:security_station>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:chest>, <appliedenergistics2:material:24>, <gregtech:meta_item_2:32491>, <appliedenergistics2:part:16> * 4, <gregtech:meta_item_1:12183> * 4, <gregtech:meta_item_1:19018> * 4)
    .outputs(<appliedenergistics2:security_station>)
    .duration(10 * 20)
    .EUt(320)
    .buildAndRegister();

// МЭ порт ввода-вывода
recipes.remove(<appliedenergistics2:io_port>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:drive> * 2, <appliedenergistics2:material:22>, <appliedenergistics2:part:16> * 4, <gregtech:cable:1> * 4, <gregtech:meta_item_1:12183> * 4)
    .outputs(<appliedenergistics2:io_port>)
    .duration(10 * 20)
    .EUt(320)
    .buildAndRegister();

// Верстак для ячеек
recipes.remove(<appliedenergistics2:cell_workbench>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine_casing:3>, <ore:chestWood>, <appliedenergistics2:material:23>, <gregtech:cable:18> * 2, <gregtech:meta_item_1:12183> * 4, <gregtech:meta_item_1:19001> * 4)
    .outputs(<appliedenergistics2:cell_workbench>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Ускоритель роста кристаллов
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_glass>, <minecraft:iron_bars> * 4, <appliedenergistics2:part:16> * 4, <gregtech:meta_item_1:12184> * 4)
    .outputs(<appliedenergistics2:quartz_growth_accelerator>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();

// Энергетическая ячейка
recipes.remove(<appliedenergistics2:energy_cell>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine_casing:3>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:10> * 4, <appliedenergistics2:material:12> * 4, <gregtech:meta_item_1:19001> * 8)
    .outputs(<appliedenergistics2:energy_cell>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Плотная энергетическая ячейка
recipes.remove(<appliedenergistics2:dense_energy_cell>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:energy_cell> * 8, <appliedenergistics2:material:23>, <appliedenergistics2:part:16> * 8, <gregtech:cable:18> * 2)
    .outputs(<appliedenergistics2:dense_energy_cell>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Зарядник
recipes.remove(<appliedenergistics2:charger>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184> * 6, <gregtech:meta_item_1:14184> * 4, <gregtech:meta_item_1:32682> * 2, <gregtech:meta_item_2:32491>, <gregtech:cable:26> * 4)
    .outputs(<appliedenergistics2:charger>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~    Обработчики создания    ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Блок крафта
recipes.remove(<appliedenergistics2:crafting_unit>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine_casing:3>, <appliedenergistics2:material:23> * 2, <appliedenergistics2:material:22>, <appliedenergistics2:part:16> * 2, <gregtech:cable:18> * 4, <gregtech:meta_item_1:12184> * 6)
    .outputs(<appliedenergistics2:crafting_unit>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// Блок обработки крафта
recipes.remove(<appliedenergistics2:crafting_accelerator>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:24>, <gregtech:cable:26> * 2, <gregtech:meta_item_1:12214> * 6)
    .outputs(<appliedenergistics2:crafting_accelerator>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// 1К хранилище крафта
recipes.remove(<appliedenergistics2:crafting_storage_1k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:35>, <gregtech:cable:71> * 2, <gregtech:meta_item_1:12018> * 6)
    .outputs(<appliedenergistics2:crafting_storage_1k>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// 4К хранилище крафта
recipes.remove(<appliedenergistics2:crafting_storage_4k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:36>, <gregtech:cable:18> * 2, <gregtech:meta_item_1:12026> * 6)
    .outputs(<appliedenergistics2:crafting_storage_4k>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// 16К хранилище крафта
recipes.remove(<appliedenergistics2:crafting_storage_16k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:37>, <gregtech:cable:26> * 2, <gregtech:meta_item_1:12113> * 6)
    .outputs(<appliedenergistics2:crafting_storage_16k>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// 64К хранилище крафта
recipes.remove(<appliedenergistics2:crafting_storage_64k>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:38>, <gregtech:cable:1> * 2, <gregtech:meta_item_1:12218> * 6)
    .outputs(<appliedenergistics2:crafting_storage_64k>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// Монитор крафта
recipes.remove(<appliedenergistics2:crafting_monitor>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:part:400>, <gregtech:cable:18> * 2)
    .outputs(<appliedenergistics2:crafting_monitor>)
    .duration(5 * 20)
    .EUt(128)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Инструменты    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
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
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Другое    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
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

// Светильник из заряженного кварца
recipes.remove(<appliedenergistics2:quartz_fixture>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:1>, <gregtech:meta_item_1:18033>, <gregtech:meta_item_1:16033>)
    .outputs(<appliedenergistics2:quartz_fixture>)
    .duration(3 * 20)
    .EUt(24)
    .buildAndRegister();

// Светильник обнаружения света
recipes.remove(<appliedenergistics2:light_detector>);
assembler.recipeBuilder()
    .inputs(<minecraft:quartz>, <gregtech:meta_item_1:18033>, <gregtech:meta_item_1:16033>)
    .outputs(<appliedenergistics2:light_detector>)
    .duration(3 * 20)
    .EUt(24)
    .buildAndRegister();

// Беспроводной приемник
recipes.remove(<appliedenergistics2:material:41>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32692>, <appliedenergistics2:material:9>, <appliedenergistics2:part:16> * 2, <gregtech:cable:26> * 2, <gregtech:meta_item_1:14184> * 3, <gregtech:meta_item_1:18184> * 2, <gregtech:meta_item_1:17184> * 2, <gregtech:meta_item_1:19071> * 2)
    .outputs(<appliedenergistics2:material:41>)
    .duration(15 * 20)
    .EUt(320)
    .buildAndRegister();

// МЭ беспроводная точка доступа
recipes.remove(<appliedenergistics2:wireless_access_point>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:41>, <appliedenergistics2:material:23>, <gregtech:meta_item_1:12184> * 4, <appliedenergistics2:part:16> * 2, <gregtech:cable:26> * 2, <gregtech:meta_item_1:18152> * 2)
    .outputs(<appliedenergistics2:wireless_access_point>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();

// Беспроводной усилитель
recipes.remove(<appliedenergistics2:material:42>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32692>, <gregtech:cable:26> * 4, <gregtech:meta_item_1:19184> * 4, <gregtech:meta_item_1:19237> * 4, <gregtech:meta_item_1:12025>, <gregtech:meta_item_1:15218>)
    .outputs(<appliedenergistics2:material:42>)
    .duration(10 * 20)
    .EUt(512)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'Applied Energistics 2'");