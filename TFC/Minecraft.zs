# Minecraft

print("Initializing 'Minecraft'...");

// ------ // Удаление предметов // ------ //
// Факел
recipes.remove(<minecraft:torch>);

// ------ // Корректировка обычных рецептов // ------ //
// Стол зачарований
recipes.addShaped(<minecraft:enchanting_table>,
 [[<tfc:gem/diamond:4>, <minecraft:book>, <tfc:gem/diamond:4>],
 [<ore:sheetDoubleRedAlloy>, <immersiveengineering:maintenance_kit>, <ore:sheetDoubleRedAlloy>],
 [<tfc:metal/double_sheet/tungsten_steel>, <ore:obsidian>, <tfc:metal/double_sheet/tungsten_steel>]]);
// Маяк
recipes.addShaped(<minecraft:beacon>,
 [[<ore:sheetDoubleCobalt>, <ore:blockGlass>, <ore:sheetDoubleCobalt>],
 [<ore:sheetDoubleTough>, <tfcthings:crown/gold_diamond>, <ore:sheetDoubleTough>],
 [<ore:obsidian>, <tfc:gem/diamond:4>, <ore:obsidian>]]);

// ------ // Добавление описаний // ------ //
// Алмаз
<minecraft:diamond>.addTooltip("§bДанный предмет может быть использован в маяке");

print("Initialized 'Minecraft'");