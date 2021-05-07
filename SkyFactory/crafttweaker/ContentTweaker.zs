import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Изменение Oredict и переменные===================================================================================================
	val StoneMobsTooltips= {
		<contenttweaker:zombie_pigman_stone>: "§fВедьмина вода",
		<contenttweaker:zombie_stone>: "§fВедьмина вода",
		<contenttweaker:blueslime_stone>: "§fВедьмина вода",
		<contenttweaker:blizz_stone>: "§fВедьмина вода",
		<contenttweaker:blitz_stone>: "§fВедьмина вода",
		<contenttweaker:basalz_stone>:"§fВедьмина вода",
		<contenttweaker:mooshroom_stone>:"§fВедьмина вода",
		<contenttweaker:wolf_stone>:"§fЖидкий бекон",
		<contenttweaker:slime_stone>:"§fМолоко",
		<contenttweaker:magmacube_stone>:"§fМолоко",
		<contenttweaker:witch_stone>:"§fМолоко",
		<contenttweaker:shulker_stone>:"§fРезонирующий эндериум",
		<contenttweaker:enderman_stone>:"§fРезонирующий эндериум",
		<contenttweaker:creeper_stone>:"§fЖидкая земля",
		<contenttweaker:pig_stone>:"§fЖидкая земля",
		<contenttweaker:spider_stone>:"§fРазбавленное сухое молоко",
		<contenttweaker:sheep_stone>:"§fРазбавленное сухое молоко",
		<contenttweaker:chicken_stone>:"§fРазбавленное сухое молоко",
		<contenttweaker:parrot_stone>:"§fЖидкое тесто для печенья",
		<contenttweaker:skeleton_stone>:"§fЛава",
		<contenttweaker:wither_skeleton_stone>:"§fЛава",
		<contenttweaker:ocelot_stone>:"§fЖидкий пончик",
		<contenttweaker:rabbit_stone>:"§fТушеные грибы",
		<contenttweaker:blaze_stone>:"§fКровь",
		<contenttweaker:cow_stone>:"§fЖивица",
		<contenttweaker:ghast_stone>:"§fСиняя слизь",
	} as string[IItemStack];
	
//Описание предметов===============================================================================================================

	for key, value in StoneMobsTooltips
    {
        key.addTooltip("§5Для призыва используйте " + value);
    }

    <contenttweaker:mulch_blue>.addTooltip("§6Можно приобрести в донат магазине");

//Полное удаление предметов========================================================================================================

//Изменение крафтов================================================================================================================

    //Добавление крафта всем прессам из AE
		recipes.addShaped(<contenttweaker:cast_engineering_press>,
		[[<ore:plateSilver>, <ore:gemDiamond>, <ore:plateSilver>],
		[<ore:gearBronze>, <contenttweaker:empty_cast>, <ore:gearBronze>],
		[<ore:plateSilver>, <ore:gearBronze>, <ore:plateSilver>]]);

		recipes.addShaped(<contenttweaker:cast_impression_press>, 
		[[<ore:plateNickel>, <ore:crystalPureCertusQuartz>, <ore:plateNickel>],
		[<ore:gearIron>, <contenttweaker:empty_cast>, <ore:gearIron>],
		[<ore:plateNickel>, <ore:gearIron>, <ore:plateNickel>]]);

		recipes.addShaped(<contenttweaker:cast_logical_press>,
		[[<ore:plateGold>, <ore:ingotGold>, <ore:plateGold>],
		[<ore:gearSilver>, <contenttweaker:empty_cast>, <ore:gearSilver>],
		[<ore:plateGold>, <ore:gearSilver>, <ore:plateGold>]]);

		recipes.addShaped(<contenttweaker:cast_silicon_press>, 
		[[<ore:plateTin>, <ore:gearLead>, <ore:plateTin>],
		[<ore:itemSilicon>, <contenttweaker:empty_cast>, <ore:itemSilicon>],
		[<ore:plateTin>, <ore:gearLead>, <ore:plateTin>]]);

		mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:14>, <contenttweaker:cast_engineering_press>, <liquid:bronze>, 1152, true, 400);
		mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:13>, <contenttweaker:cast_impression_press>, <liquid:nickel>, 1152, true, 400);
		mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:15>, <contenttweaker:cast_logical_press>, <liquid:gold>, 1152, true, 400);
		mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:19>, <contenttweaker:cast_silicon_press>, <liquid:iron>, 1152, true, 400);

	//Слепок ведра
		recipes.addShaped(<contenttweaker:cast_bucket>,
		[[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
		[<minecraft:iron_ingot>, <ic2:forge_hammer>.anyDamage(), <minecraft:iron_ingot>],
		[<ore:plateGold>, <minecraft:iron_ingot>, <ore:plateGold>]]);

	//Добавление крафта слепка для прессов
		recipes.addShaped(<contenttweaker:empty_cast>,
		[[<ore:compressed1xCobblestone>, <extrautils2:decorativesolid:2>, <ore:compressed1xCobblestone>],
		[<extrautils2:decorativesolid:2>, <ore:compressed1xCobblestone>, <extrautils2:decorativesolid:2>],
		[<ore:compressed1xCobblestone>, <extrautils2:decorativesolid:2>, <ore:compressed1xCobblestone>]]);

	//Светокамень в бутылке
		mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:glowstone_in_bottle>, <minecraft:glass_bottle>, <liquid:glowstone> * 250, 400);

	//Добавление крафта Разряженного cаннариум через компрессор
		mods.ic2.Compressor.addRecipe(<contenttweaker:uncharged_sanarium>, <advanced_solar_panels:crafting:1> * 9);

	//Камни
		recipes.addShaped(<contenttweaker:null_stone>,
		[[<minecraft:concrete_powder:10>, <minecraft:clay>, <minecraft:concrete_powder:10>],
		[<minecraft:clay>, <forestry:apatite>, <minecraft:clay>],
		[<minecraft:concrete_powder:10>, <minecraft:clay>, <minecraft:concrete_powder:10>]]);

		recipes.addShaped(<contenttweaker:zombie_stone>,
		[[<minecraft:dye:3>, <minecraft:red_mushroom>, <minecraft:dye:3>],
		[<minecraft:soul_sand>, <contenttweaker:null_stone>, <minecraft:soul_sand>],
		[<minecraft:dye:3>, <minecraft:brown_mushroom>, <minecraft:dye:3>]]);

		recipes.addShaped(<contenttweaker:skeleton_stone>,
		[[<tconstruct:soil:3>, <minecraft:dye:15>, <tconstruct:soil:3>],
		[<minecraft:dye:15>, <contenttweaker:null_stone>, <minecraft:dye:15>],
		[<tconstruct:soil:3>, <minecraft:dye:15>, <tconstruct:soil:3>]]);

		recipes.addShaped(<contenttweaker:spider_stone>,
		[[<tconstruct:soil:3>, <minecraft:bone>, <tconstruct:soil:3>],
		[<minecraft:string>, <contenttweaker:null_stone>, <minecraft:string>],
		[<tconstruct:soil:3>, <minecraft:bone>, <tconstruct:soil:3>]]);

		recipes.addShaped(<contenttweaker:creeper_stone>,
		[[<tconstruct:soil:3>, <minecraft:gunpowder>, <tconstruct:soil:3>],
		[<minecraft:gunpowder>, <contenttweaker:null_stone>, <minecraft:gunpowder>],
		[<tconstruct:soil:3>, <minecraft:gunpowder>, <tconstruct:soil:3>]]);

		recipes.addShaped(<contenttweaker:slime_stone>,
		[[<tconstruct:soil:3>, <minecraft:slime_ball>, <tconstruct:soil:3>],
		[<minecraft:slime_ball>, <contenttweaker:null_stone>, <minecraft:slime_ball>],
		[<tconstruct:soil:3>, <minecraft:slime_ball>, <tconstruct:soil:3>]]);

		recipes.addShaped(<contenttweaker:witch_stone>,
		[[<tconstruct:soil:3>, <minecraft:glass_bottle>, <tconstruct:soil:3>],
		[<minecraft:glass_bottle>, <contenttweaker:null_stone>, <minecraft:glass_bottle>],
		[<tconstruct:soil:3>, <minecraft:glass_bottle>, <tconstruct:soil:3>]]);

		recipes.addShaped(<contenttweaker:blueslime_stone>,
		[[<tconstruct:soil:3>, <tconstruct:edible:1>, <tconstruct:soil:3>],
		[<tconstruct:edible:1>, <contenttweaker:null_stone>, <tconstruct:edible:1>],
		[<tconstruct:soil:3>, <tconstruct:edible:1>, <tconstruct:soil:3>]]);

		recipes.addShaped(<contenttweaker:blaze_stone>,
		[[<extrautils2:compressednetherrack>, <minecraft:quartz>, <extrautils2:compressednetherrack>],
		[<minecraft:blaze_powder>, <contenttweaker:null_stone>, <minecraft:blaze_powder>],
		[<excompressum:compressed_block:5>, <minecraft:quartz>, <excompressum:compressed_block:5>]]);

		recipes.addShaped(<contenttweaker:ghast_stone>,
		[[<extrautils2:compressednetherrack>, <minecraft:ghast_tear>, <extrautils2:compressednetherrack>],
		[<minecraft:ghast_tear>, <contenttweaker:null_stone>, <minecraft:ghast_tear>],
		[<extrautils2:compressednetherrack>, <tconstruct:firewood:1>, <extrautils2:compressednetherrack>]]);

		recipes.addShaped(<contenttweaker:zombie_pigman_stone>,
		[[<extrautils2:compressednetherrack>, <minecraft:gold_nugget>, <extrautils2:compressednetherrack>],
		[<minecraft:cooked_porkchop>, <contenttweaker:null_stone>, <minecraft:cooked_porkchop>],
		[<extrautils2:compressednetherrack>, <tconstruct:soil:3>, <extrautils2:compressednetherrack>]]);

		recipes.addShaped(<contenttweaker:magmacube_stone>,
		[[<extrautils2:compressednetherrack>, <minecraft:rotten_flesh>, <extrautils2:compressednetherrack>],
		[<minecraft:magma_cream>, <contenttweaker:null_stone>, <minecraft:magma_cream>],
		[<tconstruct:soil:3>, <minecraft:magma_cream>, <tconstruct:soil:3>]]);

		recipes.addShaped(<contenttweaker:enderman_stone>,
		[[<minecraft:chorus_fruit_popped>, <minecraft:chorus_flower>, <minecraft:chorus_fruit_popped>],
		[<minecraft:ender_pearl>, <contenttweaker:null_stone>, <minecraft:ender_pearl>],
		[<minecraft:chorus_flower>, <minecraft:ender_pearl>, <minecraft:chorus_flower>]]);

		recipes.addShaped(<contenttweaker:shulker_stone>,
		[[<minecraft:ender_pearl>, <minecraft:concrete:10>, <minecraft:ender_pearl>],
		[<minecraft:stained_hardened_clay:10>, <contenttweaker:null_stone>, <minecraft:stained_hardened_clay:10>],
		[<minecraft:ender_pearl>, <storagedrawers:controller>, <minecraft:ender_pearl>]]);

		recipes.addShaped(<contenttweaker:wither_skeleton_stone>,
		[[<extrautils2:compressednetherrack:1>, <thermalfoundation:material:1024>, <extrautils2:compressednetherrack:1>],
		[<minecraft:bone>, <contenttweaker:null_stone>, <minecraft:bone>],
		[<extrautils2:compressednetherrack:1>, <thermalfoundation:material:1024>, <extrautils2:compressednetherrack:1>]]);

		recipes.addShaped(<contenttweaker:cow_stone>,
		[[<minecraft:hay_block>, <minecraft:bone_block>, <minecraft:hay_block>],
		[<minecraft:bone_block>, <contenttweaker:null_stone>, <minecraft:bone_block>],
		[<minecraft:hay_block>, <excompressum:compressed_block:5>, <minecraft:hay_block>]]);

		recipes.addShaped(<contenttweaker:chicken_stone>,
		[[<ic2:crafting:20>, <contenttweaker:dry_milk>, <ic2:crafting:20>],
		[<minecraft:wool>, <contenttweaker:null_stone>, <minecraft:wool>],
		[<ic2:crafting:20>, <contenttweaker:dry_milk>, <ic2:crafting:20>]]);

		recipes.addShaped(<contenttweaker:sheep_stone>,
		[[<ic2:crafting:20>, <minecraft:wool>, <ic2:crafting:20>],
		[<minecraft:wool>, <contenttweaker:null_stone>, <minecraft:wool>],
		[<ic2:crafting:20>, <minecraft:wool>, <ic2:crafting:20>]]);

		recipes.addShaped(<contenttweaker:pig_stone>,
		[[<ic2:crafting:20>, <minecraft:egg>, <ic2:crafting:20>],
		[<minecraft:beef>, <contenttweaker:null_stone>, <minecraft:beef>],
		[<ic2:crafting:20>, <contenttweaker:dry_milk>, <ic2:crafting:20>]]);

		recipes.addShaped(<contenttweaker:mooshroom_stone>,
		[[<ic2:crafting:20>, <minecraft:mushroom_stew>, <ic2:crafting:20>],
		[<minecraft:mushroom_stew>, <contenttweaker:null_stone>, <minecraft:mushroom_stew>],
		[<ic2:crafting:20>, <minecraft:mushroom_stew>, <ic2:crafting:20>]]);

		recipes.addShaped(<contenttweaker:parrot_stone>,
		[[<ic2:crafting:20>, <minecraft:cookie>, <ic2:crafting:20>],
		[<minecraft:feather>, <contenttweaker:null_stone>, <minecraft:feather>],
		[<ic2:crafting:20>, <minecraft:cookie>, <ic2:crafting:20>]]);

		recipes.addShaped(<contenttweaker:ocelot_stone>,
		[[<ic2:crafting:20>, <minecraft:fish:1>, <ic2:crafting:20>],
		[<minecraft:fish>, <contenttweaker:null_stone>, <minecraft:fish>],
		[<ic2:crafting:20>, <minecraft:fish:1>, <ic2:crafting:20>]]);

		recipes.addShaped(<contenttweaker:wolf_stone>,
		[[<minecraft:leather>, <minecraft:beef>, <minecraft:leather>],
		[<minecraft:chicken>, <contenttweaker:null_stone>, <minecraft:mutton>],
		[<minecraft:leather>, <minecraft:porkchop>, <minecraft:leather>]]);

		recipes.addShaped(<contenttweaker:rabbit_stone>,
		[[<contenttweaker:dry_milk>, <minecraft:beef>, <contenttweaker:dry_milk>],
		[<minecraft:porkchop>, <contenttweaker:null_stone>, <minecraft:porkchop>],
		[<ic2:crafting:20>, <minecraft:beef>, <ic2:crafting:20>]]);

	    recipes.addShaped(<contenttweaker:blizz_stone>,
		[[<thermalfoundation:material:1025>, <thermalfoundation:material:1025>, <thermalfoundation:material:1025>],
		[<thermalfoundation:material:1025>, <contenttweaker:blaze_stone>, <thermalfoundation:material:1025>],
		[<thermalfoundation:material:1025>, <thermalfoundation:material:1025>, <thermalfoundation:material:1025>]]);

	    recipes.addShaped(<contenttweaker:blitz_stone>,
		[[<thermalfoundation:material:1026>, <thermalfoundation:material:1026>, <thermalfoundation:material:1026>],
		[<thermalfoundation:material:1026>, <contenttweaker:blaze_stone>, <thermalfoundation:material:1026>],
		[<thermalfoundation:material:1026>, <thermalfoundation:material:1026>, <thermalfoundation:material:1026>]]);

	    recipes.addShaped(<contenttweaker:basalz_stone>,
		[[<thermalfoundation:material:1027>, <thermalfoundation:material:1027>, <thermalfoundation:material:1027>],
		[<thermalfoundation:material:1027>, <contenttweaker:blaze_stone>, <thermalfoundation:material:1027>],
		[<thermalfoundation:material:1027>, <thermalfoundation:material:1027>, <thermalfoundation:material:1027>]]);


	// ускорители
		recipes.addShaped(<contenttweaker:base_crucible_one>,
		[[<minecraft:lapis_block>, <minecraft:bone_block>, <minecraft:lapis_block>],
		[<minecraft:quartz_block>, <minecraft:coal_block>, <minecraft:quartz_block>],
		[<minecraft:lapis_block>, <minecraft:bone_block>, <minecraft:lapis_block>]]);

		recipes.addShaped(<contenttweaker:base_crucible_two>,
		[[<contenttweaker:base_crucible_one>, <contenttweaker:base_crucible_one>, <contenttweaker:base_crucible_one>],
		[<extrautils2:compressednetherrack:2>, <tconstruct:metal:2>, <extrautils2:compressednetherrack:2>],
		[<contenttweaker:base_crucible_one>, <contenttweaker:base_crucible_one>, <contenttweaker:base_crucible_one>]]);

		recipes.addShaped(<contenttweaker:base_crucible_three>,
		[[<contenttweaker:base_crucible_two>, <contenttweaker:base_crucible_two>, <contenttweaker:base_crucible_two>],
		[<extrautils2:ingredients:16>, <minecraft:nether_star>, <extrautils2:ingredients:16>],
		[<contenttweaker:base_crucible_two>, <contenttweaker:base_crucible_two>, <contenttweaker:base_crucible_two>]]);

		recipes.addShaped(<contenttweaker:base_crucible_four>,
		[[<contenttweaker:base_crucible_three>	, <contenttweaker:base_crucible_three>, <contenttweaker:base_crucible_three>],
		[<thermalfoundation:upgrade:33>, <ic2:energy_crystal:*>, <thermalfoundation:upgrade:33>],
		[<contenttweaker:base_crucible_three>, <contenttweaker:base_crucible_three>, <contenttweaker:base_crucible_three>]]);

		recipes.addShaped(<contenttweaker:base_crucible_five>,
		[[<contenttweaker:base_crucible_four>, <contenttweaker:base_crucible_four>, <contenttweaker:base_crucible_four>],
		[<ic2:charging_lapotron_crystal:*>, <ic2:crafting:4>, <ic2:charging_lapotron_crystal:*>],
		[<contenttweaker:base_crucible_four>, <contenttweaker:base_crucible_four>, <contenttweaker:base_crucible_four>]]);

	// мульчи
		recipes.addShaped(<contenttweaker:mulch_brown>,
		[[<minecraft:grass>, <minecraft:dirt>, <minecraft:grass>],
		[<minecraft:dirt>, <minecraft:bone_block>, <minecraft:dirt>],
		[<minecraft:grass>, <minecraft:dirt>, <minecraft:grass>]]);
		
		recipes.addShaped(<contenttweaker:mulch_yellow>,
		[[<contenttweaker:mulch_brown>, <contenttweaker:mulch_brown>, <contenttweaker:mulch_brown>],
		[<minecraft:rabbit_foot>, <minecraft:fermented_spider_eye>, <minecraft:rabbit_foot>],
		[<contenttweaker:mulch_brown>, <contenttweaker:mulch_brown>, <contenttweaker:mulch_brown>]]);

		recipes.addShaped(<contenttweaker:mulch_amber>,
		[[<contenttweaker:mulch_yellow>, <contenttweaker:mulch_yellow>, <contenttweaker:mulch_yellow>],
		[<minecraft:shulker_shell>, <tconstruct:slime_dirt:1>, <minecraft:shulker_shell>],
		[<contenttweaker:mulch_yellow>, <contenttweaker:mulch_yellow>, <contenttweaker:mulch_yellow>]]);

		recipes.addShaped(<contenttweaker:mulch_ruby>,
		[[<contenttweaker:mulch_amber>, <contenttweaker:mulch_amber>, <contenttweaker:mulch_amber>],
		[<extrautils2:redorchid>, <tconstruct:slime_dirt:3>, <extrautils2:redorchid>],
		[<contenttweaker:mulch_amber>, <contenttweaker:mulch_amber>, <contenttweaker:mulch_amber>]]);

		recipes.addShaped(<contenttweaker:mulch_red>,
		[[<contenttweaker:mulch_ruby>, <contenttweaker:mulch_ruby>, <contenttweaker:mulch_ruby>],
		[<thermalfoundation:storage_resource:1>, <ic2:crafting:24>, <thermalfoundation:storage_resource:1>],
		[<contenttweaker:mulch_ruby>, <contenttweaker:mulch_ruby>, <contenttweaker:mulch_ruby>]]);
		
		recipes.addShaped(<contenttweaker:mulch_black>,
		[[<contenttweaker:mulch_red>, <contenttweaker:mulch_red>, <contenttweaker:mulch_red>],
		[<forestry:royal_jelly>, <forestry:pollen>, <forestry:royal_jelly>],
		[<contenttweaker:mulch_red>, <contenttweaker:mulch_red>, <contenttweaker:mulch_red>]]);
