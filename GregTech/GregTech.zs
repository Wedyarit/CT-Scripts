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
  [file, <gregtech:meta_item_1:12017>, wrench]]);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12017> * 5, <gregtech:meta_item_1:17033> * 2)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<gregtech:meta_item_2:15017>)
    .duration(20)
    .EUt(256)
    .buildAndRegister();

// Капсулы
metal_bender.findRecipe(30, [<gregtech:meta_item_1:12033> * 2, <gregtech:meta_item_1:32766>.withTag({Configuration: 12})], null).remove();
metal_bender.recipeBuilder()
    .inputs(<ore:plateIron> * 2)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 12}))
    .outputs(<gregtech:meta_item_1:32762> * 32)
    .duration(10 * 20)
    .EUt(30)
    .buildAndRegister();
extruder.findRecipe(30, [<gregtech:meta_item_1:12033> * 2, <gregtech:meta_item_1:32354>], null).remove();
extruder.recipeBuilder()
    .inputs(<ore:plateIron> * 2)
    .notConsumable(<gregtech:meta_item_1:32354>)
    .outputs(<gregtech:meta_item_1:32762> * 32)
    .duration(10 * 20)
    .EUt(30)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Прочее  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Помпа (UV)
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17071>, <gregtech:meta_item_2:18071>, <gregtech:fluid_pipe:2095>, <gregtech:meta_item_1:32600>, <gregtech:cable:5071>)
    .fluidInputs([<liquid:rubber> * 864])
    .outputs(<gregtech:meta_item_1:32610>)
    .duration(30 * 20)
    .EUt(15)
    .buildAndRegister();

// Помпа (MV)
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17095>, <gregtech:meta_item_2:1895>, <gregtech:fluid_pipe:2184>, <gregtech:meta_item_1:32601>, <gregtech:cable:5018>)
    .fluidInputs([<liquid:rubber> * 864])
    .outputs(<gregtech:meta_item_1:32611>)
    .duration(30 * 20)
    .EUt(60)
    .buildAndRegister();

// Помпа (HV)
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17184>, <gregtech:meta_item_2:18184>, <gregtech:fluid_pipe:2183>, <gregtech:meta_item_1:32602>, <gregtech:cable:5026>)
    .fluidInputs([<liquid:rubber> * 864])
    .outputs(<gregtech:meta_item_1:32612>)
    .duration(30 * 20)
    .EUt(240)
    .buildAndRegister();

// Помпа (EV)
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17183>, <gregtech:meta_item_2:18183>, <gregtech:fluid_pipe:2072>, <gregtech:meta_item_1:32603>, <gregtech:cable:5001>)
    .fluidInputs([<liquid:rubber> * 864])
    .outputs(<gregtech:meta_item_1:32613>)
    .duration(30 * 20)
    .EUt(960)
    .buildAndRegister();

// Помпа (IV)
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17235>, <gregtech:meta_item_2:18235>, <gregtech:fluid_pipe:2235>, <gregtech:meta_item_1:32604>, <gregtech:cable:5076>)
    .fluidInputs([<liquid:rubber> * 864])
    .outputs(<gregtech:meta_item_1:32614>)
    .duration(30 * 20)
    .EUt(3840)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'GregTech'");