# ExtraBotany

import mods.extrabotany.Pedestal;
import mods.extrabotany.Stonesia;

print("Initializing 'ExtraBotany'...");


//удалён функционал
    <extrabotany:lens:6>.withTag({}).addTooltip("\u00a74\u00a7l\u0412 \u0434\u0430\u043d\u043d\u043e\u0439 \u0441\u0431\u043e\u0440\u043a\u0435 \u044d\u0442\u043e\u0442 \u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d");


// Hammers
recipes.remove(<extrabotany:manasteelhammer>);
recipes.addShaped(<extrabotany:manasteelhammer>,
[[<botania:storage>, <botania:storage>, <botania:storage>],
 [null, <botania:manaresource:3>, null],
 [null, <botania:manaresource:3>, null]]);

recipes.remove(<extrabotany:elementiumhammer>);
recipes.addShaped(<extrabotany:elementiumhammer>,
[[<botania:storage:2>, <botania:storage:2>, <botania:storage:2>],
 [null, <botania:manaresource:3>, null],
 [null, <botania:manaresource:3>, null]]);

recipes.remove(<extrabotany:terrasteelhammer>);
recipes.addShaped(<extrabotany:terrasteelhammer>,
[[<botania:storage:1>, <botania:storage:1>, <botania:storage:1>],
 [null, <botania:manaresource:3>, null],
 [null, <botania:manaresource:3>, null]]);

// Stonesia
Stonesia.add(10, <uniquecrops:oldcobble>);


print("Initialized 'ExtraBotany'");