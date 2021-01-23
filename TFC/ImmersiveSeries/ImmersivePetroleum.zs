# Immersive Petroleum

import mods.immersivepetroleum;

print("Initializing 'Immersive Petroleum'...");

// ------ // Корректировка рецептов механизмов // ------ //
// Дистиллятор 
Distillation.addRecipe([<liquid:dist_water> * 1000], [], [<liquid:fresh_water> * 500], 10000, 15, []);


print("Initialized 'Immersive Petroleum'...");
