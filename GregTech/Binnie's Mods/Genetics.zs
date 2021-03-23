# Genetics

import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter;

print("Initializing 'Genetics'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Базы данных    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// База данных ботаники
Carpenter.removeRecipe(<botany:database>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12228>, <ore:paneGlass>, <gregtech:meta_item_1:12228>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12129>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:12095>)
    .outputs(<botany:database>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// База данных арбористов
Carpenter.removeRecipe(<extratrees:databasetree>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12095>, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12109>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12228>, <ore:paneGlass>, <gregtech:meta_item_1:12228>)
    .outputs(<extratrees:databasetree>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// База данных пчеловода
Carpenter.removeRecipe(<extrabees:dictionary>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12095>, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12113>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12228>, <ore:paneGlass>, <gregtech:meta_item_1:12228>)
    .outputs(<extrabees:dictionary>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// База данных лепидоптериста
Carpenter.removeRecipe(<extratrees:databaselepi>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12095>, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12228>, <ore:paneGlass>, <gregtech:meta_item_1:12228>)
    .outputs(<extratrees:databaselepi>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// База генов
Carpenter.removeRecipe(<genetics:geneticdatabase>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12111>, <ore:paneGlass>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12219>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_2:32491>, <gregtech:meta_item_1:12111>)
    .outputs(<genetics:geneticdatabase>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Аналитик
recipes.remove(<genetics:analyst>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <genetics:misc:8>, <forestry:portable_alyzer>, <genetics:misc:8>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>)
    .outputs(<genetics:analyst>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'Genetics'");