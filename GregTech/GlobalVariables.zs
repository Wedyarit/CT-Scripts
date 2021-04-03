#priority 2
# Global Variables

import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

print("Initializing 'Global Variables'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
global assembler as RecipeMap  = RecipeMap.getByName("assembler");
global chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
global metal_bender as RecipeMap = RecipeMap.getByName("metal_bender");
global fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");
global blast_furnace as RecipeMap = RecipeMap.getByName("blast_furnace");
global centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");
global mixer as RecipeMap = RecipeMap.getByName("mixer");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Crafting Tools  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
global hammer as IIngredient = <ore:craftingToolHardHammer>.transformDamage(4);
global wrench as IIngredient = <ore:craftingToolWrench>.transformDamage(4);
global file as IIngredient = <ore:craftingToolFile>.transformDamage(4);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

print("Initialized 'Global Variable'");