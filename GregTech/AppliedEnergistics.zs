# AppliedEnergistics

import mods.gregtech.recipe.RecipeMap;

print("Initializing 'Applied Energistics 2'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
val mixer = RecipeMap.getByName("mixer");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~    Несоздаваемые предметы    ~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Небесный камень
assembler.recipeBuilder()
    .inputs(<gregtech:granite> * 8, <gregtech:meta_item_1:2001>, <appliedenergistics2:material:46>, <gregtech:meta_item_1:2025>)
    .fluidInputs([phosphoric_acid * 1000])
    .outputs(<appliedenergistics2:sky_stone_block> * 8)
    .duration(60 * 20)
    .EUt(30)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'Applied Energistics 2'");