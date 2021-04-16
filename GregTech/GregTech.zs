#priority 1
# GregTech

import crafttweaker.item.IItemStack;

print("Initializing 'GregTech'...");

// Удаление сундуков
var items = [<gregtech:machine:802>, <gregtech:machine:803>, <gregtech:machine:805>, <gregtech:machine:806>, <gregtech:machine:807>, <gregtech:machine:808>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("§cВ данной сборке этот предмет выключен");
}

// Радон
mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2069>)
    .fluidInputs([<liquid:poison> * 2000])
    .fluidOutputs([<liquid:radon> * 100])
    .duration(300 * 20)
    .EUt(32)
    .buildAndRegister();


print("Initialized 'GregTech'");