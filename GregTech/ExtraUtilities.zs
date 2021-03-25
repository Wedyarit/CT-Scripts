# Extra Utilities 2

import crafttweaker.item.IItemStack;

print("Initializing 'ExtraUtilities'...");

// ------ // Удаление предметов // ------ //
// Запрещенные предметы
var items = [<extrautils2:bagofholding>, <extrautils2:goldenlasso>, <extrautils2:goldenlasso:1>, <extrautils2:chickenring>, <extrautils2:chickenring:1>, <extrautils2:angelring>, <extrautils2:angelring:1>, <extrautils2:angelring:2>, <extrautils2:angelring:3>, <extrautils2:angelring:4>, <extrautils2:angelring:5>] as IItemStack[];
for item in items {
    recipes.remove(item);
	item.addTooltip("§4§lВ данной сборке этот предмет выключен");
}

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Мусорные баки  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Мусорка (Предметы)
recipes.remove(<extrautils2:trashcan>);
recipes.addShaped("extrautils2_trashcan", <extrautils2:trashcan>,
 [[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, <minecraft:lava_bucket>, <gregtech:meta_item_1:12184>]]);

// Мусорка (Жидкости)
recipes.remove(<extrautils2:trashcanfluid>);
recipes.addShaped("extrautils2_trashcanfluid", <extrautils2:trashcanfluid>,
 [[<gregtech:meta_item_1:12233>, <gregtech:meta_item_1:12233>, <gregtech:meta_item_1:12233>],
  [<gregtech:meta_item_1:12233>, <minecraft:bucket>, <gregtech:meta_item_1:12233>],
  [<gregtech:meta_item_1:12233>, <extrautils2:klein>, <gregtech:meta_item_1:12233>]]);

// Мусорка (Энергия)
recipes.remove(<extrautils2:trashcanenergy>);
recipes.addShaped("extrautils2_trashcanenergy", <extrautils2:trashcanenergy>,
 [[<gregtech:meta_item_1:12232>, <gregtech:meta_item_1:12232>, <gregtech:meta_item_1:12232>],
  [<gregtech:meta_item_1:12232>, <gregtech:cable:8237>, <gregtech:meta_item_1:12232>],
  [<gregtech:meta_item_1:12232>, <minecraft:redstone_block>, <gregtech:meta_item_1:12232>]]);

// Мусорный ящик 
recipes.remove(<extrautils2:trashchest>);
recipes.addShaped("extrautils2_trashchest", <extrautils2:trashchest>,
 [[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, <minecraft:chest>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, <extrautils2:trashcan>, <gregtech:meta_item_1:12184>]]);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Бочки  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Каменная бочка
recipes.remove(<extrautils2:drum>);
recipes.addShaped("extrautils2_stone_barrel", <extrautils2:drum>,
 [[<gtadditions:ga_meta_item:33>, <minecraft:stone_slab>, <gtadditions:ga_meta_item:33>],
  [<gtadditions:ga_meta_item:231>, <minecraft:cauldron>, <gtadditions:ga_meta_item:231>],
  [<gtadditions:ga_meta_item:33>, <minecraft:stone_slab>, <gtadditions:ga_meta_item:33>]]);

// Железная бочка
recipes.remove(<extrautils2:drum:1>);
recipes.addShaped("extrautils2_iron_barrel", <extrautils2:drum:1>,
 [[<gtadditions:ga_meta_item:32>, <gregtech:meta_item_1:12183>, <gtadditions:ga_meta_item:32>],
  [<gtadditions:ga_meta_item:33>, <extrautils2:drum>, <gtadditions:ga_meta_item:33>],
  [<gtadditions:ga_meta_item:32>, <gregtech:meta_item_1:12183>, in<gtadditions:ga_meta_item:32>]]);
  
// Укрепленная бочка
recipes.remove(<extrautils2:drum:2>);
recipes.addShaped("extrautils2_fortified_barrel", <extrautils2:drum:2>,
 [[<gtadditions:ga_meta_item:32>, <gregtech:meta_item_1:12228>, <gtadditions:ga_meta_item:32>],
  [<gtadditions:ga_meta_item:207>, <extrautils2:drum:1, <gtadditions:ga_meta_item:207>],
  [<gtadditions:ga_meta_item:32>, <gregtech:meta_item_1:12228>, <gtadditions:ga_meta_item:32>]]);
  
// Демоническая бочка
recipes.remove(<extrautils2:drum:3>);
recipes.addShaped("extrautils2_demonic_barrel", <extrautils2:drum:3>,
 [[<gtadditions:ga_meta_item:22>, <extrautils2:klein>, <gtadditions:ga_meta_item:22>],
  [<gtadditions:ga_meta_item:52>, <extrautils2:drum:3>, <gtadditions:ga_meta_item:52>],
  [<gtadditions:ga_meta_item:22>, <extrautils2:klein>, <gtadditions:ga_meta_item:22>]]);

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Бутылка Кляйна
recipes.remove(<extrautils2:klein>);
recipes.addShaped("extrautils2_klein", <extrautils2:klein>,
 [[<gregtech:meta_item_2:32454>, <minecraft:ender_pearl>, <gregtech:meta_item_2:32454>],
  [<minecraft:ender_pearl>, <minecraft:glass_bottle>, <minecraft:ender_pearl>],
  [<gregtech:meta_item_2:32454>, <minecraft:ender_pearl>, <gregtech:meta_item_2:32454>]]);


print("Initialized 'ExtraUtilities'");