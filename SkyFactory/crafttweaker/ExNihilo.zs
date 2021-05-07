import mods.exnihilocreatio.Sieve;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


//Массивы функции и тд=============================================================================================================

    val amberToOre = {
        <sky_orchards:amber_iron> : <exnihilocreatio:item_ore_iron>,
        <sky_orchards:amber_gold> : <exnihilocreatio:item_ore_gold>,
        <sky_orchards:amber_ardite> : <exnihilocreatio:item_ore_ardite>,
        <sky_orchards:amber_cobalt> : <exnihilocreatio:item_ore_cobalt>,
        <sky_orchards:amber_copper> : <exnihilocreatio:item_ore_copper>,
        <sky_orchards:amber_lead> : <exnihilocreatio:item_ore_lead>,
        <sky_orchards:amber_nickel> : <exnihilocreatio:item_ore_nickel>,
        <sky_orchards:amber_silver> : <exnihilocreatio:item_ore_silver>,
        <sky_orchards:amber_tin> : <exnihilocreatio:item_ore_tin>,
        <sky_orchards:amber_aluminum> : <exnihilocreatio:item_ore_aluminum>,
        <sky_orchards:amber_platinum> : <exnihilocreatio:item_ore_platinum>,
        <sky_orchards:amber_uranium> : <exnihilocreatio:item_ore_uranium>,
        <minecraft:netherrack> : <thermalfoundation:material:771>,
    } as IItemStack[IIngredient];

    function StringSieve (block as IIngredient, drop as IItemStack, chance as float) as void{
        Sieve.addStringMeshRecipe(block, drop, chance);
    }
    function FlintSieve (block as IIngredient, drop as IItemStack, chance as float) as void{
        Sieve.addFlintMeshRecipe(block, drop, chance);
    }
    function IronSieve (block as IIngredient, drop as IItemStack, chance as float) as void{
        Sieve.addIronMeshRecipe(block, drop, chance);
    }
    function DiamondSieve (block as IIngredient, drop as IItemStack, chance as float) as void{
        Sieve.addDiamondMeshRecipe(block, drop, chance);
    }

//Изменение крафтов================================================================================================================

    // Автоматические молоты
    recipes.remove(<excompressum:auto_hammer>);
    recipes.addShaped(<excompressum:auto_hammer>,
        [[<ore:blockIron>, <minecraft:heavy_weighted_pressure_plate>, <ore:blockIron>],
        [<ore:paneGlass>, <exnihilocreatio:hammer_diamond>, <ore:paneGlass>],
        [<ore:gearIron>, <thermalexpansion:frame>, <ore:gearIron>]]);
    recipes.remove(<excompressum:auto_compressed_hammer>);
    recipes.addShaped(<excompressum:auto_compressed_hammer>,
        [[<ore:blockSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:blockSteel>],
        [<ore:paneGlass>, <excompressum:compressed_hammer_diamond>, <ore:paneGlass>],
        [<ore:gearIron>, <thermalexpansion:frame>, <ore:gearIron>]]);
    
    // Автоматические сита
    recipes.remove(<excompressum:auto_sieve>);
    recipes.addShaped(<excompressum:auto_sieve>,
        [[<ore:blockIron>, <minecraft:heavy_weighted_pressure_plate>, <ore:blockIron>],
        [<ore:paneGlass>, <exnihilocreatio:block_sieve>, <ore:paneGlass>],
        [<ore:gearIron>, <thermalexpansion:frame>, <ore:gearIron>]]);
    recipes.remove(<excompressum:auto_heavy_sieve>);
    recipes.addShaped(<excompressum:auto_heavy_sieve>,
        [[<ore:blockSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:blockSteel>],
        [<ore:paneGlass>, <excompressum:heavy_sieve:*>, <ore:paneGlass>],
        [<ore:gearIron>, <thermalexpansion:frame>, <ore:gearIron>]]);
    
    for key, value in amberToOre {
        StringSieve(key, value, 0.20);
        StringSieve(key, value, 0.05);
        StringSieve(key, value, 0.02);
        FlintSieve(key, value, 0.30);
        FlintSieve(key, value, 0.10);
        FlintSieve(key, value, 0.05);
        IronSieve(key, value, 0.40);
        IronSieve(key, value, 0.15);
        IronSieve(key, value, 0.08);
        DiamondSieve(key, value, 0.50);
        DiamondSieve(key, value, 0.20);
        DiamondSieve(key, value, 0.10);
    }
        DiamondSieve(<excompressum:compressed_block:7>, <minecraft:chorus_flower>, 0.025);
        DiamondSieve(<excompressum:compressed_block:7>, <minecraft:ender_pearl>, 0.20);
        DiamondSieve(<excompressum:compressed_block:7>, <minecraft:ender_pearl>, 0.05);
        
    //Топливо для тигеля
        mods.exnihilocreatio.Heat.addRecipe(<contenttweaker:base_crucible_one>, 1);
        mods.exnihilocreatio.Heat.addRecipe(<contenttweaker:base_crucible_two>, 30);
        mods.exnihilocreatio.Heat.addRecipe(<contenttweaker:base_crucible_three>, 60);
        mods.exnihilocreatio.Heat.addRecipe(<contenttweaker:base_crucible_four>, 120);
        mods.exnihilocreatio.Heat.addRecipe(<contenttweaker:base_crucible_five>, 240);

	//    
		recipes.remove(<exnihilocreatio:item_mesh:3>);
		mods.tconstruct.Casting.addTableRecipe(<exnihilocreatio:item_mesh:3>, <exnihilocreatio:item_mesh:2>, <liquid:iron>, 1296, false, 240);
		recipes.remove(<exnihilocreatio:item_mesh:4>);
		mods.tconstruct.Casting.addTableRecipe(<exnihilocreatio:item_mesh:4>, <exnihilocreatio:item_mesh:3>, <liquid:diamond>, 5328, false, 240);

