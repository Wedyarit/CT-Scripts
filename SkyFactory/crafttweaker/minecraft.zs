//Массивы функции и тд=============================================================================================================


//Описание предметов===============================================================================================================

	//добавление описания
		<minecraft:skull:1>.addTooltip("§cПризыв иссушителя выключен");
		<minecraft:nether_star>.addTooltip("§eМожет быть создана на верстаке	");
		
//Полное удаление предметов========================================================================================================

	//седло
		recipes.remove(<minecraft:saddle>);	

	recipes.remove(<minecraft:hopper_minecart>);	

//Изменение крафтов================================================================================================================

	// адская звезда
		recipes.addShaped(<minecraft:nether_star>,
		[[<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>],
		[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>],
		[<extrautils2:compressednetherrack:3>, <minecraft:soul_sand>, <extrautils2:compressednetherrack:3>]]);

	//
		furnace.setFuel(<ore:treeSapling>, 100);
		furnace.setFuel(<ore:treeLeaves>, 100);

	//элитра
		recipes.addShaped(<minecraft:elytra>,
		[[<minecraft:chorus_flower>, <forge:bucketfilled>.withTag({FluidName: "enderium", Amount: 1000}), <minecraft:chorus_flower>],
		[<minecraft:chorus_flower>, <extrautils2:opinium:2>, <minecraft:chorus_flower>],
		[<minecraft:chorus_flower>, <extrautils2:enderlilly>, <minecraft:chorus_flower>]]);
		
	//воронка
		recipes.remove(<minecraft:hopper>);	
		recipes.addShaped(<minecraft:hopper>,
		[[<ic2:plate:3>, null, <ic2:plate:3>],
		[<ic2:plate:3>, <minecraft:chest>, <ic2:plate:3>],
		[null, <minecraft:piston>, null]]);

	//шерсть
		recipes.addShaped(<minecraft:wool>,
		[[<sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>],
		[<sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>],
		[<sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>, <sky_orchards:acorn_cottonwood>]]);
		recipes.addShaped(<minecraft:wool>,
		[[null, null, null],
		[<sky_orchards:amber_cottonwood>, <sky_orchards:amber_cottonwood>, null],
		[<sky_orchards:amber_cottonwood>, <sky_orchards:amber_cottonwood>, null]]);

	//Угольный блок
		recipes.addShaped(<minecraft:coal_block>,
		[[<sky_orchards:amber_coal>, <sky_orchards:amber_coal>, <sky_orchards:amber_coal>],
		[<sky_orchards:amber_coal>, <sky_orchards:amber_coal>, <sky_orchards:amber_coal>],
		[<sky_orchards:amber_coal>, <sky_orchards:amber_coal>, <sky_orchards:amber_coal>]]);

	//Бутылка опыта
		recipes.addShaped(<minecraft:experience_bottle:0> * 1,
		[[null, <extrautils2:ingredients:12>, null],
		[<extrautils2:ingredients:12>, <extrautils2:magicapple:0>, <extrautils2:ingredients:12>],
		[null, <extrautils2:ingredients:12>, null]]);

	//SF4
		recipes.addShaped(<minecraft:dirt>,
		[[<sky_orchards:resin_dirt>, <sky_orchards:acorn_dirt>, <sky_orchards:resin_dirt>],
		[<sky_orchards:acorn_dirt>, <sky_orchards:resin_dirt>, <sky_orchards:acorn_dirt>],
		[<sky_orchards:resin_dirt>, <sky_orchards:acorn_dirt>, <sky_orchards:resin_dirt>]]);

		recipes.addShaped(<minecraft:cobblestone>,
		[[<sky_orchards:resin_petrified>, <sky_orchards:acorn_petrified>, <sky_orchards:resin_petrified>],
		[<sky_orchards:acorn_petrified>, <sky_orchards:resin_petrified>, <sky_orchards:acorn_petrified>],
		[<sky_orchards:resin_petrified>, <sky_orchards:acorn_petrified>, <sky_orchards:resin_petrified>]]);

		recipes.addShaped(<minecraft:clay>,
		[[<sky_orchards:resin_clay>, <sky_orchards:acorn_clay>, <sky_orchards:resin_clay>],
		[<sky_orchards:acorn_clay>, <sky_orchards:resin_clay>, <sky_orchards:acorn_clay>],
		[<sky_orchards:resin_clay>, <sky_orchards:acorn_clay>, <sky_orchards:resin_clay>]]);

		recipes.addShaped(<minecraft:sand>,
		[[<sky_orchards:resin_sand>, <sky_orchards:acorn_sand>, <sky_orchards:resin_sand>],
		[<sky_orchards:acorn_sand>, <sky_orchards:resin_sand>, <sky_orchards:acorn_sand>],
		[<sky_orchards:resin_sand>, <sky_orchards:acorn_sand>, <sky_orchards:resin_sand>]]);

		recipes.addShaped(<exnihilocreatio:block_dust>,
		[[<sky_orchards:resin_dust>, <sky_orchards:acorn_dust>, <sky_orchards:resin_dust>],
		[<sky_orchards:acorn_dust>, <sky_orchards:resin_dust>, <sky_orchards:acorn_dust>],
		[<sky_orchards:resin_dust>, <sky_orchards:acorn_dust>, <sky_orchards:resin_dust>]]);

		recipes.addShaped(<minecraft:gravel>,
		[[<sky_orchards:resin_gravel>, <sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>],
		[<sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>, <sky_orchards:acorn_gravel>],
		[<sky_orchards:resin_gravel>, <sky_orchards:acorn_gravel>, <sky_orchards:resin_gravel>]]);

		recipes.addShaped(<minecraft:bone_block>,
		[[<sky_orchards:resin_bone>, <sky_orchards:acorn_bone>, <sky_orchards:resin_bone>],
		[<sky_orchards:acorn_bone>, <sky_orchards:resin_bone>, <sky_orchards:acorn_bone>],
		[<sky_orchards:resin_bone>, <sky_orchards:acorn_bone>, <sky_orchards:resin_bone>]]);

		recipes.addShaped(<minecraft:coal>,
		[[<sky_orchards:resin_coal>, <sky_orchards:acorn_coal>, <sky_orchards:resin_coal>],
		[<sky_orchards:acorn_coal>, <sky_orchards:resin_coal>, <sky_orchards:acorn_coal>],
		[<sky_orchards:resin_coal>, <sky_orchards:acorn_coal>, <sky_orchards:resin_coal>]]);

		recipes.addShaped(<minecraft:diamond>,
		[[<sky_orchards:amber_diamond>, <sky_orchards:amber_diamond>, <sky_orchards:amber_diamond>],
		[<sky_orchards:amber_diamond>, <sky_orchards:amber_diamond>, <sky_orchards:amber_diamond>],
		[<sky_orchards:amber_diamond>, <sky_orchards:amber_diamond>, <sky_orchards:amber_diamond>]]);

		recipes.addShaped(<minecraft:emerald>,
		[[<sky_orchards:amber_emerald>, <sky_orchards:amber_emerald>, <sky_orchards:amber_emerald>],
		[<sky_orchards:amber_emerald>, <sky_orchards:amber_emerald>, <sky_orchards:amber_emerald>],
		[<sky_orchards:amber_emerald>, <sky_orchards:amber_emerald>, <sky_orchards:amber_emerald>]]);

		recipes.addShaped(<minecraft:netherrack>,
		[[<sky_orchards:resin_netherrack>, <sky_orchards:acorn_netherrack>, <sky_orchards:resin_netherrack>],
		[<sky_orchards:acorn_netherrack>, <sky_orchards:resin_netherrack>, <sky_orchards:acorn_netherrack>],
		[<sky_orchards:resin_netherrack>, <sky_orchards:acorn_netherrack>, <sky_orchards:resin_netherrack>]]);

		recipes.addShaped(<minecraft:paper>,
		[[<minecraft:string>, <minecraft:string>],
		[<sky_orchards:resin_cottonwood>, <sky_orchards:resin_cottonwood>]]);

		recipes.addShaped(<minecraft:torch>,
		[[<sky_orchards:acorn_coal>],
		[<ore:stickWood>]]);

	// Convenience Recipes
		recipes.addShaped(<minecraft:chest> * 4,
		[[<ore:logWood>, <ore:logWood>, <ore:logWood>],
		[<ore:logWood>, null, <ore:logWood>],
		[<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

		recipes.addShaped(<minecraft:stick> * 16,
		[[<ore:logWood>],
		[<ore:logWood>]]);

		recipes.addShaped(<minecraft:quartz>,
		[[<sky_orchards:resin_quartz>, <sky_orchards:acorn_quartz>, <sky_orchards:resin_quartz>],
		[<sky_orchards:acorn_quartz>, <sky_orchards:resin_quartz>, <sky_orchards:acorn_quartz>],
		[<sky_orchards:resin_quartz>, <sky_orchards:acorn_quartz>, <sky_orchards:resin_quartz>]]);

		recipes.addShaped(<minecraft:glowstone>,
		[[<sky_orchards:amber_glowstone>, <sky_orchards:amber_glowstone>, <sky_orchards:amber_glowstone>],
		[<sky_orchards:amber_glowstone>, <sky_orchards:amber_glowstone>, <sky_orchards:amber_glowstone>],
		[<sky_orchards:amber_glowstone>, <sky_orchards:amber_glowstone>, <sky_orchards:amber_glowstone>]]);

		recipes.addShaped(<minecraft:redstone_block>,
		[[<sky_orchards:amber_redstone>, <sky_orchards:amber_redstone>, <sky_orchards:amber_redstone>],
		[<sky_orchards:amber_redstone>, <sky_orchards:amber_redstone>, <sky_orchards:amber_redstone>],
		[<sky_orchards:amber_redstone>, <sky_orchards:amber_redstone>, <sky_orchards:amber_redstone>]]);

		recipes.addShaped(<minecraft:quartz_block>,
		[[<sky_orchards:amber_quartz>, <sky_orchards:amber_quartz>, null],
		[<sky_orchards:amber_quartz>, <sky_orchards:amber_quartz>, null],
		[null, null, null]]);

		recipes.addShaped(<minecraft:lapis_block>,
		[[<sky_orchards:amber_lapis>, <sky_orchards:amber_lapis>, <sky_orchards:amber_lapis>],
		[<sky_orchards:amber_lapis>, <sky_orchards:amber_lapis>, <sky_orchards:amber_lapis>],
		[<sky_orchards:amber_lapis>, <sky_orchards:amber_lapis>, <sky_orchards:amber_lapis>]]);

		recipes.addShaped(<minecraft:dragon_egg>,
		[[<tp:reinforced_obsidian>, <tp:reinforced_obsidian>, <tp:reinforced_obsidian>],
		[<tp:reinforced_obsidian>, <advanced_solar_panels:crafting:13>, <tp:reinforced_obsidian>],
		[<tp:reinforced_obsidian>, <tp:reinforced_obsidian>, <tp:reinforced_obsidian>]]);

		recipes.addShaped(<minecraft:prismarine_shard>,
		[[<minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>],
		[<minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>]]);

		recipes.addShaped(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]}),
		[[null, <tconstruct:materials:15>, null],
		[<tconstruct:materials:15>, <minecraft:book>, <tconstruct:materials:15>],
		[null, <tconstruct:materials:15>, null]]);

	//печь
		recipes.remove(<minecraft:furnace>);
		recipes.addShaped(<minecraft:furnace>, 
		[[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
		[<ore:cobblestone>, <minecraft:clay_ball>, <ore:cobblestone>], 
		[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

