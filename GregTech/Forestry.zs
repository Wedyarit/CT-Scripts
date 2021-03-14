import mods.gregtech.recipe.RecipeMap;
import mods.forestry.Carpenter;

# Forestry

print("Initializing 'Forestry'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
val assembler = RecipeMap.getByName("assembler");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Пчеловодство    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Пропитанный корпус
Carpenter.removeRecipe(<forestry:impregnated_casing>);
assembler.findRecipe(8, [<ore:logWood> * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 1, not_consumed: 1 as byte})], [<liquid:seed.oil> * 250]).remove();
assembler.recipeBuilder()
    .inputs(<ore:logWood> * 8, <gregtech:meta_item_1:12095> * 4, <gregtech:meta_item_1:17018> * 16)
    .fluidInputs([<liquid:seed.oil> * 1000])
    .outputs(<forestry:impregnated_casing>)
    .duration(20 * 20)
    .EUt(24)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'Forestry'");