# EconomyMod

import crafttweaker.item.IItemStack;

print("Initializing 'EconomyMod'...");

// ------ // Корректировка обычных рецептов // ------ //
for meta in [7, 11] as int[] {
    for item in [<economy_mod:sell_shop:*>, <economy_mod:buy_shop:*>, <economy_mod:barter_shop:*>] as IItemStack[] {
        item.definition.makeStack(meta).addTooltip("§cДанный магазин недоступен");
    }
}

for item in loadedMods["economy_mod"].items {
    recipes.remove(item);
}

// Продажа предметов (Камень)
recipes.addShaped(<economy_mod:sell_shop:0>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<ore:stone>, <ore:chest>, <ore:stone>]]);
// Продажа предметов (Булыжник)
recipes.addShaped(<economy_mod:sell_shop:1>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<ore:cobblestone>, <ore:chest>, <ore:cobblestone>]]);
// Продажа предметов (Кирпич)
recipes.addShaped(<economy_mod:sell_shop:2>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<ore:brickStone>, <ore:chest>, <ore:brickStone>]]);
// Продажа предметов (Доски)
recipes.addShaped(<economy_mod:sell_shop:3>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<ore:plankWood>, <ore:chest>, <ore:plankWood>]]);
// Продажа предметов (Верстак)
recipes.addShaped(<economy_mod:sell_shop:4>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<ore:craftingTableWood>, <ore:chest>, <ore:craftingTableWood>]]);
// Продажа предметов (Гравий)
recipes.addShaped(<economy_mod:sell_shop:5>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<ore:gravel>, <ore:chest>, <ore:gravel>]]);
// Продажа предметов (Нотный блок)
recipes.addShaped(<economy_mod:sell_shop:6>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<minecraft:noteblock>, <ore:chest>, <minecraft:noteblock>]]);
// Продажа предметов (Песчаник) --Отсутствует--
// Продажа предметов (Золото)
recipes.addShaped(<economy_mod:sell_shop:8>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<tfc:metal/ingot/gold>, <ore:chest>, <tfc:metal/ingot/gold>]]);
// Продажа предметов (Железо)
recipes.addShaped(<economy_mod:sell_shop:9>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<tfc:metal/ingot/wrought_iron>, <ore:chest>, <tfc:metal/ingot/wrought_iron>]]);
// Продажа предметов (Кирпич)
recipes.addShaped(<economy_mod:sell_shop:10>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<minecraft:brick_block>, <ore:chest>, <minecraft:brick_block>]]);
// Продажа предметов (Замшелый булыжник) --Отсутствует--
// Продажа предметов (Обсидиан)
recipes.remove(<economy_mod:sell_shop:12>);
recipes.addShaped(<economy_mod:sell_shop:12>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>]]);
// Продажа предметов (Алмаз)
recipes.addShaped(<economy_mod:sell_shop:13>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<tfc:gem/diamond:2>, <ore:chest>, <tfc:gem/diamond:2>]]);
// Продажа предметов (Изумруд)
recipes.addShaped(<economy_mod:sell_shop:14>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<tfc:gem/emerald:2>, <ore:chest>, <tfc:gem/emerald:2>]]);
// Продажа предметов (Лазурит)
recipes.addShaped(<economy_mod:sell_shop:15>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bronze>, <minecraft:glass>],
[<minecraft:lapis_block>, <ore:chest>, <minecraft:lapis_block>]]);

// Скупка предметов (Камень)
recipes.addShaped(<economy_mod:buy_shop:0>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<ore:stone>, <ore:chest>, <ore:stone>]]);
// Скупка предметов (Булыжник)
recipes.addShaped(<economy_mod:buy_shop:1>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<ore:cobblestone>, <ore:chest>, <ore:cobblestone>]]);
// Скупка предметов (Кирпич)
recipes.addShaped(<economy_mod:buy_shop:2>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<ore:brickStone>, <ore:chest>, <ore:brickStone>]]);
// Скупка предметов (Доски)
recipes.addShaped(<economy_mod:buy_shop:3>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<ore:plankWood>, <ore:chest>, <ore:plankWood>]]);
// Скупка предметов (Верстак)
recipes.addShaped(<economy_mod:buy_shop:4>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<ore:craftingTableWood>, <ore:chest>, <ore:craftingTableWood>]]);
// Скупка предметов (Гравий)
recipes.addShaped(<economy_mod:buy_shop:5>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<ore:gravel>, <ore:chest>, <ore:gravel>]]);
// Скупка предметов (Нотный блок)
recipes.addShaped(<economy_mod:buy_shop:6>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<minecraft:noteblock>, <ore:chest>, <minecraft:noteblock>]]);
// Скупка предметов (Песчаник) --Отсутствует--
// Скупка предметов (Золото)
recipes.addShaped(<economy_mod:buy_shop:8>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<tfc:metal/ingot/gold>, <ore:chest>, <tfc:metal/ingot/gold>]]);
// Скупка предметов (Железо)
recipes.addShaped(<economy_mod:buy_shop:9>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<tfc:metal/ingot/wrought_iron>, <ore:chest>, <tfc:metal/ingot/wrought_iron>]]);
// Скупка предметов (Кирпич)
recipes.addShaped(<economy_mod:buy_shop:10>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<minecraft:brick_block>, <ore:chest>, <minecraft:brick_block>]]);
// Скупка предметов (Замшелый булыжник) --Отсутствует--
// Скупка предметов (Обсидиан)
recipes.addShaped(<economy_mod:buy_shop:12>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>]]);
// Скупка предметов (Алмаз)
recipes.addShaped(<economy_mod:buy_shop:13>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<tfc:gem/diamond:2>, <ore:chest>, <tfc:gem/diamond:2>]]);
// Скупка предметов (Изумруд)
recipes.addShaped(<economy_mod:buy_shop:14>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<tfc:gem/emerald:2>, <ore:chest>, <tfc:gem/emerald:2>]]);
// Скупка предметов (Лазурит)
recipes.addShaped(<economy_mod:buy_shop:15>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/bismuth_bronze>, <minecraft:glass>],
[<minecraft:lapis_block>, <ore:chest>, <minecraft:lapis_block>]]);

// Обмен предметов (Камень)
recipes.addShaped(<economy_mod:barter_shop:0>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<ore:stone>, <ore:chest>, <ore:stone>]]);
// Обмен предметов (Булыжник)
recipes.addShaped(<economy_mod:barter_shop:1>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<ore:cobblestone>, <ore:chest>, <ore:cobblestone>]]);
// Обмен предметов (Кирпич)
recipes.addShaped(<economy_mod:barter_shop:2>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<ore:brickStone>, <ore:chest>, <ore:brickStone>]]);
// Обмен предметов (Доски)
recipes.addShaped(<economy_mod:barter_shop:3>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<ore:plankWood>, <ore:chest>, <ore:plankWood>]]);
// Обмен предметов (Верстак)
recipes.addShaped(<economy_mod:barter_shop:4>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<ore:craftingTableWood>, <ore:chest>, <ore:craftingTableWood>]]);
// Обмен предметов (Гравий)
recipes.addShaped(<economy_mod:barter_shop:5>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<ore:gravel>, <ore:chest>, <ore:gravel>]]);
// Обмен предметов (Нотный блок)
recipes.addShaped(<economy_mod:barter_shop:6>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<minecraft:noteblock>, <ore:chest>, <minecraft:noteblock>]]);
// Обмен предметов (Песчаник) --Отсутствует--
// Обмен предметов (Золото)
recipes.addShaped(<economy_mod:barter_shop:8>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<tfc:metal/ingot/gold>, <ore:chest>, <tfc:metal/ingot/gold>]]);
// Обмен предметов (Железо)
recipes.addShaped(<economy_mod:barter_shop:9>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<tfc:metal/ingot/wrought_iron>, <ore:chest>, <tfc:metal/ingot/wrought_iron>]]);
// Обмен предметов (Кирпич)
recipes.addShaped(<economy_mod:barter_shop:10>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<minecraft:brick_block>, <ore:chest>, <minecraft:brick_block>]]);
// Обмен предметов (Замшелый булыжник) --Отсутствует--
// Обмен предметов (Обсидиан)
recipes.addShaped(<economy_mod:barter_shop:12>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<minecraft:obsidian>, <ore:chest>, <minecraft:obsidian>]]);
// Обмен предметов (Алмаз)
recipes.addShaped(<economy_mod:barter_shop:13>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<tfc:gem/diamond:2>, <ore:chest>, <tfc:gem/diamond:2>]]);
// Обмен предметов (Изумруд)
recipes.addShaped(<economy_mod:barter_shop:14>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<tfc:gem/emerald:2>, <ore:chest>, <tfc:gem/emerald:2>]]);
// Обмен предметов (Лазурит)
recipes.addShaped(<economy_mod:barter_shop:15>,
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:glass>, <tfc:metal/ingot/black_bronze>, <minecraft:glass>],
[<minecraft:lapis_block>, <ore:chest>, <minecraft:lapis_block>]]);

// Ключ для снятия магазинов
recipes.addShaped(<economy_mod:wrench>,
[[<minecraft:clay_ball>, null, <minecraft:clay_ball>],
[null, <minecraft:clay_ball>, null],
[null, <minecraft:clay_ball>, null]]);

print("Initialized 'EconomyMod'");