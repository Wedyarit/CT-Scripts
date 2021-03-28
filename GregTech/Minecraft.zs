#priority 1
# Minecraft

import crafttweaker.item.IItemStack;

print("Initializing 'Minecraft'...");

// ------ // Удаление предметов // ------ //
// Взаимозаменяемые предметы
var tools = [<minecraft:iron_shovel>, <minecraft:iron_pickaxe>, <minecraft:iron_axe>, <minecraft:wooden_shovel>, <minecraft:wooden_pickaxe>, <minecraft:wooden_axe>, <minecraft:stone_shovel>, <minecraft:stone_pickaxe>, <minecraft:stone_axe>, <minecraft:diamond_shovel>, <minecraft:diamond_pickaxe>, <minecraft:diamond_axe>, <minecraft:golden_shovel>, <minecraft:golden_pickaxe>, <minecraft:golden_axe>, <minecraft:wooden_hoe>, <minecraft:stone_hoe>, <minecraft:iron_hoe>, <minecraft:diamond_hoe>, <minecraft:golden_hoe>, <minecraft:iron_sword>, <minecraft:wooden_sword>, <minecraft:stone_sword>, <minecraft:diamond_sword>, <minecraft:golden_sword>] as IItemStack[];
for tool in tools {
    recipes.remove(tool);
	tool.addTooltip("§fПредмет заменен альтернативой из мода §e§lGregTech");
}

print("Initialized 'Minecraft'");