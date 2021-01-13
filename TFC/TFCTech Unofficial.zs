# TFCTech Unofficial

print("Initializing 'TFCTech Unofficial'...");

// ------ // Корректировка обычных рецептов // ------ //
// Электрическая кузня
recipes.remove(<tfctech:electric_forge>);
recipes.addShaped(<tfctech:electric_forge>,
 [[<ore:plateSteel>, <ore:plateAluminum>, <ore:plateSteel>],
 [<ore:plateAluminum>, <immersiveengineering:stone_decoration:2>, <ore:plateAluminum>],
 [<immersiveengineering:wirecoil:7>, <ore:gearCopper>, <immersiveengineering:wirecoil:7>]]);
// Холодильник
recipes.remove(<tfctech:fridge>);
recipes.addShaped(<tfctech:fridge>,
 [[<ore:sheetDoubleAluminum>, <ore:inductorCopper>, <ore:sheetDoubleAluminum>],
 [<ore:sheetDoubleAluminum>, <ore:sheetAntimony>, <ore:sheetDoubleAluminum>],
 [<ore:sheetDoubleAluminum>, <ore:inductorCopper>, <ore:sheetDoubleAluminum>]]);
 // Индукционный тигель
recipes.remove(<tfctech:induction_crucible>);
recipes.addShaped(<tfctech:induction_crucible>,
 [[<ore:sheetSteel>, <ore:sheetTungsten>, <ore:sheetSteel>],
 [<ore:inductorCopper>, <tfc:crucible>, <ore:inductorCopper>],
 [<ore:sheetSteel>, <ore:wireCopper>, <ore:sheetSteel>]]);

print("Initialized 'TFCTech Unofficial'");