//Массивы функции и тд=============================================================================================================

	var slownessElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 1800, Amplifier: 0}]});
	var slownessExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 4800, Amplifier: 0}]});

//Описание предметов===============================================================================================================


//Полное удаление предметов========================================================================================================


//Изменение крафтов================================================================================================================

	// Condenser Recipes
		mods.rustic.Condenser.addRecipe(<minecraft:web>, [<minecraft:vine>]);
		mods.rustic.Condenser.addRecipe(<rustic:horsetail>, [<minecraft:web>, <minecraft:vine>]);

	// Crushing Tub Recipes
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_cottonwood>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_dirt>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_petrified>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_clay>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_sand>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_gravel>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_coal>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_iron>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_gold>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_lapis>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_redstone>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_diamond>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_bone>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_cookie>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_bacon>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_donut>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_copper>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_lead>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_tin>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_silver>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_nickel>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_emerald>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_quartz>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_netherrack>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_glowstone>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_cobalt>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <sky_orchards:sapling_ardite>);

		mods.rustic.CrushingTub.addRecipe(<liquid:blood> * 100, <minecraft:blaze_powder>, <minecraft:netherrack>);

	// Vanilla Saplings Crush into Water
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <minecraft:sapling>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <minecraft:sapling:1>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <minecraft:sapling:2>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <minecraft:sapling:3>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <minecraft:sapling:4>);
		mods.rustic.CrushingTub.addRecipe(<liquid:water> * 100, null, <minecraft:sapling:5>);

	// Stone Acorns to Sand Acorns
		mods.rustic.CrushingTub.addRecipe(<liquid:sap> * 10, <sky_orchards:acorn_gravel>, <sky_orchards:acorn_petrified>);
		mods.rustic.CrushingTub.addRecipe(<liquid:sap> * 10, <sky_orchards:acorn_sand>, <sky_orchards:acorn_gravel>);
		mods.rustic.CrushingTub.addRecipe(<liquid:sap> * 10, <sky_orchards:acorn_dust>, <sky_orchards:acorn_sand>);
		mods.rustic.CrushingTub.addRecipe(<liquid:sap> * 10, <exnihilocreatio:item_material:2>, <extrautils2:compresseddirt>);

	//
		mods.rustic.EvaporatingBasin.addRecipe(<contenttweaker:dry_milk>, <liquid:milk> * 1000);

	//SF4
		recipes.addShaped(<rustic:crushing_tub>,
		[[<ore:plankWood>, null, <ore:plankWood>],
		[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

		recipes.remove(<rustic:crushing_tub>);

	//Альманах
	recipes.remove(<rustic:book>);
	recipes.addShaped(<rustic:book>,
	[[null, <minecraft:wheat_seeds>, null],
	[<minecraft:iron_nugget>, <minecraft:book>, <minecraft:iron_nugget>],
	[null, <minecraft:iron_nugget>, null]]);
