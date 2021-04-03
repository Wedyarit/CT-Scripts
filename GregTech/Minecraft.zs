#priority 1
# Minecraft

import crafttweaker.item.IItemStack;

print("Initializing 'Minecraft'...");


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Рельсы    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Рельсы
recipes.remove(<minecraft:rail>); 
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:19033> * 2, <gregtech:meta_item_2:19184> * 2, <ore:slabWood> * 4)
    .fluidInputs([<liquid:creosote> * 1000])
    .outputs(<minecraft:rail> * 4)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Энергорельсы
recipes.remove(<minecraft:golden_rail>); 
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:19026> * 2, <gregtech:meta_item_2:19184> * 2, <gregtech:meta_item_2:19033> * 2, <gregtech:meta_item_1:19237> * 8, <gregtech:cable:237> * 3, <ore:slabWood> * 4)
    .fluidInputs([<liquid:creosote> * 1000])
    .outputs(<minecraft:golden_rail> * 4)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Активирующие рельсы
recipes.remove(<minecraft:activator_rail>); 
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19237> * 8, <gregtech:meta_item_2:19184> * 2, <gregtech:meta_item_2:19033> * 2, <gregtech:cable:237> * 3, <ore:slabWood> * 4)
    .fluidInputs([<liquid:creosote> * 1000])
    .outputs(<minecraft:activator_rail> * 4)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Рельсы с датчиком
recipes.remove(<minecraft:detector_rail>); 
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:19033> * 2, <gregtech:meta_item_2:19184> * 2, <gregtech:meta_item_1:12237>, <gregtech:meta_item_1:12033>, <ore:slabWood> * 4)
    .fluidInputs([<liquid:creosote> * 1000])
    .outputs(<minecraft:detector_rail> * 4)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Инструменты    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Взаимозаменяемые предметы (Удаление)
var tools = [<minecraft:iron_shovel>, <minecraft:iron_pickaxe>, <minecraft:iron_axe>, <minecraft:wooden_shovel>, <minecraft:wooden_pickaxe>, <minecraft:wooden_axe>, <minecraft:diamond_shovel>, <minecraft:diamond_pickaxe>, <minecraft:diamond_axe>, <minecraft:golden_shovel>, <minecraft:golden_pickaxe>, <minecraft:golden_axe>, <minecraft:wooden_hoe>, <minecraft:iron_hoe>, <minecraft:diamond_hoe>, <minecraft:golden_hoe>, <minecraft:iron_sword>, <minecraft:wooden_sword>, <minecraft:diamond_sword>, <minecraft:golden_sword>] as IItemStack[];
for tool in tools {
    mods.jei.JEI.removeAndHide(tool);
	tool.addTooltip("§cВ данной сборке этот предмет выключен");
}

// Щит
recipes.remove(<minecraft:shield>);
recipes.addShaped("minecraft_shield", <minecraft:shield>,
 [[<gregtech:meta_item_1:14033>, <gregtech:meta_item_1:12196>, <gregtech:meta_item_1:14033>],
  [<gregtech:meta_item_1:14033>, <gregtech:meta_item_1:12196>, <gregtech:meta_item_1:14033>],
  [<gregtech:meta_item_1:18033>, <gregtech:meta_item_1:12196>, <gregtech:meta_item_1:14033>]]);

// Удочка
recipes.remove(<minecraft:fishing_rod>);
recipes.addShaped("minecraft_fishing_rod", <minecraft:fishing_rod>,
 [[null, null, <ore:stickWood>],
  [null, <ore:stickWood>, <ore:string>],
  [<ore:stickWood>, <gregtech:meta_item_1:18033>, <ore:string>]]);

// Ножницы
recipes.remove(<minecraft:shears>);
recipes.addShaped("minecraft_shears", <minecraft:shears>,
 [[<gregtech:meta_item_1:12033>, file, <gregtech:meta_item_1:12033>],
  [<gregtech:meta_item_1:12033>, wrench, <gregtech:meta_item_1:12033>],
  [null, <gregtech:meta_item_1:18033>, null]]);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Чародейский стол
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped("minecraft_enchanting_table", <minecraft:enchanting_table>,
 [[<gregtech:meta_item_1:12111>, <ore:bookEmpty>, <gregtech:meta_item_1:12111>],
  [<gregtech:meta_item_1:12237>, <gregtech:meta_item_1:12232>, <gregtech:meta_item_1:12237>],
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

// Проигрыватель
recipes.remove(<minecraft:jukebox>);
recipes.addShaped("minecraft_jukebox", <minecraft:jukebox>,
 [[<gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12196>],
  [<gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12196>],
  [<gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12196>]]);

// Нотный блок
recipes.remove(<minecraft:noteblock>);
recipes.addShaped("minecraft_noteblock", <minecraft:noteblock>,
 [[<gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12196>],
  [<gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12215>, <gregtech:meta_item_1:12196>],
  [<gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12196>, <gregtech:meta_item_1:12196>]]);

// Вагонетка
recipes.remove(<minecraft:minecart>);
recipes.addShaped("minecraft_minecart", <minecraft:minecart>,
 [[null, null, null],
  [<gregtech:meta_item_1:12033>, hammer, <gregtech:meta_item_1:12033>],
  [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>]]);

// Варочная стойка
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped("minecraft_brewing_stand", <minecraft:brewing_stand>,
 [[<gregtech:meta_item_1:14033>, <gregtech:meta_item_1:14033>, <gregtech:meta_item_1:14033>],
  [<gregtech:meta_item_1:19018>, <minecraft:blaze_rod>, <gregtech:meta_item_1:19018>],
  [<gregtech:meta_item_1:12328>, <gregtech:meta_item_1:12328>, <gregtech:meta_item_1:12328>]]);

// Алмазная броня
recipes.remove(<minecraft:diamond_helmet>);
recipes.addShaped(<minecraft:diamond_helmet>, [
[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], 
[<ore:plateDiamond>, hammer, <ore:plateDiamond>]
]);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.addShaped(<minecraft:diamond_chestplate>, [
[<ore:plateDiamond>, hammer, <ore:plateDiamond>], 
[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], 
[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]
]);
recipes.remove(<minecraft:diamond_leggings>);
recipes.addShaped(<minecraft:diamond_leggings>, [
[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], 
[<ore:plateDiamond>, hammer, <ore:plateDiamond>], 
[<ore:plateDiamond>, null, <ore:plateDiamond>]
]);
recipes.remove(<minecraft:diamond_boots>);
recipes.addShaped(<minecraft:diamond_boots>, [
[<ore:plateDiamond>, null, <ore:plateDiamond>], 
[<ore:plateDiamond>, hammer, <ore:plateDiamond>]
]);


print("Initialized 'Minecraft'");