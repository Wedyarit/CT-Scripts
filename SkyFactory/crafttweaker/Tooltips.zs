/*
	SkyFactory 4 Tooltips Modification Script

	This script allows modification of tooltips.
*/
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;

static itemTooltipMap as IFormattedText[][IItemStack] = {
	<exnihilocreatio:block_crucible:1>: [
		"§6Чтобы тигель заработал, поставьте под него ускоритель"
	],
	<contenttweaker:base_crucible_one>: [
		"§6Скорость плавления x1"
	],
	<contenttweaker:base_crucible_two>: [
		"§6Скорость плавления x30"
	],
	<contenttweaker:base_crucible_three>: [
		"§6Скорость плавления x60"
	],
	<contenttweaker:base_crucible_four>: [
		"§6Скорость плавления x120"
	],
	<contenttweaker:base_crucible_five>: [
		"§6Скорость плавления x240"
	],
	<contenttweaker:mulch_brown>: [
		"§6Скорость роста: 142%",
        "§6Шанс выпадения: 140%"
	],
	<contenttweaker:mulch_yellow>: [
		"§6Скорость роста: 166%",
        "§6Шанс выпадения: 150%"
	],
	<contenttweaker:mulch_amber>: [
		"§6Скорость роста: 200%",
        "§6Шанс выпадения: 170%"
	],
	<contenttweaker:mulch_ruby>: [
		"§6Скорость роста: 250%",
        "§6Шанс выпадения: 200%"
	],
	<contenttweaker:mulch_red>: [
		"§6Скорость роста: 333%",
        "§6Шанс выпадения: 240%"
	],
	<contenttweaker:mulch_black>: [
		"§6Скорость роста: 500%",
        "§6Шанс выпадения: 290%"
	],
	<contenttweaker:mulch_blue>: [
		"§6Скорость роста: 1000%",
        "§6Шанс выпадения: 350%"
	],

	// ==================================
	// Add modifier tooltips
	<rustic:fertile_soil>: [
		"§6Скорость роста: 117%",
        "§6Шанс выпадения: 125%"
	],
	<tconstruct:slime_dirt>: [
		"§6Скорость роста: 100%",
        "§6Шанс выпадения: 100%"
	],
	<tconstruct:slime_dirt:1>: [
		"§6Скорость роста: 200%",
        "§6Шанс выпадения: 150%"
	],
	<tconstruct:slime_dirt:2>: [
		"§6Скорость роста: 400%",
        "§6Шанс выпадения: 200%"
	],
	<tconstruct:slime_dirt:3>: [
		"§6Скорость роста: 800%",
        "§6Шанс выпадения: 300%"
	],
	<tconstruct:slime_grass>: [
		"§6Скорость роста: 90%",
        "§6Шанс выпадения: 90%"
	],
	<tconstruct:slime_grass:5>: [
		"§6Скорость роста: 90%",
        "§6Шанс выпадения: 90%"
	],
	<tconstruct:slime_grass:10>: [
		"§6Скорость роста: 90%",
        "§6Шанс выпадения: 90%"
	],
	<tp:compressed_nether_block>: [
		"9",
	],
	<tp:double_compressed_nether_block>: [
		"81",
	],
	<tp:triple_compressed_nether_block>: [
		"729",
	],
	<tp:quadruple_compressed_nether_block>: [
		"6,561",
	],
	<tp:quintuple_compressed_nether_block>: [
		"59,049",
	],
	<tp:sextuple_compressed_nether_block>: [
		"531,441",
	],
	<tp:septuple_compressed_nether_block>: [
		"4,782,969",
	],
	<tp:octuple_compressed_nether_block>: [
		"43,046,721",
	],
	<tp:compressed_sugar_cane>: [
		"9",
	],
	<tp:double_compressed_sugar_cane>: [
		"81",
	],
	<tp:triple_compressed_sugar_cane>: [
		"729",
	],
	<tp:quadruple_compressed_sugar_cane>: [
		"6,561",
	],
	<tp:quintuple_compressed_sugar_cane>: [
		"59,049",
	],
	<tp:sextuple_compressed_sugar_cane>: [
		"531,441",
	],
	<tp:septuple_compressed_sugar_cane>: [
		"4,782,969",
	],
	<tp:octuple_compressed_sugar_cane>: [
		"43,046,721",
	],
	<tp:compressed_sugar>: [
		"9",
	],
	<tp:double_compressed_sugar>: [
		"81",
	],
	<tp:netherstar_block>: [
		"§6Скорость роста: 300%",
        "§6Шанс выпадения: 200%"
	]
};

	for item, tooltips in itemTooltipMap {
		for tooltip in tooltips {
			item.addTooltip(tooltip);
		}
	}
