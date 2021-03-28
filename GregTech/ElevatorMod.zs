#priority 1
# ElevatorMod

print("Initializing 'ElevatorMod'...");


// Лифт
recipes.remove(<elevatorid:elevator_white>);
assembler.recipeBuilder()
    .inputs(<minecraft:wool>, <gregtech:meta_item_1:12218> * 6, <gregtech:meta_item_1:19071> * 12)
    .outputs(<elevatorid:elevator_white>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();

print("Initialized 'ElevatorMod'");