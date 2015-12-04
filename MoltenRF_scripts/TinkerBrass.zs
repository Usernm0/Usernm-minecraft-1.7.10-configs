// Minetweaker script by Usernm, add TiC support to FSP mod.

// How much millibuckets in one plate. 
var platemb = 96;

//Zinc
var oreZinc = <ore:oreZinc>;
var nuggetZinc = <Steamcraft:steamcraftNugget:1>;
var nuggetZincAny = <ore:nuggetZinc>;
var ingotZinc = <Steamcraft:steamcraftIngot:1>;
var ingotZincAny = <ore:ingotZinc>;
var blockZinc = <Steamcraft:blockZinc>;
var blockZincAny = <ore:blockZinc>;

//Brass
var nuggetBrass = <Steamcraft:steamcraftNugget:3>;
var nuggetBrassAny = <ore:nuggetBrass>;
var ingotBrass = <Steamcraft:steamcraftIngot:2>;
var ingotBrassAny = <ore:ingotBrass>;
var blockBrass = <Steamcraft:blockBrass>;
var blockBrassAny = <ore:blockBrass>;

var castIngot = <TConstruct:metalPattern>;
var castNugget = <TConstruct:metalPattern:27>;

// FSP plates
var plateCopper = <Steamcraft:steamcraftPlate>;
var plateZinc = <Steamcraft:steamcraftPlate:1>;
var plateIron = <Steamcraft:steamcraftPlate:2>;
var plateGold = <Steamcraft:steamcraftPlate:3>;
var plateBrass = <Steamcraft:steamcraftPlate:4>;
var plateLead = <Steamcraft:steamcraftPlate:9>;
var plateEnderium = <Steamcraft:steamcraftPlate:11>;

//TiC Zinc melting
mods.tconstruct.Smeltery.addMelting(oreZinc, <liquid:zinc.molten> * 288, 600);

mods.tconstruct.Smeltery.addMelting(nuggetZincAny, <liquid:zinc.molten> * 16, 400, blockZinc);
mods.tconstruct.Smeltery.addMelting(ingotZincAny, <liquid:zinc.molten> * 144, 500, blockZinc);
mods.tconstruct.Smeltery.addMelting(blockZincAny, <liquid:zinc.molten> * 1296, 600, blockZinc);

// TiC Brass melting
mods.tconstruct.Smeltery.addMelting(nuggetBrass, <liquid:brass.molten> * 16, 400, blockBrass);
mods.tconstruct.Smeltery.addMelting(ingotBrass, <liquid:brass.molten> * 144, 500, blockBrass);
mods.tconstruct.Smeltery.addMelting(blockBrass, <liquid:brass.molten> * 1296, 600, blockBrass);

// Brass alloy
mods.tconstruct.Smeltery.addAlloy(<liquid:brass.molten> * 64, [<liquid:copper.molten> * 48, <liquid:zinc.molten> * 16]);

//Zinc casting
mods.tconstruct.Casting.addTableRecipe(nuggetZinc, <liquid:zinc.molten> * 16, castNugget, false, 20);
mods.tconstruct.Casting.addTableRecipe(ingotZinc, <liquid:zinc.molten> * 144, castIngot, false, 20);
mods.tconstruct.Casting.addBasinRecipe(blockZinc, <liquid:zinc.molten> * 1296, null, false, 180);

// brass casting
mods.tconstruct.Casting.addTableRecipe(nuggetBrass, <liquid:brass.molten> * 16, castNugget, false, 20);
mods.tconstruct.Casting.addTableRecipe(ingotBrass, <liquid:brass.molten> * 144, castIngot, false, 20);
mods.tconstruct.Casting.addBasinRecipe(blockBrass, <liquid:brass.molten> * 1296, null, false, 180);

//aobd section
var dustZinc = <ore:dustZinc>;

mods.tconstruct.Smeltery.addMelting(dustZinc, <liquid:zinc.molten> * 144, 400, blockZinc);

// Remove gold blank pattern, because add gold plate with same recipe
var goldBlankPattern = <TConstruct:blankPattern:2>;
mods.tconstruct.Casting.removeTableRecipe(goldBlankPattern);

// FSP plates in TiC
mods.tconstruct.Casting.addTableRecipe(plateCopper, <liquid:copper.molten> * platemb, null, false, 20);
mods.tconstruct.Casting.addTableRecipe(plateZinc, <liquid:zinc.molten> * platemb, null, false, 20);
mods.tconstruct.Casting.addTableRecipe(plateIron, <liquid:iron.molten> * platemb, null, false, 20);
mods.tconstruct.Casting.addTableRecipe(plateGold, <liquid:gold.molten> * platemb, null, false, 20);
mods.tconstruct.Casting.addTableRecipe(plateBrass, <liquid:brass.molten> * platemb, null, false, 20);
mods.tconstruct.Casting.addTableRecipe(plateLead, <liquid:lead.molten> * platemb, null, false, 20);
mods.tconstruct.Casting.addTableRecipe(plateEnderium, <liquid:enderium.molten> * platemb, null, false, 20);

// Melting FSP plates in TiC
mods.tconstruct.Smeltery.addMelting(plateCopper, <liquid:copper.molten> * platemb, 450, <ThermalFoundation:Storage>);
mods.tconstruct.Smeltery.addMelting(plateZinc, <liquid:zinc.molten> * platemb, 450, blockZinc);
mods.tconstruct.Smeltery.addMelting(plateIron, <liquid:iron.molten> * platemb, 450, <minecraft:iron_block>);
mods.tconstruct.Smeltery.addMelting(plateGold, <liquid:gold.molten> * platemb, 450, <minecraft:gold_block>);
mods.tconstruct.Smeltery.addMelting(plateBrass, <liquid:brass.molten> * platemb, 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(plateLead, <liquid:lead.molten> * platemb, 450, <ThermalFoundation:Storage:3>);
mods.tconstruct.Smeltery.addMelting(plateEnderium, <liquid:enderium.molten> * platemb, 450, <ThermalFoundation:Storage:12>);