#priority 1
# EconomyMod

print("Initializing 'EconomyMod'...");


recipes.replaceAllOccurences(<minecraft:diamond>, <gregtech:meta_item_1:12001>, <economy_mod:sell_shop:*>);
recipes.replaceAllOccurences(<minecraft:gold_ingot>, <gregtech:meta_item_1:12026>, <economy_mod:buy_shop:*>);
recipes.replaceAllOccurences(<minecraft:iron_ingot>, <gregtech:meta_item_1:12184>, <economy_mod:barter_shop:*>);


print("Initialized 'EconomyMod'");