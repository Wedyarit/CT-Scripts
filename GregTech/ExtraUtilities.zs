# DragonsRadio

print("Initializing 'DragonsRadio-0.1'...");

// ------ // Удаление предметов // ------ //
// Запрещенные предметы
var items = [<extrautils2:bagofholding>, <extrautils2:goldenlasso>, <extrautils2:goldenlasso:1>, <extrautils2:chickenring>, <extrautils2:chickenring:1>, <extrautils2:angelring>, <extrautils2:angelring:1>m <extrautils2:angelring:2>, <extrautils2:angelring:3>, <extrautils2:angelring:4>, <extrautils2:angelring:5>] as IItemStack[];
for item in items {
    recipes.remove(titemool);
	item.addTooltip("§4§lВ данной сборке этот предмет выключен");
}

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Мусорные баки  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Мусорка (Предметы)
recipes.remove(<extrautils2:trashcan>);
recipes.addShaped("extrautils2:trashcan", <extrautils2:trashcan>,
 [[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, <minecraft:lava_bucket>, <gregtech:meta_item_1:12184>]]);

// Мусорка (Жидкости)
recipes.remove(<extrautils2:trashcanfluid>);
recipes.addShaped("extrautils2:trashcanfluid", <extrautils2:trashcanfluid>,
 [[<gregtech:meta_item_1:12233>, <gregtech:meta_item_1:12233>, <gregtech:meta_item_1:12233>],
  [<gregtech:meta_item_1:12233>, <minecraft:bucket>, <gregtech:meta_item_1:12233>],
  [<gregtech:meta_item_1:12233>, <extrautils2:klein>, <gregtech:meta_item_1:12233>]]);

// Мусорка (Энергия)
recipes.remove(<extrautils2:trashcanenergy>);
recipes.addShaped("extrautils2:trashcanenergy", <extrautils2:trashcanenergy>,
 [[<gregtech:meta_item_1:12232>, <gregtech:meta_item_1:12232>, <gregtech:meta_item_1:12232>],
  [<gregtech:meta_item_1:12232>, <gregtech:cable:8237>, <gregtech:meta_item_1:12232>],
  [<gregtech:meta_item_1:12232>, <minecraft:redstone_block>, <gregtech:meta_item_1:12232>]]);

// Мусорный ящик 
recipes.remove(<extrautils2:trashchest>);
recipes.addShaped("extrautils2:trashchest", <extrautils2:trashcanenergy>,
 [[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, <minecraft:chest>, <gregtech:meta_item_1:12184>],
  [<gregtech:meta_item_1:12184>, <extrautils2:trashcan>, <gregtech:meta_item_1:12184>]]);

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

// Бутылка Кляйна
recipes.remove(<extrautils2:klein>);
recipes.addShaped("extrautils2:klein", <extrautils2:klein>,
 [[<gregtech:meta_item_2:32454>, <minecraft:ender_pearl>, <gregtech:meta_item_2:32454>],
  [<minecraft:ender_pearl>, <minecraft:glass_bottle>, <minecraft:ender_pearl>],
  [<gregtech:meta_item_2:32454>, <minecraft:ender_pearl>, <gregtech:meta_item_2:32454>]]);


print("Initialized 'DragonsRadio-server-0.1'");