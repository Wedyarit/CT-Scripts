# Scannable

import mods.gregtech.recipe.RecipeMap;

print("Initializing 'Scannable'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Сканер
recipes.remove(<scannable:scanner>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32517>, <gregtech:meta_item_1:32692> * 2, <gregtech:meta_item_1:15219> * 2, <gregtech:meta_item_2:32491>, <gregtech:cable:112> * 4, <gregtech:meta_item_1:12183> * 4)
    .outputs(<scannable:scanner>)
    .duration(300 * 20)
    .EUt(512)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Модули  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Пустой модуль
recipes.remove(<scannable:module_blank>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32445>, <gregtech:cable:112> * 4, <gregtech:meta_item_2:16112> * 4)
    .outputs(<scannable:module_blank>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Модуль "Обычные руды"
recipes.remove(<scannable:module_ore_common>);
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:25106>, <gregtech:meta_item_2:16112> * 8)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<scannable:module_ore_common>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:25106>, <gregtech:meta_item_2:16112> * 8)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<scannable:module_ore_common>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Модуль "Редкие руды"
recipes.remove(<scannable:module_ore_rare>);
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:25111>, <gregtech:meta_item_2:16112> * 8)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<scannable:module_ore_rare>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:25111>, <gregtech:meta_item_2:16112> * 8)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<scannable:module_ore_rare>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Модуль "Диапазон"
recipes.remove(<scannable:module_range>);
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_2:16112> * 4, <gregtech:cable:112> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<scannable:module_range>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_2:16112> * 4, <gregtech:cable:112> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<scannable:module_range>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Модуль "Блок"
recipes.remove(<scannable:module_block>);
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_1:32363>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:16112> * 8)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<scannable:module_block>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_1:32363>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:16112> * 8)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<scannable:module_block>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Модуль "Структуры"
recipes.remove(<scannable:module_structure>);
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <forestry:crafting_material:1>, <gregtech:meta_item_2:16112> * 12, <gregtech:meta_item_2:16112>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<scannable:module_structure>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <forestry:crafting_material:1>, <gregtech:meta_item_2:16112> * 12, <gregtech:meta_item_2:16112>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<scannable:module_structure>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Модуль "Жидкости"
recipes.remove(<scannable:module_fluid>);
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:25128>, <gregtech:meta_item_2:16112> * 8, <forestry:can>)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<scannable:module_fluid>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:25128>, <gregtech:meta_item_2:16112> * 8, <forestry:can>)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<scannable:module_fluid>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Модуль "Монстры"
recipes.remove(<scannable:module_monster>);
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <minecraft:bone>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:16112> * 8, <gregtech:meta_item_1:19112> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<scannable:module_monster>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <minecraft:bone>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:16112> * 8, <gregtech:meta_item_1:19112> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<scannable:module_monster>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Модуль "Монстры"
recipes.remove(<scannable:module_animal>);
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <minecraft:leather>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:16112> * 8, <gregtech:meta_item_1:19112> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<scannable:module_animal>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<scannable:module_blank>, <minecraft:leather>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:16112> * 8, <gregtech:meta_item_1:19112> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<scannable:module_animal>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Модуль "Сущность"
recipes.remove(<scannable:module_entity>);
assembler.recipeBuilder()
    .inputs(<scannable:module_monster>, <scannable:module_animal>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:16112> * 8)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<scannable:module_animal>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<scannable:module_monster>, <scannable:module_animal>, <gregtech:meta_item_2:32492>, <gregtech:meta_item_2:16112> * 8)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<scannable:module_animal>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'Scannable'");