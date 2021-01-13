# Botania

import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;
import mods.botania.Apothecary;
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.botania.Orechid;
import mods.botania.OrechidIgnem;
import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.FluidToItem;
import mods.botania.ElvenTrade;
import crafttweaker.item.IItemStack;

import mods.extrabotany.Omniviolet;

print("Initializing 'Botania'...");


    val botania_delete = 
        [<botania:laputashard:*>, <botania:spawnerclaw>, <botania:manabomb>, <botania:keepivy>, <botania:teruterubozu>, <botania:invisibilitycloak>, <botania:terraformrod>, <botania:exchangerod>, <botania:blackholetalisman>, <botania:specialflower>.withTag({type: "dandelifeon"}), <botania:pistonrelay>]
        as IIngredient[];


    for item_tip_b in botania_delete {
        item_tip_b.addTooltip("\u00a74\u00a7l\u0412 \u0434\u0430\u043d\u043d\u043e\u0439 \u0441\u0431\u043e\u0440\u043a\u0435 \u044d\u0442\u043e\u0442 \u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d");
    }

    for item_delete_b in botania_delete {
        recipes.remove(item_delete_b);
    }

    //жизнеодуванчик
        mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "dandelifeon"}));
        mods.botania.ManaInfusion.removeRecipe(<botania:pistonrelay>);


//----------// Default Recipes //----------//

// Diluted Mana Pool
recipes.remove(<botania:pool:2>);
recipes.addShaped(<botania:pool:2>,
[[null, null, null],
 [<soulus:nugget_endersteel>, <minecraft:glowstone_dust>, <soulus:nugget_endersteel>],
 [<botania:livingrock0slab>, <botania:livingrock0slab>, <botania:livingrock0slab>]]);
 
// Mana Pool
recipes.remove(<botania:pool>);
recipes.addShaped(<botania:pool>,
[[null, null, null],
 [<soulus:ingot_endersteel>, <evilcraft:potentia_sphere>, <soulus:ingot_endersteel>],
 [<botania:livingrock>, <botania:pool:2>, <botania:livingrock>]]);
 
// Fabulous Mana Pool
recipes.remove(<botania:pool:3>);
recipes.addShaped(<botania:pool:3>,
[[null, null, null],
 [<soulus:block_endersteel_dark>, <uniquecrops:emblem.rainbow>, <soulus:block_endersteel_dark>],
 [<botania:shimmerrock>, <botania:pool>, <botania:shimmerrock>]]);
 
// Mana Spreader
recipes.remove(<botania:spreader>);
recipes.addShaped(<botania:spreader>,
[[<botania:livingwood:1>, <botania:livingwood:1>, <integrateddynamics:variable_transformer>],
 [<evilcraft:potentia_sphere>, <soulus:ingot_endersteel>, <integrateddynamics:logic_director>],
 [<botania:livingwood:1>, <botania:livingwood:1>, <integrateddynamics:variable_transformer:1>]]);

// Elven Mana Spreader
recipes.remove(<botania:spreader:2>);
recipes.addShaped(<botania:spreader:2>,
[[<botania:dreamwood>, <soulus:gear_oscillating>, <botania:dreamwood>],
 [<botania:manaresource:7>, <botania:spreader>, <evilcraft:inverted_potentia>],
 [<botania:dreamwood>, <soulus:gear_oscillating>, <botania:dreamwood>]]);

// Gaia Mana Spreader
recipes.remove(<botania:spreader:3>);
recipes.addShaped(<botania:spreader:3>,
[[<botania:rune:8>, <soulus:gear_niobium>, <botania:manaresource:14>],
 [<evilcraft:inverted_potentia:1>, <botania:spreader:2>, <integrateddynamics:logic_director>],
 [<botania:manaresource:14>, <soulus:gear_niobium>, <botania:rune:8>]]);

 
// Mana Lens
recipes.remove(<botania:lens>);
recipes.addShaped(<botania:lens>,
[[<integrateddynamics:variable_transformer>, <botania:manaresource>, <integrateddynamics:logic_director>],
 [<botania:manaresource>, <uniquecrops:invisiglass>, <botania:manaresource>],
 [<evilcraft:potentia_sphere>, <botania:manaresource>, <integrateddynamics:variable_transformer:1>]]);
 
// Mana Pylon
recipes.remove(<botania:pylon>);
recipes.addShaped(<botania:pylon>,
[[<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>],
 [<botania:manaresource:2>, <botania:storage>, <botania:manaresource:2>],
 [<minecraft:gold_block>, <soulus:block_endersteel>, <minecraft:gold_block>]]);
 
// Mana Spreader
recipes.remove(<botania:spreader>);
recipes.addShaped(<botania:spreader>,
[[<botania:livingwood:1>, <botania:livingwood:1>, <integrateddynamics:variable_transformer>],
 [<evilcraft:potentia_sphere>, <soulus:ingot_endersteel>, <integrateddynamics:logic_director>],
 [<botania:livingwood:1>, <botania:livingwood:1>, <integrateddynamics:variable_transformer:1>]]);
 
// Horn of The Wild
recipes.remove(<botania:grasshorn>);
recipes.addShaped(<botania:grasshorn>,
[[null, <botania:livingwood>, <botania:rune:2>],
 [<botania:livingwood>, <botania:grassseeds>, <botania:livingwood>],
 [<botania:livingwood>, <botania:livingwood>, null]]);
 
// Drum of The Wild
recipes.remove(<botania:forestdrum>);
recipes.addShaped(<botania:forestdrum>,
[[<botania:rune:5>, <minecraft:leather>, <botania:rune:11>],
 [<botania:livingwood>, <botania:grasshorn>, <botania:livingwood>],
 [<botania:rune:2>, <minecraft:leather>, <botania:rune:2>]]);
 
// Drum of The Canopy
recipes.remove(<botania:forestdrum:2>);
recipes.addShaped(<botania:forestdrum:2>,
[[<botania:rune:5>, <minecraft:leather>, <botania:rune:11>],
 [<botania:livingwood>, <botania:grasshorn:1>, <botania:livingwood>],
 [<botania:rune:2>, <minecraft:leather>, <botania:rune:2>]]);
 
// Drum of The Gathering
recipes.remove(<botania:forestdrum:1>);
recipes.addShaped(<botania:forestdrum:1>,
[[<botania:rune:11>, <minecraft:leather>, <botania:rune:11>],
 [<botania:dreamwood>, <botania:manaresource:7>, <botania:dreamwood>],
 [<botania:rune:11>, <minecraft:leather>, <botania:rune:11>]]);
 
// Lens: Bore
recipes.remove(<botania:lens:7>);
recipes.addShaped(<botania:lens:7>,
[[<ore:dyeLime>, <botania:manasteelshears>, <ore:dyeLime>],
 [<botania:manasteelpick>, <botania:lens>, <botania:manasteelshovel>],
 [<ore:dyeLime>, <botania:manasteelaxe>, <ore:dyeLime>]]);


// RuneAltar Recipes //

// Water Rune
RuneAltar.removeRecipe(<botania:rune>);
RuneAltar.addRecipe(<botania:rune> * 4, [<minecraft:dye:4>, <minecraft:fishing_rod>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <bloodmagic:component>, <botania:manaresource:23>, <minecraft:fish:2>, <minecraft:fish>, <minecraft:fish:3>], 5000);

// Fire Rune
RuneAltar.removeRecipe(<botania:rune:1>);
RuneAltar.addRecipe(<botania:rune:1> * 4, [<minecraft:nether_wart> , <minecraft:nether_wart>,<ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}}), <minecraft:netherrack>, <botania:manaresource:23>, <minecraft:fire_charge>, <minecraft:magma_cream>, <evilcraft:dark_power_gem>], 5000);

// Earth Rune
RuneAltar.removeRecipe(<botania:rune:2>);
RuneAltar.addRecipe(<botania:rune:2> * 4, [<minecraft:grass>, <minecraft:coal_block>, <minecraft:obsidian>, <minecraft:cobblestone>, <botania:manaresource:23>, <minecraft:gravel>, <minecraft:slime>, <ore:treeLeaves>], 5000);

// Air Rune
RuneAltar.removeRecipe(<botania:rune:3>);
RuneAltar.addRecipe(<botania:rune:3> * 4, [<minecraft:carpet>, <minecraft:sugar>, <minecraft:feather>, <uniquecrops:generic:12>, <botania:manaresource:23>, <prodigytech:zorra_leaf>, <prodigytech:ash>, <minecraft:glass_bottle>], 5000);

// Spring Rune
RuneAltar.removeRecipe(<botania:rune:4>);
RuneAltar.addRecipe(<botania:rune:4> * 2, [<botania:rune:2> ,<botania:rune>, <minecraft:bone_block>, <ore:treeSapling>, <minecraft:wheat_seeds>, <minecraft:wheat>, <minecraft:reeds>, <minecraft:grass>], 5000);

// Summer Rune
RuneAltar.removeRecipe(<botania:rune:5>);
RuneAltar.addRecipe(<botania:rune:5> * 2, [<botania:rune:2> ,<botania:rune:3>, <minecraft:pumpkin_pie>, <extrabotany:gildedmashedpotato>, <minecraft:sand>, <evilcraft:golden_string>, <minecraft:slime>, <minecraft:speckled_melon>], 5000);

// Winter Rune
RuneAltar.removeRecipe(<botania:rune:7>);
RuneAltar.addRecipe(<botania:rune:7> * 2, [<botania:rune:8> , <botania:manaresource:2>, <botania:manacookie>, <minecraft:pumpkin>, <uniquecrops:genericfood.eggnog>, <minecraft:snow>, <ore:wool>, <minecraft:cake>], 5000);

// Mana Rune
RuneAltar.removeRecipe(<botania:rune:8>);
RuneAltar.addRecipe(<botania:rune:8> * 2, [<botania:storage> ,<evilcraft:dark_gem>, <soulus:ingot_endersteel>, <soulus:ingot_endersteel>, <botania:manaresource>, <botania:manaresource>, <botania:manaresource:23>, <botania:manaresource:1>], 5000);

// Rune of Gluttony 
RuneAltar.removeRecipe(<botania:rune:10>);
RuneAltar.addRecipe(<botania:rune:10> * 2, [<botania:manaresource>, <soulus:ingot_endersteel>, <evilcraft:dark_gem>, <botania:manaresource>, <botania:manaresource:2>, <botania:quartztypemana>, <botania:rune:7>, <botania:rune:1>, <uniquecrops:emblem.ironstomach>], 5000);

// Rune of Greed 
RuneAltar.removeRecipe(<botania:rune:11>);
RuneAltar.addRecipe(<botania:rune:11> * 2, [<botania:rune>, <botania:rune:4>, <atum:coin_gold>, <atum:loot_gold_necklace>, <atum:loot_gold_ring>, <atum:loot_gold_broach>, <atum:loot_gold_scepter>, <botania:storage:3>], 5000);

// Rune of Greed 
RuneAltar.removeRecipe(<botania:rune:15>);
RuneAltar.addRecipe(<botania:rune:15> * 2, [<minecraft:wool:10>, <minecraft:wool:3>, <minecraft:wool:13>, <minecraft:wool:4>, <minecraft:wool:1>, <minecraft:wool:14>, <botania:lens:14>, <botania:storage:3>], 5000);

// Rune of Wrath
RuneAltar.removeRecipe(<botania:rune:13>);
RuneAltar.addRecipe(<botania:rune:13> * 2, [<evilcraft:blood_orb:1>, <evilcraft:dull_dust>, <evilcraft:dark_gem_crushed>,<evilcraft:inverted_potentia:1>, <botania:rune:1>, <botania:rune:4>, <botania:rune:8>, <botania:manaresource:2>], 5000);

// Nature Pylon
recipes.remove(<botania:pylon:1>);
RuneAltar.addRecipe(<botania:pylon:1>, [<botania:rune> ,<botania:rune:1>, <botania:rune:2>, <botania:rune:3>, <botania:manaresource:4>, <botania:manaresource:4>, <botania:manaresource:4>, <botania:manaresource:4>, <minecraft:end_crystal>, <minecraft:end_crystal>, <botania:pylon>], 25000);

// Gaia Pylon
recipes.remove(<botania:pylon:2>);
RuneAltar.addRecipe(<botania:pylon:2>, [<botania:rune> ,<botania:rune:1>, <botania:rune:2>, <botania:rune:3>, <botania:rune:4>, <botania:rune:5>, <botania:rune:6>, <botania:rune:7>, <botania:rune:8>, <botania:rune:9>, <botania:rune:10>, <botania:rune:11>, <botania:storage:2>, <botania:storage:2>, <botania:pylon:1>], 250000);

val upBook = <uniquecrops:generic:18>;
upBook.addShiftTooltip("§4§lИсточник омнивиолета: §b§l" + 2000 + " маны", "Shift для информации");
Omniviolet.add(2000, upBook);

var mana = 1000;
for i in 1 to 11 {
    val book1 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: i as short, id: 35 as short}]});
    book1.addShiftTooltip("§4§lИсточник омнивиолета: §b§l" + mana + " маны", "Shift для информации");
    
    Omniviolet.add(mana, book1);

    if i == 1 {
        RuneAltar.addRecipe(book1, [<minecraft:book>, upBook, <botania:rune>, <botania:rune:1>, <botania:rune:2>, <botania:rune:3>, <botania:rune:8>], mana / 4);
    } 
    else {
        var tempIndex = i - 1; 
        val book2 = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: tempIndex as short, id: 35 as short}]});
        RuneAltar.addRecipe(book1, [book2, upBook, <botania:rune>, <botania:rune:1>, <botania:rune:2>, <botania:rune:3>, <botania:rune:8>], mana / 4);
    }
    mana *= 2;
}

// Apothecary Recipes //

// Snair (Blood Magic)
recipes.remove(<bloodmagic:soul_snare>);
Apothecary.addRecipe(<bloodmagic:soul_snare> * 4, [<alchemistry:ingot:47>, <alchemistry:ingot:47>, <alchemistry:ingot:22>, <alchemistry:ingot:22>, <evilcraft:golden_string>, <evilcraft:golden_string>, <evilcraft:golden_string>, <evilcraft:golden_string>, <evilcraft:potentia_sphere>]);

// Pure Daisy
Apothecary.removeRecipe("puredaisy");
Apothecary.addRecipe("puredaisy", [<minecraft:sugar>, <prodigytech:tartaric_stoker>, <botania:petal>, <botania:petal>, <evilcraft:potentia_sphere>, <botania:manaresource:6>, <botania:manaresource:6>, <uniquecrops:seedcobblonia>]);

// Endoflame
Apothecary.removeRecipe("endoflame");
Apothecary.addRecipe("endoflame", [<minecraft:furnace>, <prodigytech:tartaric_stoker>, <botania:petal:1>, <botania:petal:1>, <evilcraft:burning_gem_stone>, <minecraft:coal_block>, <minecraft:obsidian>, <uniquecrops:seedmaryjane>]);

// Thermalily
Apothecary.removeRecipe("thermalily");
Apothecary.addRecipe("thermalily", [<minecraft:deadbush>, <botania:petal:1>, <botania:petal:14>, <evilcraft:burning_gem_stone>, <botania:rune:1>, <botania:rune:2>, <uniquecrops:seedmaryjane>]);

// Jaded Amaranthus
Apothecary.removeRecipe("jadedAmaranthus");
Apothecary.addRecipe("jadedAmaranthus", [<botania:petal:5>, <botania:petal:10>, <botania:petal:13>, <evilcraft:potentia_sphere>, <botania:rune>, <botania:rune:1>, <botania:rune:2>, <botania:rune:3>, <botania:rune:4>]);

// Hopperhock
Apothecary.removeRecipe("hopperhock");
Apothecary.addRecipe("hopperhock", [<minecraft:hopper>, <botania:rune:3>, <botania:manaresource:6>, <botania:petal:7>, <botania:petal:8>, <integrateddynamics:logic_director>, <integrateddynamics:variable_transformer:1>, <integrateddynamics:variable_transformer>]);

// Gourmaryllis
Apothecary.removeRecipe("gourmaryllis");
Apothecary.addRecipe("gourmaryllis", [<botania:petal:4>, <botania:petal:1>, <botania:rune:1>, <botania:rune:5>, <uniquecrops:emblem.ironstomach>, <uniquecrops:emblem.ironstomach>, <minecraft:golden_apple>, <evilcraft:blood_infusion_core>]);

// Kekimurus
Apothecary.removeRecipe("kekimurus");
Apothecary.addRecipe("kekimurus", [<botania:petal:1>, <botania:petal>, <botania:petal:12>, <botania:manaresource:8>, <prodigytech:sugar_cube>, <prodigytech:sugar_cube>, <uniquecrops:emblem.ironstomach>, <botania:rune:10>]);

// Orechid
Apothecary.removeRecipe("orechid");
Apothecary.addRecipe("orechid", [<bloodmagic:component>, <bloodmagic:component:13>, <bloodmagic:component:3>, <bloodmagic:component:8>, <botania:manaresource:8>, <botania:storage:1>, <botania:rune:15>, <botania:rune:11>, <uniquecrops:seedmerlinia>, <uniquecrops:seedmerlinia>, <uniquecrops:seedmerlinia>]);

// Orechid Ignem
Apothecary.removeRecipe("orechidIgnem");
Apothecary.addRecipe("orechidIgnem", [<bloodmagic:component:1>, <bloodmagic:component:13>, <bloodmagic:component:3>, <bloodmagic:component:8>, <botania:manaresource:8>, <botania:storage:1>, <botania:rune:15>, <botania:rune:11>, <uniquecrops:seedmerlinia>, <uniquecrops:seedmerlinia>, <uniquecrops:seedmerlinia>]);

// Munchdew
Apothecary.removeRecipe("munchdew");
Apothecary.addRecipe("munchdew", [<alchemistry:compound:57>, <alchemistry:compound:57>, <uniquecrops:emblem.ironstomach>, <botania:rune:10>, <botania:petal:5>, <botania:petal:14>, <botania:petal:13>, <botania:rune:11>, <uniquecrops:seeddevilsnare>]);

// Munchdew
Apothecary.removeRecipe("hydroangeas");
Apothecary.addRecipe("hydroangeas", [<botania:petal:11>, <botania:petal:3>, <alchemistry:compound:7>, <botania:rune>]);

// Sunbless
Apothecary.removeRecipe("sunbless");
Apothecary.addRecipe("sunbless", [<botania:petal:4>, <botania:petal:14>, <botania:petal:1>, <minecraft:daylight_detector>, <evilcraft:potentia_sphere>, <botania:quartz:6>]);

// Moonbless
Apothecary.removeRecipe("moonbless");
Apothecary.addRecipe("moonbless", [<botania:petal:10>, <botania:petal:2>, <botania:petal:14>, <minecraft:daylight_detector>, <evilcraft:potentia_sphere>, <botania:quartz:3>]);

// Reikar Lily
Apothecary.removeRecipe("reikarlily");
Apothecary.addRecipe("reikarlily", [<botania:rune:9>, <botania:rune:10>, <botania:rune:11>, <botania:rune:12>, <botania:rune:13>, <botania:rune:14>, <botania:rune:15>, <botania:thundersword>, <botania:thundersword>, <botania:thundersword>, <botania:thundersword>, <evilcraft:sceptre_of_thunder>, <evilcraft:sceptre_of_thunder>, <evilcraft:sceptre_of_thunder>, <evilcraft:sceptre_of_thunder>]);

// Spectrolus
Apothecary.removeRecipe("spectrolus");
Apothecary.addRecipe("spectrolus", [<botania:rune:15>, <botania:manaresource:8>, <botania:petal:1>, <botania:petal:2>, <botania:petal:3>, <botania:petal:4>, <botania:petal:5>, <botania:petal:6>, <botania:petal:7>, <botania:petal:8>, <botania:petal:9>, <botania:petal:10>, <botania:petal:11>, <botania:petal:12>, <botania:petal:13>, <botania:petal:14>, <botania:petal:15>]);

// Entropinnyum
Apothecary.removeRecipe("entropinnyum");
Apothecary.addRecipe("entropinnyum", [<botania:rune:13>, <botania:rune:1>, <botania:petal>, <botania:petal:14>, <botania:petal:15>, <minecraft:tnt>, <minecraft:fire_charge>, <minecraft:gunpowder>, <uniquecrops:democord>]);

//----------// Orechid Recipes //----------//

Orechid.removeOre(<ore:oreDark>);
Orechid.addOre(<ore:oreDark>, 3000);
Orechid.addOre(<ore:oreXen>, 3000);

OrechidIgnem.addOre(<ore:glowstone>, 500);
OrechidIgnem.addOre(<ore:blockRedstone>, 500);
OrechidIgnem.addOre(<ore:blockLapis>, 500);


//----------// Pure Daisy Recipes //----------//

// Convert
PureDaisy.addRecipe(<uniquecrops:oldcobble>, <minecraft:obsidian>, 300);
PureDaisy.addRecipe(<minecraft:pumpkin>, <minecraft:melon_block>, 60);
PureDaisy.addRecipe(<minecraft:melon_block>, <minecraft:pumpkin>, 60);
PureDaisy.addRecipe(<minecraft:lapis_ore>, <minecraft:redstone_ore>, 60);
PureDaisy.addRecipe(<minecraft:redstone_ore>, <minecraft:lapis_ore>, 60);
PureDaisy.addRecipe(<minecraft:quartz_ore>, <minecraft:netherrack>, 60);
PureDaisy.addRecipe(<minecraft:gold_ore>, <minecraft:iron_ore>, 60);
PureDaisy.addRecipe(<minecraft:iron_ore>, <minecraft:coal_ore>, 60);
PureDaisy.addRecipe(<minecraft:coal_ore>, <minecraft:stone>, 60);
PureDaisy.addRecipe(<minecraft:emerald_ore>, <minecraft:diamond_ore>, 60);
PureDaisy.addRecipe(<minecraft:diamond_ore>, <minecraft:emerald_ore>, 60);


//----------// Mana Infusion Recipes //----------//

// Infusion //
ManaInfusion.addInfusion(<minecraft:grass>, <minecraft:dirt>, 500);
ManaInfusion.addInfusion(<evilcraft:werewolf_bone>, <minecraft:bone>, 25000);

// Alchemy // 
ManaInfusion.addAlchemy(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <ceramics:clay_bucket>, 500);
ManaInfusion.addAlchemy(<minecraft:gold_nugget>, <minecraft:iron_nugget>, 2000);
ManaInfusion.addAlchemy(<minecraft:redstone>, <prodigytech:sawdust>, 2000);
ManaInfusion.addAlchemy(<minecraft:glowstone_dust>, <prodigytech:gold_dust>, 2000);

// Conjuration //
ManaInfusion.addConjuration(<minecraft:iron_nugget> * 2, <minecraft:iron_nugget>, 1000);
ManaInfusion.addConjuration(<prodigytech:ferramic_nugget> * 2, <prodigytech:ferramic_nugget>, 1000);
ManaInfusion.addConjuration(<evilcraft:dark_gem> * 2, <evilcraft:dark_gem>, 5000);
ManaInfusion.addConjuration(<botania:manaresource:15>, <minecraft:glass_bottle>, 5000);

// Elven Trading // 
mods.botania.ElvenTrade.addRecipe([<botania:blacklotus:1>], [<evilcraft:inverted_potentia:1> ,<minecraft:nether_star>,<botania:petal:15>, <botania:petal:15>, <botania:petal:15>, <botania:petal:15>, <botania:petal:15>]);

// Terra Blade
recipes.remove(<botania:terrasword>);
mods.botania.ElvenTrade.addRecipe([<botania:terrasword>], [<evilcraft:potentia_sphere>,<evilcraft:potentia_sphere>, <botania:manaresource:4>, <botania:manaresource:4>, <botania:manaresource:3>, ]);

// Starcaller
recipes.remove(<botania:starsword>);
mods.botania.ElvenTrade.addRecipe([<botania:starsword>], [<evilcraft:inverted_potentia:1> ,<botania:terrasword>, <botania:manaresource:15>, <botania:manaresource:15>]);

// Excalibur
recipes.remove(<extrabotany:excaliber>);
mods.botania.ElvenTrade.addRecipe([<extrabotany:excaliber>], [<botania:terrasword> ,<botania:thundersword>, <botania:starsword>, <extrabotany:material:3>, <botania:manaresource:13>, <evilcraft:inverted_potentia:1>, <evilcraft:inverted_potentia:1>, <evilcraft:inverted_potentia:1>]);

// Profaned Fishing Rod
mods.botania.ElvenTrade.addRecipe([<superfishing:profaned_fishing_rod>], [<superfishing:smoldering_fishing_rod> ,<superfishing:obsidian_fishing_rod>, <superfishing:blaze_fishing_rod>, <extrabotany:bottledflame>, <botania:rune:1>, <botania:rune:13>, <evilcraft:burning_gem_stone>]);



// <--- PETALS ---> //

//----------// Chemical Combiner //----------//
mods.alchemistry.Combiner.addRecipe(<botania:petal>,
 [<alchemistry:compound> * 2, <alchemistry:compound:16>]);


//----------// FireCrafting Recipes //----------//

FireCrafting.addRecipe(<botania:petal:1>, <botania:petal>);


//----------// FluidToItem Recipes //----------//

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


print("Initialized 'Botania'");
