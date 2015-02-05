// Remove railcraft plates from rolling machine, because use gregtech.
// Rolling machine copper plate remove.
val plateCopper = <Railcraft:part.plate:3>;
mods.railcraft.Rolling.removeRecipe(plateCopper);

// Rolling machine tin plate remove.
val plateTin = <Railcraft:part.plate:2>;
mods.railcraft.Rolling.removeRecipe(plateTin);

// Rolling machine iron plate remove.
val plateIron = <Railcraft:part.plate>;
mods.railcraft.Rolling.removeRecipe(plateIron);

// Rolling machine steel plate remove.
val plateSteel = <Railcraft:part.plate:1>;
mods.railcraft.Rolling.removeRecipe(plateSteel);
