# Tinker's Construct

print("Initializing 'Tinker's Construct'...");

//----------// Default Recipes //----------//

// Seared Brick Ingot
recipes.remove(<tconstruct:materials>);
recipes.addShaped(<tconstruct:materials>,
[[null, <ore:dustCoal>, null],
 [<alchemistry:compound:8>, <minecraft:brick>, <alchemistry:compound:8>],
 [null, <ore:dustCoal>, null]]);

//шарик синей слизи
    mods.alchemistry.Combiner.addRecipe(<tconstruct:edible:1>,
    [<alchemistry:compound:11> * 2,<alchemistry:compound:9> * 2, <alchemistry:compound:57>]);

 //----------// Chemical Combiner Recipes //----------//
 // Ardite Ingot
mods.alchemistry.Combiner.addRecipe(<tconstruct:ingots:1>,
 [<alchemistry:element:38>, <alchemistry:element:59>]);
 // Purple Slime
mods.alchemistry.Combiner.addRecipe(<tconstruct:edible:2>,
 [<alchemistry:compound:11> * 2, <alchemistry:compound:9> * 2, <alchemistry:compound:49>]);
 // Fired Slime
mods.alchemistry.Combiner.addRecipe(<tconstruct:edible:4>,
 [<alchemistry:compound:11> * 2, <alchemistry:compound:9> * 2, <alchemistry:element:51>]);

//----------// Tinker Furnace Recipes//----------//
// Liquid emerald
mods.tconstruct.Melting.removeRecipe(<liquid:emerald>, <soulus:emerald_burnt>);



print("Initializied 'Tinker's Construct'");