//Описание предметов===============================================================================================================


	//переименование донат предметов

		<gravisuite:gravichestplate:*>.addTooltip(format.gold ("\u25b7\u0414\u0430\u043d\u043d\u044b\u0439 \u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0432 \u0434\u043e\u043d\u0430\u0442 \u043c\u0430\u0433\u0430\u0437\u0438\u043d\u0435\u25c1"));
		<gravisuite:vajra:*>.addTooltip(format.gold ("\u25b7\u0414\u0430\u043d\u043d\u044b\u0439 \u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0432 \u0434\u043e\u043d\u0430\u0442 \u043c\u0430\u0433\u0430\u0437\u0438\u043d\u0435\u25c1"));
		<industrialforegoing:laser_base>.addTooltip(format.gold ("\u25b7\u0414\u0430\u043d\u043d\u044b\u0439 \u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0432 \u0434\u043e\u043d\u0430\u0442 \u043c\u0430\u0433\u0430\u0437\u0438\u043d\u0435\u25c1"));
		<industrialforegoing:laser_drill>.addTooltip(format.gold ("\u25b7\u0414\u0430\u043d\u043d\u044b\u0439 \u043f\u0440\u0435\u0434\u043c\u0435\u0442 \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0432 \u0434\u043e\u043d\u0430\u0442 \u043c\u0430\u0433\u0430\u0437\u0438\u043d\u0435\u25c1"));

//Полное удаление предметов========================================================================================================

	//Кольца
		recipes.remove(<extrautils2:chickenring>);
		recipes.remove(<extrautils2:chickenring:1>);
		recipes.remove(<extrautils2:angelring>);
		recipes.remove(<extrautils2:angelring:1>);
		recipes.remove(<extrautils2:angelring:2>);
		recipes.remove(<extrautils2:angelring:3>);
		recipes.remove(<extrautils2:angelring:4>);
		recipes.remove(<extrautils2:angelring:5>);

	//Донат
		recipes.remove(<gravisuite:gravichestplate>);
		recipes.remove(<gravisuite:vajra>);

	//Удаление крафта обоих видов Лассо
		recipes.remove(<extrautils2:goldenlasso>);
		recipes.remove(<extrautils2:goldenlasso:1>);

	//Удаление крафта заключателя мобов как Сафари сетей
		recipes.remove(<industrialforegoing:mob_imprisonment_tool>);

	//Удаление крафта шаров из Термала для жидкостей
		recipes.remove(<thermalexpansion:florb:*>);

	//Удаление крафта шаров для мобов из Термала    
		recipes.remove(<thermalexpansion:morb:*>);

	//вообще от греха
		recipes.remove(<industrialforegoing:enchantment_extractor>);
		recipes.remove(<industrialforegoing:enchantment_aplicator>);

	//Ресы из воздуха. Донат.
		recipes.remove(<industrialforegoing:enchantment_extractor>);
		recipes.remove(<industrialforegoing:enchantment_aplicator>);
		recipes.remove(<industrialforegoing:laser_base>);
		recipes.remove(<industrialforegoing:laser_drill>);	

//Изменение крафтов================================================================================================================