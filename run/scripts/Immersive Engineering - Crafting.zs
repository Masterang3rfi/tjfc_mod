import crafttweaker.api.ingredient.IIngredient;




craftingTable.removeByName("immersiveengineering:crafting/cokebrick");
craftingTable.removeByName("immersiveengineering:crafting/stairs_slag_brick");
craftingTable.removeByName("immersiveengineering:crafting/steel_fence");
craftingTable.removeByName("immersiveengineering:crafting/alu_fence");
craftingTable.removeByName("immersiveengineering:crafting/treated_fence");
craftingTable.removeByName("immersiveengineering:crafting/stairs_treated_wood_horizontal");
craftingTable.removeByName("immersiveengineering:crafting/stairs_treated_wood_vertical");
craftingTable.removeByName("immersiveengineering:crafting/stairs_treated_wood_packaged");
craftingTable.removeByName("immersiveengineering:crafting/shield");
craftingTable.removeByName("immersiveengineering:crafting/rs_engineering");
craftingTable.removeByName("immersiveengineering:crafting/heavy_engineering");
craftingTable.removeByName("immersiveengineering:crafting/light_engineering");
craftingTable.removeByName("immersiveengineering:crafting/capacitor_lv");
craftingTable.removeByName("immersiveengineering:crafting/capacitor_mv");
craftingTable.removeByName("immersiveengineering:crafting/capacitor_hv");
craftingTable.removeByName("immersiveengineering:crafting/redstone_acid");






craftingTable.addShaped("crafting/blast_brick", <item:immersiveengineering:blastbrick> * 4, [
    [<item:tjfc:metal/screw/steel>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/steel>],
    [<item:tfc:fire_bricks>, <item:tjfc:metal/strip/steel>, <item:tfc:fire_bricks>],
    [<item:tjfc:metal/screw/steel>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/steel>]]);

craftingTable.addShaped("crafting/coke_brick", <item:immersiveengineering:cokebrick> * 4, [
    [<item:tjfc:metal/screw/wrought_iron>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/wrought_iron>],
    [<item:tfc:fire_bricks>, <item:tjfc:metal/strip/wrought_iron>, <item:tfc:fire_bricks>],
    [<item:tjfc:metal/screw/wrought_iron>, <item:tfc:fire_bricks>, <item:tjfc:metal/screw/wrought_iron>]]);

craftingTable.addShaped("crafting/ieshield_from_blue_steel_shield", <item:immersiveengineering:shield>, [
    [vars.steel_plate, <tag:items:forge:treated_wood>, vars.steel_plate],
    [vars.steel_plate, <item:tfc:metal/shield/blue_steel>, vars.steel_plate],
    [vars.steel_plate, <tag:items:forge:treated_wood>, vars.steel_plate]]);

craftingTable.addShaped("crafting/ieshield_from_red_steel_shield", <item:immersiveengineering:shield>, [
    [vars.steel_plate, <tag:items:forge:treated_wood>, vars.steel_plate],
    [vars.steel_plate, <item:tfc:metal/shield/red_steel>, vars.steel_plate],
    [vars.steel_plate, <tag:items:forge:treated_wood>, vars.steel_plate]]);

craftingTable.addShaped("crafting/rs_engineering", <item:immersiveengineering:rs_engineering> * 2, [
    [vars.steel_plate, <tag:items:tjfc:hammers_hard>.asIIngredient().transformDamage(1), vars.steel_plate],
    [<item:minecraft:redstone>, <tag:items:forge:ingots/copper>, <item:minecraft:redstone>],
    [vars.steel_plate, <item:minecraft:redstone>, vars.steel_plate]]);

craftingTable.addShaped("crafting/heavy_engineering", <item:immersiveengineering:heavy_engineering> * 2, [
    [vars.steel_plate, <tag:items:tjfc:hammers_hard>.asIIngredient().transformDamage(1), vars.steel_plate],
    [<item:minecraft:piston>, <tag:items:forge:ingots/electrum>, <item:minecraft:piston>],
    [vars.steel_plate, <item:immersiveengineering:component_steel>, vars.steel_plate]]);

craftingTable.addShaped("crafting/light_engineering", <item:immersiveengineering:light_engineering> * 2, [
    [vars.iron_plate, <item:immersiveengineering:component_iron>, vars.iron_plate],
    [<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>],
    [vars.iron_plate, <item:immersiveengineering:component_iron>, vars.iron_plate]]);

craftingTable.addShaped("crafting/capacitor_lv", <item:immersiveengineering:capacitor_lv>, [
    [vars.iron_ingot, vars.iron_ingot, vars.iron_ingot],
    [<tag:items:forge:ingots/copper>, <tag:items:forge:plates/lead>, <tag:items:forge:ingots/copper>],
    [<tag:items:forge:treated_wood>, vars.redstone_acid, <tag:items:forge:treated_wood>]]);

craftingTable.addShaped("crafting/capacitor_mv", <item:immersiveengineering:capacitor_mv>, [
    [vars.iron_ingot, vars.iron_ingot, vars.iron_ingot],
    [<tag:items:forge:ingots/electrum>, <tag:items:forge:plates/nickel>, <tag:items:forge:ingots/electrum>],
    [<tag:items:forge:treated_wood>, vars.redstone_acid, <tag:items:forge:treated_wood>]]);

craftingTable.addShaped("crafting/capacitor_hv", <item:immersiveengineering:capacitor_hv>, [
    [vars.steel_ingot, vars.steel_ingot, vars.steel_ingot],
    [<tag:items:forge:ingots/hop_graphite>, <tag:items:forge:plates/aluminum>, <tag:items:forge:ingots/hop_graphite>],
    [<tag:items:forge:treated_wood>, vars.redstone_acid, <tag:items:forge:treated_wood>]]);

addCraftingStairs("crafting/slag_brick_stairs", <item:immersiveengineering:stairs_slag_brick>, <item:immersiveengineering:slag_brick>);
addCraftingStairs("crafting/treated_wood_horizontal_stairs", <item:immersiveengineering:stairs_treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>);
addCraftingStairs("crafting/treated_wood_vertical_stairs", <item:immersiveengineering:stairs_treated_wood_vertical>, <item:immersiveengineering:treated_wood_vertical>);
addCraftingStairs("crafting/treated_wood_packaged_stairs", <item:immersiveengineering:stairs_treated_wood_packaged>, <item:immersiveengineering:treated_wood_packaged>);


addCraftingFence("crafting/steel_fence", <item:immersiveengineering:steel_fence>, <tag:items:forge:rods/steel>, vars.steel_ingot);
addCraftingFence("crafting/aluminum_fence", <item:immersiveengineering:alu_fence>, <tag:items:forge:rods/aluminum>, <tag:items:forge:ingots/aluminum>);
addCraftingFence("crafting/treated_fence", <item:immersiveengineering:treated_fence>, <tag:items:forge:rods/treated_wood>, <tag:items:forge:treated_wood>);


