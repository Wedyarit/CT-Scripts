# Immersive Engineering

import crafttweaker.item.IItemStack;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Fermenter;

print("Initializing 'Immersive Engineering'...");


// ------ // Удаление предметов // ------ //
// Взаимозаменяемые предметы из IE
var tools = [<immersiveengineering:sword_steel>, <immersiveengineering:sword_steel>, <immersiveengineering:shovel_steel>, <immersiveengineering:axe_steel>, <immersiveengineering:hoe_steel>, <immersiveengineering:metal_device1:13>, <immersiveengineering:seed>, <immersiveengineering:material:4>] as IItemStack[];
for tool in tools {
    recipes.remove(tool);
	tool.addTooltip("§fПредмет заменен альтернативой из мода §e§lTFC");
}

// Предметы для NPC
var npcItems = [<immersiveengineering:drill>, <tfc:metal/ingot/beryllium>, <tfc:metal/ingot/manganese>, <tfc:metal/ingot/boron>]  as IItemStack[];
recipes.remove(<immersiveengineering:drill>);

for item in npcItems {
	item.addTooltip("§fПредмет можно получить у §e§lNPC на спавне");
}


// ------ // Замена предметов // ------ //
// Кирпичи
recipes.replaceAllOccurences(<ore:bricksStone>, <ore:stoneBrick>);
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:ingotWroughtIron>);

// Светокамень
recipes.replaceAllOccurences(<minecraft:glowstone>, <minecraft:torch>);
recipes.replaceAllOccurences(<minecraft:glowstone_dust>, <minecraft:torch>);

// Волокно промышленной конопли
recipes.replaceAllOccurences(<immersiveengineering:material:4>, <tfc:crop/product/jute_fiber>);

// Ведро воды
recipes.replaceAllOccurences(<minecraft:water_bucket>, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>));

// ------ Корректировка словарей руд // ------//
var ores = ["plate", "gear", "ingot", "dust", "rod"] as string[];
for ore in ores {
	var aluminumOre = oreDict[ore + "Aluminium"];
	aluminumOre.addAll(oreDict[ore + "Aluminum"]);

	var ironOre = oreDict[ore + "WroughtIron"];
	ironOre.addAll(oreDict[ore + "Iron"]);
}


// ------ // Корректировка обычных рецептов // ------ //
val hammer = <ore:hammer>.transformDamage(4);
val tongs = <tfctech:metal/iron_tongs>.reuse();
val hindle = <tfc:spindle>.reuse();

// Битум
recipes.addShapeless(<immersivepetroleum:material>, [<tfc:metal/dust/boron>, <minecraft:coal:1>]);
// Низковольтный коннектор
recipes.remove(<immersiveengineering:connector>);
recipes.addShaped(<immersiveengineering:connector>,
 [[hammer, <ore:stripSilver>, tongs],
 [<ore:rubber>, <ore:stickCopper>, <ore:rubber>],
 [<immersiveengineering:stone_decoration:8>, <ore:stickCopper>, <immersiveengineering:stone_decoration:8>]]);
 // Низковольтое реле
recipes.remove(<immersiveengineering:connector:1>);
recipes.addShaped(<immersiveengineering:connector:1>,
 [[<ore:rubber>, <ore:stripSilver>, <ore:rubber>],
 [<ore:rubber>, <ore:stickCopper>, <ore:rubber>],
 [<immersiveengineering:stone_decoration:8>, <ore:stickCopper>, <immersiveengineering:stone_decoration:8>]]);
// Средневольтный коннектор
recipes.remove(<immersiveengineering:connector:2>);
recipes.addShaped(<immersiveengineering:connector:2>,
 [[hammer, <ore:stripSilver>, tongs],
 [<ore:rubber>, <ore:stickElectrum>, <ore:rubber>],
 [<immersiveengineering:stone_decoration:8>, <ore:stickElectrum>, <immersiveengineering:stone_decoration:8>]]);
// Средневольтное реле
recipes.remove(<immersiveengineering:connector:3>);
recipes.addShaped(<immersiveengineering:connector:3>,
 [[<ore:rubber>, <ore:stripSilver>, <ore:rubber>],
 [<ore:rubber>, <ore:stickElectrum>, <ore:rubber>],
 [<immersiveengineering:stone_decoration:8>, <ore:stickElectrum>, <immersiveengineering:stone_decoration:8>]]);
// Высоковольтный коннектор
recipes.remove(<immersiveengineering:connector:4>);
recipes.addShaped(<immersiveengineering:connector:4>,
 [[hammer, <ore:stripSilver>, tongs],
 [<ore:rubber>, <ore:stickSteel>, <ore:rubber>],
 [<immersiveengineering:stone_decoration:8>, <ore:stickSteel>, <immersiveengineering:stone_decoration:8>]]);
// Высоковольтное реле
recipes.remove(<immersiveengineering:connector:5>);
recipes.addShaped(<immersiveengineering:connector:5>,
 [[<ore:rubber>, <ore:stripSilver>, <ore:rubber>],
 [<ore:rubber>, <ore:stickSteel>, <ore:rubber>],
 [<immersiveengineering:stone_decoration:8>, <ore:stickSteel>, <immersiveengineering:stone_decoration:8>]]);
// Моток низковольтного провода
recipes.remove(<immersiveengineering:wirecoil>);
recipes.addShaped(<immersiveengineering:wirecoil>,
 [[null, <ore:wireCopper>, null],
 [<ore:wireCopper>, <ore:stickTreatedWood>, <ore:wireCopper>],
 [null, <ore:wireCopper>, null]]);
 // Моток низковольтного провода (2)
recipes.addShaped(<immersiveengineering:wirecoil> * 2,
 [[<ore:wireCopper>, <ore:wireCopper>, <ore:wireCopper>],
 [<ore:wireCopper>, <ore:stickTreatedWood>, <ore:wireCopper>],
 [<ore:wireCopper>, <ore:wireCopper>, <ore:wireCopper>]]);
// Моток средневольтного провода
recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.addShaped(<immersiveengineering:wirecoil:1>,
 [[null, <ore:wireElectrum>, null],
 [<ore:wireElectrum>, <ore:stickTreatedWood>, <ore:wireElectrum>],
 [null, <ore:wireElectrum>, null]]);
// Моток средневольтного провода (2)
recipes.addShaped(<immersiveengineering:wirecoil:1> * 2,
 [[<ore:wireElectrum>, <ore:wireElectrum>, <ore:wireElectrum>],
 [<ore:wireElectrum>, <ore:stickTreatedWood>, <ore:wireElectrum>],
 [<ore:wireElectrum>, <ore:wireElectrum>, <ore:wireElectrum>]]);
// Моток высоковольтного провода
recipes.remove(<immersiveengineering:wirecoil:2>);
recipes.addShaped(<immersiveengineering:wirecoil:2>,
 [[null, <ore:wireSteel>, null],
 [<ore:wireSteel>, <ore:stickTreatedWood>, <ore:wireSteel>],
 [null, <ore:wireSteel>, null]]);
// Моток высоковольтного провода (2)
recipes.addShaped(<immersiveengineering:wirecoil:2> * 2,
 [[<ore:wireSteel>, <ore:wireSteel>, <ore:wireSteel>],
 [<ore:wireSteel>, <ore:stickTreatedWood>, <ore:wireSteel>],
 [<ore:wireSteel>, <ore:wireSteel>, <ore:wireSteel>]]);
// Кирпич коксовой печи
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration>,
 [[<tfc:powder/graphite>, <tfc:mortar>, <tfc:fire_bricks>],
 [<tfc:mortar>, <tfc:fire_bricks>, <tfc:mortar>],
 [<tfc:fire_bricks>, <tfc:mortar>, <tfc:powder/graphite>]]);
// Кирпич доменной печи
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1>,
 [[<tfc:powder/sulfur>, <tfc:mortar>, <tfc:fire_bricks>],
 [<tfc:mortar>, <tfc:fire_bricks>, <tfc:mortar>],
 [<tfc:fire_bricks>, <tfc:mortar>, <tfc:powder/sulfur>]]);
// Блок медного провода
recipes.remove(<immersiveengineering:metal_decoration0>);
recipes.addShaped(<immersiveengineering:metal_decoration0>,
 [[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>],
 [<immersiveengineering:wirecoil>, <tfctech:metal/wrought_iron_long_rod>, <immersiveengineering:wirecoil>],
 [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]]);
// Блок электрумового провода
recipes.remove(<immersiveengineering:metal_decoration0:1>);
recipes.addShaped(<immersiveengineering:metal_decoration0:1>,
 [[<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>],
 [<immersiveengineering:wirecoil:1>, <tfctech:metal/wrought_iron_long_rod>, <immersiveengineering:wirecoil:1>],
 [<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>]]);
// Прочная ткань
recipes.remove(<immersiveengineering:material:5>);
recipes.addShaped(<immersiveengineering:material:5>,
 [[<tfc:animal/product/silk_cloth>, <minecraft:stick>, <tfc:animal/product/silk_cloth>],
 [<tfc:animal/product/silk_cloth>, <minecraft:stick>, <tfc:animal/product/silk_cloth>],
 [<tfc:animal/product/silk_cloth>, <minecraft:stick>, <tfc:animal/product/silk_cloth>]]);
// Стеклоизоляция
 recipes.remove(<immersiveengineering:stone_decoration:8>);
 recipes.addShaped(<immersiveengineering:stone_decoration:8>,
 [[<ore:dyeGreen>, <ore:rubber>, <ore:dyeGreen>],
 [<immersivepetroleum:material>, <ore:rubber>, <immersivepetroleum:material>],
 [<ore:paneGlass>, <ore:rubber>, <ore:paneGlass>]]);
// Верстак инженера 
recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped(<immersiveengineering:wooden_device0:2>,
 [[<immersiveengineering:tool>, null, <tfctech:metal/iron_tongs>],
 [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
 [<ore:craftingTableWood>, null, <immersiveengineering:wooden_decoration>]]);
// Ветряная мельница
recipes.remove(<immersiveengineering:wooden_device1:1>);
recipes.addShaped(<immersiveengineering:wooden_device1:1>,
 [[<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>],
 [<immersiveengineering:material:11>, <tfctech:metal/steel_gear>, <immersiveengineering:material:11>],
 [<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>]]);
// Водяное колесо
recipes.remove(<immersiveengineering:wooden_device1>);
recipes.addShaped(<immersiveengineering:wooden_device1>,
 [[<immersiveengineering:material:10>, <immersiveengineering:material:10>, <immersiveengineering:material:10>],
 [<immersiveengineering:material:10>, <tfctech:metal/steel_gear>, <immersiveengineering:material:10>],
 [<immersiveengineering:material:10>, <immersiveengineering:material:10>, <immersiveengineering:material:10>]]);
// Плавильная печь
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.addShaped(<immersiveengineering:stone_decoration:10>,
 [[<tfc:fire_bricks>, <tfctech:metal/steel_strip>, <tfc:fire_bricks>],
 [<tfctech:metal/steel_strip>, <tfc:metal/double_sheet/red_steel>, <tfctech:metal/steel_strip>],
 [<tfc:fire_bricks>, <tfctech:metal/steel_strip>, <tfc:fire_bricks>]]);
// Конвейер (кожа)
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4, 
 [[<ore:ingotBronze>, null, <ore:ingotBronze>],
 [<ore:leather>, <ore:leather>, <ore:leather>], 
 [<tfc:metal/ingot/pig_iron>, <ore:dustRedstone>, <tfc:metal/ingot/pig_iron>]]);
// Конвейер (резина)
 recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4, 
 [[<ore:ingotBronze>, null, <ore:ingotBronze>],
 [<tfctech:latex/rubber>, <tfctech:latex/rubber>, <tfctech:latex/rubber>], 
 [<tfc:metal/ingot/pig_iron>, <ore:dustRedstone>, <tfc:metal/ingot/pig_iron>]]);
// Краснокаменный инженерный блок
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>, 
 [[<tfc:metal/ingot/pig_iron>, <ore:dustRedstone>, <tfc:metal/ingot/pig_iron>], 
 [<ore:dustRedstone>, <tfc:gem/garnet:2>, <ore:dustRedstone>], 
 [<tfc:metal/ingot/pig_iron>, <ore:dustRedstone>, <tfc:metal/ingot/pig_iron>]]);
// Внешний нагреватель
recipes.remove(<immersiveengineering:metal_device1:1>);
recipes.addShaped(<immersiveengineering:metal_device1:1>,
 [[<ore:ingotSteel>, <ore:ingotSilver>, <ore:ingotSteel>],
 [<ore:ingotSilver>, <immersiveengineering:metal_decoration0>, <ore:ingotSilver>],
 [<ore:ingotSteel>, <minecraft:iron_bars>, <ore:ingotSteel>]]);
// Термоэлектрогенератор
recipes.remove(<immersiveengineering:metal_device1:3>);
recipes.addShaped(<immersiveengineering:metal_device1:3>,
 [[<ore:ingotTungsten>, <ore:ingotTungsten>, <ore:ingotTungsten>],
 [<ore:plateConstantan>, <immersiveengineering:metal_decoration0>, <ore:plateConstantan>],
 [<ore:ingotBerylliumCopper>, <ore:plateConstantan>, <ore:ingotBerylliumCopper>]]);
// Низковольтный конденсатор
recipes.remove(<immersiveengineering:metal_device0>);
recipes.addShaped(<immersiveengineering:metal_device0>,
 [[<ore:ingotWroughtIron>, <ore:ingotWroughtIron>, <ore:ingotWroughtIron>],
 [<ore:ingotFerroboron>, <ore:ingotLead>, <ore:ingotFerroboron>],
 [<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>]]);
// Средневольтный конденсатор
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.addShaped(<immersiveengineering:metal_device0:1>,
 [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
 [<ore:ingotFerroboron>, <immersiveengineering:metal:2>, <ore:ingotFerroboron>],
 [<ore:plankTreatedWood>, <ore:blockRedstone>, <ore:plankTreatedWood>]]);
// Высоковольтный конденсатор
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:2>,
 [[<ore:ingotHslaSteel>, <ore:ingotHslaSteel>, <ore:ingotHslaSteel>],
 [<ore:ingotBlueSteel>, <immersiveengineering:storage:2>, <ore:ingotBlueSteel>],
 [<ore:plankTreatedWood>, <ore:blockRedstone>, <ore:plankTreatedWood>]]);
// Конденсаторный рюкзак
recipes.remove(<immersiveengineering:powerpack>);
recipes.addShaped(<immersiveengineering:powerpack>,
 [[<ore:ingotLithium>, <ore:ingotLithium>, <ore:ingotLithium>],
 [<minecraft:leather>, <immersiveengineering:metal_device0>, <minecraft:leather>],
 [<immersiveengineering:wirecoil>, <immersiveengineering:connector>, <immersiveengineering:wirecoil>]]);
// Краснокаменный коннектор
recipes.remove(<immersiveengineering:connector:12>);
recipes.addShaped(<immersiveengineering:connector:12>,
 [[<ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>],
 [<ore:ingotBrass>, <ore:ingotBrass>, <ore:ingotBrass>],
 [<immersiveengineering:stone_decoration_slab:4>, <ore:dustRedstone>, <immersiveengineering:stone_decoration_slab:4>]]);
// Вольтметр
recipes.remove(<immersiveengineering:tool:2>);
recipes.addShaped(<immersiveengineering:tool:2>,
 [[<ore:dustRedstone>, <ore:blockGlass>, <ore:dustRedstone>],
 [<ore:blockGlass>, <minecraft:compass>, <ore:blockGlass>],
 [<ore:stickTreatedWood>, <tfc:metal/ingot/electrum>, <ore:stickTreatedWood>]]);
// Внешний нагреватель
recipes.remove(<immersiveengineering:metal_device1:1>);
// Провода с изоляцией
recipes.replaceAllOccurences(<ore:fabricHemp>, <ore:rubber>, <immersiveengineering:wirecoil:*>);
// Кинетический генератор
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>,
 [[<ore:ingotTungsten>, <ore:ingotTungsten>, <ore:ingotTungsten>],
 [<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>],
 [<ore:ingotWroughtIron>, <ore:ingotWroughtIron>, <ore:ingotWroughtIron>]]);
// Рубильник
recipes.remove(<immersiveengineering:connector:9>);
recipes.addShaped(<immersiveengineering:connector:9>,
 [[<ore:dustRedstone>, <minecraft:lever>, <ore:dustRedstone>],
 [<ore:ingotAluminium>, <ore:ingotAluminum>, <ore:ingotAluminium>],
 [<immersiveengineering:stone_decoration:4>, <ore:ingotCopper>, <immersiveengineering:stone_decoration:4>]]);
// Катушка Теслы
recipes.remove(<immersiveengineering:metal_device1:8>);
recipes.addShaped(<immersiveengineering:metal_device1:8>,
 [[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
 [<ore:sheetManyullyn>, <immersiveengineering:metal_decoration0>, <ore:sheetManyullyn>],
 [<immersiveengineering:metal_device0:2>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal_device0:2>]]);
 // Поворотный стол
recipes.remove(<immersiveengineering:wooden_device0:6>);
recipes.addShaped(<immersiveengineering:wooden_device0:6>,
 [[<ore:ingotZirconium>, <ore:ingotZirconium>, <ore:ingotZirconium>],
 [<ore:plankTreatedWood>, <ore:ingotIron>, <ore:plankTreatedWood>],
 [<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>]]);


// ------ // Корректировка рецептов механизмов // ------ //
// ** Металлический пресс ** //
// Блоки из металлов
recipes.remove(<immersiveengineering:storage:*>);
MetalPress.addRecipe(<immersiveengineering:storage>, <ore:ingotCopper>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<immersiveengineering:storage:1>, <ore:ingotAluminum>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<immersiveengineering:storage:2>, <ore:ingotLead>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<immersiveengineering:storage:3>, <ore:ingotSilver>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<immersiveengineering:storage:4>, <ore:ingotNickel>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<immersiveengineering:storage:5>, <ore:ingotUranium>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<immersiveengineering:storage:7>, <ore:ingotConstantan>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<immersiveengineering:storage:6>, <ore:ingotElectrum>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<immersiveengineering:storage:8>, <ore:ingotSteel>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<minecraft:iron_block>, <ore:ingotWroughtIron>, <immersiveengineering:mold:6>, 3000, 9);
MetalPress.addRecipe(<minecraft:gold_block>, <ore:ingotGold>, <immersiveengineering:mold:6>, 3000, 9);

// ** Дробитель ** //
// Слитки из блоков
Crusher.addRecipe(<tfc:metal/ingot/copper> * 9, <immersiveengineering:storage>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/aluminium> * 9, <immersiveengineering:storage:1>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/lead> * 9, <immersiveengineering:storage:2>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/silver> * 9, <immersiveengineering:storage:3>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/nickel> * 9, <immersiveengineering:storage:4>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/uranium> * 9, <immersiveengineering:storage:5>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/constantan> * 9, <immersiveengineering:storage:7>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/electrum> * 9, <immersiveengineering:storage:6>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/steel> * 9, <immersiveengineering:storage:8>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/wrought_iron> * 9, <minecraft:iron_block>, 3000);
Crusher.addRecipe(<tfc:metal/ingot/gold> * 9, <minecraft:gold_block>, 3000);

// ** Коксовая печь ** //
// Коксовый уголь (и креозот)
CokeOven.removeRecipe(<immersiveengineering:material:6>);
CokeOven.addRecipe(<immersiveengineering:material:6>, 500, <minecraft:coal:1>, 2000);

// ** Доменная печь ** //
// Сталь
BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
BlastFurnace.addRecipe(<tfc:metal/ingot/high_carbon_steel>, <tfc:metal/ingot/wrought_iron>, 8000, <immersiveengineering:material:7>);

// ** Маслобойня ** //
// Масло
var tfcSeeds = [<tfc:crop/seeds/barley>, <tfc:crop/seeds/maize>, <tfc:crop/seeds/oat>, <tfc:crop/seeds/rice>, <tfc:crop/seeds/rye>, <tfc:crop/seeds/wheat>, <tfc:crop/seeds/beet>, <tfc:crop/seeds/cabbage>, <tfc:crop/seeds/carrot>, <tfc:crop/seeds/garlic>, <tfc:crop/seeds/green_bean>, <tfc:crop/seeds/onion>, <tfc:crop/seeds/potato>, <tfc:crop/seeds/soybean>, <tfc:crop/seeds/squash>, <tfc:crop/seeds/sugarcane>, <tfc:crop/seeds/tomato>, <tfc:crop/seeds/red_bell_pepper>, <tfc:crop/seeds/yellow_bell_pepper>, <tfc:crop/seeds/jute>] as IItemStack[];
for seed in tfcSeeds {
	Squeezer.addRecipe(null, <liquid:plantoil> * 60, seed, 800);
}
Squeezer.removeByInput(<minecraft:wheat_seeds>);
Squeezer.removeByInput(<minecraft:pumpkin_seeds>);
Squeezer.removeByInput(<minecraft:melon_seeds>);

// ** Ферментер ** //
// Этанол
Fermenter.removeByInput(<minecraft:potato>);
Fermenter.removeByInput(<minecraft:apple>);
Fermenter.removeByInput(<minecraft:melon>);
Fermenter.removeByInput(<minecraft:reeds>);
Fermenter.addRecipe(null, <liquid:ethanol> * 80, <tfc:food/potato>, 6400);
Fermenter.addRecipe(null, <liquid:ethanol> * 80, <tfc:food/red_apple>, 6400);
Fermenter.addRecipe(null, <liquid:ethanol> * 80, <tfc:food/sugarcane>, 6400);
print("Initialized 'Immersive Engineering'");