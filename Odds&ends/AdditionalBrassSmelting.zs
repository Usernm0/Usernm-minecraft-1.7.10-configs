// Additiona brass melting
var turbineBrass = <Steamcraft:steamcraftCrafting:5>;

var pickaxeBrass = <Steamcraft:pickBrass>;
var axeBrass = <Steamcraft:axeBrass>;
var shovelBrass = <Steamcraft:shovelBrass>;
var hoeBrass = <Steamcraft:hoeBrass>;
var swordBrass = <Steamcraft:swordBrass>;
var helmBrass = <Steamcraft:helmBrass>;
var chestBrass = <Steamcraft:chestBrass>;
var legsBrass = <Steamcraft:legsBrass>;
var bootsBrass = <Steamcraft:feetBrass>;
mods.tconstruct.Smeltery.addMelting(turbineBrass, <liquid:brass.molten> * (platemb*4+16), 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(pickaxeBrass, <liquid:brass.molten> * 432, 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(axeBrass, <liquid:brass.molten> * 432, 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(shovelBrass, <liquid:brass.molten> * 144, 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(hoeBrass, <liquid:brass.molten> * 288, 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(swordBrass, <liquid:brass.molten> * 288, 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(helmBrass, <liquid:brass.molten> * 720, 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(chestBrass, <liquid:brass.molten> * 1152, 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(legsBrass, <liquid:brass.molten> * 1008, 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(bootsBrass, <liquid:brass.molten> * 576, 450, blockBrass);

mods.tconstruct.Smeltery.addMelting(<Steamcraft:pipe>, <liquid:brass.molten> * (platemb * 6/4), 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(<Steamcraft:steamTank>, <liquid:brass.molten> * (platemb * 8), 450, blockBrass);
mods.tconstruct.Smeltery.addMelting(<Steamcraft:horn>, <liquid:brass.molten> * (platemb * 6 + 16), 450, blockBrass);