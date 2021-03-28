#priority 10000
# Global Variable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

print("Initializing 'Global Variables'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ 
global assembler as RecipeMap  = RecipeMap.getByName("assembler");
global chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
global metal_bender as RecipeMap = RecipeMap.getByName("metal_bender");
global blast_furnace as RecipeMap = RecipeMap.getByName("blast_furnace");
global mixer as RecipeMap = RecipeMap.getByName("mixer");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Crafting Tools  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
global hammer = <ore:craftingToolHardHammer>.transformDamage(4);
global wrench = <ore:craftingToolWrench>.transformDamage(4);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

print("Initialized 'Global Variable'");