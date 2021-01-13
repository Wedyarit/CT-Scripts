# CraftTweaker Scripts
CraftTweaker scripts for client customization.

## Useful Inforamtion
### [CourseForge](https://www.curseforge.com/minecraft/mc-mods/crafttweaker)
### [GitHub](https://github.com/CraftTweaker/CraftTweaker)
### [Wiki](https://docs.blamejared.com/)

## Basic Templates
### Remove recipes
```
recipes.remove(output, NBTMatch);
```
### Add recipes

#### Shaped Recipe
```zenscript
recipes.addShaped("name", output,
 [[input, input, input],
  [input, input, input],
  [input, input, input]]);
```
#### Shapeless Recipe
```
recipes.addShapeless(output, [input, unput, input]);
```