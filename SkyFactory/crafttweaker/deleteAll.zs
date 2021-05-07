import crafttweaker.item.IItemStack;

// val delete = [
//     ,
// ] as IItemStack[]; 

// deleteRecipe();
// loadedMods.contains("null")


function deleteRecipe (arrItem as IItemStack[]) as void{
	for item in arrItem { 
        recipes.remove(item); 
        item.addTooltip("§4§lВ данной сборке этот предмет выключен");
    }
    return;
}

if(loadedMods.contains("appliedenergistics2"))
{
    val deleteAE2 = [
        <appliedenergistics2:part:220>,
        <appliedenergistics2:part:221>,
        <appliedenergistics2:part:302>,
        <appliedenergistics2:part:321>,
        <appliedenergistics2:part:320>,
        <appliedenergistics2:part:300>,
        <appliedenergistics2:part:301>,
        <appliedenergistics2:material:32>,
        <appliedenergistics2:material:33>,
        <appliedenergistics2:material:34>,
    ] as IItemStack[]; 
    deleteRecipe(deleteAE2);
}
if(loadedMods.contains("exnihilocreatio"))
{
    val deleteExNihilo = [
        <exnihilocreatio:item_material:5>, 
        <excompressum:bait:*>, 
        <exnihilocreatio:block_axle_stone>, 
        <exnihilocreatio:block_waterwheel>, 
        <exnihilocreatio:block_grinder>, 
        <exnihilocreatio:block_auto_sifter>, 
        <exnihilocreatio:block_end_cake>, 
        <exnihilocreatio:hive>, 
        <exnihilocreatio:hive:1>, 
        <exnihilocreatio:item_doll:*>,
    ]as IItemStack[];
    deleteRecipe(deleteExNihilo);
}
if(loadedMods.contains("forestry"))
{
    val deleteForestry = [
        <forestry:cart.beehouse:1>, 
        <forestry:cart.beehouse>,
        <forestry:rainmaker>,
        <binniecore:field_kit:*>
    ] as IItemStack[];
    deleteRecipe(deleteForestry);

}
if(loadedMods.contains("ic2"))
{
    val deleteIC2 = [
        <ic2:te:93>, 
        <ic2:te:67>, 
        <ic2:te:65>, 
        <ic2:te:57>, 
        <ic2:te:60>, 
        <ic2:te:89>, 
        <ic2:te:88>, 
        <ic2:te:82>, 
        <ic2:te:2>, 
        <ic2:te:1>, 
        <ic2:te:40>, 
        <ic2:dynamite_sticky:0>, 
        <ic2:dynamite:0>
    ] as IItemStack[];
    deleteRecipe(deleteIC2);
}
if(loadedMods.contains("industrialforegoing"))
{
    val deleteIndustrialForegoing = [
        <industrialforegoing:conveyor_upgrade>,
    ] as IItemStack[]; 
    deleteRecipe(deleteIndustrialForegoing);
}
if(loadedMods.contains("minecraft"))
{
    val deleteMinecraft = [
        <minecraft:hopper_minecart>,
    ] as IItemStack[]; 
    deleteRecipe(deleteMinecraft);
}
if(loadedMods.contains("tconstruct"))
{
    val deleteTconstruct = [
        <tconstruct:wooden_hopper>,
    ] as IItemStack[]; 
    deleteRecipe(deleteTconstruct);
}
if(loadedMods.contains("tinymobfarm"))
{
    val deleteTinyMF = [
        <tinymobfarm:ultimate_farm>,
    ] as IItemStack[]; 
    deleteRecipe(deleteTinyMF);
}
if(loadedMods.contains("tp"))
{
    val deleteTp = [
        <tp:dragon_leggings>,
        <tp:dragon_chestplate>,
        <tp:dragon_helmet>,
        <tp:dragon_boots>,
        <tp:infin_bucket>,
        <tp:iron_furnace_block>,
        <tp:tiny_charcoal>,
        <tp:tiny_coal>,
        <tp:pouch>,
        <tp:large_med_kit>,
        <tp:small_bandage>,
        <tp:large_bandage>,
        <tp:small_med_kit>,
        <tp:repair_tablet>,
        <tp:birthday_pickaxe:*>,
    ] as IItemStack[]; 
    deleteRecipe(deleteTp);
}
  