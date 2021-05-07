import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//Массивы функции и тд=============================================================================================================

val UltimatecobblegenConstructor = {
	<ultimatecobblegen:gravelgenerator>: <minecraft:gravel>,
	<ultimatecobblegen:sandgenerator>: <minecraft:sand>,
	<ultimatecobblegen:dirtgenerator>: <minecraft:dirt>,
    <ultimatecobblegen:grassgenerator>: <minecraft:grass>,
    <ultimatecobblegen:fungusgenerator>: <minecraft:mycelium>,
    <ultimatecobblegen:obsidiangenerator>: <minecraft:obsidian>,
    <ultimatecobblegen:icegenerator>: <minecraft:packed_ice>,
    <ultimatecobblegen:snowgenerator>: <minecraft:snow>,
    <ultimatecobblegen:endgenerator>: <minecraft:end_stone>,
    <ultimatecobblegen:nethergenerator>: <minecraft:netherrack>,
    <ultimatecobblegen:quartzgenerator>: <minecraft:quartz_block>,
    <ultimatecobblegen:soulgenerator>: <minecraft:soul_sand>,
    <ultimatecobblegen:claygenerator>: <minecraft:clay>,
    <ultimatecobblegen:redstonegenerator>: <minecraft:redstone_block>,
    <ultimatecobblegen:glowstonegenerator>: <minecraft:glowstone>,
    <ultimatecobblegen:dustgenerator>: <exnihilocreatio:block_dust>
} as IItemStack[IItemStack];

//Описание предметов===============================================================================================================

    for key, value in UltimatecobblegenConstructor
    {
        key.addTooltip("§eДля создания 1 блока требуется 10RF/t");
    }
    <ultimatecobblegen:cobblegenerator>.addTooltip("§eДля создания 1 блока требуется 10RF/t");


//Полное удаление предметов========================================================================================================


//Изменение крафтов================================================================================================================

    recipes.remove(<ultimatecobblegen:cobblegenerator>);
    recipes.addShaped(<ultimatecobblegen:cobblegenerator>,
    [[<thermalinnovation:drill:3>, <thermalinnovation:drill:3>, <thermalinnovation:drill:3>],
    [<forge:bucketfilled>.withTag({FluidName: "petrotheum", Amount: 1000}).transformReplace(<minecraft:bucket>), <extrautils2:compressedcobblestone:4>, <forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}).transformReplace(<minecraft:bucket>)],
    [<thermalinnovation:drill:3>, <thermalinnovation:drill:3>, <thermalinnovation:drill:3>]]);

    for key, value in UltimatecobblegenConstructor
    {
        recipes.remove(key);            
        recipes.addShaped(key,
        [[value, value, value],
        [<tp:triple_compressed_sugar_cane>, <ultimatecobblegen:cobblegenerator>, <tp:triple_compressed_sugar_cane>],
        [value, value, value]]);
    }