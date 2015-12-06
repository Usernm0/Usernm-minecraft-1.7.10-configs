// Minetweaker script by Usernm, recipe unification for gears, and split gears to different tiers.

// Tier 1 - Poor gears - Buildcraft wood and stone gear
// Tier 2 - Soft gears - Tin, Copper, gears from forestry and clockworks, lead, 
// Tier 3 - Normal gears - Iron, Bronze, Brass, Nickel,  gears
// Tier 3a - Precious gears - Silver, Gold, 
// Tier 4 - Invar
// Tier 4a - Electrum, Platinum 
// Tier 5 - Tough gears - Steel, Enderium
// Tier 5a - Emerald, Diamond, Signalum, Lumium gears

var gearCast = <TConstruct:gearCast>;

// Soft gears
 
//Copper gears
var gearCopperForestry = <Forestry:gearCopper>;
var gearCopperTE = <ThermalFoundation:material:128>;
var gearCopperClockwork = <clockworkphase:gearCopper>;

var ingotCopperAny = <ore:ingotCopper>;
var blockCopperTE = <ThermalFoundation:Storage>;

<ore:thermalexpansion:machineCopper>.add(gearCopperClockwork);

<ore:gearCopper>.remove(gearCopperForestry);
<ore:gearCopper>.remove(gearCopperTE);

<ore:thermalexpansion:machineCopper>.remove(gearCopperForestry);
<ore:thermalexpansion:machineCopper>.remove(gearCopperTE);

recipes.remove(gearCopperTE);
recipes.remove(gearCopperForestry);
mods.tconstruct.Casting.removeTableRecipe(gearCopperForestry);
mods.tconstruct.Smeltery.removeMelting(gearCopperForestry);

mods.tconstruct.Casting.removeTableRecipe(gearCast);

recipes.remove(gearCopperClockwork);
recipes.addShaped(gearCopperClockwork,
 [[null, ingotCopperAny, null],
  [ingotCopperAny, ingotCopperAny, ingotCopperAny],
  [null, ingotCopperAny, null]]);

mods.tconstruct.Casting.addTableRecipe(gearCopperClockwork, <liquid:copper.molten> * 576, gearCast, false, 20);
mods.tconstruct.Smeltery.addMelting(gearCopperClockwork, <liquid:copper.molten> * 576, 450, blockCopperTE);


//Tin gears
var gearTinForestry = <Forestry:gearTin>;
var gearTinTE = <ThermalFoundation:material:129>;
var gearTinClockwork = <clockworkphase:gearTin>;

var ingotTinAny = <ore:ingotTin>;
var blockTinTE = <ThermalFoundation:Storage:1>;

<ore:thermalexpansion:machineTin>.remove(gearTinForestry);
<ore:thermalexpansion:machineTin>.remove(gearTinTE);
<ore:thermalexpansion:machineTin>.add(gearTinClockwork);

<ore:gearTin>.remove(gearTinForestry);
<ore:gearTin>.remove(gearTinTE);

recipes.remove(gearTinForestry);
recipes.remove(gearTinTE);

mods.tconstruct.Casting.removeTableRecipe(gearTinForestry);
mods.tconstruct.Smeltery.removeMelting(gearTinForestry);

recipes.remove(gearTinClockwork);
recipes.addShaped(gearTinClockwork,
 [[null, ingotTinAny, null],
  [ingotTinAny, ingotTinAny, ingotTinAny],
  [null, ingotTinAny, null]]);

mods.tconstruct.Casting.addTableRecipe(gearTinClockwork, <liquid:tin.molten> * 576, gearCast, false, 20);
mods.tconstruct.Smeltery.addMelting(gearTinClockwork, <liquid:tin.molten> * 576, 450, blockTinTE);

// Lead gear
var gearLeadTE = <ThermalFoundation:material:131>;
var gearLeadClockwork = <clockworkphase:gearLead>;

var ingotLeadAny = <Railcraft:ingot:3>;
var blockLeadTE = <ThermalFoundation:Storage:3>;

<ore:thermalexpansion:machineLead>.add(gearLeadClockwork);

<ore:gearLead>.remove(gearLeadTE);

<ore:thermalexpansion:machineLead>.remove(gearLeadTE);

mods.tconstruct.Casting.removeTableRecipe(gearLeadTE);
mods.tconstruct.Smeltery.removeMelting(gearLeadTE);

recipes.remove(gearLeadTE);

recipes.remove(gearLeadClockwork);
recipes.addShaped(gearLeadClockwork,
 [[null, ingotLeadAny, null],
  [ingotLeadAny, ingotLeadAny, ingotLeadAny],
  [null, ingotLeadAny, null]]);

mods.tconstruct.Casting.addTableRecipe(gearLeadClockwork, <liquid:lead.molten> * 576, gearCast, false, 20);
mods.tconstruct.Smeltery.addMelting(gearLeadClockwork, <liquid:lead.molten> * 576, 450, blockLeadTE);

// gearSoft oreDict
<ore:gearSoft>.add(gearCopperClockwork);
<ore:gearSoft>.add(gearTinClockwork);
<ore:gearSoft>.add(gearLeadClockwork);

// gearNormal
// Iron gear

var gearIronBuilcraft = <BuildCraft|Core:ironGearItem>;
var gearIronRailcraft = <Railcraft:part.gear:1>;
var gearIronTE = <ThermalFoundation:material:12>;
var gearIronClockwork = <clockworkphase:gearIron>;

var ingotIronAny = <ore:ingotIron>;
var blockIronMinecraft = <minecraft:iron_block>;

<ore:gearIron>.remove(gearIronBuilcraft);
<ore:gearIron>.remove(gearIronRailcraft);
<ore:gearIron>.remove(gearIronTE);

mods.tconstruct.Casting.removeTableRecipe(gearIronBuilcraft);
mods.tconstruct.Smeltery.removeMelting(gearIronBuilcraft);

recipes.remove(gearIronBuilcraft);
recipes.remove(gearIronRailcraft);
recipes.remove(gearIronTE);

recipes.remove(gearIronClockwork);
recipes.addShaped(gearIronClockwork,
 [[null, ingotIronAny, null],
  [ingotIronAny, ingotIronAny, ingotIronAny],
  [null, ingotIronAny, null]]);

mods.tconstruct.Casting.addTableRecipe(gearIronClockwork, <liquid:iron.molten> * 576, gearCast, false, 20);
mods.tconstruct.Smeltery.addMelting(gearIronClockwork, <liquid:iron.molten> * 576, 450, blockIronMinecraft);

//Bronze
var gearBronzeForestry = <Forestry:gearBronze>;
var gearBronzeTE = <ThermalFoundation:material:137>;
var gearBronzeClockwork = <clockworkphase:gearBronze>;

var ingotBronzeAny = <ore:ingotBronze>;
var blockBronzeTE = <ThermalFoundation:Storage:9>;

<ore:gearBronze>.remove(gearBronzeForestry);
<ore:gearBronze>.remove(gearBronzeTE);

mods.tconstruct.Casting.removeTableRecipe(gearBronzeForestry);
mods.tconstruct.Smeltery.removeMelting(gearBronzeForestry);

recipes.remove(gearBronzeForestry);
recipes.remove(gearBronzeTE);

recipes.remove(gearBronzeClockwork);
recipes.addShaped(gearBronzeClockwork,
 [[null, ingotBronzeAny, null],
  [ingotBronzeAny, ingotBronzeAny, ingotBronzeAny],
  [null, ingotBronzeAny, null]]);

mods.tconstruct.Casting.addTableRecipe(gearBronzeClockwork, <liquid:bronze.molten> * 576, gearCast, false, 20);
mods.tconstruct.Smeltery.addMelting(gearBronzeClockwork, <liquid:bronze.molten> * 576, 450, blockBronzeTE);

// Brass gear

var gearBrassClockwork = <clockworkphase:gearBrass>;

var ingotBrass = <Steamcraft:steamcraftIngot:2>;
var blockBrass = <Steamcraft:blockBrass>;

recipes.remove(gearBrassClockwork);
recipes.addShaped(gearBrassClockwork,
 [[null, ingotBrass, null],
  [ingotBrass, ingotBrass, ingotBrass],
  [null, ingotBrass, null]]);

mods.tconstruct.Casting.removeTableRecipe(gearBrassClockwork);
mods.tconstruct.Casting.addTableRecipe(gearBrassClockwork, <liquid:brass.molten> * 576, gearCast, false, 20);
mods.tconstruct.Smeltery.addMelting(gearBrassClockwork, <liquid:brass.molten> * 576, 450, blockBrass);

// Nickel gear

var gearNickelTE = <ThermalFoundation:material:132>;

var ingotNickelAny = <ore:ingotNickel>;

recipes.remove(gearNickelTE);
recipes.addShaped(gearNickelTE,
 [[null, ingotNickelAny, null],
  [ingotNickelAny, ingotNickelAny, ingotNickelAny],
  [null, ingotNickelAny, null]]);

// gearNormal oreDict
<ore:gearNormal>.add(gearIronClockwork);
<ore:gearNormal>.add(gearBronzeClockwork);
<ore:gearNormal>.add(gearBrassClockwork);
<ore:gearNormal>.add(gearNickelTE);

// T4 gears (Invar)
// Invar gear
var gearInvarTE = <ThermalFoundation:material:136>;

var ingotInvarAny = <ore:ingotInvar>;

recipes.remove(gearInvarTE);
recipes.addShaped(gearInvarTE,
 [[null, ingotInvarAny, null],
  [ingotInvarAny, ingotInvarAny, ingotInvarAny],
  [null, ingotInvarAny, null]]);

// T4 gear oreDict
<ore:gearT4>.add(gearInvarTE);

// T5 gears (Steel, Enderium)
// Steel gears

var gearSteelRailcraft = <Railcraft:part.gear:2>;
var gearSteelClockwork = <clockworkphase:gearSteel>;

var ingotSteelAny = <ore:ingotSteel>;

<ore:gearSteel>.remove(gearSteelRailcraft);

recipes.remove(gearSteelRailcraft);

recipes.remove(gearSteelClockwork);
recipes.addShaped(gearSteelClockwork,
 [[null, ingotSteelAny, null],
  [ingotSteelAny, ingotSteelAny, ingotSteelAny],
  [null, ingotSteelAny, null]]);

// Enderium gears

var gearEnderiumTE = <ThermalFoundation:material:140>;

var ingotEnderium = <ThermalFoundation:material:76>;

recipes.remove(gearEnderiumTE);
recipes.addShaped(gearEnderiumTE,
 [[null, ingotEnderium, null],
  [ingotEnderium, ingotEnderium, ingotEnderium],
  [null, ingotEnderium, null]]);

// T5 gears oreDict
<ore:gearT5>.add(gearSteelClockwork);
<ore:gearT5>.add(gearEnderiumTE);

// T3a gears (Silver, Gold)
// Silver gear

var gearSilverTE = <ThermalFoundation:material:130>;
var gearSilverClockwork = <clockworkphase:gearSilver>;

var ingotSilverAny = <ore:ingotSilver>;

recipes.remove(gearSilverTE);

recipes.remove(gearSilverClockwork);
recipes.addShaped(gearSilverClockwork,
 [[null, ingotSilverAny, null],
  [ingotSilverAny, <ore:gearNormal>, ingotSilverAny],
  [null, ingotSilverAny, null]]);
recipes.addShaped(gearSilverClockwork,
 [[null, ingotSilverAny, null],
  [ingotSilverAny, <ore:gearT4>, ingotSilverAny],
  [null, ingotSilverAny, null]]);
recipes.addShaped(gearSilverClockwork,
 [[null, ingotSilverAny, null],
  [ingotSilverAny, <ore:gearT5>, ingotSilverAny],
  [null, ingotSilverAny, null]]);

mods.tconstruct.Casting.removeTableRecipe(gearSilverTE);
mods.tconstruct.Smeltery.removeMelting(gearSilverTE);

mods.tconstruct.Casting.addTableRecipe(gearSilverClockwork, <liquid:silver.molten> * 576, gearIronClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearSilverClockwork, <liquid:silver.molten> * 576, gearBronzeClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearSilverClockwork, <liquid:silver.molten> * 576, gearBrassClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearSilverClockwork, <liquid:silver.molten> * 576, gearNickelTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearSilverClockwork, <liquid:silver.molten> * 576, gearInvarTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearSilverClockwork, <liquid:silver.molten> * 576, gearSteelClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearSilverClockwork, <liquid:silver.molten> * 576, gearEnderiumTE, true, 20);

// Gold gear
var gearGoldBuildcraft = <BuildCraft|Core:goldGearItem>;
var gearGoldTE = <ThermalFoundation:material:13>;

var ingotGoldAny = <ore:ingotGold>;

<ore:gearGold>.remove(gearGoldBuildcraft);

recipes.remove(gearGoldBuildcraft);

recipes.remove(gearGoldTE);
recipes.addShaped(gearGoldTE,
 [[null, ingotGoldAny, null],
  [ingotGoldAny, <ore:gearNormal>, ingotGoldAny],
  [null, ingotGoldAny, null]]);
recipes.addShaped(gearGoldTE,
 [[null, ingotGoldAny, null],
  [ingotGoldAny, <ore:gearT4>, ingotGoldAny],
  [null, ingotGoldAny, null]]);
recipes.addShaped(gearGoldTE,
 [[null, ingotGoldAny, null],
  [ingotGoldAny, <ore:gearT5>, ingotGoldAny],
  [null, ingotGoldAny, null]]);

mods.tconstruct.Casting.removeTableRecipe(gearGoldBuildcraft);
mods.tconstruct.Smeltery.removeMelting(gearGoldBuildcraft);

mods.tconstruct.Casting.addTableRecipe(gearGoldTE, <liquid:gold.molten> * 576, gearIronClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearGoldTE, <liquid:gold.molten> * 576, gearBronzeClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearGoldTE, <liquid:gold.molten> * 576, gearBrassClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearGoldTE, <liquid:gold.molten> * 576, gearNickelTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearGoldTE, <liquid:gold.molten> * 576, gearInvarTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearGoldTE, <liquid:gold.molten> * 576, gearSteelClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearGoldTE, <liquid:gold.molten> * 576, gearEnderiumTE, true, 20);

// T3a oreDict (Silver, Gold gear)
<ore:gearT3a>.add(gearSilverClockwork);
<ore:gearT3a>.add(gearGoldTE);

// T4a gears (Electrum, platinum)
// Electrum gears
var gearElectrumTE = <ThermalFoundation:material:135>;

var ingotElectrum = <ThermalFoundation:material:71>;

recipes.remove(gearElectrumTE);
recipes.addShaped(gearElectrumTE,
 [[null, ingotElectrum, null],
  [ingotElectrum, <ore:gearT4>, ingotElectrum],
  [null, ingotElectrum, null]]);
recipes.addShaped(gearElectrumTE,
 [[null, ingotElectrum, null],
  [ingotElectrum, <ore:gearT5>, ingotElectrum],
  [null, ingotElectrum, null]]);

mods.tconstruct.Casting.removeTableRecipe(gearElectrumTE);
mods.tconstruct.Smeltery.removeMelting(gearElectrumTE);

mods.tconstruct.Casting.addTableRecipe(gearElectrumTE, <liquid:electrum.molten> * 576, gearInvarTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearElectrumTE, <liquid:electrum.molten> * 576, gearSteelClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearElectrumTE, <liquid:electrum.molten> * 576, gearEnderiumTE, true, 20);

// Platinum gears
var gearPlatinumTE = <ThermalFoundation:material:133>;

var ingotPlatinum = <ThermalFoundation:material:69>;

recipes.remove(gearPlatinumTE);
recipes.addShaped(gearPlatinumTE,
 [[null, ingotPlatinum, null],
  [ingotPlatinum, <ore:gearT4>, ingotPlatinum],
  [null, ingotPlatinum, null]]);
recipes.addShaped(gearPlatinumTE,
 [[null, ingotPlatinum, null],
  [ingotPlatinum, <ore:gearT5>, ingotPlatinum],
  [null, ingotPlatinum, null]]);

mods.tconstruct.Casting.removeTableRecipe(gearPlatinumTE);
mods.tconstruct.Smeltery.removeMelting(gearPlatinumTE);

mods.tconstruct.Casting.addTableRecipe(gearPlatinumTE, <liquid:platinum.molten> * 576, gearInvarTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearPlatinumTE, <liquid:platinum.molten> * 576, gearSteelClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearPlatinumTE, <liquid:platinum.molten> * 576, gearEnderiumTE, true, 20);

// T4a oreDict (Electrum, Platinum gear)
<ore:gearT4a>.add(gearElectrumTE);
<ore:gearT4a>.add(gearPlatinumTE);

// T5a gears (Emerald, Diamond, Signalum, Lumium gears)
// Emerald gear
var gearEmeraldClockwork = <clockworkphase:gearEmerald>;

var gemEmeraldAny = <ore:gemEmerald>;

recipes.remove(gearEmeraldClockwork);
recipes.addShaped(gearEmeraldClockwork,
 [[null, gemEmeraldAny, null],
  [gemEmeraldAny, <ore:gearT5>, gemEmeraldAny],
  [null, gemEmeraldAny, null]]);

// Diamond gear
var gearDiamondBuildcraft = <BuildCraft|Core:diamondGearItem>;
var gearDiamondClockwork = <clockworkphase:gearDiamond>;

var gemDiamondAny = <ore:gemDiamond>;

<ore:gearDiamond>.remove(gearDiamondBuildcraft);

recipes.remove(gearDiamondBuildcraft);

recipes.remove(gearDiamondClockwork);
recipes.addShaped(gearDiamondClockwork,
 [[null, gemDiamondAny, null],
  [gemDiamondAny, <ore:gearT5>, gemDiamondAny],
  [null, gemDiamondAny, null]]);

// Signalum gears
var gearSignalumTE = <ThermalFoundation:material:138>;

var ingotSignalum = <ThermalFoundation:material:74>;

recipes.remove(gearSignalumTE);
recipes.addShaped(gearSignalumTE,
 [[null, ingotSignalum, null],
  [ingotSignalum, <ore:gearT5>, ingotSignalum],
  [null, ingotSignalum, null]]);

mods.tconstruct.Casting.removeTableRecipe(gearSignalumTE);
mods.tconstruct.Smeltery.removeMelting(gearSignalumTE);

mods.tconstruct.Casting.addTableRecipe(gearSignalumTE, <liquid:signalum.molten> * 576, gearSteelClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearSignalumTE, <liquid:signalum.molten> * 576, gearEnderiumTE, true, 20);

// Lumium gears
var gearLumiumTE = <ThermalFoundation:material:139>;

var ingotLumium = <ThermalFoundation:material:75>;

recipes.remove(gearLumiumTE);
recipes.addShaped(gearLumiumTE,
 [[null, ingotLumium, null],
  [ingotLumium, <ore:gearT5>, ingotLumium],
  [null, ingotLumium, null]]);

mods.tconstruct.Casting.removeTableRecipe(gearLumiumTE);
mods.tconstruct.Smeltery.removeMelting(gearLumiumTE);

mods.tconstruct.Casting.addTableRecipe(gearLumiumTE, <liquid:lumium.molten> * 576, gearSteelClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearLumiumTE, <liquid:lumium.molten> * 576, gearEnderiumTE, true, 20);

// gearGem oreDict
<ore:gearGem>.add(gearEmeraldClockwork);
<ore:gearGem>.add(gearDiamondClockwork);

// gearT5a oreDict
<ore:gearT5a>.add(gearEmeraldClockwork);
<ore:gearT5a>.add(gearDiamondClockwork);
<ore:gearT5a>.add(gearSignalumTE);
<ore:gearT5a>.add(gearLumiumTE);

// Molten aluminum brass cast recipes
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearCopperClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearTinClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearLeadClockwork, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearIronClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearBronzeClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearBrassClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearNickelTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearInvarTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearSteelClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearEnderiumTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearSilverClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearGoldTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearElectrumTE, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearPlatinumTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearEmeraldClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearDiamondClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearSignalumTE, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:aluminumbrass.molten> * 144, gearLumiumTE, true, 20);

// Molten gold gear cast recipes
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearCopperClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearTinClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearLeadClockwork, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearIronClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearBronzeClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearBrassClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearNickelTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearInvarTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearSteelClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearEnderiumTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearSilverClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearGoldTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearElectrumTE, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearPlatinumTE, true, 20);

mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearEmeraldClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearDiamondClockwork, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearSignalumTE, true, 20);
mods.tconstruct.Casting.addTableRecipe(gearCast, <liquid:gold.molten> * 288, gearLumiumTE, true, 20);