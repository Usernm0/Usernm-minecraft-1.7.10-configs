var aluminumBrassIngot = <TConstruct:materials:14>;

//Add aluminumBrass as Brass
<ore:ingotBrass>.add(<TConstruct:materials:14>);

recipes.removeShaped(<Steamcraft:blockBrass>);
recipes.addShapeless(<Steamcraft:blockBrass>,[<Steamcraft:steamcraftIngot:2>, <Steamcraft:steamcraftIngot:2>, <Steamcraft:steamcraftIngot:2>,
<Steamcraft:steamcraftIngot:2>,<Steamcraft:steamcraftIngot:2>,<Steamcraft:steamcraftIngot:2>,
<Steamcraft:steamcraftIngot:2>,<Steamcraft:steamcraftIngot:2>,<Steamcraft:steamcraftIngot:2>]);

recipes.removeShapeless(<Steamcraft:steamcraftNugget:3>);
recipes.addShapeless(<Steamcraft:steamcraftNugget:3>,[<Steamcraft:steamcraftIngot:2>]);
