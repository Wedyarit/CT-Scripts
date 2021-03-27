# Forestry

import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;

print("Initializing 'Forestry'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Crafting Tools  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val hammer = <ore:craftingToolHardHammer>.transformDamage(4);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


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
    .inputs(<gregtech:cable:5071>, <gregtech:meta_item_2:32447>, <gregtech:cable:5071>, <gregtech:cable:5071>, <gregtech:meta_item_2:32447>, <gregtech:cable:5071>, <gregtech:cable:5071>, <gregtech:meta_item_2:32447>, <gregtech:cable:5071>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:chipsets:1>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:cable:5071>, <gregtech:meta_item_2:32447>, <gregtech:cable:5071>, <gregtech:cable:5071>, <gregtech:meta_item_2:32447>, <gregtech:cable:5071>, <gregtech:cable:5071>, <gregtech:meta_item_2:32447>, <gregtech:cable:5071>)
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
 [[<gregtech:meta_item_1:14072>, <gregtech:meta_item_1:14072>, <gregtech:meta_item_1:14072>],
  [<gregtech:meta_item_1:14072>, <gregtech:meta_item_1:32724>, <gregtech:meta_item_1:14072>],
  [<gregtech:meta_item_1:14072>, <gregtech:meta_item_1:14072>, <gregtech:meta_item_1:14072>]]);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Экран среды обитания
Carpenter.removeRecipe(<forestry:habitat_screen>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32489>, <gregtech:meta_item_2:32489> * 2, <gregtech:meta_item_1:12184> * 6)
    .outputs(<forestry:habitat_screen>)
    .duration(10 * 20)
    .EUt(64)
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
    .inputs(<forestry:crafting_material:2>, <forestry:crafting_material:2>)
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

// Рассеивающий заряд
Carpenter.removeRecipe(<forestry:crafting_material:4>);
assembler.recipeBuilder()
    .inputs(<forestry:honeydew> * 2, <forestry:royal_jelly> * 4, <forestry:can>, <minecraft:gunpowder> * 2)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<forestry:crafting_material:4>)
    .duration(20 * 20)
    .EUt(128)
    .buildAndRegister();

// Капсула йода
Carpenter.removeRecipe(<forestry:iodine_capsule>);
assembler.recipeBuilder()
    .inputs(<forestry:honey_drop> * 2, <forestry:pollen> * 4, <forestry:pollen>, <forestry:pollen> * 2)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<forestry:iodine_capsule>)
    .duration(20 * 20)
    .EUt(128)
    .buildAndRegister();

// Пропитанная обшивка
Carpenter.removeRecipe(<forestry:crafting_material:6>);
assembler.recipeBuilder()
    .inputs(<forestry:pollen>, <forestry:royal_jelly>, <gregtech:meta_item_1:12196> * 3, <forestry:beeswax> * 4)
    .fluidInputs([<liquid:water> * 500])
    .outputs(<forestry:crafting_material:6>)
    .duration(30 * 20)
    .EUt(256)
    .buildAndRegister();

// Гибкий корпус
ThermionicFabricator.removeCast(<forestry:flexible_casing>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <minecraft:slime_ball>, <gregtech:meta_item_1:12095>, <minecraft:slime_ball>, <forestry:sturdy_machine>, <minecraft:slime_ball>, <gregtech:meta_item_1:12095>, <minecraft:slime_ball>, <gregtech:meta_item_1:12095>)
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
Carpenter.removeRecipe(<forestry:naturalist_helmet>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:15209> * 2, <gregtech:cable:71> * 3)
    .outputs(<forestry:naturalist_helmet>)
    .duration(12 * 20)
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

// Мультиферма
for i in 0 to 11 {
	recipes.replaceAllOccurences(<ore:ingotCopper>, <gregtech:meta_item_1:12018>, <forestry:ffarm>.withTag({FarmBlock: i}));
}

print("Initialized 'Forestry'");