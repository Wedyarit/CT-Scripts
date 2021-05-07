#loader contenttweaker
#priority 4000

import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;

static materials as Material[string] = {
	"milk": MaterialSystem.getMaterialBuilder().setName("Milk").setColor(Color.fromHex("f9fbfb")).build(),
	"ardite": MaterialSystem.getMaterialBuilder().setName("Ardite").setColor(Color.fromHex("d14210")).build(),
	"cobalt": MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(Color.fromHex("2882d4")).build(),
	"quartz": MaterialSystem.getMaterialBuilder().setName("Quartz").setColor(Color.fromHex("e6e6e6")).build(),
	"reinforcedObsidian": MaterialSystem.getMaterialBuilder().setName("Reinforced Obsidian").setColor(Color.fromHex("1d1d25")).build()
};