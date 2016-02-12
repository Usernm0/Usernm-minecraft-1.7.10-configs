// Script written by Usernm.
// Remove boilers, steam turbines from railcraft. 
// Automation, Electricity, Steam module in railcraft config should be enabled. 
// Factory module disabled in my config.

// Variables
// Minecraft
var cart = <minecraft:minecart>;
var chestcart = <minecraft:chest_minecart>;

// Railcraft
var boilerTankHP = <Railcraft:machine.beta:4>;
var boilerTankLP = <Railcraft:machine.beta:3>;

var boreHeadDiamond = <Railcraft:borehead.diamond>;
var boreHeadIron = <Railcraft:borehead.iron>;

var cartCargo = <Railcraft:cart.cargo>;

var energyFeeder = <Railcraft:machine.epsilon>;

var engineSteamT1 = <Railcraft:machine.beta:7>;
var engineSteamT2 = <Railcraft:machine.beta:8>;
var engineSteamT3 = <Railcraft:machine.beta:9>;

var fireboxLiquid = <Railcraft:machine.beta:6>;
var fireboxSolid = <Railcraft:machine.beta:5>;

var locoElectric = <Railcraft:cart.loco.electric>;
var locoSteam = <Railcraft:cart.loco.steam.solid>;

var steamTurbine = <Railcraft:machine.alpha:1>;

var tankSteel = <Railcraft:machine.beta:13>;
var trackForceEmitter = <Railcraft:machine.epsilon:3>;
var trackLayer = <Railcraft:cart.track.layer>;
var transformerFlux = <Railcraft:machine.epsilon:4>;

var tunnelBore = <Railcraft:cart.bore>;

var turbineBlade = <Railcraft:part.turbine.blade>;
var turbineDisc = <Railcraft:part.turbine.disk>;
var turbineRotor = <Railcraft:part.turbine.rotor>;

// Industrial Craft 2
var luminator = <IC2:blockLuminatorDark>;

// Gregtech
var hpCoalBoiler = <gregtech:gt.blockmachines:101>;
var hpLavaBoiler = <gregtech:gt.blockmachines:102>;

var blockIron = <ore:blockIron>;
var grindingHeadDiamond = <gregtech:gt.metaitem.01:32722>;
var machineCasingLV = <gregtech:gt.blockmachines:11>;
var motorLV = <gregtech:gt.metaitem.01:32600>;
var pipeSteelMedium = <ore:pipeMediumSteel>;
var plateIron = <ore:plateIron>;
var plateSteel = <ore:plateSteel>;
var toolWrench = <ore:craftingToolWrench>;



// Recipes

// Remove Boilers
recipes.remove(fireboxSolid);
recipes.remove(fireboxLiquid);
recipes.remove(boilerTankLP);
recipes.remove(boilerTankHP);

// Remove Engines
recipes.remove(engineSteamT1);
recipes.remove(engineSteamT2);
recipes.remove(engineSteamT3);

// Remove gears
recipes.remove(<Railcraft:part.gear:*>);

// Remove Random things
recipes.remove(cartCargo);
recipes.remove(transformerFlux);
recipes.remove(trackForceEmitter);

// Remove Steam Turbine
recipes.remove(steamTurbine);
recipes.remove(turbineDisc);
recipes.remove(turbineRotor);
recipes.remove(turbineBlade);

// Change Locomotives
// Steam Locomotive
recipes.remove(locoSteam);
recipes.addShaped(locoSteam,
 [[pipeSteelMedium, plateSteel, plateSteel],
  [tankSteel, tankSteel, hpCoalBoiler],
  [cart, cart, cart]]);

// Electric Locomotive
recipes.remove(locoElectric);
recipes.addShaped(locoElectric,
 [[luminator, energyFeeder, toolWrench],
  [motorLV, machineCasingLV, motorLV],
  [cart, cart, cart]]);

// Tunnel Bore
recipes.remove(tunnelBore);
recipes.addShaped(tunnelBore,
 [[hpCoalBoiler, cart, hpLavaBoiler],
  [hpCoalBoiler, chestcart, hpLavaBoiler],
  [chestcart, trackLayer, chestcart]]);

// Change Bore heads recipes
recipes.remove(boreHeadDiamond);
recipes.addShapeless(boreHeadDiamond,
 [grindingHeadDiamond]);

recipes.remove(boreHeadIron);
recipes.addShaped(boreHeadIron,
 [[plateIron, plateIron, plateIron],
  [plateIron, blockIron, plateIron],
  [plateIron, plateIron, plateIron]]);






