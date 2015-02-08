// Scaffold nerf
recipes.removeShaped(<IC2:blockScaffold>);
recipes.addShaped(<IC2:blockScaffold>,
 [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
  [null, <ore:stickWood>, null],
  [<ore:stickWood>, null, <ore:stickWood>]]);

recipes.remove(<IC2:blockIronScaffold>);
recipes.addShaped(<IC2:blockIronScaffold> * 3,
 [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
  [null, <ore:stickAnyIron>, null],
  [<ore:stickAnyIron>, null, <ore:stickAnyIron>]]);

// RE-Battery from zinc
recipes.addShaped(<IC2:itemBatREDischarged>,
 [[null, <ore:cableGt01Zinc>, null],
  [<ore:plateZinc>, <ore:dustRedstone>, <ore:plateZinc>],
  [<ore:plateZinc>, <ore:dustRedstone>, <ore:plateZinc>]]);

// Advanced RE battery
recipes.remove(<IC2:itemAdvBat:26>);
recipes.addShaped(<IC2:itemAdvBat:26>,
 [[<ore:wireCopper>, <ore:plateBronze>, <ore:wireCopper>],
  [<ore:plateBronze>, <ore:dustSulfur>, <ore:plateBronze>],
  [<ore:plateBronze>, <ore:dustLead>, <ore:plateBronze>]]);

// uninsulated copper wire
val wireCopperIC2 = <IC2:itemCable:1>;
val wireX1Copper = <gregtech:gt.blockmachines:1360>;
recipes.remove(wireCopperIC2);
recipes.addShapeless(wireCopperIC2,
 [<ore:wireGt01AnyCopper>]);
recipes.addShapeless(wireX1Copper,
 [wireCopperIC2]);

// insulated copper wire
val cableCopperIC2 = <IC2:itemCable>;
val cableX1Copper = <gregtech:gt.blockmachines:1366>;
recipes.remove(cableCopperIC2);
recipes.addShapeless(cableCopperIC2,
 [<ore:cableGt01AnyCopper>]);
recipes.addShapeless(cableX1Copper,
 [cableCopperIC2]);

// remove ic2 insulated copper wire from oredict
<ore:craftingWireCopper>.remove(cableCopperIC2);
<ore:wireCopper>.remove(cableCopperIC2);