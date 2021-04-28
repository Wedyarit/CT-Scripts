#priority 1
# Minecraft

import crafttweaker.item.IItemStack;

print("Initializing 'Minecraft'...");


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Рельсы    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Рельсы
recipes.remove(<minecraft:rail>); 
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:19033> * 2, <gregtech:meta_item_2:19196> * 2, <gregtech:meta_item_2:19184> * 2, <ore:slabWood> * 4)
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
    .inputs(<gregtech:meta_item_1:19237> * 8, <gregtech:meta_item_2:19189> * 2, <gregtech:meta_item_2:19184> * 2, <gregtech:meta_item_2:19033> * 2, <gregtech:cable:237> * 3, <ore:slabWood> * 4)
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
var tools = [<minecraft:wooden_shovel>, <minecraft:wooden_pickaxe>, <minecraft:wooden_axe>, <minecraft:golden_shovel>, <minecraft:golden_pickaxe>, <minecraft:golden_axe>, <minecraft:wooden_hoe>, <minecraft:golden_hoe>, <minecraft:wooden_sword>, <minecraft:golden_sword>] as IItemStack[];
for tool in tools {
    mods.jei.JEI.removeAndHide(tool);
	  tool.addTooltip("§cВ данной сборке этот предмет выключен");
}

var d_tools = [<minecraft:diamond_sword>, <minecraft:diamond_pickaxe>, <minecraft:diamond_axe>, <minecraft:diamond_shovel>, <minecraft:diamond_hoe>, <minecraft:iron_sword>, <minecraft:iron_pickaxe>, <minecraft:iron_axe>, <minecraft:iron_shovel>, <minecraft:iron_hoe>] as IItemStack[];
for d_tool in d_tools {
    recipes.remove(d_tool); 
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

// Хлеб из муки GregTech
furnace.addRecipe(<minecraft:bread>, <gregtech:meta_item_1:2345>);

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

// Жемчуг эндера
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:15209>, <forestry:crafting_material:1> * 3)
    .outputs(<minecraft:ender_pearl>)
    .duration(5 * 20)
    .EUt(256)
    .buildAndRegister();

// Редстоуновый фонарь
recipes.remove(<minecraft:redstone_lamp>);
assembler.findRecipe(1, [<minecraft:glowstone_dust> * 4, <minecraft:redstone> * 4], null).remove();
assembler.recipeBuilder()
    .inputs(<minecraft:glowstone>, <gregtech:meta_item_1:12215> * 6)
    .outputs(<minecraft:redstone_lamp>)
    .duration(20 * 20)
    .EUt(1)
    .buildAndRegister();

// Яйцо дракона
recipes.remove(<minecraft:dragon_egg>);
assembler.recipeBuilder()
    .inputs(<minecraft:nether_star>, <gregtech:meta_item_1:32724>, <gtadditions:ga_meta_item:32018> * 16, <appliedenergistics2:material:8> * 16, <gregtech:meta_item_1:19074> * 16)
    .fluidInputs([<liquid:uumatter> * 500])
    .outputs(<minecraft:dragon_egg>)
    .duration(360 * 20)
    .EUt(512)
    .buildAndRegister();

// Слеза гаста
recipes.remove(<minecraft:ghast_tear>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2050> * 8, <ore:gunpowder> * 8, <gregtech:meta_item_1:2331>)
    .fluidInputs([<liquid:uumatter> * 32])
    .outputs(<minecraft:ghast_tear> * 8)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Кристалл энда
recipes.remove(<minecraft:end_crystal>);
assembler.recipeBuilder()
    .inputs(<ore:paneGlass> * 16, <gregtech:meta_item_1:12214> * 6, <minecraft:ender_eye>, <minecraft:ghast_tear>)
    .outputs(<minecraft:end_crystal>)
    .duration(15 * 20)
    .EUt(128)
    .buildAndRegister();

// Воронка
recipes.remove(<minecraft:hopper>);
recipes.addShaped("minecraft_hopper", <minecraft:hopper>,
 [[<gregtech:meta_item_1:12033>, wrench, <gregtech:meta_item_1:12033>],
  [<gregtech:meta_item_1:12033>, <ore:chest>, <gregtech:meta_item_1:12033>],
  [null, <gregtech:meta_item_1:12033>, null]]);

// Сундук
recipes.remove(<minecraft:chest>);
recipes.addShaped("minecraft_chest", <minecraft:chest>,
 [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
  [<ore:plankWood>, null, <ore:plankWood>],
  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

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