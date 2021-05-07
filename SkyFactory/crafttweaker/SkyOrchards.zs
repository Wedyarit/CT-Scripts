/*
SkyFactory 4 Sky Orchards Recipe Script

This script handles the recipes for Sky Orchards.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//==================================Saplings
recipes.addShaped(<sky_orchards:sapling_clay>,
[[<sky_orchards:acorn_clay>, <sky_orchards:acorn_clay>, <sky_orchards:acorn_clay>],
[<sky_orchards:acorn_clay>, <sky_orchards:sapling_dirt>, <sky_orchards:acorn_clay>],
[<sky_orchards:acorn_clay>, <sky_orchards:acorn_clay>, <sky_orchards:acorn_clay>]]);

recipes.addShaped(<sky_orchards:sapling_clay>,
[[<minecraft:clay_ball>, <sky_orchards:resin_petrified>, <minecraft:clay_ball>],
[<sky_orchards:resin_petrified>, <sky_orchards:resin_dirt>, <sky_orchards:resin_petrified>],
[<minecraft:clay_ball>, <sky_orchards:sapling_dirt>, <minecraft:clay_ball>]]);

recipes.addShaped(<sky_orchards:sapling_bone>,
[[<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>],
[<minecraft:dye:15>, <sky_orchards:sapling_petrified>, <minecraft:dye:15>],
[<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>]]);

recipes.addShaped(<sky_orchards:sapling_cottonwood>,
[[<sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>],
[<sky_orchards:acorn_cottonwood>, <minecraft:sapling:3>, <sky_orchards:acorn_cottonwood>],
[<sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>]]);

recipes.addShaped(<sky_orchards:sapling_cottonwood>,
[[null, <minecraft:dye:15>, null],
[<minecraft:dye:15>, <minecraft:vine>, <minecraft:dye:15>],
[null, <minecraft:sapling:3>, null]]);

recipes.addShaped(<sky_orchards:sapling_redstone>,
[[<sky_orchards:acorn_redstone>, <sky_orchards:acorn_redstone>, <sky_orchards:acorn_redstone>],
[<sky_orchards:acorn_redstone>, <sky_orchards:sapling_coal>, <sky_orchards:acorn_redstone>],
[<sky_orchards:acorn_redstone>, <sky_orchards:acorn_redstone>, <sky_orchards:acorn_redstone>]]);

recipes.addShaped(<sky_orchards:sapling_redstone>,
[[<minecraft:redstone>, <ore:dyeRed>, <minecraft:redstone>],
[<sky_orchards:resin_iron>, <sky_orchards:resin_petrified>, <sky_orchards:resin_iron>],
[<minecraft:redstone>, <sky_orchards:sapling_coal>, <minecraft:redstone>]]);

recipes.addShaped(<sky_orchards:sapling_diamond>,
[[<sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>],
[<sky_orchards:acorn_diamond>, <sky_orchards:sapling_redstone>, <sky_orchards:acorn_diamond>],
[<sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>, <sky_orchards:acorn_diamond>]]);

recipes.addShaped(<sky_orchards:sapling_diamond>,
[[<minecraft:diamond>, <ore:treeResinSilver>, <minecraft:diamond>],
[<ore:treeResinGold>, <ore:treeResinLapis>, <ore:treeResinGold>],
[<minecraft:diamond>, <sky_orchards:sapling_redstone>, <minecraft:diamond>]]);

recipes.addShaped(<sky_orchards:sapling_cookie>,
[[<sky_orchards:acorn_cookie>, <sky_orchards:acorn_cookie>, <sky_orchards:acorn_cookie>],
[<sky_orchards:acorn_cookie>, <minecraft:sapling:3>, <sky_orchards:acorn_cookie>],
[<sky_orchards:acorn_cookie>, <sky_orchards:acorn_cookie>, <sky_orchards:acorn_cookie>]]);

recipes.addShaped(<sky_orchards:sapling_cookie>,
[[null, <minecraft:cookie>, null],
[<minecraft:cookie>, <minecraft:sugar>, <minecraft:cookie>],
[null, <minecraft:sapling:3>, null]]);

recipes.addShaped(<sky_orchards:sapling_bacon>,
[[<sky_orchards:acorn_bacon>, <sky_orchards:acorn_bacon>, <sky_orchards:acorn_bacon>],
[<sky_orchards:acorn_bacon>, <minecraft:sapling:3>, <sky_orchards:acorn_bacon>],
[<sky_orchards:acorn_bacon>, <sky_orchards:acorn_bacon>, <sky_orchards:acorn_bacon>]]);

recipes.addShaped(<sky_orchards:sapling_bacon>,
[[null, <tconstruct:edible>, null],
[<tconstruct:edible>, <minecraft:sugar>, <tconstruct:edible>],
[null, <rustic:sapling_apple>, null]]);

recipes.addShaped(<sky_orchards:sapling_donut>,
[[<sky_orchards:acorn_donut>, <sky_orchards:acorn_donut>, <sky_orchards:acorn_donut>],
[<sky_orchards:acorn_donut>, <minecraft:sapling:3>, <sky_orchards:acorn_donut>],
[<sky_orchards:acorn_donut>, <sky_orchards:acorn_donut>, <sky_orchards:acorn_donut>]]);

recipes.addShaped(<sky_orchards:sapling_donut>,
[[null, <xlfoodmod:donut>, null],
[<xlfoodmod:donut>, <minecraft:sugar>, <xlfoodmod:donut>],
[null, <rustic:sapling_apple>, null]]);

recipes.addShaped(<sky_orchards:sapling_lapis>,
[[<sky_orchards:acorn_lapis>, <sky_orchards:acorn_lapis>, <sky_orchards:acorn_lapis>],
[<sky_orchards:acorn_lapis>, <minecraft:sapling:5>, <sky_orchards:acorn_lapis>],
[<sky_orchards:acorn_lapis>, <sky_orchards:acorn_lapis>, <sky_orchards:acorn_lapis>]]);

recipes.addShaped(<sky_orchards:sapling_lapis>,
[[<minecraft:dye:4>, <sky_orchards:resin_bone>, <minecraft:dye:4>],
[<sky_orchards:resin_clay>, <minecraft:potion>.withTag({Potion: "minecraft:water"}).transformReplace(<minecraft:glass_bottle>), <sky_orchards:resin_clay>],
[<minecraft:dye:4>, <minecraft:sapling:5>, <minecraft:dye:4>]]);

recipes.addShaped(<sky_orchards:sapling_emerald>,
[[<minecraft:emerald>, <sky_orchards:resin_nickel>, <minecraft:emerald>],
[<sky_orchards:resin_tin>, <tconstruct:materials:9>, <sky_orchards:resin_tin>],
[<minecraft:emerald>, <sky_orchards:sapling_diamond>, <minecraft:emerald>]]);

recipes.addShaped(<sky_orchards:sapling_quartz>,
[[<sky_orchards:resin_netherrack>, <ore:gemQuartz>, <sky_orchards:resin_netherrack>],
[<ore:netherrack>, <tconstruct:materials:11>, <ore:netherrack>],
[<sky_orchards:resin_netherrack>, <sky_orchards:sapling_emerald>, <sky_orchards:resin_netherrack>]]);

recipes.addShaped(<sky_orchards:sapling_glowstone>,
[[<minecraft:glowstone_dust>, <ore:gemQuartz>, <minecraft:glowstone_dust>],
[<sky_orchards:resin_quartz>, <ore:dustBlaze>, <sky_orchards:resin_quartz>],
[<minecraft:glowstone_dust>, <sky_orchards:sapling_redstone>, <minecraft:glowstone_dust>]]);

recipes.addShaped(<sky_orchards:sapling_netherrack>,
[[null, <minecraft:netherrack>, null],
[<sky_orchards:resin_diamond>, <sky_orchards:resin_gold>, <sky_orchards:resin_diamond>],
[null, <sky_orchards:sapling_redstone>, null]]);

recipes.addShaped(<sky_orchards:sapling_petrified>,
[[<sky_orchards:acorn_petrified>, <sky_orchards:acorn_petrified>, <sky_orchards:acorn_petrified>],
[<sky_orchards:acorn_petrified>, <sky_orchards:sapling_dirt>, <sky_orchards:acorn_petrified>],
[<sky_orchards:acorn_petrified>, <sky_orchards:acorn_petrified>, <sky_orchards:acorn_petrified>]]);

recipes.addShaped(<sky_orchards:sapling_sand>,
[[<sky_orchards:acorn_sand>, <sky_orchards:acorn_sand>, <sky_orchards:acorn_sand>],
[<sky_orchards:acorn_sand>, <sky_orchards:sapling_petrified>, <sky_orchards:acorn_sand>],
[<sky_orchards:acorn_sand>, <sky_orchards:acorn_sand>, <sky_orchards:acorn_sand>]]);

recipes.addShaped(<sky_orchards:sapling_dust>,
[[<sky_orchards:acorn_dust>, <sky_orchards:acorn_dust>, <sky_orchards:acorn_dust>],
[<sky_orchards:acorn_dust>, <sky_orchards:sapling_sand>, <sky_orchards:acorn_dust>],
[<sky_orchards:acorn_dust>, <sky_orchards:acorn_dust>, <sky_orchards:acorn_dust>]]);

recipes.addShaped(<sky_orchards:sapling_gravel>,
[[<sky_orchards:acorn_gravel>, <sky_orchards:acorn_gravel>, <sky_orchards:acorn_gravel>],
[<sky_orchards:acorn_gravel>, <sky_orchards:sapling_petrified>, <sky_orchards:acorn_gravel>],
[<sky_orchards:acorn_gravel>, <sky_orchards:acorn_gravel>, <sky_orchards:acorn_gravel>]]);

recipes.addShaped(<sky_orchards:sapling_dirt>,
[[<sky_orchards:acorn_dirt>, <sky_orchards:acorn_dirt>, <sky_orchards:acorn_dirt>],
[<sky_orchards:acorn_dirt>, <minecraft:sapling>, <sky_orchards:acorn_dirt>],
[<sky_orchards:acorn_dirt>, <sky_orchards:acorn_dirt>, <sky_orchards:acorn_dirt>]]);

recipes.addShaped(<sky_orchards:sapling_cobalt>,
[[null, <sky_orchards:resin_ardite>, null],
[<minecraft:diamond>, <tconstruct:slime:3>, <minecraft:diamond>],
[null, <tconstruct:slime_sapling:1>, null]]);

recipes.addShaped(<sky_orchards:sapling_ardite>,
[[null, <minecraft:nether_star>, null],
[<minecraft:diamond>, <tconstruct:slime:3>, <minecraft:diamond>],
[null, <tconstruct:slime_sapling:2>, null]]);

recipes.addShaped(<sky_orchards:sapling_uranium>,
[[<ic2:crop_res:3>, <thermalfoundation:material:1024>, <ic2:crop_res:3>],
[<thermalfoundation:material:1025>, <sky_orchards:sapling_aluminum>, <thermalfoundation:material:1026>],
[<ic2:crop_res:3>, <thermalfoundation:material:1027>, <ic2:crop_res:3>]]);
//================================== Amber Crafting

recipes.addShaped(<sky_orchards:amber_aluminum>,
[[<sky_orchards:resin_cottonwood>, <sky_orchards:resin_lead>, <sky_orchards:resin_cottonwood>],
[<sky_orchards:resin_tin>, <ore:dyeLightGray>, <sky_orchards:resin_tin>],
[<sky_orchards:resin_cottonwood>, <sky_orchards:resin_lead>, <sky_orchards:resin_cottonwood>]]);

recipes.addShaped(<sky_orchards:amber_aluminum>,
[[<sky_orchards:resin_aluminum>, <sky_orchards:acorn_aluminum>, <sky_orchards:resin_aluminum>],
[<sky_orchards:acorn_aluminum>, <sky_orchards:resin_aluminum>, <sky_orchards:acorn_aluminum>],
[<sky_orchards:resin_aluminum>, <sky_orchards:acorn_aluminum>, <sky_orchards:resin_aluminum>]]);

recipes.addShaped(<sky_orchards:amber_platinum>,
[[<sky_orchards:resin_gold>, <sky_orchards:resin_aluminum>, <sky_orchards:resin_gold>],
[<sky_orchards:resin_lapis>, <exnihilocreatio:block_dust>, <sky_orchards:resin_lapis>],
[<sky_orchards:resin_gold>, <sky_orchards:resin_aluminum>, <sky_orchards:resin_gold>]]);

recipes.addShaped(<sky_orchards:amber_platinum>,
[[<sky_orchards:resin_platinum>, <sky_orchards:acorn_platinum>, <sky_orchards:resin_platinum>],
[<sky_orchards:acorn_platinum>, <sky_orchards:resin_platinum>, <sky_orchards:acorn_platinum>],
[<sky_orchards:resin_platinum>, <sky_orchards:acorn_platinum>, <sky_orchards:resin_platinum>]]);

recipes.addShaped(<sky_orchards:amber_uranium>,
[[<sky_orchards:resin_uranium>, <sky_orchards:acorn_uranium>, <sky_orchards:resin_uranium>],
[<sky_orchards:acorn_uranium>, <sky_orchards:resin_uranium>, <sky_orchards:acorn_uranium>],
[<sky_orchards:resin_uranium>, <sky_orchards:acorn_uranium>, <sky_orchards:resin_uranium>]]);

recipes.addShaped(<sky_orchards:amber_iron>,
[[<sky_orchards:resin_coal>, <sky_orchards:resin_gravel>, <sky_orchards:resin_coal>],
[<sky_orchards:resin_sand>, <sky_orchards:resin_clay>, <sky_orchards:resin_sand>],
[<sky_orchards:resin_coal>, <sky_orchards:resin_gravel>, <sky_orchards:resin_coal>]]);

recipes.addShaped(<sky_orchards:amber_iron>,
[[<sky_orchards:resin_coal>, <sky_orchards:resin_sand>, <sky_orchards:resin_coal>],
[<sky_orchards:resin_gravel>, <sky_orchards:resin_clay>, <sky_orchards:resin_gravel>],
[<sky_orchards:resin_coal>, <sky_orchards:resin_sand>, <sky_orchards:resin_coal>]]);

recipes.addShaped(<sky_orchards:amber_iron>,
[[<sky_orchards:resin_iron>, <sky_orchards:acorn_iron>, <sky_orchards:resin_iron>],
[<sky_orchards:acorn_iron>, <sky_orchards:resin_iron>, <sky_orchards:acorn_iron>],
[<sky_orchards:resin_iron>, <sky_orchards:acorn_iron>, <sky_orchards:resin_iron>]]);

recipes.addShaped(<sky_orchards:amber_gold>,
[[<sky_orchards:resin_iron>, <sky_orchards:resin_lead>, <sky_orchards:resin_iron>],
[<sky_orchards:resin_sand>, <ore:dyeYellow>, <sky_orchards:resin_sand>],
[<sky_orchards:resin_iron>, <sky_orchards:resin_lead>, <sky_orchards:resin_iron>]]);

recipes.addShaped(<sky_orchards:amber_gold>,

[[<sky_orchards:resin_iron>, <sky_orchards:resin_sand>, <sky_orchards:resin_iron>],
[<sky_orchards:resin_lead>, <ore:dyeYellow>, <sky_orchards:resin_lead>],
[<sky_orchards:resin_iron>, <sky_orchards:resin_sand>, <sky_orchards:resin_iron>]]);

recipes.addShaped(<sky_orchards:amber_gold>,

[[<sky_orchards:resin_gold>, <sky_orchards:acorn_gold>, <sky_orchards:resin_gold>],
[<sky_orchards:acorn_gold>, <sky_orchards:resin_gold>, <sky_orchards:acorn_gold>],
[<sky_orchards:resin_gold>, <sky_orchards:acorn_gold>, <sky_orchards:resin_gold>]]);

recipes.addShaped(<sky_orchards:amber_lead>,
[[<sky_orchards:resin_petrified>, <sky_orchards:resin_iron>, <sky_orchards:resin_petrified>],
[<sky_orchards:resin_sand>, <ore:dyeBlue>, <sky_orchards:resin_sand>],
[<sky_orchards:resin_petrified>, <sky_orchards:resin_iron>, <sky_orchards:resin_petrified>]]);

recipes.addShaped(<sky_orchards:amber_lead>,

[[<sky_orchards:resin_petrified>, <sky_orchards:resin_sand>, <sky_orchards:resin_petrified>],
[<sky_orchards:resin_iron>, <ore:dyeBlue>, <sky_orchards:resin_iron>],
[<sky_orchards:resin_petrified>, <sky_orchards:resin_sand>, <sky_orchards:resin_petrified>]]);

recipes.addShaped(<sky_orchards:amber_lead>,

[[<sky_orchards:resin_lead>, <sky_orchards:acorn_lead>, <sky_orchards:resin_lead>],
[<sky_orchards:acorn_lead>, <sky_orchards:resin_lead>, <sky_orchards:acorn_lead>],
[<sky_orchards:resin_lead>, <sky_orchards:acorn_lead>, <sky_orchards:resin_lead>]]);

recipes.addShaped(<sky_orchards:amber_copper>,
[[<sky_orchards:resin_petrified>, <sky_orchards:resin_clay>, <sky_orchards:resin_petrified>],
[<sky_orchards:resin_sand>, <minecraft:sand:1>, <sky_orchards:resin_sand>],
[<sky_orchards:resin_petrified>, <sky_orchards:resin_clay>, <sky_orchards:resin_petrified>]]);

recipes.addShaped(<sky_orchards:amber_copper>,

[[<sky_orchards:resin_petrified>, <sky_orchards:resin_sand>, <sky_orchards:resin_petrified>],
[<sky_orchards:resin_clay>, <minecraft:sand:1>, <sky_orchards:resin_clay>],
[<sky_orchards:resin_petrified>, <sky_orchards:resin_sand>, <sky_orchards:resin_petrified>]]);

recipes.addShaped(<sky_orchards:amber_copper>,

[[<sky_orchards:resin_copper>, <sky_orchards:acorn_copper>, <sky_orchards:resin_copper>],
[<sky_orchards:acorn_copper>, <sky_orchards:resin_copper>, <sky_orchards:acorn_copper>],
[<sky_orchards:resin_copper>, <sky_orchards:acorn_copper>, <sky_orchards:resin_copper>]]);

recipes.addShaped(<sky_orchards:amber_tin>,
[[<sky_orchards:resin_bone>, <sky_orchards:resin_clay>, <sky_orchards:resin_bone>],
[<sky_orchards:resin_gravel>, <minecraft:flint>, <sky_orchards:resin_gravel>],
[<sky_orchards:resin_bone>, <sky_orchards:resin_clay>, <sky_orchards:resin_bone>]]);

recipes.addShaped(<sky_orchards:amber_tin>,

[[<sky_orchards:resin_bone>, <sky_orchards:resin_gravel>, <sky_orchards:resin_bone>],
[<sky_orchards:resin_clay>, <minecraft:flint>, <sky_orchards:resin_clay>],
[<sky_orchards:resin_bone>, <sky_orchards:resin_gravel>, <sky_orchards:resin_bone>]]);

recipes.addShaped(<sky_orchards:amber_tin>,
[[<sky_orchards:resin_tin>, <sky_orchards:acorn_tin>, <sky_orchards:resin_tin>],
[<sky_orchards:acorn_tin>, <sky_orchards:resin_tin>, <sky_orchards:acorn_tin>],
[<sky_orchards:resin_tin>, <sky_orchards:acorn_tin>, <sky_orchards:resin_tin>]]);

recipes.addShaped(<sky_orchards:amber_silver>,
[[<sky_orchards:resin_petrified>, <sky_orchards:resin_lead>, <sky_orchards:resin_petrified>],
[<sky_orchards:resin_tin>, <ore:dyeLightGray>, <sky_orchards:resin_tin>],
[<sky_orchards:resin_petrified>, <sky_orchards:resin_lead>, <sky_orchards:resin_petrified>]]);

recipes.addShaped(<sky_orchards:amber_silver>,
[[<sky_orchards:resin_petrified>, <sky_orchards:resin_tin>, <sky_orchards:resin_petrified>],
[<sky_orchards:resin_lead>, <ore:dyeLightGray>, <sky_orchards:resin_lead>],
[<sky_orchards:resin_petrified>, <sky_orchards:resin_tin>, <sky_orchards:resin_petrified>]]);

recipes.addShaped(<sky_orchards:amber_silver>,
[[<sky_orchards:resin_silver>, <sky_orchards:acorn_silver>, <sky_orchards:resin_silver>],
[<sky_orchards:acorn_silver>, <sky_orchards:resin_silver>, <sky_orchards:acorn_silver>],
[<sky_orchards:resin_silver>, <sky_orchards:acorn_silver>, <sky_orchards:resin_silver>]]);

recipes.addShaped(<sky_orchards:amber_nickel>,
[[<sky_orchards:resin_petrified>, <sky_orchards:resin_bone>, <sky_orchards:resin_petrified>],
[<sky_orchards:resin_sand>, <ore:dyeBrown>, <sky_orchards:resin_sand>],
[<sky_orchards:resin_petrified>, <sky_orchards:resin_bone>, <sky_orchards:resin_petrified>]]);

recipes.addShaped(<sky_orchards:amber_nickel>,
[[<sky_orchards:resin_petrified>, <sky_orchards:resin_sand>, <sky_orchards:resin_petrified>],
[<sky_orchards:resin_bone>, <ore:dyeBrown>, <sky_orchards:resin_bone>],
[<sky_orchards:resin_petrified>, <sky_orchards:resin_sand>, <sky_orchards:resin_petrified>]]);

recipes.addShaped(<sky_orchards:amber_nickel>,
[[<sky_orchards:resin_nickel>, <sky_orchards:acorn_nickel>, <sky_orchards:resin_nickel>],
[<sky_orchards:acorn_nickel>, <sky_orchards:resin_nickel>, <sky_orchards:acorn_nickel>],
[<sky_orchards:resin_nickel>, <sky_orchards:acorn_nickel>, <sky_orchards:resin_nickel>]]);

recipes.addShaped(<sky_orchards:amber_redstone>,
[[<sky_orchards:resin_redstone>, <sky_orchards:acorn_redstone>, <sky_orchards:resin_redstone>],
[<sky_orchards:acorn_redstone>, <sky_orchards:resin_redstone>, <sky_orchards:acorn_redstone>],
[<sky_orchards:resin_redstone>, <sky_orchards:acorn_redstone>, <sky_orchards:resin_redstone>]]);

recipes.addShaped(<sky_orchards:amber_glowstone>,
[[<sky_orchards:resin_glowstone>, <sky_orchards:acorn_glowstone>, <sky_orchards:resin_glowstone>],
[<sky_orchards:acorn_glowstone>, <sky_orchards:resin_glowstone>, <sky_orchards:acorn_glowstone>],
[<sky_orchards:resin_glowstone>, <sky_orchards:acorn_glowstone>, <sky_orchards:resin_glowstone>]]);

recipes.addShaped(<sky_orchards:amber_cobalt>,
[[<sky_orchards:resin_cobalt>, <sky_orchards:acorn_cobalt>, <sky_orchards:resin_cobalt>],
[<sky_orchards:acorn_cobalt>, <sky_orchards:resin_cobalt>, <sky_orchards:acorn_cobalt>],
[<sky_orchards:resin_cobalt>, <sky_orchards:acorn_cobalt>, <sky_orchards:resin_cobalt>]]);

recipes.addShaped(<sky_orchards:amber_ardite>,
[[<sky_orchards:resin_ardite>, <sky_orchards:acorn_ardite>, <sky_orchards:resin_ardite>],
[<sky_orchards:acorn_ardite>, <sky_orchards:resin_ardite>, <sky_orchards:acorn_ardite>],
[<sky_orchards:resin_ardite>, <sky_orchards:acorn_ardite>, <sky_orchards:resin_ardite>]]);

recipes.addShaped(<sky_orchards:amber_netherrack>,
[[<sky_orchards:acorn_netherrack>, <sky_orchards:resin_netherrack>, <sky_orchards:acorn_netherrack>],
[<sky_orchards:resin_netherrack>, <sky_orchards:acorn_netherrack>, <sky_orchards:resin_netherrack>],
[<sky_orchards:acorn_netherrack>, <sky_orchards:resin_netherrack>, <sky_orchards:acorn_netherrack>]]);

recipes.addShaped(<sky_orchards:amber_quartz>,
[[<sky_orchards:resin_quartz>, <sky_orchards:acorn_quartz>, <sky_orchards:resin_quartz>],
[<sky_orchards:acorn_quartz>, <sky_orchards:resin_quartz>, <sky_orchards:acorn_quartz>],
[<sky_orchards:resin_quartz>, <sky_orchards:acorn_quartz>, <sky_orchards:resin_quartz>]]);

recipes.addShaped(<sky_orchards:amber_emerald>,
[[<sky_orchards:resin_emerald>, <sky_orchards:acorn_emerald>, <sky_orchards:resin_emerald>],
[<sky_orchards:acorn_emerald>, <sky_orchards:resin_emerald>, <sky_orchards:acorn_emerald>],
[<sky_orchards:resin_emerald>, <sky_orchards:acorn_emerald>, <sky_orchards:resin_emerald>]]);

recipes.addShaped(<sky_orchards:amber_donut>,
[[<sky_orchards:resin_donut>, <sky_orchards:acorn_donut>, <sky_orchards:resin_donut>],
[<sky_orchards:acorn_donut>, <sky_orchards:resin_donut>, <sky_orchards:acorn_donut>],
[<sky_orchards:resin_donut>, <sky_orchards:acorn_donut>, <sky_orchards:resin_donut>]]);

recipes.addShaped(<sky_orchards:amber_bacon>,
[[<sky_orchards:resin_bacon>, <sky_orchards:acorn_bacon>, <sky_orchards:resin_bacon>],
[<sky_orchards:acorn_bacon>, <sky_orchards:resin_bacon>, <sky_orchards:acorn_bacon>],
[<sky_orchards:resin_bacon>, <sky_orchards:acorn_bacon>, <sky_orchards:resin_bacon>]]);

recipes.addShaped(<sky_orchards:amber_cookie>,
[[<sky_orchards:resin_cookie>, <sky_orchards:acorn_cookie>, <sky_orchards:resin_cookie>],
[<sky_orchards:acorn_cookie>, <sky_orchards:resin_cookie>, <sky_orchards:acorn_cookie>],
[<sky_orchards:resin_cookie>, <sky_orchards:acorn_cookie>, <sky_orchards:resin_cookie>]]);

recipes.addShaped(<sky_orchards:amber_bone>,
[[<sky_orchards:acorn_bone>, <sky_orchards:resin_bone>, <sky_orchards:acorn_bone>],
[<sky_orchards:resin_bone>, <sky_orchards:acorn_bone>, <sky_orchards:resin_bone>],
[<sky_orchards:acorn_bone>, <sky_orchards:resin_bone>, <sky_orchards:acorn_bone>]]);

recipes.addShaped(<sky_orchards:amber_diamond>,
[[<sky_orchards:acorn_diamond>, <sky_orchards:resin_diamond>, <sky_orchards:acorn_diamond>],
[<sky_orchards:resin_diamond>, <sky_orchards:acorn_diamond>, <sky_orchards:resin_diamond>],
[<sky_orchards:acorn_diamond>, <sky_orchards:resin_diamond>, <sky_orchards:acorn_diamond>]]);

recipes.addShaped(<sky_orchards:amber_lapis>,
[[<sky_orchards:resin_lapis>, <sky_orchards:acorn_lapis>, <sky_orchards:resin_lapis>],
[<sky_orchards:acorn_lapis>, <sky_orchards:resin_lapis>, <sky_orchards:acorn_lapis>],
[<sky_orchards:resin_lapis>, <sky_orchards:acorn_lapis>, <sky_orchards:resin_lapis>]]);

recipes.addShaped(<sky_orchards:amber_gravel>,
[[<sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>, <sky_orchards:acorn_gravel>],
[<sky_orchards:resin_gravel>, <sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>],
[<sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>, <sky_orchards:acorn_gravel>]]);

recipes.addShaped(<sky_orchards:amber_sand>,
[[<sky_orchards:acorn_sand>, <sky_orchards:resin_sand>, <sky_orchards:acorn_sand>],
[<sky_orchards:resin_sand>, <sky_orchards:acorn_sand>, <sky_orchards:resin_sand>],
[<sky_orchards:acorn_sand>, <sky_orchards:resin_sand>, <sky_orchards:acorn_sand>]]);

recipes.addShaped(<sky_orchards:amber_dust>,
[[<sky_orchards:acorn_dust>, <sky_orchards:resin_dust>, <sky_orchards:acorn_dust>],
[<sky_orchards:resin_dust>, <sky_orchards:acorn_dust>, <sky_orchards:resin_dust>],
[<sky_orchards:acorn_dust>, <sky_orchards:resin_dust>, <sky_orchards:acorn_dust>]]);

recipes.addShaped(<sky_orchards:amber_clay>,
[[<sky_orchards:acorn_clay>, <sky_orchards:resin_clay>, <sky_orchards:acorn_clay>],
[<sky_orchards:resin_clay>, <sky_orchards:acorn_clay>, <sky_orchards:resin_clay>],
[<sky_orchards:acorn_clay>, <sky_orchards:resin_clay>, <sky_orchards:acorn_clay>]]);

recipes.addShaped(<sky_orchards:amber_petrified>,
[[<sky_orchards:acorn_petrified>, <sky_orchards:resin_petrified>, <sky_orchards:acorn_petrified>],
[<sky_orchards:resin_petrified>, <sky_orchards:acorn_petrified>, <sky_orchards:resin_petrified>],
[<sky_orchards:acorn_petrified>, <sky_orchards:resin_petrified>, <sky_orchards:acorn_petrified>]]);

recipes.addShaped(<sky_orchards:amber_dirt>,
[[<sky_orchards:acorn_dirt>, <sky_orchards:resin_dirt>, <sky_orchards:acorn_dirt>],
[<sky_orchards:resin_dirt>, <sky_orchards:acorn_dirt>, <sky_orchards:resin_dirt>],
[<sky_orchards:acorn_dirt>, <sky_orchards:resin_dirt>, <sky_orchards:acorn_dirt>]]);

recipes.addShaped(<sky_orchards:amber_cottonwood>,
[[<sky_orchards:resin_cottonwood>, <sky_orchards:acorn_cottonwood>, <sky_orchards:resin_cottonwood>],
[<sky_orchards:acorn_cottonwood>, <sky_orchards:resin_cottonwood>, <sky_orchards:acorn_cottonwood>],
[<sky_orchards:resin_cottonwood>, <sky_orchards:acorn_cottonwood>, <sky_orchards:resin_cottonwood>]]);

recipes.addShaped(<sky_orchards:amber_coal>,
[[<sky_orchards:acorn_coal>, <sky_orchards:resin_coal>, <sky_orchards:acorn_coal>],
[<sky_orchards:resin_coal>, <sky_orchards:acorn_coal>, <sky_orchards:resin_coal>],
[<sky_orchards:acorn_coal>, <sky_orchards:resin_coal>, <sky_orchards:acorn_coal>]]);


//==================================Верстак
    recipes.addShapeless(<minecraft:clay_ball> * 4,[<sky_orchards:amber_clay>]);
    recipes.addShapeless(<minecraft:bone> * 3,[<sky_orchards:amber_bone>]);
