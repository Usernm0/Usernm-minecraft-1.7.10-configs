// Removing forestry gears recipes
recipes.remove(<Forestry:gearBronze>);
recipes.remove(<Forestry:gearCopper>);
recipes.remove(<Forestry:gearTin>);

// Removing forestry gears from oredict
<ore:gearTin>.remove(<Forestry:gearTin>);
<ore:gearCopper>.remove(<Forestry:gearCopper>);
<ore:gearBronze>.remove(<Forestry:gearBronze>);

// Removing tools recipes
recipes.remove(<Forestry:wrench>);

// fix clockwork engine to use gt gear (oredict gear).
val engineClockwork = <Forestry:engine:4>;
recipes.remove(engineClockwork);
recipes.addShaped(engineClockwork,
 [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
  [null, <ore:blockGlass>, null],
  [<ore:gearCopper>, <ore:craftingPiston>, <minecraft:clock>]]);
