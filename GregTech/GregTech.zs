#priority 1
# GregTech

import crafttweaker.item.IItemStack;

print("Initializing 'GregTech'...");

// Удаление сундуков, базовых центрифуги и гравера (не работают на такой мощности)
var items = [<gregtech:machine:460>, <gregtech:machine:430>, <gregtech:machine:802>, <gregtech:machine:803>, <gregtech:machine:804>, <gregtech:machine:805>, <gregtech:machine:806>, <gregtech:machine:807>, <gregtech:machine:808>] as IItemStack[];
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

// Бимасса из пшеницы
compressor.findRecipe(2, [<minecraft:wheat> * 8], null).remove();

// Селитра из песчаников
macerator.recipeBuilder()
    .inputs(<ore:sandstone>)
    .outputs(<minecraft:sand> * 2)
    .chancedOutput(<gregtech:meta_item_1:2156>, 3000, 500)
    .duration(7.5 * 20)
    .EUt(8)
    .buildAndRegister();

// Лопасть из кобальта (баг гречки - почему-то нет крафта)
recipes.addShaped("gregtech_cobalt_blade", <gregtech:meta_item_2:15017>,
 [[<gregtech:meta_item_1:12017>, <gregtech:meta_item_1:12017>, <gregtech:meta_item_1:12017>],
  [<gregtech:meta_item_1:17033>, <gregtech:meta_item_1:12017>, <gregtech:meta_item_1:17033>],
  [wrench, <gregtech:meta_item_1:12017>, file]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12017> * 5, <gregtech:meta_item_1:17033> * 2)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<gregtech:meta_item_2:15017>)
    .duration(20)
    .EUt(256)
    .buildAndRegister();

print("Initialized 'GregTech'");