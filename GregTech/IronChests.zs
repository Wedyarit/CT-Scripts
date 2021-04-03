#priority 1
# Iron Chests

import crafttweaker.item.IItemStack;

print("Initializing 'Iron Chests'...");

// Замена слитков на пластины
var items = [<ironchest:iron_shulker_box_white:*>, <ironchest:iron_shulker_box_orange:*>, <ironchest:iron_shulker_box_magenta:*>, <ironchest:iron_shulker_box_light_blue:*>, <ironchest:iron_shulker_box_yellow:*>, <ironchest:iron_shulker_box_lime:*>, <ironchest:iron_shulker_box_pink:*>, <ironchest:iron_shulker_box_gray:*>, <ironchest:iron_shulker_box_silver:*>, <ironchest:iron_shulker_box_cyan:*>, <ironchest:iron_shulker_box_purple:*>, <ironchest:iron_shulker_box_blue:*>, <ironchest:iron_shulker_box_brown:*>, <ironchest:iron_shulker_box_green:*>, <ironchest:iron_shulker_box_red:*>, <ironchest:iron_shulker_box_black:*>, <ironchest:iron_chest:*>, <ironchest:iron_gold_chest_upgrade>, <ironchest:gold_diamond_chest_upgrade>, <ironchest:copper_silver_chest_upgrade>, <ironchest:silver_gold_chest_upgrade>, <ironchest:copper_iron_chest_upgrade>, <ironchest:diamond_crystal_chest_upgrade>, <ironchest:wood_iron_chest_upgrade>, <ironchest:wood_copper_chest_upgrade>, <ironchest:diamond_obsidian_chest_upgrade>, <ironchest:iron_gold_shulker_upgrade>, <ironchest:gold_diamond_shulker_upgrade>, <ironchest:copper_silver_shulker_upgrade>, <ironchest:silver_gold_shulker_upgrade>, <ironchest:copper_iron_shulker_upgrade>, <ironchest:diamond_crystal_shulker_upgrade>, <ironchest:vanilla_iron_shulker_upgrade>, <ironchest:vanilla_iron_shulker_upgrade>, <ironchest:vanilla_copper_shulker_upgrade>, <ironchest:diamond_obsidian_shulker_upgrade>] as IItemStack[];
for item in items {
  recipes.replaceAllOccurences(<ore:ingotIron>, <gregtech:meta_item_1:12033>, item);  
  recipes.replaceAllOccurences(<ore:ingotGold>, <gregtech:meta_item_1:12026>, item);  
  recipes.replaceAllOccurences(<ore:ingotCopper>, <gregtech:meta_item_1:13018>, item);  
  recipes.replaceAllOccurences(<ore:ingotSilver>, <gregtech:meta_item_1:12062>, item);  
  recipes.replaceAllOccurences(<ore:gemDiamond>, <gregtech:meta_item_1:12111>, item);
}


print("Initialized 'Iron Chests'");