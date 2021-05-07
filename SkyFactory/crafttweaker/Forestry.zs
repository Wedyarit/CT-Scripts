import crafttweaker.item.IIngredient;

//Массивы функции и тд=============================================================================================================
    
//Описание предметов===============================================================================================================

//Полное удаление предметов========================================================================================================

	// Удаление крафта шестеренкам
		recipes.remove(<forestry:gear_bronze>);
		recipes.remove(<forestry:gear_copper>);
		recipes.remove(<forestry:gear_tin>);

//Изменение крафтов================================================================================================================

	//Удаление и добавление крафта для Крепкого механизма из Forestry
		recipes.remove(<forestry:sturdy_machine>);
		recipes.addShaped(<forestry:sturdy_machine>, 
		[[<ore:plateSteel>, <ore:plateBronze>, <ore:plateSteel>],
		[<ore:plateBronze>, null, <ore:plateBronze>], 
		[<ore:plateSteel>, <ore:plateBronze>, <ore:plateSteel>]]);

	//Fluorescent dye - усложнение крафта 
		recipes.remove(<genetics:misc:2>);
		recipes.addShaped(<genetics:misc:2>*2,
		[[<tp:pumpkin_juice>, <thermalfoundation:material:1024>, <tp:pumpkin_juice>],
		[<thermalfoundation:material:1024>, <tp:double_compressed_sugar_cane>, <thermalfoundation:material:1024>],
		[<tp:pumpkin_juice>, <thermalfoundation:material:1024>, <tp:pumpkin_juice>]]);

	//DNA dye - усложнение крафта 
		recipes.remove(<genetics:misc:1>);
		recipes.addShaped(<genetics:misc:1>*4,
		[[<tp:beet_juice>, <thermalfoundation:material:1025>, <tp:beet_juice>],
		[<thermalfoundation:material:1025>, <tp:double_compressed_sugar>, <thermalfoundation:material:1025>],
		[<tp:beet_juice>, <thermalfoundation:material:1025>, <tp:beet_juice>]]);

	//Охапка дров - усложнение кратфа 
		recipes.remove(<forestry:wood_pile>);
		recipes.addShaped(<forestry:wood_pile>,
		[[<tconstruct:materials:15>, <ore:logWood>, <tconstruct:materials:15>],
		[<ore:logWood>, null, <ore:logWood>],
		[<tconstruct:materials:15>, <ore:logWood>, <tconstruct:materials:15>]]);

	//Growth medium - усложнение кратфа
		recipes.remove(<genetics:misc:4>);
		recipes.addShaped(<genetics:misc:4>*2,
		[[<minecraft:dye:15>, null, <minecraft:dye:15>],
		[<appliedenergistics2:material:4>, <minecraft:sugar>, <appliedenergistics2:material:4>],
		[<minecraft:dye:15>, null, <minecraft:dye:15>]]);

	//Blank sequence - усложнение кратфа
		recipes.remove(<genetics:misc:5>);
		recipes.addShaped(<genetics:misc:5>,
		[[null, <genetics:misc:4>, null],
		[<thermalfoundation:glass_alloy:3>, <ore:ingotGold>, <thermalfoundation:glass_alloy:3>],
		[null, <genetics:misc:4>, null]]);

	//Empty Serum Vial - усложнение кратфа
		recipes.remove(<genetics:misc:6>);
		recipes.addShaped(<genetics:misc:6>,
		[[null, <genetics:misc:5>, null],
		[<genetics:misc:4>, <genetics:misc:5>, <genetics:misc:4>],
		[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>]]);

	//Пропитанный корпус - усложнение крафта
		mods.forestry.Carpenter.removeRecipe(<forestry:impregnated_casing>);
		mods.forestry.Carpenter.addRecipe(<forestry:impregnated_casing>,
		[[<forestry:honey_drop>, <forestry:honey_drop>, <forestry:honey_drop>],
		[<forestry:honey_drop>, <forestry:sturdy_machine>, <forestry:honey_drop>],
		[<forestry:honey_drop>, <forestry:honey_drop>, <forestry:honey_drop>]], 80, <liquid:seed.oil> * 3000, <forestry:hardened_machine>);

	//Пчелиный домик - усложнение крафта
		recipes.remove(<forestry:bee_house>);
		mods.forestry.Carpenter.addRecipe(<forestry:bee_house>,
		[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
		[<tconstruct:firewood>, <forestry:frame_impregnated>, <tconstruct:firewood>],
		[<tconstruct:firewood>, <tconstruct:firewood>, <tconstruct:firewood>]], 160, <liquid:seed.oil> * 2000, <forestry:wood_pile>);

	//Пасека - усложение крафта
		recipes.remove(<forestry:apiary>);
		mods.forestry.Carpenter.addRecipe(<forestry:apiary>,
		[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
		[<tconstruct:firewood:1>, <forestry:bee_house>, <tconstruct:firewood:1>],
		[<tconstruct:firewood:1>, <tconstruct:firewood:1>, <tconstruct:firewood:1>]], 200, <liquid:seed.oil> * 8000, <forestry:wood_pile>);

	//Пчелиный улей - усложнение крафта 
		recipes.remove(<forestry:alveary.plain>);
		mods.forestry.Carpenter.addRecipe(<forestry:alveary.plain>,
		[[<forestry:crafting_material:6>, <forestry:crafting_material:6>, <forestry:crafting_material:6>],
		[<industrialforegoing:plastic>, <forestry:impregnated_casing>, <industrialforegoing:plastic>],
		[<forestry:crafting_material:6>, <forestry:crafting_material:6>, <forestry:crafting_material:6>]], 120, <liquid:for.honey> * 400, <forestry:wax_cast>);

	//integrated circuit board
		recipes.remove(<genetics:misc:8>);
		recipes.addShaped(<genetics:misc:8>, 
		[[<minecraft:dye:4>, <industrialforegoing:plastic>, <ore:dustGlowstone>], 
		[<extrautils2:ingredients:11>, <forestry:chipsets:1>, <extrautils2:ingredients:11>], 
		[<ore:dustGlowstone>, <extrautils2:ingredients:11>, <minecraft:dye:4>]]);





	// //mods.forestry.ThermionicFabricator.removeCast(IIngredient product);
	// mods.forestry.ThermionicFabricator.removeCast();
	// mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:5>);
	// //mods.forestry.ThermionicFabricator.addCast(IItemStack output, IIngredient[][] ingredients, ILiquidStack liquidStack, @Optional IItemStack plan);
	// mods.forestry.ThermionicFabricator.addCast(<minecraft:glass_pane> * 4, [[<minecraft:dirt>,null,null],[null,null,null],[null,null,null]], <liquid: glass> * 200);
	// mods.forestry.ThermionicFabricator.addCast(, [[null,null,null],[null,null,null],[null,null,null]], <liquid:glass> * N);

	// mods.forestry.ThermionicFabricator.removeCast();
	// mods.forestry.ThermionicFabricator.addCast(, [[null,null,null],[null,null,null],[null,null,null]], <liquid:glass> * N);

	// recipes.remove();
    // recipes.addShaped(,
    // [[, , ],
    // [, , ],
    // [, , ]]);
	
	recipes.remove(<genetics:lab_machine:3>);
    recipes.addShaped(<genetics:lab_machine:3>, 
	[[<thermalfoundation:glass:6>,<genetics:misc:3>,<thermalfoundation:glass:6>],
	[<genetics:misc:8>,<genetics:misc>,<genetics:misc:8>],
	[<thermalfoundation:material:292>,<genetics:misc:3>,<thermalfoundation:material:292>]]);

	recipes.remove(<genetics:lab_machine:2>);
    recipes.addShaped(<genetics:lab_machine:2>,
    [[<ore:paneGlass>, <minecraft:furnace>, <ore:paneGlass>],
    [<forestry:chipsets:2>.withTag({T: 2 as short}), <genetics:misc>, <forestry:chipsets:2>.withTag({T: 2 as short})],
    [<thermalfoundation:material:292>, <genetics:misc:8>, <thermalfoundation:material:292>]]);

	recipes.remove(<genetics:machine:2>);
    recipes.addShaped(<genetics:machine:2>,
    [[<minecraft:gold_nugget>, <thermalfoundation:material:290>, <minecraft:gold_nugget>],
    [<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
    [<minecraft:gold_nugget>, <thermalfoundation:material:292>, <minecraft:gold_nugget>]]);

	recipes.remove(<genetics:machine:3>);
    recipes.addShaped(<genetics:machine:3>,
    [[<minecraft:gold_nugget>, <thermalfoundation:material:262>, <minecraft:gold_nugget>],
    [<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
    [<minecraft:emerald>, <thermalfoundation:material:292>, <minecraft:emerald>]]);

	recipes.remove(<genetics:adv_machine>);
    recipes.addShaped(<genetics:adv_machine>,
    [[<minecraft:gold_nugget>, <forestry:chipsets:3>.withTag({T: 3 as short}), <minecraft:gold_nugget>],
    [<genetics:misc:9>, <genetics:machine:3>, <genetics:misc:9>],
    [<thermalfoundation:material:292>, <genetics:misc:10>, <thermalfoundation:material:292>]]);

	recipes.remove(<genetics:lab_machine:1>);
    recipes.addShaped(<genetics:lab_machine:1>,
    [[<ore:paneGlass>, <forestry:portable_alyzer>, <ore:paneGlass>],
    [<forestry:chipsets:2>.withTag({T: 2 as short}), <genetics:misc>, <forestry:chipsets:2>.withTag({T: 2 as short})],
    [<genetics:misc:1>, <thermalfoundation:material:292>, <genetics:misc:1>]]);

	recipes.remove(<genetics:machine:1>);
    recipes.addShaped(<genetics:machine:1>,
	[[<minecraft:gold_nugget>, <thermalfoundation:material:292>, <minecraft:gold_nugget>],
    [<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
    [<genetics:misc:2>, <thermalfoundation:material:289>, <genetics:misc:2>]]);

	recipes.remove(<genetics:machine>);
    recipes.addShaped(<genetics:machine>,
    [[<minecraft:gold_nugget>, <thermalfoundation:material:292>, <minecraft:gold_nugget>],
    [<genetics:misc:8>, <genetics:misc>, <genetics:misc:8>],
    [<genetics:misc:3>, <thermalfoundation:material:289>, <genetics:misc:3>]]);

	recipes.remove(<forestry:fermenter>);
    recipes.addShaped(<forestry:fermenter>,
    [[<thermalfoundation:material:292>, <ore:blockGlassColorless>, <thermalfoundation:material:292>],
    [<ore:blockGlassColorless>, <forestry:impregnated_casing>, <ore:blockGlassColorless>],
    [<thermalfoundation:material:292>, <ore:blockGlassColorless>, <thermalfoundation:material:292>]]);

	recipes.remove(<forestry:engine_clockwork>);
    recipes.addShaped(<forestry:engine_clockwork>,
    [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:blockGlassColorless>, <forestry:hardened_machine>, <ore:blockGlassColorless>],
    [<ore:gearBronze>, <minecraft:clock>, <ore:gearBronze>]]);

	recipes.remove(<forestry:engine_biogas>);
    recipes.addShaped(<forestry:engine_biogas>,
    [[<thermalfoundation:material:356>, <thermalfoundation:material:356>, <thermalfoundation:material:356>],
    [<forestry:iodine_capsule>, <thermalfoundation:glass_alloy>, <forestry:iodine_capsule>],
    [<thermalfoundation:material:292>, <forestry:hardened_machine>, <thermalfoundation:material:292>]]);

    recipes.addShaped(<extratrees:hops>,
    [[<extratrees:misc:9>, <forestry:can:1>.withTag({Fluid: {FluidName: "biomass", Amount: 1000}}), <extratrees:misc:8>],
    [<extrabees:propolis>, <minecraft:apple>, <extrabees:propolis>],
    [<extratrees:misc:8>, <forestry:can:1>.withTag({Fluid: {FluidName: "biomass", Amount: 1000}}), <extratrees:misc:9>]]);

	recipes.remove(<extratrees:machine:4>);
    recipes.addShaped(<extratrees:machine:4>,
    [[<thermalfoundation:glass_alloy:4>, <forestry:thermionic_tubes:1>, <thermalfoundation:glass_alloy:4>],
    [<thermalfoundation:material:321>, <forestry:flexible_casing>, <thermalfoundation:material:321>],
    [<thermalfoundation:material:292>, <minecraft:piston>, <thermalfoundation:material:292>]]);

	recipes.remove(<extratrees:machine:5>);
    recipes.addShaped(<extratrees:machine:5>,
    [[<thermalfoundation:glass_alloy:3>, <tconstruct:fancy_frame:6>, <thermalfoundation:glass_alloy:3>],
    [<extratrees:hops>, <minecraft:hay_block>, <extratrees:hops>],
    [<thermalfoundation:material:292>, <forestry:flexible_casing>, <thermalfoundation:material:292>]]);

	recipes.remove(<extratrees:machine:6>);
    recipes.addShaped(<extratrees:machine:6>,
    [[<thermalfoundation:glass_alloy:4>, <thermalfoundation:glass_alloy:4>, <thermalfoundation:glass_alloy:4>],
    [<minecraft:iron_ingot>, <forestry:flexible_casing>, <minecraft:iron_ingot>],
    [<sky_orchards:amber_redstone>, <thermalfoundation:material:293>, <sky_orchards:amber_redstone>]]);

	recipes.remove(<forestry:engine_generator>);
    recipes.addShaped(<forestry:engine_generator>,
    [[<forestry:can:1>.withTag({Fluid: {FluidName: "biomass", Amount: 1000}}), <forestry:crafting_material:1>, <forestry:can:1>.withTag({Fluid: {FluidName: "biomass", Amount: 1000}})],
    [<ic2:crafting:1>, <forestry:flexible_casing>, <ic2:crafting:1>],
    [<thermalfoundation:material:293>, <ic2:resource:13>, <thermalfoundation:material:293>]]);

	recipes.remove(<forestry:still>);
    recipes.addShaped(<forestry:still>,
    [[<thermalfoundation:glass_alloy>, <thermalfoundation:glass_alloy>, <thermalfoundation:glass_alloy>],
    [<forestry:can:1>.withTag({Fluid: {FluidName: "biomass", Amount: 1000}}), <forestry:flexible_casing>, <forestry:can:1>.withTag({Fluid: {FluidName: "biomass", Amount: 1000}})],
    [<thermalfoundation:material:292>, <forestry:crafting_material:3>, <thermalfoundation:material:292>]]);

	mods.forestry.ThermionicFabricator.removeCast(<forestry:flexible_casing>);
	mods.forestry.ThermionicFabricator.addCast(<forestry:flexible_casing>, 
	[[<thermalfoundation:material:166>,<minecraft:emerald>,<thermalfoundation:material:166>],
	[<industrialforegoing:pink_slime>,null,<industrialforegoing:pink_slime>],
	[<thermalfoundation:material:166>,<minecraft:emerald>,<thermalfoundation:material:166>]], 
	<liquid:glass> * 250);

	recipes.remove(<genetics:misc>);
	mods.forestry.ThermionicFabricator.addCast(<genetics:misc>, 
	[[<thermalfoundation:material:352>,<forestry:can:1>.withTag({Fluid: {FluidName: "binnie.turpentine", Amount: 1000}}),<thermalfoundation:material:352>],
	[<forestry:can:1>.withTag({Fluid: {FluidName: "binnie.turpentine", Amount: 1000}}),<forestry:flexible_casing>,<forestry:can:1>.withTag({Fluid: {FluidName: "binnie.turpentine", Amount: 1000}})],
	[<thermalfoundation:material:352>,<forestry:can:1>.withTag({Fluid: {FluidName: "binnie.turpentine", Amount: 1000}}),<thermalfoundation:material:352>]], 
	<liquid:glass> * 1000);

	mods.forestry.ThermionicFabricator.removeCast(<forestry:engine_peat>);
	mods.forestry.ThermionicFabricator.addCast(<forestry:engine_peat>, 
	[[<thermalfoundation:glass:6>,<thermalfoundation:glass:6>,<thermalfoundation:glass:6>],
	[<thermalfoundation:material:352>,<forestry:impregnated_casing>,<thermalfoundation:material:352>],
	[<thermalfoundation:material:261>,<minecraft:piston>,<thermalfoundation:material:261>]], 
	<liquid:glass> * 1000);

	recipes.remove(<forestry:naturalist_helmet>);
	mods.forestry.ThermionicFabricator.addCast(<forestry:naturalist_helmet>, 
	[[null,null,null],
	[null,<ore:ingotBronze>,null],
	[<ore:paneGlass>,null,<ore:paneGlass>]], 
	<liquid:glass> * 1000);

	recipes.remove(<forestry:engine_electrical>);
	mods.forestry.ThermionicFabricator.addCast(<forestry:engine_electrical>, 
	[[<sky_orchards:amber_redstone>,<ic2:crafting:1>,<sky_orchards:amber_redstone>],
	[<forestry:crafting_material:1>,<genetics:misc:10>,<forestry:crafting_material:1>],
	[<thermalfoundation:material:293>,<ic2:resource:13>,<thermalfoundation:material:293>]], 
	<liquid:glass> * 1000);

	recipes.remove(<forestry:grafter>);
	mods.forestry.Carpenter.addRecipe(<forestry:grafter>,
	[[null, null, <ore:ingotBronze>],
	[null, <forestry:oak_stick>, null],
	[<forestry:oak_stick>, null, null]], 200, <liquid:seed.oil> * 2000, <forestry:oak_stick>);





