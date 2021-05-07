recipes.remove(<itemfilters:filter>);
mods.thermalexpansion.Factorizer.removeRecipeCombine(<ftbquests:screen>);
mods.thermalexpansion.Factorizer.removeRecipeSplit(<ftbquests:screen>);

mods.thermalexpansion.Factorizer.removeRecipeCombine(<ftbquests:screen>.withTag({BlockEntityTag: {Size: 1 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}));
mods.thermalexpansion.Factorizer.removeRecipeSplit(<ftbquests:screen>.withTag({BlockEntityTag: {Size: 1 as byte, id: "ftbquests:screen_core"}, display: {Lore: ["(+NBT)"]}}));

mods.thermalexpansion.Factorizer.removeRecipeCombine(<ftbquests:progress_screen>);
mods.thermalexpansion.Factorizer.removeRecipeSplit(<ftbquests:progress_screen>);

mods.thermalexpansion.Factorizer.removeRecipeCombine(<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 2 as byte, id: "ftbquests:progress_screen_core", Width: 1 as byte}, display: {Lore: ["(+NBT)"]}}));
mods.thermalexpansion.Factorizer.removeRecipeSplit(<ftbquests:progress_screen>.withTag({BlockEntityTag: {Height: 2 as byte, id: "ftbquests:progress_screen_core", Width: 1 as byte}, display: {Lore: ["(+NBT)"]}}));