#priority 1
# Extra Utilities 2

import crafttweaker.item.IItemStack;

print("Initializing 'ExtraUtilities'...");


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Удаление предметов  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Запрещенные и ненужные предметы
var items = [<extrautils2:powermanager>, <extrautils2:wateringcan>, <extrautils2:suncrystal>, <extrautils2:snowglobe>, <extrautils2:interactionproxy>, <extrautils2:biomemarker>, <extrautils2:boomerang>, <extrautils2:unstableingots>, <extrautils2:indexer>, <extrautils2:resonator>, <extrautils2:powerbattery>, <extrautils2:crafter>, <extrautils2:playerchest>, <extrautils2:analogcrafter>, <extrautils2:powertransmitter>, <extrautils2:machine>, <extrautils2:goldenlasso>, <extrautils2:chickenring>, <extrautils2:luxsaber>] as IItemStack[];
for item in items {
    for subItem in item.definition.subItems {
        mods.jei.JEI.removeAndHide(subItem);
	    subItem.addTooltip("§cВ данной сборке этот предмет выключен");
    }
}
mods.jei.JEI.removeAndHide(<extrautils2:passivegenerator:7>);
<extrautils2:passivegenerator:7>.addTooltip("§cВ данной сборке этот предмет выключен");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


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
  [<gtadditions:ga_meta_item:32>, <gregtech:meta_item_1:12183>, <gtadditions:ga_meta_item:32>]]);
  
// Укрепленная бочка
recipes.remove(<extrautils2:drum:2>);
recipes.addShaped("extrautils2_fortified_barrel", <extrautils2:drum:2>,
 [[<gtadditions:ga_meta_item:32>, <gregtech:meta_item_1:12228>, <gtadditions:ga_meta_item:32>],
  [<gtadditions:ga_meta_item:207>, <extrautils2:drum:1>, <gtadditions:ga_meta_item:207>],
  [<gtadditions:ga_meta_item:32>, <gregtech:meta_item_1:12228>, <gtadditions:ga_meta_item:32>]]);
  
// Демоническая бочка
recipes.remove(<extrautils2:drum:3>);
recipes.addShaped("extrautils2_demonic_barrel", <extrautils2:drum:3>,
 [[<gtadditions:ga_meta_item:22>, <extrautils2:klein>, <gtadditions:ga_meta_item:22>],
  [<gtadditions:ga_meta_item:52>, <extrautils2:drum:2>, <gtadditions:ga_meta_item:52>],
  [<gtadditions:ga_meta_item:22>, <extrautils2:klein>, <gtadditions:ga_meta_item:22>]]);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Шипы  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Деревянный шип
recipes.remove(<extrautils2:spike_wood>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12196> * 5, <gregtech:meta_item_1:14033> * 8, <gregtech:meta_item_1:17033> * 12, <gregtech:meta_item_1:18033>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<extrautils2:spike_wood>)
    .duration(15 * 20)
    .EUt(48)
    .buildAndRegister();

// Каменный шип
recipes.remove(<extrautils2:spike_stone>);
assembler.recipeBuilder()
    .inputs(<extrautils2:spike_wood>, <gregtech:meta_item_1:17033> * 12, <gregtech:meta_item_1:12328> * 5)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<extrautils2:spike_stone>)
    .duration(15 * 20)
    .EUt(48)
    .buildAndRegister();

// Золотой шип
recipes.remove(<extrautils2:spike_gold>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17184> * 12, <gregtech:meta_item_1:12026> * 5, <extrautils2:spike_stone>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<extrautils2:spike_gold>)
    .duration(15 * 20)
    .EUt(48)
    .buildAndRegister();

// Железный шип
recipes.remove(<extrautils2:spike_iron>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17072> * 12, <gregtech:meta_item_1:12033> * 5, <extrautils2:spike_gold>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<extrautils2:spike_iron>)
    .duration(15 * 20)
    .EUt(48)
    .buildAndRegister();

// Алмазный шип
recipes.remove(<extrautils2:spike_diamond>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17235> * 12, <gregtech:meta_item_1:12111> * 5, <extrautils2:spike_iron>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<extrautils2:spike_diamond>)
    .duration(15 * 20)
    .EUt(48)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Ангельские кольца  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Обычное кольцо из других
recipes.removeByRecipeName("extrautils2:angel_ring_convert_0");

// Ангельское кольцо (Белые крылья)
recipes.remove(<extrautils2:angelring:1>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:18072>, <gregtech:meta_item_1:2331>, <forestry:crafting_material:1> * 2, <gregtech:meta_item_1:19228> * 4, <forestry:crafting_material:3> * 8, <minecraft:feather> * 16, <minecraft:string> * 32)
    .fluidInputs([<liquid:uumatter> * 100])
    .outputs(<extrautils2:angelring:1>)
    .duration(1500 * 20)
    .EUt(128)
    .buildAndRegister();

// Ангельское кольцо (Розовые крылья)
recipes.remove(<extrautils2:angelring:2>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:18072>, <gregtech:meta_item_1:2331>, <forestry:crafting_material:1> * 2, <gregtech:meta_item_1:19228> * 4, <gregtech:meta_item_2:32504> * 16, <forestry:crafting_material:3> * 16, <gregtech:meta_item_1:32442>)
    .fluidInputs([<liquid:uumatter> * 100])
    .outputs(<extrautils2:angelring:2>)
    .duration(1500 * 20)
    .EUt(128)
    .buildAndRegister();

// Ангельское кольцо (Бордовые крылья)
recipes.remove(<extrautils2:angelring:3>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:18072>, <gregtech:meta_item_1:2331>, <forestry:crafting_material:1> * 2, <gregtech:meta_item_1:19228> * 4, <gregtech:meta_item_2:32504> * 16, <minecraft:leather> * 24, <gregtech:meta_item_1:32458>)
    .fluidInputs([<liquid:uumatter> * 100])
    .outputs(<extrautils2:angelring:3>)
    .duration(1500 * 20)
    .EUt(128)
    .buildAndRegister();

// Ангельское кольцо (Золотые крылья)
recipes.remove(<extrautils2:angelring:4>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:18072>, <gregtech:meta_item_1:2331>, <forestry:crafting_material:1> * 2, <gregtech:meta_item_1:19228> * 4, <minecraft:blaze_rod> * 4, <gregtech:meta_item_1:12228> * 4, <gregtech:meta_item_1:14228> * 8)
    .fluidInputs([<liquid:uumatter> * 100])
    .outputs(<extrautils2:angelring:4>)
    .duration(1500 * 20)
    .EUt(128)
    .buildAndRegister();

// Ангельское кольцо (Черные крылья)
recipes.remove(<extrautils2:angelring:5>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:18072>, <gregtech:meta_item_1:2331>, <forestry:crafting_material:1> * 2, <gregtech:meta_item_1:19228> * 4, <gregtech:meta_item_2:32504> * 16, <minecraft:leather> * 24, <gregtech:meta_item_1:32460>)
    .fluidInputs([<liquid:uumatter> * 100])
    .outputs(<extrautils2:angelring:5>)
    .duration(1500 * 20)
    .EUt(128)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Улучшения  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Улучшение основа
recipes.remove(<extrautils2:ingredients:9>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12215> * 2, <gregtech:meta_item_1:12154>)
    .outputs(<extrautils2:ingredients:9>)
    .duration(20 * 20)
    .EUt(32)
    .buildAndRegister();

// Улучшение добыча
recipes.remove(<extrautils2:ingredients:8>);
assembler.recipeBuilder()
    .inputs(<extrautils2:ingredients:9>, <gregtech:meta_item_1:14026> * 2, <gregtech:meta_item_1:19026> * 2)
    .outputs(<extrautils2:ingredients:8>)
    .duration(20 * 20)
    .EUt(32)
    .buildAndRegister();

// Улучшение стак
recipes.remove(<extrautils2:ingredients:7>);
assembler.recipeBuilder()
    .inputs(<extrautils2:ingredients:9>, <gregtech:meta_item_1:14111> * 2, <gregtech:meta_item_1:19026> * 2)
    .outputs(<extrautils2:ingredients:7>)
    .duration(20 * 20)
    .EUt(32)
    .buildAndRegister();

// Улучшение скорость
recipes.remove(<extrautils2:ingredients:6>);
assembler.recipeBuilder()
    .inputs(<extrautils2:ingredients:9>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:19112> * 4)
    .outputs(<extrautils2:ingredients:6>)
    .duration(20 * 20)
    .EUt(32)
    .buildAndRegister();

// Улучшение скорость (Магическое)
recipes.remove(<extrautils2:ingredients:15>);
assembler.recipeBuilder()
    .inputs(<extrautils2:ingredients:6>, <extrautils2:ingredients:12> * 4, <gregtech:meta_item_1:19228> * 4)
    .outputs(<extrautils2:ingredients:15>)
    .duration(20 * 20)
    .EUt(32)
    .buildAndRegister();

// Улучшение скорость (Максимальное)
recipes.remove(<extrautils2:ingredients:16>);
assembler.recipeBuilder()
    .inputs(<extrautils2:ingredients:15>, <gregtech:meta_item_1:12331>, <gregtech:meta_item_1:19074> * 4)
    .outputs(<extrautils2:ingredients:16>)
    .duration(20 * 20)
    .EUt(32)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Трубы и узлы  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Транспортный фильтр
recipes.remove(<extrautils2:grocket:1>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32506> * 2, <gregtech:meta_item_1:12215> * 2, <extrautils2:filter>)
    .outputs(<extrautils2:grocket:1>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Транспортный узел (предметы)
recipes.remove(<extrautils2:grocket>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32506> * 4, <gregtech:meta_item_1:12145> * 2, <gregtech:meta_item_1:32630>)
    .outputs(<extrautils2:grocket>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Транспортный узел (жидкости)
recipes.remove(<extrautils2:grocket:2>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32506> * 4, <gregtech:meta_item_1:12145> * 2, <gregtech:meta_item_1:32610>)
    .outputs(<extrautils2:grocket:2>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Поисковой узел (предметы)
recipes.remove(<extrautils2:grocket:3>);
assembler.recipeBuilder()
    .inputs(<extrautils2:grocket>, <forestry:crafting_material:1>, <gregtech:meta_item_1:12113>)
    .outputs(<extrautils2:grocket:3>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Труба перемещения фильтр
recipes.remove(<extrautils2:grocket:5>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32506> * 2, <extrautils2:ingredients:9>, <extrautils2:filter>)
    .outputs(<extrautils2:grocket:5>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Поисковой узел (жидкости)
recipes.remove(<extrautils2:grocket:4>);
assembler.recipeBuilder()
    .inputs(<extrautils2:grocket:2>, <forestry:crafting_material:1>, <gregtech:meta_item_1:12216>)
    .outputs(<extrautils2:grocket:4>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Узел перемещения (энергия)
recipes.remove(<extrautils2:grocket:6>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32506> * 4, <gregtech:meta_item_1:12145> * 2, <gregtech:meta_item_1:32630>, <gregtech:cable:354> * 4, <gregtech:meta_item_1:19228> * 4)
    .outputs(<extrautils2:grocket:6>)
    .duration(25 * 20)
    .EUt(32)
    .buildAndRegister();

// Транспортная труба
recipes.remove(<extrautils2:pipe>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12141> * 2, <gregtech:meta_item_1:12145> * 2, <gregtech:meta_item_1:12144> * 2)
    .outputs(<extrautils2:pipe>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Серпы  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Каменный серп
recipes.remove(<extrautils2:sickle_stone>);
recipes.addShaped("extrautils2_sickle_stone", <extrautils2:sickle_stone>,
 [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
  [null, null, <ore:cobblestone>],
  [<forestry:oak_stick>, <ore:cobblestone>, <ore:cobblestone>]]);

// Золотой серп
recipes.remove(<extrautils2:sickle_gold>);
recipes.addShaped("extrautils2_sickle_gold", <extrautils2:sickle_gold>,
 [[<gregtech:meta_item_1:14026>, <gregtech:meta_item_1:14026>, <gregtech:meta_item_1:14026>],
  [null, null, <gregtech:meta_item_1:14026>],
  [<forestry:oak_stick>, <gregtech:meta_item_1:14026>, <gregtech:meta_item_1:14026>]]);

// Железный серп
recipes.remove(<extrautils2:sickle_iron>);
recipes.addShaped("extrautils2_sickle_iron", <extrautils2:sickle_iron>,
 [[<gregtech:meta_item_1:14033>, <gregtech:meta_item_1:14033>, <gregtech:meta_item_1:14033>],
  [null, null, <gregtech:meta_item_1:14033>],
  [<forestry:oak_stick>, <gregtech:meta_item_1:14033>, <gregtech:meta_item_1:14033>]]);

// Алмазный серп
recipes.remove(<extrautils2:sickle_diamond>);
recipes.addShaped("extrautils2_sickle_diamond", <extrautils2:sickle_diamond>,
 [[<gregtech:meta_item_1:14111>, <gregtech:meta_item_1:14111>, <gregtech:meta_item_1:14111>],
  [null, null, <gregtech:meta_item_1:14111>],
  [<forestry:oak_stick>, <gregtech:meta_item_1:14111>, <gregtech:meta_item_1:14111>]]);


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Мельницы  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Солнечная панель
recipes.remove(<extrautils2:passivegenerator>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:smooth_sky_stone_slab>, <gregtech:cable:18> * 4, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:32752>, <gregtech:meta_item_1:12092>)
    .outputs(<extrautils2:passivegenerator>)
    .duration(15 * 20)
    .EUt(128)
    .buildAndRegister();

// Лунарная солнечная панель
recipes.remove(<extrautils2:passivegenerator:1>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:smooth_sky_stone_slab>, <gregtech:cable:18> * 4, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:32752>, <gregtech:meta_item_1:12214>)
    .outputs(<extrautils2:passivegenerator:1>)
    .duration(15 * 20)
    .EUt(128)
    .buildAndRegister();

// Лавовая мельница 
recipes.remove(<extrautils2:passivegenerator:2>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:14184> * 24, <gregtech:meta_item_1:12001> * 6, <gregtech:meta_item_1:12145> * 12, <gregtech:meta_item_1:12062> * 6, <extrautils2:klein>, <gregtech:meta_item_1:32601>, <gregtech:meta_item_1:19016> * 8)
    .outputs(<extrautils2:passivegenerator:2>)
    .duration(60 * 20)
    .EUt(128)
    .buildAndRegister();

// Водяная мельница 
recipes.remove(<extrautils2:passivegenerator:3>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:14184> * 24, <gregtech:meta_item_1:12001> * 6, <gregtech:meta_item_1:12145> * 12, <gregtech:meta_item_2:18184> * 4, <gregtech:meta_item_1:32601> * 4, <gregtech:meta_item_1:19001> * 2)
    .outputs(<extrautils2:passivegenerator:3>)
    .duration(60 * 20)
    .EUt(128)
    .buildAndRegister();

// Ветрянная мельница
recipes.remove(<extrautils2:passivegenerator:4>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:14184> * 16, <gregtech:meta_item_1:14001> * 4, <gregtech:meta_item_1:12001> * 4, <gregtech:meta_item_1:12145> * 8, <gregtech:meta_item_2:18184>, <gregtech:meta_item_1:32601>, <gregtech:meta_item_1:19112> * 8)
    .outputs(<extrautils2:passivegenerator:4>)
    .duration(60 * 20)
    .EUt(128)
    .buildAndRegister();

// Огненная мельница
recipes.remove(<extrautils2:passivegenerator:5>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:14184> * 16, <gregtech:meta_item_1:14001> * 4, <gregtech:meta_item_1:12001> * 4, <gregtech:meta_item_1:12145> * 8, <gregtech:meta_item_2:18184>, <gregtech:meta_item_1:32601>, <gregtech:meta_item_1:19087> * 16)
    .outputs(<extrautils2:passivegenerator:5>)
    .duration(60 * 20)
    .EUt(128)
    .buildAndRegister();

// Мельница драконьева яйца 
recipes.remove(<extrautils2:passivegenerator:8>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine:493>, <gregtech:meta_item_1:12145> * 6, <gregtech:meta_item_1:19184> * 48, <gregtech:meta_item_1:19032> * 8, <gregtech:meta_item_1:19072> * 8)
    .outputs(<extrautils2:passivegenerator:8>)
    .duration(180 * 20)
    .EUt(128)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


// Сумка удержания
recipes.remove(<extrautils2:bagofholding>);
assembler.recipeBuilder()
    .inputs(<forestry:crafting_material:3> * 16, <minecraft:leather> * 16, <gregtech:meta_item_1:19228> * 16, <gregtech:meta_item_2:32504> * 8, <minecraft:string> * 8)
    .fluidInputs([<liquid:glue> * 2000])
    .outputs(<extrautils2:bagofholding>)
    .duration(350 * 20)
    .EUt(32)
    .buildAndRegister();

// Зачарованный слиток
recipes.remove(<extrautils2:ingredients:12>);
chemical_reactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10228>, <minecraft:dye:4>)
    .fluidInputs([<liquid:glowstone> * 250])
    .outputs(<extrautils2:ingredients:12>)
    .duration(60 * 20)
    .EUt(32)
    .buildAndRegister();

// Жидкостный фильтр
recipes.remove(<extrautils2:filterfluids>);
assembler.recipeBuilder()
    .inputs(<ore:stickWood> * 4, <gregtech:meta_item_1:12128> * 4, <forestry:crafting_material:3>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<extrautils2:filterfluids>)
    .duration(5 * 20)
    .EUt(20)
    .buildAndRegister();

// Фильтр
recipes.remove(<extrautils2:filter>);
assembler.recipeBuilder()
    .inputs(<ore:stickWood> * 4, <gregtech:meta_item_1:12215> * 4, <forestry:crafting_material:3>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<extrautils2:filter>)
    .duration(5 * 20)
    .EUt(20)
    .buildAndRegister();

// Жезл строителя
recipes.remove(<extrautils2:itembuilderswand>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32694>, <gregtech:meta_item_1:32674>, <forestry:crafting_material:1>, <gregtech:cable:51> * 8, <gregtech:meta_item_1:19228> * 2, <forestry:oak_stick>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<extrautils2:itembuilderswand>)
    .duration(15 * 20)
    .EUt(8192)
    .buildAndRegister();

// Жезл разрушения
recipes.remove(<extrautils2:itemdestructionwand>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32684>, <gregtech:meta_item_1:32674>, <forestry:crafting_material:1>, <gregtech:cable:51> * 8, <gregtech:meta_item_1:19228> * 2, <forestry:oak_stick>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<extrautils2:itemdestructionwand>)
    .duration(15 * 20)
    .EUt(8192)
    .buildAndRegister();

// Эндер лилия
blast_furnace.recipeBuilder()
    .inputs(<appliedenergistics2:material:10>, <forestry:crafting_material:1> * 5)
    .fluidInputs([<liquid:helium> * 7000])
    .outputs(<extrautils2:enderlilly>)
    .property("temperature", 3000)
    .duration(300 * 20)
    .EUt(480)
    .buildAndRegister();

// Красная орхидея
blast_furnace.recipeBuilder()
    .inputs(<appliedenergistics2:material:10>, <gregtech:meta_item_1:12215> * 5)
    .fluidInputs([<liquid:argon> * 3000])
    .outputs(<extrautils2:redorchid>)
    .property("temperature", 1000)
    .duration(30 * 20)
    .EUt(120)
    .buildAndRegister();

// Бутылка Кляйна
recipes.remove(<extrautils2:klein>);
recipes.addShaped("extrautils2_klein", <extrautils2:klein>,
 [[<gregtech:meta_item_2:32454>, <minecraft:ender_pearl>, <gregtech:meta_item_2:32454>],
  [<minecraft:ender_pearl>, <minecraft:glass_bottle>, <minecraft:ender_pearl>],
  [<gregtech:meta_item_2:32454>, <minecraft:ender_pearl>, <gregtech:meta_item_2:32454>]]);

// Экран
recipes.remove(<extrautils2:screen>);
assembler.recipeBuilder()
    .inputs(<gregtech:cable:18> * 4, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:32691>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12237>, <gregtech:meta_item_1:12061>, <gregtech:meta_item_1:12330>, <gregtech:meta_item_1:12209>)
    .outputs(<extrautils2:screen>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();


print("Initialized 'ExtraUtilities'");