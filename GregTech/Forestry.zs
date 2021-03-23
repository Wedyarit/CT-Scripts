# Forestry

import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;

print("Initializing 'Forestry'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Пчеловодство    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Пропитанный корпус
Carpenter.removeRecipe(<forestry:impregnated_casing>);
assembler.recipeBuilder()
    .inputs(<ore:logWood> * 8, <gregtech:meta_item_1:12095> * 4, <gregtech:meta_item_1:17018> * 16)
    .fluidInputs([<liquid:seed.oil> * 1000])
    .outputs(<forestry:impregnated_casing>)
    .duration(20 * 20)
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
    .duration(12 * 20)
    .EUt(32)
    .buildAndRegister();

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