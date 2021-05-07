//Массивы функции и тд=============================================================================================================


//Описание предметов===============================================================================================================


//Полное удаление предметов========================================================================================================


//Изменение крафтов================================================================================================================

    //
        recipes.addShaped(<ceramics:faucet>,
        [[<ceramics:unfired_clay:5>, null, <ceramics:unfired_clay:5>],
        [null, <ceramics:unfired_clay:5>, null]]);

    //
        recipes.remove(<ceramics:unfired_clay:4>);
        recipes.addShapeless(<ceramics:unfired_clay:4> * 4,
        [<minecraft:clay_ball>, <minecraft:dye:15>, <ceramics:clay_soft>]);

        recipes.addShapeless(<ceramics:unfired_clay:4> * 5,
        [<ceramics:clay_barrel_unfired:2>]);

        recipes.addShapeless(<ceramics:unfired_clay:4> * 3,
        [<ceramics:clay_barrel_unfired:3>]);