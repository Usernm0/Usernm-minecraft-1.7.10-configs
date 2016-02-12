// Script written by Usernm.
// Fix scanner recipe for IC2



// Variables
// Minecraft
var dustGlowstone = <minecraft:glowstone_dust>;

// Industrial Craft 2
var casingGold = <IC2:itemCasing:3>;
var circuitAdvanced = <ore:circuitAdvanced>;
var crystalEnergy = <IC2:itemBatCrystal:*>;
var scannerOV = <IC2:itemScannerAdv:26>;
var scannerOD = <IC2:itemScanner:*>;
// Gregtech
var cableGold = <ore:craftingWireGold>;

recipes.remove(scannerOV);
recipes.addShaped(scannerOV,
 [[casingGold, crystalEnergy, casingGold],
  [dustGlowstone, circuitAdvanced, dustGlowstone],
  [cableGold, scannerOD, cableGold]]);