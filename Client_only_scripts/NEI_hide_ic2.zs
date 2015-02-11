import mods.nei.NEI;

// Hide blocks not usable from NEI
NEI.hide(<IC2:blockHarz>);
NEI.hide(<IC2:blockDoorAlloy>);
NEI.hide(<IC2:blockReinforcedFoam>);
NEI.hide(<IC2:blockFoam>);
NEI.hide(<IC2:blockWall:*>);
NEI.hide(<IC2:blockCable>);
NEI.hide(<IC2:blockMiningTip>);
NEI.hide(<IC2:blockDynamite>);
NEI.hide(<IC2:blockDynamiteRemote>);
NEI.hide(<IC2:blockBarrel>);

//NEI.hide(<IC2:itemFluidCell>);

// GT removed blocks hide
/*
NEI.hide(<IC2:blockGenerator:3>); // Solar panel
NEI.hide(<IC2:blockMachine:2>); // Electric furnace
NEI.hide(<IC2:blockMachine:3>); // Macerator
NEI.hide(<IC2:blockMachine:4>); // Extractor
NEI.hide(<IC2:blockMachine:5>); // Compressor
NEI.hide(<IC2:blockMachine:11>); // Recycler
NEI.hide(<IC2:blockMachine:13>); // Induction smelter
NEI.hide(<IC2:blockMachine:14>); // Mass fabricator
NEI.hide(<IC2:blockMachine2:3>); // Thermal centrifuge
NEI.hide(<IC2:blockMachine2:4>); // Metal former
NEI.hide(<IC2:blockMachine2:5>); // Ore washing machine
NEI.hide(<IC2:blockMachine3:1>); // Blast furnace
NEI.hide(<IC2:blockMachine3:2>); // Block cutting machine
*/

// Rename refined iron to steel
NEI.overrideName(<IC2:itemIngot:3>, "Steel ingot");
NEI.overrideName(<IC2:blockMetal:5>, "Steel block");
NEI.overrideName(<IC2:itemRecipePart:12>, "Steel shaft");
NEI.overrideName(<IC2:itemCasing:5>, "Steel casing");
NEI.overrideName(<IC2:itemPlates:5>, "Steel plate");
NEI.overrideName(<IC2:itemDensePlates:5>, "Dense steel plate");
NEI.overrideName(<IC2:itemAdvIronBlockCuttingBlade>, "Block cutting blade (Steel)");
