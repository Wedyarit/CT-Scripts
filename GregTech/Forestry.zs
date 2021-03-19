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


print("Initialized 'Forestry'");