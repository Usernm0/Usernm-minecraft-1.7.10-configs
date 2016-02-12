// Script written by Usernm.
// Fixing nuclear control 2 recipes to using Gregtech wire, instead IC2.

// Options
var useGTTransformers = false;



// Variables
// Minecraft
var clock = <minecraft:clock>;
var paper = <minecraft:paper>;

// Nuclear Control 2
var cardText = <IC2NuclearControl:ItemTextCard>;
var cardTime = <IC2NuclearControl:ItemTimeCard>;
var counterAverage = <IC2NuclearControl:blockNuclearControlMain:7>;
var counterEnergy = <IC2NuclearControl:blockNuclearControlMain:6>;
var infoPanelExtender = <IC2NuclearControl:blockNuclearControlMain:5>;
var infoPanelPortable = <IC2NuclearControl:remoteMonitor>;
var upgradeRange = <IC2NuclearControl:ItemUpgrade>;

// Industrial Craft 2
var circuitBasic = <ore:circuitBasic>;
var circuitAdvanced = <ore:circuitAdvanced>;
var coolant10k = <IC2:reactorCoolantSimple:1>;
var frequencyTransmitter = <IC2:itemFreq>;
var plateCarbonIC2 = <IC2:itemPartCarbonPlate>;
var transformerMV = <IC2:blockElectric:4>;

// Gregtech
var cableAnyCopper = <ore:cableGt01AnyCopper>;
var cableTin = <ore:cableGt01Tin>;
var plateIron = <ore:plateIron>;
var plateLead = <ore:plateLead>;
var wireGold = <ore:wireGt01Gold>;

var transformerMVGT = <gregtech:gt.blockmachines:22>;



// Recipes
// cardText (Text Card)
recipes.addShaped(cardText,
 [[null, circuitBasic, null],
  [paper, cableTin, paper],
  [null, circuitBasic, null]]);
recipes.addShaped(cardText,
 [[null, paper, null],
  [circuitBasic, cableTin, circuitBasic],
  [null, paper, null]]);

// cardTime (Time Card)
recipes.addShaped(cardTime,
 [[null, clock, null],
  [paper, cableTin, paper],
  [null, clock, null]]);
recipes.addShaped(cardTime,
 [[null, paper, null],
  [clock, cableTin, clock],
  [null, paper, null]]);

// counterAverage (Average Counter)
recipes.addShaped(counterAverage,
 [[plateLead, circuitAdvanced, plateLead],
  [wireGold, transformerMV, wireGold]]);
if (useGTTransformers == true){
recipes.addShaped(counterAverage,
 [[plateLead, circuitAdvanced, plateLead],
  [wireGold, transformerMVGT, wireGold]]);
}

// counterEnergy (Energy Counter)
recipes.addShaped(counterEnergy,
 [[plateIron, circuitAdvanced, plateIron],
  [wireGold, transformerMV, wireGold]]);
if (useGTTransformers == true){
recipes.addShaped(counterEnergy,
 [[plateIron, circuitAdvanced, plateIron],
  [wireGold, transformerMVGT, wireGold]]);
}

//infoPanelPortable (Portable Information Panel)
recipes.addShaped(infoPanelPortable,
 [[cableTin, null, null],
  [frequencyTransmitter, infoPanelExtender, frequencyTransmitter],
  [upgradeRange, plateCarbonIC2, plateCarbonIC2]]);

// upgradeRange (Range upgrade)
recipes.addShaped(upgradeRange,
 [[coolant10k, coolant10k, coolant10k],
  [cableAnyCopper, frequencyTransmitter, cableAnyCopper]]);
