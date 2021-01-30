# DragonsRadio

print("Initializing 'DragonsRadio-0.1'...");

// ------ // Удаление предметов // ------ //
// Запрещенные предметы
var items = [<extrautils2:bagofholding>, <extrautils2:goldenlasso>, <extrautils2:goldenlasso:1>, <extrautils2:chickenring>, <extrautils2:chickenring:1>, <extrautils2:angelring>, <extrautils2:angelring:1>m <extrautils2:angelring:2>, <extrautils2:angelring:3>, <extrautils2:angelring:4>, <extrautils2:angelring:5>] as IItemStack[];
for item in items {
    recipes.remove(titemool);
	item.addTooltip("§4§lВ данной сборке этот предмет выключен");
}


print("Initialized 'DragonsRadio-server-0.1'");