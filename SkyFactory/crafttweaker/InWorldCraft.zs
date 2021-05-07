import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;

//mods.inworldcrafting.FluidToItem.transform(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <liquid:water>, [<minecraft:glass_bottle>], true);

//FluidToItem.transform(, , [], true);
FluidToItem.transform(<minecraft:chorus_fruit>, <liquid:purpleslime>, [<minecraft:apple>], true);
FluidToItem.transform(<tconstruct:slime_sapling>, <liquid:diluted_milk_powder>, [<sky_orchards:sapling_lapis>], true);
FluidToFluid.transform(<liquid:purpleslime>, <liquid:diluted_milk_powder>, [<tconstruct:edible:2>], true);
FluidToFluid.transform(<liquid:diluted_milk_powder>, <liquid:water>, [<contenttweaker:dry_milk>], true);
FluidToFluid.transform(<liquid:blueslime>, <liquid:diluted_milk_powder>, [<tconstruct:edible:1>], true);
FluidToItem.transform(<tconstruct:slime_vine_purple>, <liquid:purpleslime>, [<minecraft:vine>], true);
FluidToItem.transform(<tconstruct:slime_dirt>, <liquid:diluted_milk_powder>, [<minecraft:cactus>], true);
FluidToItem.transform(<tconstruct:slime_sapling:1>, <liquid:redstone>, [<tconstruct:slime_sapling>], true);
FluidToItem.transform(<tconstruct:slime_sapling:2>, <liquid:pyrotheum>, [<tconstruct:slime_sapling>], true);
FluidToItem.transform(<minecraft:grass> * 8, <liquid:water>, [<exnihilocreatio:item_material:4>, <minecraft:dirt> * 8], true);
