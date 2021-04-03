#priority 1
# ThermalInnovation

print("Initializing 'ThermalInnovation'...");


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Флаксобуры    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Флаксобур (основной)
recipes.remove(<thermalinnovation:drill>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17094>, <gregtech:meta_item_2:8094>, <gregtech:meta_item_2:32576>,  <gregtech:meta_item_2:26094>, <gregtech:meta_item_1:32600>, <gregtech:meta_item_2:26094>,  <gregtech:meta_item_1:12094>, <thermalexpansion:capacitor>, <gregtech:meta_item_1:12094>)
    .outputs(<thermalinnovation:drill>)
    .duration(30 * 20)
    .EUt(128)
    .buildAndRegister();

// Флаксобур (усиленный)
recipes.remove(<thermalinnovation:drill:1>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17183>, <gregtech:meta_item_2:8183>, <thermalfoundation:upgrade>,  <gregtech:meta_item_2:26183>, <gregtech:meta_item_1:32601>, <gregtech:meta_item_2:26183>,  <gregtech:meta_item_1:12183>, <thermalinnovation:drill>, <gregtech:meta_item_1:12183>)
    .outputs(<thermalinnovation:drill:1>)
    .duration(30 * 20)
    .EUt(256)
    .buildAndRegister();

// Флаксобур (укрепленный)
recipes.remove(<thermalinnovation:drill:2>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17072>, <gregtech:meta_item_2:8072>, <thermalfoundation:upgrade:1>,  <gregtech:meta_item_2:26072>, <gregtech:meta_item_1:32602>, <gregtech:meta_item_2:26072>,  <gregtech:meta_item_1:12072>, <thermalinnovation:drill:1>, <gregtech:meta_item_1:12072>)
    .outputs(<thermalinnovation:drill:2>)
    .duration(30 * 20)
    .EUt(512)
    .buildAndRegister();

// Флаксобур (синаловый)
recipes.remove(<thermalinnovation:drill:3>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17235>, <gregtech:meta_item_2:8235>, <thermalfoundation:upgrade:2>,  <gregtech:meta_item_2:26235>, <gregtech:meta_item_1:32603>, <gregtech:meta_item_2:26235>,  <gregtech:meta_item_1:12235>, <thermalinnovation:drill:2>, <gregtech:meta_item_1:12235>)
    .outputs(<thermalinnovation:drill:3>)
    .duration(30 * 20)
    .EUt(1024)
    .buildAndRegister();

// Флаксобур (резонирующий)
recipes.remove(<thermalinnovation:drill:4>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17308>, <gregtech:meta_item_2:8308>, <thermalfoundation:upgrade:3>,  <gregtech:meta_item_2:26308>, <gregtech:meta_item_1:32604>, <gregtech:meta_item_2:26308>,  <gregtech:meta_item_1:12308>, <thermalinnovation:drill:3>, <gregtech:meta_item_1:12308>)
    .outputs(<thermalinnovation:drill:4>)
    .duration(30 * 20)
    .EUt(2048)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    Флаксомагниты    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
// Флаксомагнит (Основной)
recipes.remove(<thermalinnovation:magnet>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32518>, <thermalfoundation:material:515>, <gregtech:meta_item_1:14297> * 8, <gregtech:meta_item_1:14035> * 4, <gregtech:meta_item_1:19035> * 3, <gregtech:cable:71> * 2, <gregtech:meta_item_1:19237> * 2)
    .outputs(<thermalinnovation:magnet>)
    .duration(20 * 20)
    .EUt(128)
    .buildAndRegister();

// Флаксомагнит (Усиленный)
recipes.remove(<thermalinnovation:magnet:1>);
assembler.recipeBuilder()
    .inputs(<thermalinnovation:magnet>, <thermalfoundation:upgrade>, <gregtech:meta_item_1:14298> * 8, <gregtech:meta_item_1:14183> * 4, <gregtech:meta_item_1:19183> * 3, <gregtech:cable:18> * 2, <gregtech:meta_item_1:19237> * 2)
    .outputs(<thermalinnovation:magnet:1>)
    .duration(20 * 20)
    .EUt(256)
    .buildAndRegister();

// Флаксомагнит (Укрепленный)
recipes.remove(<thermalinnovation:magnet:2>);
assembler.recipeBuilder()
    .inputs(<thermalinnovation:magnet:1>, <thermalfoundation:upgrade:1>, <gregtech:meta_item_1:14298> * 8, <gregtech:meta_item_1:14072> * 4, <gregtech:meta_item_1:19072> * 3, <gregtech:cable:112> * 2, <gregtech:meta_item_1:19237> * 2)
    .outputs(<thermalinnovation:magnet:2>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();

// Флаксомагнит (Синаловый)
recipes.remove(<thermalinnovation:magnet:3>);
assembler.recipeBuilder()
    .inputs(<thermalinnovation:magnet:2>, <thermalfoundation:upgrade:2>, <gregtech:meta_item_1:14235> * 4, <gregtech:meta_item_1:14299> * 8, <gregtech:meta_item_1:19235> * 3, <gregtech:cable:1> * 2, <gregtech:meta_item_1:19237> * 2)
    .outputs(<thermalinnovation:magnet:3>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();

// Флаксомагнит (Резонирующий)
recipes.remove(<thermalinnovation:magnet:4>);
assembler.recipeBuilder()
    .inputs(<thermalinnovation:magnet:3>, <thermalfoundation:upgrade:3>, <gregtech:meta_item_1:14308> * 4, <gregtech:meta_item_1:14299> * 8, <gregtech:meta_item_1:19308> * 3, <gregtech:cable:51> * 2, <gregtech:meta_item_1:19237> * 2)
    .outputs(<thermalinnovation:magnet:4>)
    .duration(20 * 20)
    .EUt(512)
    .buildAndRegister();
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */


print("Initialized 'ThermalInnovation'");