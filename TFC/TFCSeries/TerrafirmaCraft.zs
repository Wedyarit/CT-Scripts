# TerrafirmaCraft

import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Loom;
import mods.terrafirmacraft.Barrel;

print("Initializing 'TerrafirmaCraft'...");

var gems = [<tfc:gem/agate:*>, <tfc:gem/amethyst:*>, <tfc:gem/beryl:*>, <tfc:gem/diamond:*>, <tfc:gem/emerald:*>, <tfc:gem/garnet:*>, <tfc:gem/jade:*>, <tfc:gem/jasper:*>, <tfc:gem/opal:*>, <tfc:gem/ruby:*>,  <tfc:gem/sapphire:*>, <tfc:gem/topaz:*>, <tfc:gem/tourmaline:*>] as IItemStack[];
for gem in gems {
    gem.addShiftTooltip("§rДанный предмет можно получить путем просеивания гравия или песка в §6§lРудопромывочном жёлобе", "§rЗажмите §e§lShift§r для подробной информации");

    for i in 0 to 4 {
        recipes.addShapeless(gem.definition.makeStack(i) * 2, [gem.definition.makeStack(i + 1), <ore:hammer>.transformDamage(i + 1)]);
        recipes.addShapeless(gem.definition.makeStack(i + 1), [gem.definition.makeStack(i), gem.definition.makeStack(i), <ore:chisel>.transformDamage(i + 1)]);
    }
}

<tfc:metal/ingot/manganese>.addTooltip("§fИзотавливается в наковальне из §e§lманганиевой крицы (пиролюзит)");

// ------ // Корректировка обычных рецептов // ------ //
// Бумага
recipes.addShapeless(<minecraft:paper> * 4, [<tfctech:powder/wood>, <tfctech:powder/wood>, <immersiveengineering:material:7>, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>)]);


// ------ // Корректировка рецептов механизмов // ------ //
// ** Бочка  ** //
// Обработанное дерево в бочке с креозотом
Barrel.removeRecipe(<immersiveengineering:treated_wood>, null);
Barrel.addRecipe("treated_wood", <ore:logWood> * 8, <fluid:creosote> * 1000, <immersiveengineering:treated_wood> * 8, null, 5);

// ** // Сварка // ** //
// Кирпич продвинутой доменной печи
recipes.remove(<immersiveengineering:stone_decoration:2>);
ItemRegistry.registerItemHeat(<immersiveengineering:stone_decoration:1>, 0.35f, 1600, true);
Welding.addRecipe("reinforced_blast_furnace_brick", <immersiveengineering:stone_decoration:1>, <ore:plateSteel>, <immersiveengineering:stone_decoration:2>, 4);
// Свинцовый бетон
recipes.remove(<immersiveengineering:stone_decoration:5>);
ItemRegistry.registerItemHeat(<immersiveengineering:stone_decoration:5>, 0.35f, 1600, true);
Welding.addRecipe("lead_concrete", <immersiveengineering:stone_decoration:7>, <ore:plateLead>, <immersiveengineering:stone_decoration:5>, 4);

// ** // Наковальня // ** //
// Медная пластина
recipes.remove(<immersiveengineering:metal:30>);
Anvil.addRecipe("plateCopper", <ore:ingotCopper>, <immersiveengineering:metal:30>, 1, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:30>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:30>, "Copper", 100, true);
// Алюминиевая пластина
recipes.remove(<immersiveengineering:metal:31>);
Anvil.addRecipe("plateAluminium", <ore:ingotAluminum>, <immersiveengineering:metal:31>, 3, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:31>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:31>, "Aluminium", 100, true);
// Свинцовая пластина
recipes.remove(<immersiveengineering:metal:32>);
Anvil.addRecipe("plateLead", <ore:ingotLead>, <immersiveengineering:metal:32>, 1, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:32>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:32>, "Lead", 100, true);
// Серебряная пластина
recipes.remove(<immersiveengineering:metal:33>);
Anvil.addRecipe("plateSilver", <ore:ingotSilver>, <immersiveengineering:metal:33>, 1, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:33>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:33>, "Silver", 100, true);
// Никилевая пластина
recipes.remove(<immersiveengineering:metal:34>);
Anvil.addRecipe("plateNickel", <ore:ingotNickel>, <immersiveengineering:metal:34>, 1, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:34>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:34>, "Nickel", 100, true);
// Урановая пластина
recipes.remove(<immersiveengineering:metal:35>);
Anvil.addRecipe("plateUranium", <ore:ingotUranium>, <immersiveengineering:metal:35>, 1, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:35>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:35>, "Uranium", 100, true);
// Электрумовая пластина
recipes.remove(<immersiveengineering:metal:36>);
Anvil.addRecipe("plateElectrum", <ore:ingotElectrum>, <immersiveengineering:metal:36>, 2, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:36>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:36>, "Electrum", 100, true);
// Константановая пластина
recipes.remove(<immersiveengineering:metal:37>);
Anvil.addRecipe("plateConstantan", <ore:ingotConstantan>, <immersiveengineering:metal:37>, 2, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:37>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:37>, "Constantan", 100, true);
// Стальная пластина
recipes.remove(<immersiveengineering:metal:38>);
Anvil.addRecipe("plateSteel", <ore:ingotSteel>, <immersiveengineering:metal:38>, 4, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:38>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:38>, "Steel", 100, true);
// Железная пластина
recipes.remove(<immersiveengineering:metal:39>);
Anvil.addRecipe("plateIron", <ore:ingotWroughtIron>, <immersiveengineering:metal:39>, 3, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:39>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:39>, "Wrought_Iron", 100, true);
// Золотая пластина
recipes.remove(<immersiveengineering:metal:40>);
Anvil.addRecipe("plateGold", <ore:ingotGold>, <immersiveengineering:metal:40>, 1, "general", "HIT_ANY", "HIT_ANY", "HIT_ANY");
ItemRegistry.registerItemSize(<immersiveengineering:metal:40>, "SMALL", "LIGHT");
ItemRegistry.registerItemMetal(<immersiveengineering:metal:40>, "Gold", 100, true);

print("Initialized 'Immersive Engineering'");