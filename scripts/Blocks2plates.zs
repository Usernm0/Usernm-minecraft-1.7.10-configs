// Readable names for blocks and plates

val blockCopperRC = <Railcraft:cube:9>;
val blockCopperIC2 = <IC2:blockMetal>;
val blockTinRC = <Railcraft:cube:10>;
val blockTinIC2 = <IC2:blockMetal:1>;
val blockBronzeIC2 = <IC2:blockMetal:2>;
val blockLeadRC = <Railcraft:cube:11>;
val blockSteelRC = <Railcraft:cube:2>;
val blockSteelIC2 = <IC2:blockMetal:5>;
val plateCopper = <gregtech:gt.metaitem.01:17035>;
val plateTin = <gregtech:gt.metaitem.01:17057>;
val plateBronze = <gregtech:gt.metaitem.01:17300>;
val plateLead = <gregtech:gt.metaitem.01:17089>;
val plateGold = <gregtech:gt.metaitem.01:17086>;
val plateIron = <gregtech:gt.metaitem.01:17032>;
val plateSteel = <gregtech:gt.metaitem.01:17305>;
val plateSteelIC2 = <IC2:itemPlates:5>;

// Add conversion ingots->plates 1.5 to 1 through blocks.
mods.gregtech.ForgeHammer.addRecipe(plateCopper * 6, blockCopperRC, 600, 2);
mods.gregtech.ForgeHammer.addRecipe(plateCopper * 6, blockCopperIC2, 600, 2);
mods.gregtech.ForgeHammer.addRecipe(plateTin * 6, blockTinRC, 600, 2);
mods.gregtech.ForgeHammer.addRecipe(plateTin * 6, blockTinIC2, 600, 2);
mods.gregtech.ForgeHammer.addRecipe(plateBronze * 6, blockBronzeIC2, 600, 2);
mods.gregtech.ForgeHammer.addRecipe(plateLead * 6, blockLeadRC, 600, 2);
mods.gregtech.ForgeHammer.addRecipe(plateGold * 6, <minecraft:gold_block>, 600, 2);
mods.gregtech.ForgeHammer.addRecipe(plateIron * 6, <minecraft:iron_block>, 600, 2);
mods.gregtech.ForgeHammer.addRecipe(plateSteel * 6, blockSteelRC, 600, 2);
mods.gregtech.ForgeHammer.addRecipe(plateSteelIC2 * 6, blockSteelIC2, 600, 2);