# CraftTweaker Scripts
CraftTweaker scripts for client customization.

## Useful Information
### [GitHub](https://github.com/CraftTweaker/CraftTweaker)
### [Wiki](https://docs.blamejared.com/)

## Basic Templates
### Remove recipes
```zenscript
recipes.remove(output, NBTMatch);
```
### Add recipes

#### Shaped Recipe
```zenscript
recipes.addShaped(output,
 [[input, input, input],
  [input, input, input],
  [input, input, input]]);
```
#### Shapeless Recipe
```zenscript
recipes.addShapeless(output, [input, input, input]);
```
