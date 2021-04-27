#priority 1
# Forestry

import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;
import mods.forestry.Centrifuge;
import crafttweaker.item.IItemStack;

print("Initializing 'Forestry'...");


// Ненужные и запрещенные предметы
var items = [<extratrees:machine>, <forestry:kit_shovel>, <forestry:kit_pickaxe>, <forestry:centrifuge>, <forestry:squeezer>, <forestry:bottler>, <forestry:fabricator>, <forestry:carpenter>, <forestry:genetic_filter>, <forestry:gear_bronze>, <forestry:gear_copper>, <forestry:gear_tin>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("§cВ данной сборке этот предмет выключен");
}
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Пчеловодство    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Пропитанный корпус
Carpenter.removeRecipe(<forestry:impregnated_casing>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17018> * 16, <gregtech:meta_item_1:12095> * 4, <ore:logWood> * 8)
    .fluidInputs([<liquid:seed.oil> * 1000])
    .outputs(<forestry:impregnated_casing>)
    .duration(20 * 20)
    .EUt(24)
    .buildAndRegister();

// Пчелиный домик
recipes.remove(<forestry:bee_house>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12196> * 8, <gregtech:meta_item_1:17018> * 2, <forestry:impregnated_casing>, <forestry:frame_untreated>)
    .fluidInputs([<liquid:glue> * 200])
    .outputs(<forestry:bee_house>)
    .duration(20 * 20)
    .EUt(24)
    .buildAndRegister();

// Пасека
recipes.remove(<forestry:apiary>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17018> * 6, <forestry:bee_house>, <forestry:frame_untreated>, <forestry:frame_untreated>, <forestry:frame_untreated>)
    .outputs(<forestry:apiary>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Печатные платы    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Основная печатная плата
Carpenter.removeRecipe(<forestry:chipsets>);
assembler.recipeBuilder()
    .inputs(<gregtech:cable:237>, <gregtech:meta_item_2:32443>, <gregtech:cable:237>, <gregtech:cable:237>, <gregtech:meta_item_2:32443>, <gregtech:cable:237>, <gregtech:cable:237>, <gregtech:meta_item_2:32443>, <gregtech:cable:237>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:chipsets>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:cable:237>, <gregtech:meta_item_2:32443>, <gregtech:cable:237>, <gregtech:cable:237>, <gregtech:meta_item_2:32443>, <gregtech:cable:237>, <gregtech:cable:237>, <gregtech:meta_item_2:32443>, <gregtech:cable:237>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<forestry:chipsets>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Продвинутая печатная плата
Carpenter.removeRecipe(<forestry:chipsets:1>);
assembler.recipeBuilder()
    .inputs(<gregtech:cable:71>, <gregtech:meta_item_2:32447>, <gregtech:cable:71>, <gregtech:cable:71>, <gregtech:meta_item_2:32447>, <gregtech:cable:71>, <gregtech:cable:71>, <gregtech:meta_item_2:32447>, <gregtech:cable:71>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:chipsets:1>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:cable:71>, <gregtech:meta_item_2:32447>, <gregtech:cable:71>, <gregtech:cable:71>, <gregtech:meta_item_2:32447>, <gregtech:cable:71>, <gregtech:cable:71>, <gregtech:meta_item_2:32447>, <gregtech:cable:71>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<forestry:chipsets:1>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();

// Усовершенствованная печатная плата
Carpenter.removeRecipe(<forestry:chipsets:2>);
assembler.recipeBuilder()
    .inputs(<gregtech:cable:18>, <gregtech:meta_item_2:32448>, <gregtech:cable:18>, <gregtech:cable:18>, <gregtech:meta_item_2:32448>, <gregtech:cable:18>, <gregtech:cable:18>, <gregtech:meta_item_2:32448>, <gregtech:cable:18>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:chipsets:2>)
    .duration(10 * 20)
    .EUt(72)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:cable:18>, <gregtech:meta_item_2:32448>, <gregtech:cable:18>, <gregtech:cable:18>, <gregtech:meta_item_2:32448>, <gregtech:cable:18>, <gregtech:cable:18>, <gregtech:meta_item_2:32448>, <gregtech:cable:18>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<forestry:chipsets:2>)
    .duration(10 * 20)
    .EUt(72)
    .buildAndRegister();

// Усложненная печатная плата
Carpenter.removeRecipe(<forestry:chipsets:3>);
assembler.recipeBuilder()
    .inputs(<gregtech:cable:112>, <gregtech:meta_item_2:32444>, <gregtech:cable:112>, <gregtech:cable:112>, <gregtech:meta_item_2:32444>, <gregtech:cable:112>, <gregtech:cable:112>, <gregtech:meta_item_2:32444>, <gregtech:cable:112>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:chipsets:3>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:cable:112>, <gregtech:meta_item_2:32444>, <gregtech:cable:112>, <gregtech:cable:112>, <gregtech:meta_item_2:32444>, <gregtech:cable:112>, <gregtech:cable:112>, <gregtech:meta_item_2:32444>, <gregtech:cable:112>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<forestry:chipsets:3>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~    Несоздаваемые предметы    ~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Проверенный садовый нож
recipes.addShaped("forestry_grafter_proven", <forestry:grafter_proven>,
 [[null, null, <gregtech:meta_item_1:10183>],
  [null, <forestry:oak_stick>, null],
  [<forestry:oak_stick>, null, null]]);

// Проверенная рамка
recipes.addShaped("forestry_frame_proven", <forestry:frame_proven>,
 [[<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>],
  [<forestry:oak_stick>, <forestry:crafting_material:3>, <forestry:oak_stick>],
  [<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>]]);

// Рамка Новы
recipes.addShaped("extrabees_hive_frame_debug", <extrabees:hive_frame.debug>,
 [[<gregtech:meta_item_1:14304>, <gregtech:meta_item_1:14304>, <gregtech:meta_item_1:14304>],
  [<gregtech:meta_item_1:14304>, <gregtech:meta_item_1:32725>, <gregtech:meta_item_1:14304>],
  [<gregtech:meta_item_1:14304>, <gregtech:meta_item_1:14304>, <gregtech:meta_item_1:14304>]]);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Банки  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Банка
recipes.remove(<forestry:can>);
assembler.recipeBuilder()
    .inputs(<ore:paneGlass>, <gregtech:meta_item_1:12071> * 2)
    .outputs(<forestry:can> * 2)
    .duration(12 * 20)
    .EUt(32)
    .buildAndRegister();

// Восковая капсула
Carpenter.removeRecipe(<forestry:capsule>);
recipes.remove(<forestry:capsule>);
assembler.recipeBuilder()
    .inputs(<ore:paneGlass>, <forestry:beeswax> * 2)
    .outputs(<forestry:capsule>)
    .duration(12 * 20)
    .EUt(32)
    .buildAndRegister();

// Огнеупорная капсула
Carpenter.removeRecipe(<forestry:refractory>);
recipes.remove(<forestry:refractory>);
assembler.recipeBuilder()
    .inputs(<ore:paneGlass>, <forestry:refractory_wax> * 2)
    .outputs(<forestry:refractory>)
    .duration(12 * 20)
    .EUt(32)
    .buildAndRegister();

// Экран среды обитания
Carpenter.removeRecipe(<forestry:habitat_screen>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32489>, <ore:paneGlass> * 2, <gregtech:meta_item_1:12184> * 6)
    .outputs(<forestry:habitat_screen>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Капли меда  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Кислотная капля -> Серная кислота
fluid_extractor.recipeBuilder()
    .inputs(<extrabees:honey_drop:1>)
    .fluidOutputs([<liquid:sulfuric_acid> * 200])
    .chancedOutput(<gregtech:meta_item_1:2065>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Ореховая капля -> Растительное масло
fluid_extractor.recipeBuilder()
    .inputs(<extrabees:honey_drop:7>)
    .fluidOutputs([<liquid:seed.oil> * 200])
    .chancedOutput(<forestry:mulch>, 1000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Ледяная капля -> Молотый лед
fluid_extractor.recipeBuilder()
    .inputs(<extrabees:honey_drop:5>)
    .fluidOutputs([<liquid:ice> * 200])
    .chancedOutput(<forestry:crafting_material:5>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Энергетическая капля -> Дестабилизированный красный камень
fluid_extractor.recipeBuilder()
    .inputs(<extrabees:honey_drop>)
    .fluidOutputs([<liquid:redstone> * 200])
    .chancedOutput(<gregtech:meta_item_2:32572>, 5000, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Облученные соты
centrifuge.recipeBuilder()
    .inputs(<forestry:bee_combs:9>)
    .chancedOutput(<gregtech:meta_item_1:5075>, 2500, 1000)
    .chancedOutput(<forestry:honey_drop>, 2500, 1000)
    .chancedOutput(<forestry:beeswax>, 2500, 1000)
    .duration(6.4 * 20)
    .EUt(5)
    .buildAndRegister();

// Секретер
Carpenter.removeRecipe(<forestry:escritoire>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12196> * 6, <forestry:oak_stick> * 4, <gregtech:meta_item_1:19095> * 4, <gregtech:meta_item_1:17095> * 4, <gregtech:meta_item_1:16095> * 4)
    .fluidInputs([<liquid:seed.oil> * 500])
    .outputs(<forestry:escritoire>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();

// Темная свеча
Carpenter.removeRecipe(<forestry:candle>);
assembler.recipeBuilder()
    .inputs(<forestry:crafting_material:2>, <forestry:beeswax>)
    .fluidInputs([<liquid:water> * 100])
    .outputs(<forestry:candle>)
    .duration(3 * 20)
    .EUt(10)
    .buildAndRegister();

// Тканный шелк
Carpenter.removeRecipe(<forestry:crafting_material:3>);
assembler.recipeBuilder()
    .inputs(<forestry:crafting_material:2> * 9)
    .fluidInputs([<liquid:water> * 500])
    .outputs(<forestry:crafting_material:3>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Укрепленный корпус
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12111> * 8, <forestry:sturdy_machine>)
    .fluidInputs([<liquid:water> * 5000])
    .outputs(<forestry:hardened_machine>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Рассеивающий заряд
Carpenter.removeRecipe(<forestry:crafting_material:4>);
<forestry:crafting_material:4>.addTooltip("§cВ данной сборке этот предмет выключен");

// Капсула йода
Carpenter.removeRecipe(<forestry:iodine_capsule>);
<forestry:iodine_capsule>.addTooltip("§cВ данной сборке этот предмет выключен");

// Пропитанная обшивка
Carpenter.removeRecipe(<forestry:crafting_material:6>);
assembler.recipeBuilder()
    .inputs(<forestry:pollen>, <forestry:royal_jelly>, <gregtech:meta_item_1:12196> * 3, <forestry:beeswax> * 4)
    .fluidInputs([<liquid:water> * 500])
    .outputs(<forestry:crafting_material:6>)
    .duration(30 * 20)
    .EUt(256)
    .buildAndRegister();

// Полированная палка
assembler.recipeBuilder()
    .inputs(<ore:logWood> * 2)
    .fluidInputs([<liquid:seed.oil> * 100])
    .outputs(<forestry:oak_stick>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Гибкий корпус
ThermionicFabricator.removeCast(<forestry:flexible_casing>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12095>, <minecraft:slime_ball>, <gregtech:meta_item_1:12095>, <minecraft:slime_ball>, <forestry:sturdy_machine>, <minecraft:slime_ball>, <gregtech:meta_item_1:12095>, <minecraft:slime_ball>, <gregtech:meta_item_1:12095>)
    .outputs(<forestry:flexible_casing>)
    .duration(15 * 20)
    .EUt(128)
    .buildAndRegister();

// Паяльник
Carpenter.removeRecipe(<forestry:soldering_iron>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19391>, <gregtech:meta_item_1:19391>, <gregtech:meta_item_1:19391>, <gregtech:meta_item_1:14183>, <gregtech:meta_item_1:14183>, <gregtech:meta_item_2:32456>, <gregtech:meta_item_1:14071>, <gregtech:meta_item_1:19391>, <forestry:oak_stick>)
    .outputs(<forestry:soldering_iron>)
    .duration(5 * 20)
    .EUt(32)
    .buildAndRegister();

// Очки
recipes.remove(<forestry:naturalist_helmet>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:15209> * 2, <gregtech:cable:71> * 3)
    .outputs(<forestry:naturalist_helmet>)
    .duration(5 * 20)
    .EUt(12)
    .buildAndRegister();

// Анализатор
recipes.remove(<forestry:portable_alyzer>);
assembler.recipeBuilder()
    .inputs(<minecraft:glass_pane> * 2, <gregtech:meta_item_1:12033> * 4, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12237> * 2)
    .outputs(<forestry:portable_alyzer>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();

// Бывшая среда обитания
recipes.remove(<forestry:habitat_former>);
recipes.addShaped("forestry_habitat_former", <forestry:habitat_former>,
 [[<ore:blockGlass>, <forestry:chipsets:3>, <ore:blockGlass>],
  [<gregtech:meta_item_1:32612>, <forestry:hardened_machine>, <gregtech:meta_item_1:32612>],
  [<gregtech:meta_item_2:32491>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_2:32491>]]);

// Бак для дождя
recipes.remove(<forestry:raintank>);
recipes.addShaped("forestry_raintank", <forestry:raintank>,
 [[<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, hammer, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>]]);

// Пипетка
recipes.remove(<forestry:pipette>);
recipes.addShaped("forestry_pipette", <forestry:pipette>,
 [[null, null, <gregtech:meta_item_1:9152>],
  [null, <gregtech:meta_item_1:18152>, null],
  [<gregtech:meta_item_2:32454>, null, null]]);

// Дымарь
recipes.remove(<forestry:smoker>);
recipes.addShaped("forestry_smoker", <forestry:smoker>,
 [[<minecraft:leather>, <minecraft:hay_block>, <gregtech:meta_item_1:12071>],
  [<minecraft:leather>, <minecraft:flint_and_steel>, <gregtech:meta_item_1:12071>],
  [<gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12071>]]);

// Лимон
recipes.addShaped("forestry_lemon", <forestry:fruits:3> * 3,
 [[<extrabees:honey_drop:14>, <biomesoplenty:plant_0:11>, <extrabees:honey_drop:14>],
  [<extratrees:food:17>, <gregtech:meta_item_1:32438>, <extratrees:food:17>],
  [<extrabees:honey_drop:14>, <extratrees:food:17>, <extrabees:honey_drop:14>]]);
<forestry:fruits:3>.addTooltip("§eБез ГМО!");

// Мультиферма
for i in 0 to 11 {
	recipes.replaceAllOccurences(<ore:ingotCopper>, <gregtech:meta_item_1:12018>, <forestry:ffarm>.withTag({FarmBlock: i}));
}

print("Initialized 'Forestry'");