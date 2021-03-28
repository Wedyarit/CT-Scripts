#priority 1
# Genetics

import mods.forestry.Carpenter;

print("Initializing 'Genetics'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Базы данных    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// База данных ботаники
Carpenter.removeRecipe(<botany:database>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12228>, <ore:paneGlass>, <gregtech:meta_item_1:12228>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12129>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:12095>)
    .outputs(<botany:database>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// База данных арбористов
Carpenter.removeRecipe(<extratrees:databasetree>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12095>, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12109>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12228>, <ore:paneGlass>, <gregtech:meta_item_1:12228>)
    .outputs(<extratrees:databasetree>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// База данных пчеловода
Carpenter.removeRecipe(<extrabees:dictionary>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12095>, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12113>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12228>, <ore:paneGlass>, <gregtech:meta_item_1:12228>)
    .outputs(<extrabees:dictionary>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// База данных лепидоптериста
Carpenter.removeRecipe(<extratrees:databaselepi>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12095>, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12228>, <ore:paneGlass>, <gregtech:meta_item_1:12228>)
    .outputs(<extratrees:databaselepi>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// База генов
Carpenter.removeRecipe(<genetics:geneticdatabase>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12111>, <ore:paneGlass>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12219>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_2:32491>, <gregtech:meta_item_1:12111>)
    .outputs(<genetics:geneticdatabase>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Разное  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Аналитик
recipes.remove(<genetics:analyst>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <genetics:misc:8>, <forestry:portable_alyzer>, <genetics:misc:8>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>)
    .outputs(<genetics:analyst>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();
    
// Усиленный корпус
recipes.remove(<genetics:misc>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <forestry:hardened_machine>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>)
    .outputs(<genetics:misc>)
    .duration(10 * 20)
    .EUt(256)
    .buildAndRegister();

// Флуоресцентный краситель
recipes.remove(<genetics:misc:1>);
recipes.addShaped("genetics_fluorescent_dye", <genetics:misc:1> * 8,
 [[<minecraft:dye:9>, <gregtech:meta_item_1:2050>, <minecraft:dye:9>],
  [<minecraft:dye:5>, <gregtech:meta_item_1:31>, <gregtech:meta_item_1:3214>],
  [<minecraft:dye:9>, <minecraft:glowstone_dust>, <minecraft:dye:9>]]);

// Краситель ДНК
recipes.remove(<genetics:misc:2>);
recipes.addShaped("genetics_dna_dye", <genetics:misc:2> * 8,
 [[<minecraft:dye:11>, <gregtech:meta_item_1:2050>, <minecraft:dye:11>],
  [<minecraft:dye:14>, <minecraft:blaze_powder>, <gregtech:meta_item_1:2087>],
  [<minecraft:dye:11>, <minecraft:glowstone_dust>, <minecraft:dye:11>]]);

// Пустая последовательность
recipes.remove(<genetics:misc:5>);
assembler.recipeBuilder()
    .inputs(<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:15209>, <gregtech:meta_item_1:12112>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>)
    .outputs(<genetics:misc:5>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Пустая последовательность
recipes.remove(<genetics:misc:6>);
assembler.recipeBuilder()
    .inputs(<ore:paneGlass>, <gregtech:meta_item_1:12112>, <ore:paneGlass>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:15209>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12112>, <gregtech:meta_item_1:15209>, <gregtech:meta_item_1:12112>)
    .outputs(<genetics:misc:6>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Интегральная плата
recipes.remove(<genetics:misc:8>);
assembler.recipeBuilder()
    .inputs(<forestry:thermionic_tubes:11>, <gregtech:meta_item_2:32491>, <forestry:thermionic_tubes:4>, <forestry:chipsets:1>.withTag({T: 1 as short}), <forestry:chipsets:3>.withTag({T: 3 as short}), <forestry:chipsets:1>.withTag({T: 1 as short}), <forestry:thermionic_tubes:4>, <gregtech:meta_item_2:32491>, <forestry:thermionic_tubes:11>)
    .outputs(<genetics:misc:8>)
    .duration(10 * 20)
    .EUt(1024)
    .buildAndRegister();

// Интегральное ЦПУ
recipes.remove(<genetics:misc:9>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12051>, <gregtech:meta_item_2:32493>, <gregtech:meta_item_1:12051>, <gregtech:meta_item_2:32493>, <forestry:crafting_material:1>, <gregtech:meta_item_2:32493>, <gregtech:meta_item_1:12051>, <gregtech:meta_item_2:32493>, <gregtech:meta_item_1:12051>)
    .outputs(<genetics:misc:9>)
    .duration(25 * 20)
    .EUt(2048)
    .buildAndRegister();


// Интегральеный корпус
recipes.remove(<genetics:misc:10>);
assembler.recipeBuilder()
    .inputs(<genetics:misc:9>, <gregtech:meta_item_1:12051>, <genetics:misc:9>, <gregtech:meta_item_1:12051>, <genetics:misc>, <gregtech:meta_item_1:12051>, <genetics:misc:9>, <gregtech:meta_item_1:12051>, <genetics:misc:9>)
    .outputs(<genetics:misc:10>)
    .duration(30 * 20)
    .EUt(2048)
    .buildAndRegister();

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Машины  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Изолятор
recipes.remove(<genetics:machine>);
recipes.addShaped("genetics_insulator", <genetics:machine>,
 [[<gregtech:meta_item_1:12051>, <gregtech:meta_item_1:15111>, <gregtech:meta_item_1:12051>],
  [<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
  [<gregtech:meta_item_1:12051>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12051>]]);

// Секвенсор
recipes.remove(<genetics:machine:1>);
recipes.addShaped("genetics_sequencer", <genetics:machine:1>,
 [[<gregtech:meta_item_1:32692>, <forestry:crafting_material:1>, <gregtech:meta_item_1:32692>],
  [<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
  [<genetics:misc:2>, <gregtech:meta_item_1:12219>, <genetics:misc:2>]]);

// Полимеризатор
recipes.remove(<genetics:machine:2>);
recipes.addShaped("genetics_polymerizer", <genetics:machine:2>,
 [[<gregtech:meta_item_1:12051>, <genetics:misc:8>, <gregtech:meta_item_1:12051>],
  [<gregtech:meta_item_1:32612>, <genetics:misc>, <gregtech:meta_item_1:32692>],
  [<gregtech:meta_item_1:12051>, <genetics:misc:8>, <gregtech:meta_item_1:12051>]]);

// Инокулятор
recipes.remove(<genetics:machine:3>);
recipes.addShaped("genetics_inoculator", <genetics:machine:3>,
 [[<gregtech:meta_item_1:12051>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12051>],
  [<gregtech:meta_item_1:32612>, <genetics:misc>, <gregtech:meta_item_1:32692>],
  [<gregtech:meta_item_1:12113>, <genetics:misc:8>, <gregtech:meta_item_1:12113>]]);

// Лабораторный стенд
recipes.remove(<genetics:lab_machine>);
recipes.addShaped("genetics_laboratory_stand", <genetics:lab_machine>,
 [[<gregtech:meta_item_1:12111>, <ore:paneGlass>, <gregtech:meta_item_1:12111>],
  [<ore:paneGlass>, <genetics:misc>, <ore:paneGlass>],
  [<gregtech:meta_item_1:12111>, <ore:paneGlass>, <gregtech:meta_item_1:12111>]]);

// Анализатор
recipes.remove(<genetics:lab_machine:1>);
recipes.addShaped("genetics_analyzer", <genetics:lab_machine:1>,
 [[<ore:paneGlass>, <genetics:analyst>, <ore:paneGlass>],
  [<gregtech:meta_item_2:32491>, <genetics:misc>, <gregtech:meta_item_2:32491>],
  [<genetics:misc:1>, <gregtech:meta_item_1:32692>, <genetics:misc:1>]]);

// Инкубатора
recipes.remove(<genetics:lab_machine:2>);
recipes.addShaped("genetics_incubator", <genetics:lab_machine:2>,
 [[<ore:paneGlass>, <gregtech:wire_coil>, <ore:paneGlass>],
  [<gregtech:meta_item_2:32491>, <genetics:misc>, <gregtech:meta_item_2:32491>],
  [<gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:32612>]]);

// Генофонд
recipes.remove(<genetics:lab_machine:3>);
recipes.addShaped("genetics_gene_pool", <genetics:lab_machine:3>,
 [[<ore:paneGlass>, <gregtech:meta_item_1:32692>, <ore:paneGlass>],
  [<gregtech:meta_item_2:32491>, <genetics:misc>, <gregtech:meta_item_2:32491>],
  [<gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32612>]]);

// Акклиматизатор
recipes.remove(<genetics:lab_machine:4>);
recipes.addShaped("genetics_acclimatizer", <genetics:lab_machine:4>,
 [[<ore:paneGlass>, <gregtech:wire_coil>, <ore:paneGlass>],
  [<gregtech:meta_item_2:32491>, <genetics:misc>, <gregtech:meta_item_2:32491>],
  [<forge:bucketfilled>.withTag({FluidName: "ice", Amount: 1000}), <extrautils2:klein>, <forge:bucketfilled>.withTag({FluidName: "ice", Amount: 1000})]]);

// Cплайсер
recipes.remove(<genetics:adv_machine>);
recipes.addShaped("genetics_splicer", <genetics:adv_machine>,
 [[<gregtech:meta_item_1:12051>, <gregtech:meta_item_1:32693>, <gregtech:meta_item_1:12051>],
  [<genetics:misc:9>, <genetics:misc:10>, <genetics:misc:9>],
  [<gregtech:meta_item_1:12051>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12051>]]);
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

print("Initialized 'Genetics'");