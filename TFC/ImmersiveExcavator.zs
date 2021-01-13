# Immersive Engineering Excavator

import mods.immersiveengineering.Excavator;

print("Initializing 'Immersive Engineering Excavator'...");

// Pyrite
Excavator.removeMineral("Pyrite");
Excavator.addMineral("Pyrite", 20, 0.005, ["oreLimoniteSmall", "oreLimonitePoor", "gemSulfur"], [0.35, 0.15, 0.50]);

// Quartz
Excavator.removeMineral("Quartzite");
Excavator.addMineral("Quartz", 20, 0.005, ["gemQuartz", "gemSatinspar"], [0.95, 0.05]);

// Iron
Excavator.removeMineral("Iron");
Excavator.addMineral("Hematite", 10, 0.005, ["oreHematitePoor", "oreHematiteNormal", "oreHematiteRich"], [0.6, 0.3, 0.1]);

// Magnetite
Excavator.removeMineral("Magnetite");
Excavator.addMineral("Magnetite", 10, 0.005, ["oreMagnetitePoor", "oreMagnetiteNormal", "oreMagnetiteRich"], [0.6, 0.3, 0.1]);

// Limonite
Excavator.addMineral("Limonite", 10, 0.005, ["oreLimonitePoor", "oreLimoniteNormal", "oreLimoniteRich"], [0.6, 0.3, 0.1]);

// Coal
Excavator.removeMineral("Coal");
Excavator.addMineral("Coal", 10, 0.005, ["gemAnthracite", "gemDiamondChipped", "gemDiamondFlawed", "gemRubyChipped", "gemRubyFlawed", "gemEmeraldChipped", "gemEmeraldFlawed"], [0.95, 0.01, 0.0066, 0.01, 0.0067, 0.01, 0.0067]);

// Bituminous Coal
Excavator.addMineral("Bituminous Coal", 20, 0.005, ["gemBituminousCoal"], [1]);

// Lignite
Excavator.addMineral("Lignite", 20, 0.005, ["gemLignite"], [1]);

// Copper
Excavator.removeMineral("Copper");
Excavator.removeMineral("Copper Ore");
Excavator.addMineral("Native Copper", 10, 0.005, ["oreNativeCopperPoor", "oreNativeCopperNormal", "oreNativeCopperRich"], [0.6, 0.3, 0.1]);
Excavator.addMineral("Tetrahedrite", 10, 0.005, ["oreTetrahedritePoor", "oreTetrahedriteNormal", "oreTetrahedriteRich"], [0.6, 0.3, 0.1]);
Excavator.addMineral("Malachite", 10, 0.005, ["oreMalachitePoor", "oreMalachiteNormal", "oreMalachiteRich"], [0.6, 0.3, 0.1]);

// Tin
Excavator.removeMineral("Tin");
Excavator.addMineral("Cassiterite", 20, 0.005, ["oreTinPoor", "oreTinNormal", "oreTinRich"], [0.6, 0.3, 0.1]);

// Bismuth
Excavator.addMineral("Bismuthinite", 20, 0.005, ["oreBismuthPoor", "oreBismuthNormal", "oreBismuthRich"], [0.6, 0.3, 0.1]);

// Gold
Excavator.removeMineral("Gold");
Excavator.addMineral("Native Gold", 10, 0.005, ["oreGoldPoor", "oreGoldNormal", "oreGoldRich", "oreTetrahedritePoor", "oreTetrahedriteNormal", "oreTetrahedriteRich", "oreLeadPoor", "oreLeadNormal", "oreLeadRich"], [0.45, 0.15, 0.05, 0.175, 0.075, 0.015, 0.06, 0.0175, 0.0075]);

// Silver
Excavator.removeMineral("Galena");
Excavator.removeMineral("Silver");
Excavator.removeMineral("Silver Ore");
Excavator.addMineral("Silver", 20, 0.005, ["oreSilverPoor", "oreSilverNormal", "oreSilverRich", "oreLeadPoor", "oreLeadNormal", "oreLeadRich"], [0.30, 0.15, 0.05, 0.30, 0.15, 0.05]);

// Platinum
Excavator.removeMineral("Platinum");
Excavator.addMineral("Platinum", 7, 0.005, ["orePlatinumPoor", "orePlatinumNormal", "orePlatinumRich", "oreTetrahedritePoor", "oreNickelPoor"], [0.35, 0.175, 0.075, 0.20, 0.20]);

// Lapis Lazuli
Excavator.removeMineral("Lapis");
Excavator.addMineral("Lapis Lazuli", 10, 0.005, ["oreLapisLazuli", "oreHematitePoor", "gemSulfur"], [0.6842, 0.2895, 0.0263]);

// Lead
Excavator.removeMineral("Lead");
Excavator.removeMineral("Lead Ore");
Excavator.addMineral("Galena", 25, 0.005, ["oreLeadPoor", "oreLeadNormal", "oreLeadRich", "oreSilverSmall", "oreSilverPoor"], [0.70, 0.125, 0.0539, 0.35, 0.0711]);

// Nickel
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Nickel Ore");
Excavator.addMineral("Nickel", 20, 0.005, ["oreNickelPoor", "oreNickelNormal", "oreNickelRich", "oreHematiteSmall", "oreHematitePoor"], [0.70, 0.175, 0.0694, 0.045, 0.0106]);

// Zinc
Excavator.removeMineral("Zinc");
Excavator.addMineral("Sphalerite", 20, 0.005, ["oreZincPoor", "oreZincNormal", "oreZincRich", "oreSilverSmall", "tfc:ore/small/tetrahedrite"], [0.70, 0.15, 0.05, 0.055, 0.045]);

// Cinnabar
Excavator.removeMineral("Cinnabar");
Excavator.addMineral("Cinnabar", 10, 0.005, ["gemCinnabar", "gemSulfur"], [0.9444, 0.0556]);

// Cryolite
Excavator.addMineral("Cryolite", 10, 0.005, ["tfc:ore/cryolite", "tfc:ore/selenite"], [0.8444, 0.1556]);

// Uranium
Excavator.removeMineral("Uranium");
Excavator.removeMineral("Uranium Ore");
Excavator.addMineral("Pitchblende", 5, 0.005, ["gemPitchblende", "oreLeadPoor", "oreLeadNormal", "oreLeadRich"], [0.6471, 0.25, 0.075, 0.0279]);

// Kaolinite
Excavator.addMineral("Kaolinite", 15, 0.005, ["gemKaolinite"], [1]);

// Gypsum
Excavator.addMineral("Gypsum", 10, 0.005, ["gemGypsum"], [1]);

// Graphite
Excavator.addMineral("Graphite", 10, 0.005, ["gemGraphite"], [1]);

// Kimberlite
Excavator.addMineral("Kimberlite", 5, 0.005, ["gemKimberlite", "gemDiamondChipped", "gemDiamondFlawed", "gemDiamondNormal", "gemDiamondFlawless", "gemDiamondExquisite"], [0.80, 0.10, 0.05, 0.03, 0.015, 0.005]);

// Saltpeter
Excavator.addMineral("Saltpeter", 10, 0.005, ["gemSaltpeter"], [1]);

// Sylvite
Excavator.addMineral("Sylvite", 10, 0.005, ["gemSylvite"], [1]);

// Borax
Excavator.addMineral("Borax", 10, 0.005, ["gemBorax"], [1]);

// Petrified Wood
Excavator.removeMineral("Petrified Wood");
Excavator.addMineral("Petrified Wood", 20, 0.005, ["gemPetrifiedWood"], [1]);

// Silt
Excavator.removeMineral("Silt");
Excavator.addMineral("Silt Igneous Extrusive", 40, 0.005, ["clay", "sandIgneousExtrusive", "gravelIgneousExtrusive"], [0.5, 0.3, 0.2]);
Excavator.addMineral("Silt Igneous Intrusive", 40, 0.005, ["clay", "sandIgneousIntrusive", "gravelIgneousIntrusive"], [0.5, 0.3, 0.2]);
Excavator.addMineral("Silt Sedimentary", 40, 0.005, ["clay", "sandSedimentary", "gravelSedimentary"], [0.5, 0.3, 0.2]);
Excavator.addMineral("Silt Metamorphic", 40, 0.005, ["clay", "sandMetamorphic", "gravelMetamorphic"], [0.5, 0.3, 0.2]);

// Microcline
Excavator.addMineral("Microcline", 5, 0.005, ["gemMicrocline"], [1]);

// Serpentine
Excavator.addMineral("Serpentine", 5, 0.005, ["gemSerpentine", "oreBismuthPoor", "oreLeadPoor"], [0.5, 0.30, 0.20]);

// Bauxite
Excavator.removeMineral("Bauxite");
Excavator.removeMineral("Bauxite Ore");
Excavator.addMineral("Bauxite", 20, 0.005, ["oreAluminiumPoor", "oreAluminiumNormal", "oreAluminiumRich"], [0.6, 0.3, 0.1]);

// Cobaltite
Excavator.addMineral("Cobaltite", 2, 0.005, ["oreCobaltPoor", "oreCobaltNormal", "oreCobaltRich"], [0.6, 0.3, 0.1]);

// Ardite
Excavator.addMineral("Ardite", 2, 0.005, ["oreArditeNormal", "oreBismuthPoor", "oreLeadPoor", "oreArditeRich"], [0.5, 0.30, 0.20, 0.1]);

// Native Osmium
Excavator.addMineral("Native Osmium", 1, 0.005, ["oreOsmiumPoor", "oreOsmiumNormal", "oreOsmiumRich"], [0.6, 0.3, 0.1]);

// Antimony
Excavator.addMineral("Stibnite", 5, 0.005, ["oreAntimonyPoor", "oreAntimonyNormal", "oreAntimonyRich"], [0.6, 0.3, 0.1]);

// Tungsten
Excavator.addMineral("Wolframite", 1, 0.005, ["oreTungstenNormal", "oreHematitePoor", ], [0.75, 0.25]);

// Thorianite
Excavator.addMineral("Thorianite", 5, 0.005, ["gemThorianite", ], [0.1]);

// Chromite
Excavator.addMineral("Chromite", 5, 0.005, ["gemChromite", ], [0.1]);

// Pyrolusite
Excavator.addMineral("Pyrolusite", 5, 0.005, ["gemPyrolusite", ], [0.1]);

// Magnesite
Excavator.addMineral("Magnesite", 5, 0.005, ["gemMagnesite", ], [0.1]);

// Boron
Excavator.addMineral("Boron", 5, 0.005, ["gemBoron", ], [0.1]);

// Amber
Excavator.addMineral("Amber", 5, 0.005, ["ore:gemAmber"], [1]);

print("Initialized 'Immersive Engineering Excavator'");