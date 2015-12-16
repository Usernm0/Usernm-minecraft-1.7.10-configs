// Copper
<ore:ingotSoft>.add(<Forestry:ingotCopper>);
<ore:ingotSoft>.add(<ProjRed|Core:projectred.core.part:52>);
<ore:ingotSoft>.add(<Railcraft:ingot:1>);
<ore:ingotSoft>.add(<Steamcraft:steamcraftIngot>);
<ore:ingotSoft>.add(<TConstruct:materials:9>);
<ore:ingotSoft>.add(<ThermalFoundation:material:64>);
// Tin
<ore:ingotSoft>.add(<Forestry:ingotTin>);
<ore:ingotSoft>.add(<ProjRed|Core:projectred.core.part:53>);
<ore:ingotSoft>.add(<Railcraft:ingot:2>);
<ore:ingotSoft>.add(<TConstruct:materials:10>);
<ore:ingotSoft>.add(<ThermalFoundation:material:65>);
// Lead
<ore:ingotSoft>.add(<Railcraft:ingot:3>);
<ore:ingotSoft>.add(<ThermalFoundation:material:67>);
// Zinc
<ore:ingotSoft>.add(<Steamcraft:steamcraftIngot:1>);

//Iron
<ore:ingotNormal>.add(<minecraft:iron_ingot>);
// Bronze
<ore:ingotNormal>.add(<Forestry:ingotBronze>);
<ore:ingotNormal>.add(<TConstruct:materials:13>);
<ore:ingotNormal>.add(<ThermalFoundation:material:73>);
// Brass
<ore:ingotNormal>.add(<Steamcraft:steamcraftIngot:2>);
<ore:ingotNormal>.add(<TConstruct:materials:14>);

recipes.addShaped(<JABBA:upgradeStructural:1>,
 [[<minecraft:fence>, <ore:ingotSoft>, <minecraft:fence>],
  [<ore:ingotSoft>, null, <ore:ingotSoft>],
  [<minecraft:fence>, <ore:ingotSoft>, <minecraft:fence>]]);

recipes.addShaped(<JABBA:upgradeStructural:2>,
 [[<minecraft:fence>, <ore:ingotNormal>, <minecraft:fence>],
  [<ore:ingotNormal>, null, <ore:ingotNormal>],
  [<minecraft:fence>, <ore:ingotNormal>, <minecraft:fence>]]);