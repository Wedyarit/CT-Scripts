import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val JEIIntegration = {
	<minecraft:sapling:0> : "Чтобы получить саженец дуба, посадите семена дуба на землю",
	<minecraft:sapling:1> : "Чтобы получить еловый саженец, посадите семена ели на землю",
	<minecraft:sapling:2> : "Чтобы получить саженец берёзы, посадите семена берёзы на землю",
	<minecraft:sapling:3> : "Чтобы получить саженец тропического дерева, посадите семена тропического дерева на землю",
	<minecraft:sapling:4> : "Чтобы получить саженец акации, посадите семена акации на землю",
	<minecraft:sapling:5> : "Чтобы получить саженец тёмного дуба, посадите семена тёмного дуба на землю",
    <minecraft:string> : "Для получения запустите шелкопряда в листву любого дерева и через время сломайте её крюком"
} as string[IItemStack];

for key, value in JEIIntegration {
    mods.jei.JEI.addDescription(key, value);
}
