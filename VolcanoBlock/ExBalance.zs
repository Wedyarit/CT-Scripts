# ExBalance

import crafttweaker.item.IItemStack;

print("Initializing 'ExBalance'...");

// ---------- // Предметы на удаление // ---------- // 

// Array of items to remove
var items_to_remove = [<integrateddynamics:part_audio_writer_item>, <integrateddynamics:part_effect_writer_item>, <integratedtunnels:part_importer_world_energy_item>, <integratedtunnels:part_exporter_world_energy_item>, <integratedtunnels:part_importer_world_item_item>, <integratedtunnels:part_exporter_world_item_item>, <integratedtunnels:part_importer_world_fluid_item>, <integratedtunnels:part_exporter_world_fluid_item>, <integratedtunnels:part_importer_world_block_item>, <integratedtunnels:part_exporter_world_block_item>, <integratedtunnels:part_player_simulator_item>] as IItemStack[];

// Removing items 
for item_to_remove in items_to_remove {
	//  Adding a tooltip
	item_to_remove.addTooltip("§4§lВ данной сборке этот предмет выключен");
	// Removing an item recipe
	recipes.remove(item_to_remove);
}

// ---------- // Предметы с ограниченным функционалом // ---------- // 

// Array of items with limited functionality
var limited_items = [<uniquecrops:ruinedbricks>, <uniquecrops:ruinedbrickscarved>, <evilcraft:sceptre_of_thunder>, <evilcraft:weather_container>, <evilcraft:weather_container:1>, <evilcraft:weather_container:2>, <evilcraft:weather_container:3>, <uniquecrops:emblem.pacifism>, <uniquecrops:ankh>, <uniquecrops:mirror>, <atum:nuits_vanishing>, <atum:anubiss_mercy>, <atum:feet_of_ra>, <atum:scarab>] as IItemStack[];

// Adding tooltips
for limited_item in limited_items {
	// Adding a tooltip 
	limited_item.addTooltip("§4§lФункционал этого предмета ограничен.");
}

	
print("Initializied 'ExBalance'");