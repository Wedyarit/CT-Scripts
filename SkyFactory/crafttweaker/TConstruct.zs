import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
//Описание предметов===============================================================================================================

//Полное удаление предметов========================================================================================================

	//Слайм ботинки - удаление лишних 
		recipes.remove(<tconstruct:slime_boots:1>);
		recipes.remove(<tconstruct:slime_boots:2>);
		recipes.remove(<tconstruct:slime_boots:3>);
		recipes.remove(<tconstruct:slime_boots:4>);
		recipes.remove(<tconstruct:slime_boots:5>);

	//слайм рогатка - удаление лишних 
		recipes.remove(<tconstruct:slimesling:1>);
		recipes.remove(<tconstruct:slimesling:2>);
		recipes.remove(<tconstruct:slimesling:3>);
		recipes.remove(<tconstruct:slimesling:4>);
		recipes.remove(<tconstruct:slimesling:5>);	


//Изменение крафтов================================================================================================================

	//жидкиц камень
		mods.tconstruct.Melting.removeRecipe(<liquid:stone>);
		mods.tconstruct.Melting.addRecipe(<liquid:stone> * 144, <tconstruct:soil>);
		mods.tconstruct.Melting.addRecipe(<liquid:stone> * 72, <tconstruct:materials>);
		mods.tconstruct.Melting.addRecipe(<liquid:stone> * 288, <ore:blockSeared>);

	//цемент - усложнение
		recipes.remove(<tconstruct:soil>);
		recipes.addShapeless (<tconstruct:soil:0>, [<ceramics:clay_soft>, <minecraft:sand:0>, <minecraft:gravel:0>, <exnihilocreatio:block_dust>]);

	//слайм рогатка - усложнение крафта	
		recipes.remove(<tconstruct:slimesling>);
		recipes.addShaped(<tconstruct:slimesling>,
		[[<tconstruct:bow_string>.withTag({Material: "string"}), <minecraft:bow>, <tconstruct:bow_string>.withTag({Material: "string"})],
		[<minecraft:sticky_piston>, <tconstruct:bow_string>.withTag({Material: "string"}), <minecraft:sticky_piston>],
		[<tconstruct:slime_congealed>, null, <tconstruct:slime_congealed>]]);

	//
		recipes.remove(<tconstruct:smeltery_controller>);
		recipes.addShaped(<tconstruct:smeltery_controller>, 
		[[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>], 
		[<tconstruct:materials>, <sky_orchards:resin_glowstone>, <tconstruct:materials>], 
		[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);

	//
		recipes.remove(<tconstruct:seared:3>);
		recipes.addShaped(<tconstruct:seared:3>, 
		[[null, <tconstruct:materials>, null], 
		[<tconstruct:materials>, <sky_orchards:resin_quartz>,<tconstruct:materials>], 
		[null, <tconstruct:materials>, null]]);

	//	
		recipes.remove(<tconstruct:pattern>);
		recipes.addShaped(<tconstruct:pattern> * 1, 
		[[<minecraft:string>, <ore:stickWood>, <minecraft:string>], 
		[<ore:plankWood>, null, <ore:plankWood>], 
		[<minecraft:string>, <ore:stickWood>,<minecraft:string>]]);

	//Слайм ботинки - усложнение крафта	
		recipes.remove(<tconstruct:slime_boots>);
		recipes.addShaped(<tconstruct:slime_boots>,
		[[null, null, null],
		[<tconstruct:slime_channel>, <minecraft:leather_boots>, <tconstruct:slime_channel>],
		[<minecraft:sticky_piston>, <minecraft:emerald>, <minecraft:sticky_piston>]]);

	//
		mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared>);
		mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared:1>);

	//Diamond <ore:dustDiamond>
	mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 333, <ore:dustDiamond>);
	mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 333, <ore:gemDiamond>);
	mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 2997, <minecraft:diamond_block>);




	// Destabilized Redstone
	mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 100, <ore:dustRedstone>);
	mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 250, <ore:clathrateRedstone>);
	mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 900, <ore:blockRedstone>);
	mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 1000, <ore:oreClathrateRedstone>);

	// Energized Glowstone
	mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 250, <ore:dustGlowstone>);
	mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 250, <ore:clathrateGlowstone>);
	mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 1000, <ore:glowstone>);
	mods.tconstruct.Melting.addRecipe(<liquid:glowstone> * 1000, <ore:oreClathrateGlowstone>);

	// Liquifacted Coal
	mods.tconstruct.Melting.addRecipe(<liquid:coal> * 100, <ore:dustCoal>);

	// Resonant Ender
		mods.tconstruct.Melting.addRecipe(<liquid:ender> * 250, <ore:enderpearl>);
		mods.tconstruct.Melting.addRecipe(<liquid:ender> * 250, <ore:clathrateEnder>);
		mods.tconstruct.Melting.addRecipe(<liquid:ender> * 1000, <ore:oreClathrateEnder>);
		mods.tconstruct.Melting.addRecipe(<liquid:ender> * 250, <thermalfoundation:material:895>);

	// Pyrotheum Melting
		mods.tconstruct.Melting.addRecipe(<liquid:pyrotheum> * 250, <thermalfoundation:material:1024>, 1300);

	// Reinforced  Melting
		mods.tconstruct.Melting.addRecipe(<liquid:reinforced_obsidian> * 144, <tp:reinforced_obsidian_ingot>);
		mods.tconstruct.Melting.addRecipe(<liquid:reinforced_obsidian> * 1296, <tp:reinforced_obsidian>);

	// Pink Slime melting
		mods.tconstruct.Melting.addRecipe(<liquid:if.pink_slime> * 250, <industrialforegoing:pink_slime>);

	// Amber Melting
		mods.tconstruct.Melting.addRecipe(<liquid:cookie_dough> * 900, <sky_orchards:amber_cookie>);
		mods.tconstruct.Melting.addRecipe(<liquid:bacon> * 900, <sky_orchards:amber_bacon>);
		mods.tconstruct.Melting.addRecipe(<liquid:donut> * 900, <sky_orchards:amber_donut>);

	// Melting
		// mods.tconstruct.Melting.addRecipe(Liquid * N, Item);
		//mods.tconstruct.Melting.addRecipe(Liquid * N, Item);
		// mods.tconstruct.Melting.addRecipe(Liquid * N, Item);

	//Cast Melting
		mods.tconstruct.Melting.addRecipe(<liquid:gold> * 288, <tconstruct:cast>);

	// Entity Melting
		mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:pig>, <liquid:bacon> * 1);

	// Alloying
		mods.tconstruct.Alloy.addRecipe(<liquid:reinforced_obsidian> * 2592, [<liquid:iron> * 270, <liquid:obsidian> * 1152]);

	// Drying
		mods.tconstruct.Drying.removeRecipe(<minecraft:deadbush>);
		mods.tconstruct.Drying.removeRecipe(<minecraft:leather>);

		mods.tconstruct.Drying.addRecipe(<sky_orchards:acorn_petrified>, <sky_orchards:acorn_dirt>, 1200);
		mods.tconstruct.Drying.addRecipe(<minecraft:string>, <sky_orchards:leaves_cottonwood>, 900);
		mods.tconstruct.Drying.addRecipe(<minecraft:vine>, <minecraft:sapling:3>, 900);
		mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <minecraft:cooked_beef>, 1800);
		mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <minecraft:cooked_porkchop>, 1800);
		mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <minecraft:cooked_fish>, 1800);
		mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <minecraft:cooked_fish:1>, 1800);
		mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <minecraft:cooked_chicken>, 1800);
		mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <minecraft:cooked_rabbit>, 1800);
		mods.tconstruct.Drying.addRecipe(<minecraft:leather>, <minecraft:cooked_mutton>, 1800);

	// Casting Table

		mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:22>, <liquid:gold>, 288, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:gold>, 288, true, 200);


		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_aluminum>, <sky_orchards:sapling_lead>, <liquid:aluminum>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_silver>, <sky_orchards:sapling_tin>, <liquid:silver>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_platinum>, <sky_orchards:sapling_iron>, <liquid:platinum>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_iron>, <minecraft:sapling:4>, <liquid:iron>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_tin>, <minecraft:sapling:2>, <liquid:tin>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_copper>, <minecraft:sapling:1>, <liquid:copper>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_lead>, <minecraft:sapling:5>, <liquid:lead>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_gold>, <minecraft:sapling:0>, <liquid:gold>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_nickel>, <minecraft:sapling:3>, <liquid:nickel>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<minecraft:golden_apple>, <minecraft:apple>, <liquid:gold>, 1152, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<tp:reinforced_obsidian_ingot>, <tconstruct:cast_custom>, <liquid:reinforced_obsidian>, 144, false, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_ardite>, <tconstruct:slime_sapling:2>, <liquid:ardite>, 144, true, 200);
		mods.tconstruct.Casting.addTableRecipe(<sky_orchards:sapling_cobalt>, <tconstruct:slime_sapling:1>, <liquid:cobalt>, 144, true, 200);

	//Cookie Casting
		mods.tconstruct.Casting.addTableRecipe(<minecraft:cookie>, <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}), <liquid:cookie_dough>, 250, false, 160);
	
	//Bacon Casting
		mods.tconstruct.Casting.addTableRecipe(<tconstruct:edible>, <tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}), <liquid:bacon>, 250, false, 160);
	
	//Donut Casting
		mods.tconstruct.Casting.addTableRecipe(<xlfoodmod:donut>, <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}), <liquid:donut>, 250, false, 160);

	// Casting Basin
		mods.tconstruct.Casting.addBasinRecipe(<minecraft:netherrack>, <sky_orchards:amber_redstone>, <liquid:lava>, 250, true, 200);
		mods.tconstruct.Casting.addBasinRecipe(<minecraft:soul_sand>, <minecraft:sand>, <liquid:experience>, 250, true, 200);
		mods.tconstruct.Casting.addBasinRecipe(<minecraft:end_stone>, <minecraft:glowstone>, <liquid:lava>, 1000, true, 200);
		mods.tconstruct.Casting.addBasinRecipe(<tp:reinforced_obsidian>, null, <liquid:reinforced_obsidian>, 1296, false, 200);

	//Hardened Glass
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass>, <minecraft:obsidian>, <liquid:copper>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass:1>, <minecraft:obsidian>, <liquid:tin>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass:2>, <minecraft:obsidian>, <liquid:silver>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass:3>, <minecraft:obsidian>, <liquid:lead>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass:5>, <minecraft:obsidian>, <liquid:nickel>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass:6>, <minecraft:obsidian>, <liquid:platinum>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass:7>, <minecraft:obsidian>, <liquid:iridium>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass_alloy>, <minecraft:obsidian>, <liquid:steel>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass_alloy:1>, <minecraft:obsidian>, <liquid:electrum>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass_alloy:2>, <minecraft:obsidian>, <liquid:invar>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass_alloy:3>, <minecraft:obsidian>, <liquid:bronze>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass_alloy:4>, <minecraft:obsidian>, <liquid:constantan>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass_alloy:5>, <minecraft:obsidian>, <liquid:signalum>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass_alloy:6>, <minecraft:obsidian>, <liquid:lumium>, 144, true, 160);
		mods.tconstruct.Casting.addBasinRecipe(<thermalfoundation:glass_alloy:7>, <minecraft:obsidian>, <liquid:enderium>, 144, true, 160);

		mods.tconstruct.Casting.addBasinRecipe(<minecraft:glowstone>, null, <liquid:glowstone>, 1000, true, 160);

	//Casting liquid redstone into dust and blocks
		mods.tconstruct.Casting.addTableRecipe(<minecraft:redstone:0>, <tconstruct:cast_custom:2>, <liquid:redstone>, 100, false);
		mods.tconstruct.Casting.addBasinRecipe(<minecraft:redstone_block:0>, null, <liquid:redstone>, 900);

	//mods.tconstruct.Fuel.registerFuel(ILiquidStack fuel, int duration);
		mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 50, 140);

	//Useless item removal
		mods.tconstruct.Casting.removeTableRecipe(<tconstruct:ingots:5>);
		mods.tconstruct.Casting.removeTableRecipe(<tconstruct:nuggets:5>);
		mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:metal:5>);

	//
		recipes.remove(<tconstruct:stone_stick>);
		recipes.addShaped(<tconstruct:stone_stick> * 4,
		[[<ore:cobblestone>],
		[<ore:cobblestone>]]);


	//slime dirt
		recipes.addShapeless(<tconstruct:slime_dirt:1>,
		[<tconstruct:slime_dirt>, <minecraft:milk_bucket>, <ore:dyeLightBlue>]);

		recipes.addShapeless(<tconstruct:slime_dirt:2>,
		[<tconstruct:slime_dirt>, <forge:bucketfilled>.withTag({FluidName: "blueslime", Amount: 1000}), <minecraft:redstone>]);

		recipes.addShapeless(<tconstruct:slime_dirt:3>,
		[<tconstruct:slime_dirt>, <forge:bucketfilled>.withTag({FluidName: "knightslime", Amount: 1000}), <tconstruct:materials:11>]);




