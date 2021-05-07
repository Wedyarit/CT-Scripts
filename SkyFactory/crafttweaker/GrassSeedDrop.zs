/*
	SkyFactory 4 Grass Seed Drop Modifications Script.

	This script is used to add or remove seed drops from grass.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

var seedsJei = [
	<minecraft:beetroot_seeds>,
	<minecraft:melon_seeds>,
	<minecraft:pumpkin_seeds>,
	<minecraft:wheat_seeds>,
	<xlfoodmod:lettuce_seeds>,
	<xlfoodmod:rice_seeds>,
	<xlfoodmod:pepper_seeds>,
	<xlfoodmod:cucumber_seeds>,
	<xlfoodmod:corn_seeds>,
	<xlfoodmod:strawberry_seeds>,
	<xlfoodmod:tomato_seeds>,
	<rustic:grape_stem>,
	<rustic:apple_seeds>,
	<rustic:tomato_seeds>,
	<rustic:chili_pepper_seeds>,
	<xlfoodmod:vanilla_flower>
] as IItemStack[];

	mods.jei.JEI.addDescription(seedsJei,"Для получения данного предмета сломайте обычную траву");

static seedsToAdd as WeightedItemStack[] = [
	<minecraft:beetroot_seeds>.weight(100),
	<minecraft:melon_seeds>.weight(100),
	<minecraft:pumpkin_seeds>.weight(100),
	<minecraft:wheat_seeds>.weight(100),
	<xlfoodmod:lettuce_seeds>.weight(100),
	<xlfoodmod:rice_seeds>.weight(100),
	<xlfoodmod:pepper_seeds>.weight(100),
	<xlfoodmod:cucumber_seeds>.weight(100),
	<xlfoodmod:corn_seeds>.weight(100),
	<xlfoodmod:strawberry_seeds>.weight(100),
	<xlfoodmod:tomato_seeds>.weight(100),
	<rustic:grape_stem>.weight(100),
	<rustic:apple_seeds>.weight(100),
	<rustic:tomato_seeds>.weight(100),
	<rustic:chili_pepper_seeds>.weight(100),
	<xlfoodmod:vanilla_flower>.weight(70)
];

	var seedsToAdd as WeightedItemStack[] = seedsToAdd;

	for seed in seedsToAdd {
		vanilla.seeds.addSeed(seed);
	}
