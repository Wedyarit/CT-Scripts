# InWorldCrafting

import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.FluidToItem;

print("Initializing 'InWorldCrafting'...");

// FireCrafting.addRecipe(IItemStack output, IIngredient inputItem, @Optional int ticks);
FireCrafting.addRecipe(<superfishing:blaze_fishing_rod>, <minecraft:fishing_rod>);
FireCrafting.addRecipe(<superfishing:smoldering_fishing_rod>, <uniquecrops:generic:6> * 16);
FireCrafting.addRecipe(<bloodmagic:component:19>, <uniquecrops:oldcobble>);
FireCrafting.addRecipe(<minecraft:baked_potato>, <minecraft:potato>);
FireCrafting.addRecipe(<ceramics:clay_bucket>, <ceramics:unfired_clay>);
FireCrafting.addRecipe(<minecraft:stone>, <minecraft:cobblestone>);
FireCrafting.addRecipe(<evilcraft:hardened_blood_shard> * 9, <evilcraft:hardened_blood>);
FireCrafting.addRecipe(<ceramics:clay_shears>, <ceramics:unfired_clay:1>, 200);
FireCrafting.addRecipe(<bloodmagic:component:19>, <uniquecrops:oldcobble>);
FireCrafting.addRecipe(<prodigytech:coal_dust>, <ore:dustWood> * 8);
FireCrafting.addRecipe(<minecraft:torch>, <minecraft:stick>);

FluidToItem.transform(<soulus:glue>, <liquid:water>, [<minecraft:sugar>, <ore:bonemeal>], true);
FluidToItem.transform(<alchemistry:wet_sand>, <liquid:water>, [<minecraft:sand>], false);
FluidToItem.transform(<superfishing:cooled_cod>, <liquid:water>, [<superfishing:combustive_cod>], false);

// Лепестки
FireCrafting.addRecipe(<botania:petal:1>, <botania:petal>);
FluidToItem.transform(<botania:petal:14>, <liquid:evilcraftblood>, [<botania:petal>], true);
FluidToItem.transform(<botania:petal:13>, <liquid:evilcraftpoison>, [<botania:petal>], true);

FluidToItem.transform(<botania:petal:1>, <liquid:water>, [<botania:petal>, <ore:dyeOrange>], false);
FluidToItem.transform(<botania:petal:2>, <liquid:water>, [<botania:petal>, <ore:dyeMagenta>], false);
FluidToItem.transform(<botania:petal:3>, <liquid:water>, [<botania:petal>, <ore:dyeLightBlue>], false);
FluidToItem.transform(<botania:petal:4>, <liquid:water>, [<botania:petal>, <ore:dyeYellow>], false);
FluidToItem.transform(<botania:petal:5>, <liquid:water>, [<botania:petal>, <ore:dyeLime>], false);
FluidToItem.transform(<botania:petal:6>, <liquid:water>, [<botania:petal>, <ore:dyePink>], false);
FluidToItem.transform(<botania:petal:7>, <liquid:water>, [<botania:petal>, <ore:dyeGray>], false);
FluidToItem.transform(<botania:petal:8>, <liquid:water>, [<botania:petal>, <ore:dyeLightGray>], false);
FluidToItem.transform(<botania:petal:9>, <liquid:water>, [<botania:petal>, <ore:dyeCyan>], false);
FluidToItem.transform(<botania:petal:10>, <liquid:water>, [<botania:petal>, <ore:dyePurple>], false);
FluidToItem.transform(<botania:petal:11>, <liquid:water>, [<botania:petal>, <ore:dyeBlue>], false);
FluidToItem.transform(<botania:petal:12>, <liquid:water>, [<botania:petal>, <ore:dyeBrown>], false);
FluidToItem.transform(<botania:petal:13>, <liquid:water>, [<botania:petal>, <ore:dyeGreen>], false);
FluidToItem.transform(<botania:petal:14>, <liquid:water>, [<botania:petal>, <ore:dyeRed>], false);
FluidToItem.transform(<botania:petal:15>, <liquid:water>, [<botania:petal>, <ore:dyeBlack>], false);

print("Initializied 'InWorldCrafting'");