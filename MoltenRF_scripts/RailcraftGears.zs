// Minetweaker script by Usernm, changes for Railcraft to fit tiered gears.

var gearGoldPlatedRailcraft = <Railcraft:part.gear>;
var gearBushing = <Railcraft:part.gear:3>;

recipes.remove(gearGoldPlatedRailcraft);
recipes.remove(gearBushing);

var engineHoobbyist = <Railcraft:machine.beta:7>;

recipes.remove(engineHoobbyist);
recipes.addShaped(engineHoobbyist,
 [[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
  [null, <ore:blockGlass>, null],
  [<ore:gearSoft>, <minecraft:piston>, <ore:gearSoft>]]);

var engineCommercial = <Railcraft:machine.beta:8>;
var plateIronRailcraft = <Railcraft:part.plate>;

recipes.remove(engineCommercial);
recipes.addShaped(engineCommercial,
 [[plateIronRailcraft, plateIronRailcraft, plateIronRailcraft],
  [null, <ore:blockGlass>, null],
  [<ore:gearNormal>, <minecraft:piston>, <ore:gearNormal>]]);

var engineIndustrial = <Railcraft:machine.beta:9>;
var plateSteelRailcraft = <Railcraft:part.plate:1>;

recipes.remove(engineIndustrial);
recipes.addShaped(engineIndustrial,
 [[plateSteelRailcraft, plateSteelRailcraft, plateSteelRailcraft],
  [null, <ore:blockGlass>, null],
  [<ore:gearT5>, <minecraft:piston>, <ore:gearT5>]]);

var metalsChest = <Railcraft:machine.beta:12>;

recipes.remove(metalsChest);
recipes.addShaped(metalsChest,
 [[<ore:gearT5>, <minecraft:piston>, <ore:gearT5>],
  [<minecraft:piston>, <minecraft:anvil>, <minecraft:piston>],
  [<ore:gearT5>, <minecraft:piston>, <ore:gearT5>]]);

var electricLocomotive = <Railcraft:cart.loco.electric>;
var electricFeederUnit = <Railcraft:machine.epsilon>;
recipes.remove(electricLocomotive);
recipes.addShaped(electricLocomotive,
 [[<minecraft:redstone_lamp>, plateSteelRailcraft, null],
  [plateSteelRailcraft, electricFeederUnit, plateSteelRailcraft],
  [<ore:gearT5>, <minecraft:minecart>, <ore:gearT5>]]);