# TFCStorage

print("Initializing 'TFCStorage'...");

// ------ // Корректировка обычных рецептов // ------ //
// Металлический ящик
recipes.remove(<tfcstorage:crate>);
recipes.addShaped(<tfcstorage:crate> * 4,
 [[<ore:ingotWroughtIron>, <ore:chest>, <ore:ingotWroughtIron>],
 [<ore:chest>, <immersiveengineering:wooden_device0:3>, <ore:chest>],
 [<ore:ingotWroughtIron>, <ore:chest>, <ore:ingotWroughtIron>]]);

print("Initialized 'TFCTech Unofficial'");