#priority 2700

import crafttweaker.item.IItemStack;

<ore:dirtSieve>.add(<minecraft:dirt>);
<ore:dirtSieve>.add(<sky_orchards:amber_dirt>);

<ore:sandSieve>.add(<sky_orchards:amber_sand>);
<ore:dustSieve>.add(<sky_orchards:amber_dust>);
<ore:gravelSieve>.add(<sky_orchards:amber_gravel>);
<ore:netherrackSieve>.add(<sky_orchards:amber_netherrack>);
<ore:petrifiedSieve>.add(<sky_orchards:amber_petrified>);
<ore:block_infested_leaves>.add(<exnihilocreatio:block_infested_leaves>);
<ore:greenCementSieve>.add(<minecraft:concrete_powder:13>);
// .add();


<ore:dyeBlack>.add(<thermalfoundation:material:768>);
<ore:dyeBlack>.add(<thermalfoundation:material:769>);

//Removing oredict for dyes that are not used
<ore:dye>.remove(<thermalfoundation:dye>);
<ore:dye>.remove(<thermalfoundation:dye:1>);
<ore:dye>.remove(<thermalfoundation:dye:2>);
<ore:dye>.remove(<thermalfoundation:dye:3>);
<ore:dye>.remove(<thermalfoundation:dye:4>);
<ore:dye>.remove(<thermalfoundation:dye:5>);
<ore:dye>.remove(<thermalfoundation:dye:6>);
<ore:dye>.remove(<thermalfoundation:dye:7>);
<ore:dye>.remove(<thermalfoundation:dye:8>);
<ore:dye>.remove(<thermalfoundation:dye:9>);
<ore:dye>.remove(<thermalfoundation:dye:10>);
<ore:dye>.remove(<thermalfoundation:dye:11>);
<ore:dye>.remove(<thermalfoundation:dye:12>);
<ore:dye>.remove(<thermalfoundation:dye:13>);
<ore:dye>.remove(<thermalfoundation:dye:14>);
<ore:dye>.remove(<thermalfoundation:dye:15>);

<ore:dyeBlack>.remove(<thermalfoundation:dye>);
<ore:dyeRed>.remove(<thermalfoundation:dye:1>);
<ore:dyeGreen>.remove(<thermalfoundation:dye:2>);
<ore:dyeBrown>.remove(<thermalfoundation:dye:3>);
<ore:dyeBlue>.remove(<thermalfoundation:dye:4>);
<ore:dyePurple>.remove(<thermalfoundation:dye:5>);
<ore:dyeCyan>.remove(<thermalfoundation:dye:6>);
<ore:dyeLightGray>.remove(<thermalfoundation:dye:7>);
<ore:dyeGray>.remove(<thermalfoundation:dye:8>);
<ore:dyePink>.remove(<thermalfoundation:dye:9>);
<ore:dyeLime>.remove(<thermalfoundation:dye:10>);
<ore:dyeYellow>.remove(<thermalfoundation:dye:11>);
<ore:dyeLightBlue>.remove(<thermalfoundation:dye:12>);
<ore:dyeMagenta>.remove(<thermalfoundation:dye:13>);
<ore:dyeOrange>.remove(<thermalfoundation:dye:14>);
<ore:dyeWhite>.remove(<thermalfoundation:dye:15>);

<ore:blockGlassHardened>.remove(<thermalfoundation:glass_alloy:4>);
<ore:blockGlassHardened>.remove(<thermalfoundation:glass:7>);
<ore:blockGlassHardened>.remove(<thermalfoundation:glass:8>);

<ore:carpetWhite>.add(<minecraft:carpet>);
<ore:carpetOrange>.add(<minecraft:carpet:1>);
<ore:carpetMagenta>.add(<minecraft:carpet:2>);
<ore:carpetLightBlue>.add(<minecraft:carpet:3>);
<ore:carpetYellow>.add(<minecraft:carpet:4>);
<ore:carpetLime>.add(<minecraft:carpet:5>);
<ore:carpetPink>.add(<minecraft:carpet:6>);
<ore:carpetGray>.add(<minecraft:carpet:7>);
<ore:carpetLightGray>.add(<minecraft:carpet:8>);
<ore:carpetCyan>.add(<minecraft:carpet:9>);
<ore:carpetPurple>.add(<minecraft:carpet:10>);
<ore:carpetBlue>.add(<minecraft:carpet:11>);
<ore:carpetBrown>.add(<minecraft:carpet:12>);
<ore:carpetGreen>.add(<minecraft:carpet:13>);
<ore:carpetRed>.add(<minecraft:carpet:14>);
<ore:carpetBlack>.add(<minecraft:carpet:15>);

<ore:cauldron>.add(<minecraft:cauldron>);


var wildcardLeaves as IItemStack[] = [
	<minecraft:leaves:*>,
	<minecraft:leaves2:*>,
	<tconstruct:slime_leaves:*>
];

for wildcardLeaf in wildcardLeaves {
	if (!(<ore:treeLeaves>.empty) & <ore:treeLeaves> has wildcardLeaf) {
		<ore:treeLeaves>.remove(wildcardLeaf);
	}

	for subItem in wildcardLeaf.definition.subItems {
		if (!(<ore:treeLeaves> has subItem)) {
			<ore:treeLeaves>.add(subItem);
		}
	}
}
