#loader contenttweaker 

import mods.contenttweaker.Block;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

//==============Массивы

	val registBlockCrucible  = ["base_crucible_one", "base_crucible_two", "base_crucible_three", "base_crucible_four", "base_crucible_five"] as string[];

	val registBlock  = ["mulch_yellow","mulch_black","mulch_blue","mulch_brown","mulch_amber","mulch_red","mulch_ruby"] as string[];


//==============Функции

	for block in registBlockCrucible {
		val blockR = VanillaFactory.createBlock(block, <blockmaterial:rock>);
		blockR.toolLevel = 1;
		blockR.toolClass = "pickaxe";
		blockR.register();
	}


	for block in registBlock {
		val registB = VanillaFactory.createBlock(block, <blockmaterial:grass>);
		registB.toolClass = "shovel";
		registB.toolLevel = 0;
		registB.register();
	}

//Просто регистрация блоков

	var dust as Block = VanillaFactory.createBlock("dust", <blockmaterial:sand>);
		dust.setBlockHardness(0.7);
		dust.setBlockSoundType(<soundtype:sand>);
		dust.setGravity(true);
		dust.setToolClass("shovel");
		dust.setToolLevel(0);
		dust.register();
