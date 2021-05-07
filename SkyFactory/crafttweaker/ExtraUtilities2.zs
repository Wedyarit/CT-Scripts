//Описание предметов===============================================================================================================

    //семя зла
        <extrautils2:ingredients:10>.addTooltip("\u043d\u0435 \u043f\u0440\u0435\u0432\u0440\u0430\u0449\u0430\u0435\u0442 \u0437\u0435\u043c\u043b\u044e \u0432 \u043f\u0440\u043e\u043a\u043b\u044f\u0442\u0443\u044e");
    //кольца
		<extrautils2:angelring:*>.displayName = "§e Ангельское кольцо";
		<extrautils2:angelring>.addTooltip(format.gold("Кольцо без крыльев"));
		<extrautils2:angelring:1>.addTooltip(format.gold("Крылья ангела"));
		<extrautils2:angelring:2>.addTooltip(format.gold("Крылья феи"));
		<extrautils2:angelring:3>.addTooltip(format.gold("Крылья дракона"));
		<extrautils2:angelring:4>.addTooltip(format.gold("Крылья позолоченные "));
		<extrautils2:angelring:5>.addTooltip(format.gold("Крылья демона"));

        
//Полное удаление предметов========================================================================================================
    
    //нестабильный слиток
        recipes.remove(<extrautils2:unstableingots>);

    //Удаление крафта железного самородка через деревео из EU2
        furnace.remove(<ore:nuggetIron>, <extrautils2:ironwood_planks:*>);

//Изменение крафтов================================================================================================================

    //взаимодействие с миром
        recipes.remove(<extrautils2:ingredients:8>);
        recipes.addShapeless (<extrautils2:ingredients:8>, [<minecraft:diamond_pickaxe>, <extrautils2:ingredients:15>]);

    //Удаление и добавление крафта Бутылки Клейна из Extra Utilities 2
        recipes.remove(<extrautils2:klein>);
        recipes.addShaped(<extrautils2:klein>, 
        [[<extrautils2:ingredients:12>, <extrautils2:ingredients:11>, <extrautils2:ingredients:12>],
        [<minecraft:ender_eye>, <ore:eyeofredstone>, <minecraft:ender_eye>], 
        [<extrautils2:ingredients:12>, <minecraft:glass_bottle>, <extrautils2:ingredients:12>]]);

    //Посох строителя - усложнение
        recipes.remove(<extrautils2:itembuilderswand>);
        recipes.addShaped(<extrautils2:itembuilderswand:0> * 1,
        [[<forestry:logs.4:3>, <gravisuite:crafting:1>, <forestry:logs.4:3>],
        [<gravisuite:crafting:2>, <advanced_solar_panels:crafting:13>, <gravisuite:crafting:2>],
        [<forestry:logs.4:3>, <gravisuite:crafting:1>, <forestry:logs.4:3>]]);

    //Посох разрушения - усложнение
        recipes.remove(<extrautils2:itemdestructionwand>);
        recipes.addShaped(<extrautils2:itemdestructionwand:0> * 1,
        [[<forestry:logs.4:3>, <gravisuite:crafting:1>, <forestry:logs.4:3>],
        [<gravisuite:crafting:2>, <extrautils2:opinium:8>, <gravisuite:crafting:2>],
        [<forestry:logs.4:3>, <gravisuite:crafting:1>, <forestry:logs.4:3>]]);

    //генератор выжившего
    recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));
        recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
        [[<minecraft:cobblestone>, <minecraft:iron_ingot>, <minecraft:cobblestone>],
        [<minecraft:cobblestone>, <minecraft:furnace>, <minecraft:cobblestone>],
        [<minecraft:redstone>, <extrautils2:machine>, <minecraft:redstone>]]);

    //Удаление легкого крафта солнечной панели - добавление сложного
        recipes.remove(<extrautils2:passivegenerator>);
        recipes.addShaped(<extrautils2:passivegenerator>,
        [[<extrautils2:ingredients:5>, <minecraft:dye:4>, <extrautils2:ingredients:5>],
        [<extrautils2:decorativesolid:2>, <teslacorelib:base_addon>, <extrautils2:decorativesolid:2>],
        [<minecraft:iron_ingot>, <thermalfoundation:material:514>, <minecraft:iron_ingot>]]);

    //Удаление легкого крафта лунной панели - добавление сложного
        recipes.remove(<extrautils2:passivegenerator:1>);
        recipes.addShaped(<extrautils2:passivegenerator:1>,
        [[<extrautils2:ingredients:5>, <extrautils2:ingredients:3>, <extrautils2:ingredients:5>],
        [<extrautils2:decorativesolid:2>, <teslacorelib:base_addon>, <extrautils2:decorativesolid:2>],
        [<minecraft:iron_ingot>, <thermalfoundation:material:514>, <minecraft:iron_ingot>]]);

    //Удаление легкого крафта слизневого генератора и добавление сложного
        recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));
        recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), 
        [[<ore:blockSlime>, <ore:blockSlime>, <ore:blockSlime>],
        [<thermalfoundation:material:514>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <thermalfoundation:material:514>], 
        [<ore:blockRedstone>, <extrautils2:machine>, <ore:blockRedstone>]]);

    //Удаление легкого крафта предметного узла и добавление сложного
        recipes.remove(<extrautils2:grocket>);
        recipes.addShaped(<extrautils2:grocket>, 
        [[<ore:ingotIron>, <ore:enderpearl>, <ore:ingotIron>],
        [<ore:dustRedstone>, <extrautils2:pipe>, <ore:dustRedstone>], 
        [<extrautils2:decorativesolid:2>, <ore:chest>, <extrautils2:decorativesolid:2>]]);

    //Удаление легкого крафта жидкостного узла и добавление более сложного
        recipes.remove(<extrautils2:grocket:2>);
        recipes.addShaped(<extrautils2:grocket:2>, 
        [[<ore:gemLapis>, <ore:enderpearl>, <ore:gemLapis>],
        [<ore:dustRedstone>, <extrautils2:pipe>, <ore:dustRedstone>], 
        [<extrautils2:decorativesolid:2>, <minecraft:bucket>, <extrautils2:decorativesolid:2>]]);

    //Удаление легкого крафта укрепленного стекла из EU2 и добавление сложного
        recipes.remove(<extrautils2:decorativesolid:4>);
        recipes.addShaped(<extrautils2:decorativesolid:4> * 2, 
        [[<ore:sand>, <minecraft:glass>, null],
        [<ore:sand>, <minecraft:glass>, null], 
        [null, null, null]]);

    //Удаление легкого крафта труб из EU2 и добавление более сложного
        recipes.remove(<extrautils2:pipe>);
        recipes.addShaped(<extrautils2:pipe> * 8, 
        [[<ic2:crafting:3>, <ic2:crafting:15>, <ic2:crafting:3>],
        [<extrautils2:decorativeglass>, <ore:gemRedstone>, <extrautils2:decorativeglass>], 
        [<ic2:crafting:3>, <ic2:crafting:15>, <ic2:crafting:3>]]);

    //мех создатель
        recipes.remove(<extrautils2:crafter>);
        recipes.addShaped(<extrautils2:crafter>,
        [[<minecraft:repeater>, <extrautils2:grocket>, <minecraft:repeater>],
        [<thermalfoundation:material:24>, <minecraft:crafting_table>, <thermalfoundation:material:24>],
        [<minecraft:redstone_torch>, <minecraft:hopper>, <minecraft:redstone_torch>]]);

    //орхидея
        recipes.addShaped(<extrautils2:redorchid> * 3,
        [[<extrautils2:ingredients:11>, <extrautils2:suncrystal>, <extrautils2:ingredients:11>],
        [<extrautils2:ingredients:12>, <extrautils2:opinium:2>, <extrautils2:ingredients:12>],
        [<extrautils2:ingredients:11>, <tp:colored_glowstone:13>, <extrautils2:ingredients:11>]]);

    //лилия
        recipes.addShaped(<extrautils2:enderlilly> * 3,
        [[<thermalfoundation:material:167>, <extrautils2:suncrystal>, <thermalfoundation:material:167>],
        [<extrautils2:klein>, <extrautils2:opinium:3>, <extrautils2:klein>],
        [<thermalfoundation:material:167>, <minecraft:end_stone>, <thermalfoundation:material:167>]]);

    //энерго узел 
		recipes.remove(<extrautils2:grocket:6>);
		recipes.addShaped(<extrautils2:grocket:6>, 
		[[<ore:ingotIron>, <ore:enderpearl>, <ore:ingotIron>], 
		[<ore:dustRedstone>, <extrautils2:pipe>, <ore:dustRedstone>], 
		[<extrautils2:decorativesolid:2>, <minecraft:redstone_block>, <extrautils2:decorativesolid:2>]]);
    
    //крафт солнечного кристалла - усложнение для саннариума	
        recipes.remove(<extrautils2:suncrystal:250>);
        mods.forestry.Carpenter.addRecipe(<extrautils2:suncrystal:250>, [[<thermalfoundation:material:1024>,<contenttweaker:glowstone_in_bottle>,<thermalfoundation:material:1024>],[<contenttweaker:glowstone_in_bottle>,<minecraft:diamond>,<contenttweaker:glowstone_in_bottle>],[<thermalfoundation:material:1024>,<contenttweaker:glowstone_in_bottle>,<thermalfoundation:material:1024>]], 400, <liquid:glowstone> * 4000, <minecraft:emerald>);	

    //фикс кривых рецептов 
        recipes.addShapeless(<extrautils2:compressedcobblestone>,[<excompressum:compressed_block:1>]);
        recipes.addShapeless(<excompressum:compressed_block:1>,[<extrautils2:compressedcobblestone>]);
