# EconomyMod

import crafttweaker.item.IItemStack;

print("Initializing 'EconomyMod-VolcanoBlock-0.1'...");

// Shops //

recipes.remove(<economy_mod:sell_shop:*>);
recipes.remove(<economy_mod:buy_shop:*>);
recipes.remove(<economy_mod:barter_shop:*>);

var patterns = [<minecraft:stone>, <minecraft:cobblestone>, <minecraft:stonebrick>, <minecraft:planks>, <minecraft:crafting_table>, <minecraft:gravel>, <minecraft:noteblock>, <minecraft:sandstone>, <minecraft:gold_ingot>, <minecraft:iron_ingot>, <minecraft:brick_block>, <minecraft:mossy_cobblestone>, <minecraft:obsidian>, <minecraft:diamond>, <minecraft:emerald>] as IItemStack[];
var shops = [<economy_mod:buy_shop>, <economy_mod:barter_shop>, <economy_mod:sell_shop>] as IItemStack[];
var components = [<alchemistry:ingot:21>, <alchemistry:ingot:24>, <alchemistry:ingot:32>] as IItemStack[];

for i, pattern in patterns {
    for j, shop in shops {
        recipes.addShaped(shop.definition.makeStack(i),
        [[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
         [<minecraft:glass>, components[j], <minecraft:glass>],
         [patterns[i], <minecraft:chest>, patterns[i]]]);
    }
}

// Wrench //
recipes.remove(<economy_mod:wrench>);
recipes.addShaped(<economy_mod:wrench>,
[[null, <alchemistry:ingot:24>, null],
 [<alchemistry:ingot:24>, <alchemistry:ingot:32>, null],
 [null, null, <alchemistry:ingot:24>]]);

print("Initialized 'EconomyMod-VolcanoBlock-0.1'");