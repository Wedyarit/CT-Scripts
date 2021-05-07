#loader contenttweaker

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.materials.utils.addDefaultMoltenData;
import scripts.contenttweaker.materials.utils.addDefaultOreData;
import scripts.contenttweaker.materials.init.materials;

function init() {
	// ==================================
	// Apply Molten to Materials
	registerDefaultMolten([
		materials.reinforcedObsidian
	]);

	// ==================================
	// Create dust
	registerPartNoParams("dust", [
		materials.ardite,
		materials.cobalt
	]);
}

function registerDefaultMolten(fluidMaterials as Material[]) {
	for i, fluid in fluidMaterials {
		var fluidMaterialsData as MaterialPartData = fluid.registerPart("molten").getData();
		addDefaultMoltenData(fluidMaterialsData);
	}
}

function registerPartNoParams(partName as string, partMaterials as Material[]) {
	for material in partMaterials {
		material.registerPart(partName);
	}
}
