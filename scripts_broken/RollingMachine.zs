// Broken because modtweaker.
// Rolling machine copper plate nerf 4->3
val ingotCopper = <gregtech:gt.metaitem.01:11035>;
val plateCopper = <Railcraft:part.plate:3>;
mods.railcraft.Rolling.removeRecipe(plateCopper);
mods.railcraft.Rolling.addShaped(plateCopper*3, [[ingotCopper, ingotCopper],
[ingotCopper, ingotCopper]]);

// Rolling machine tin plate nerf 4->3
val ingotTin = <gregtech:gt.metaitem.01:11057>;
val plateTin = <Railcraft:part.plate:2>;
mods.railcraft.Rolling.removeRecipe(plateTin);
mods.railcraft.Rolling.addShaped(plateTin*3, [[ingotTin, ingotTin],
[ingotTin, ingotTin]]);

// Add rolling machine bronze ingots 4->3
val ingotBronze = <gregtech:gt.metaitem.01:11300>;
val plateBronze = <gregtech:gt.metaitem.01:17300>;
mods.railcraft.Rolling.removeRecipe(ingotBronze);
mods.railcraft.Rolling.addShaped(plateBronze*3, [[ingotBronze, ingotBronze],
[ingotBronze, ingotBronze]]);

// Rolling machine iron plate nerf 4->3
val plateIron = <Railcraft:part.plate>;
mods.railcraft.Rolling.removeRecipe(plateIron);
mods.railcraft.Rolling.addShaped(plateIron*3, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>],
[<minecraft:iron_ingot>, <minecraft:iron_ingot>]]);

// Rolling machine steel plate nerf 4->3
val ingotSteel = <gregtech:gt.metaitem.01:11305>;
val plateSteel = <Railcraft:part.plate:1>;
mods.railcraft.Rolling.removeRecipe(plateSteel);
mods.railcraft.Rolling.addShaped(plateSteel * 3, [[ingotSteel, ingotSteel],
[ingotSteel, ingotSteel]]);