# EnderBag TFC

print("Initializing 'EnderBag'...");

// ------ // Корректировка обычных рецептов // ------ //
recipes.remove(<enderbag:backpack>);
recipes.addShaped(<enderbag:backpack>,
 [[<ore:ingotManyullyn>, <ore:obsidian>, <ore:ingotManyullyn>],
 [<ore:fabricHemp>, <ore:gemExquisite>, <ore:fabricHemp>],
 [<ore:ingotManyullyn>, <ore:obsidian>, <ore:ingotManyullyn>]]);

print("Initialized 'EnderBag'");