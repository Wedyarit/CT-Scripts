#loader contenttweaker
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

//==============Массивы

    val itemStack1  = ["cast_bucket"] as string[];

    val SummonCreatures  = ["uncharged_sanarium","glowstone_in_bottle", "empty_cast","cast_engineering_press","cast_impression_press","cast_logical_press","cast_silicon_press", "null_stone", "blueslime_stone", "blizz_stone", "blitz_stone", "basalz_stone", "blaze_stone", "chicken_stone", "cow_stone", "creeper_stone", "enderman_stone", "ghast_stone", "magmacube_stone", "mooshroom_stone", "ocelot_stone", "parrot_stone", "pig_stone", "rabbit_stone", "sheep_stone", "shulker_stone", "skeleton_stone", "slime_stone", "spider_stone", "witch_stone", "wither_skeleton_stone", "wolf_stone", "zombie_pigman_stone", "zombie_stone"] as string[];

//==============Функции

    for item in itemStack1 {
        val Stack1 = VanillaFactory.createItem(item);
            Stack1.setMaxStackSize(1);
            Stack1.register();
    }

    for item in SummonCreatures {
        val SummonC = VanillaFactory.createItem(item);
            SummonC.setMaxStackSize(64);
            SummonC.register();
    }

//==============Простая регистарция предметов

    var dryMilk as Item = VanillaFactory.createItem("dry_milk");
    dryMilk.textureLocation = ResourceLocation.create("contenttweaker:items/dry_milk");
    dryMilk.register();
