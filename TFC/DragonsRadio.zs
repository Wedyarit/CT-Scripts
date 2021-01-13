# DragonsRadio TFC

print("Initializing 'DragonsRadio'...");

// ------ // Корректировка обычных рецептов // ------ //
recipes.remove(<dragons_radio:radio>);
recipes.remove(<dragons_radio:dummyspeaker>);

recipes.remove(<dragons_radio:speaker>);
recipes.addShaped(<dragons_radio:speaker>,
[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
[<ore:plankWood>, <tfc:metal/ingot/wrought_iron>, <ore:plankWood>],
[<ore:plankWood>, <minecraft:redstone>, <ore:plankWood>]]);

print("Initialized 'DragonsRadio-TFC'");