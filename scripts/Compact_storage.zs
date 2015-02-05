// Compact storage recipes change. Next tier chest craft from previous tier chests.
/*
Progression looks like:
Chest = 8 planks
Double chest = 72 planks
Triple chest = 504 planks
Quadruple = 2520 planks
Quintuple = 7560 planks
Sextuple = 15120 planks
*/
// 9 default chest to double
recipes.removeShaped(<compactstorage:doubleChest>);
recipes.addShaped(<compactstorage:doubleChest>,
 [[<ore:craftingChest>, <ore:craftingChest>, <ore:craftingChest>],
  [<ore:craftingChest>, <ore:craftingChest>, <ore:craftingChest>],
  [<ore:craftingChest>, <ore:craftingChest>, <ore:craftingChest>]]);

// 7 double to triple
recipes.removeShaped(<compactstorage:tripleChest>);
recipes.addShapeless(<compactstorage:tripleChest>,
  [<compactstorage:doubleChest>, <compactstorage:doubleChest>,
  <compactstorage:doubleChest>, <compactstorage:doubleChest>, <compactstorage:doubleChest>,
  <compactstorage:doubleChest>, <compactstorage:doubleChest>]);

// 5 triple to quadruple
recipes.removeShaped(<compactstorage:quadrupleChest>);
recipes.addShapeless(<compactstorage:quadrupleChest>,
 [<compactstorage:tripleChest>, <compactstorage:tripleChest>, <compactstorage:tripleChest>,
 <compactstorage:tripleChest>, <compactstorage:tripleChest>]);

// 3 quadruple to quintuple
recipes.removeShaped(<compactstorage:quintupleChest>);
recipes.addShapeless(<compactstorage:quintupleChest>,
 [<compactstorage:quadrupleChest>, <compactstorage:quadrupleChest>, <compactstorage:quadrupleChest>]);

// 2 quintuple to sextuple
recipes.removeShaped(<compactstorage:sextupleChest>);
recipes.addShapeless(<compactstorage:sextupleChest>,
 [<compactstorage:quintupleChest>, <compactstorage:quintupleChest>]);

// compact storage backpacks recipe upgrades same way, like chests.
/*
Progression looks like:
Backpack = 4 string, 4 wool
Double = 36 string, 36 wool
Triple = 252 string, 252 wool
Quadruple = 1260 string, 1260 wool
Quintuple = 3780 string, 3780 wool
Sextuple = 7560 string, 7560 wool
*/
// 9 default backpacks to double
recipes.removeShaped(<compactstorage:double_backpack>);
recipes.addShaped(<compactstorage:double_backpack>,
 [[<compactstorage:single_backpack>, <compactstorage:single_backpack>, <compactstorage:single_backpack>],
  [<compactstorage:single_backpack>, <compactstorage:single_backpack>, <compactstorage:single_backpack>],
  [<compactstorage:single_backpack>, <compactstorage:single_backpack>, <compactstorage:single_backpack>]]);

// 7 double to triple
recipes.removeShaped(<compactstorage:triple_backpack>);
recipes.addShapeless(<compactstorage:triple_backpack>,
  [<compactstorage:double_backpack>, <compactstorage:double_backpack>, <compactstorage:double_backpack>,
  <compactstorage:double_backpack>, <compactstorage:double_backpack>, <compactstorage:double_backpack>,
  <compactstorage:double_backpack>]);

// 5 triple to quadruple
recipes.removeShaped(<compactstorage:quadruple_backpack>);
recipes.addShapeless(<compactstorage:quadruple_backpack>,
 [<compactstorage:triple_backpack>, <compactstorage:triple_backpack>, <compactstorage:triple_backpack>,
 <compactstorage:triple_backpack>, <compactstorage:triple_backpack>]);

// 3 quadruple to quintuple
recipes.removeShaped(<compactstorage:quintuple_backpack>);
recipes.addShapeless(<compactstorage:quintuple_backpack>,
 [<compactstorage:quadruple_backpack>, <compactstorage:quadruple_backpack>, <compactstorage:quadruple_backpack>]);

// 2 quintuple to sextuple
recipes.removeShaped(<compactstorage:sextuple_backpack>);
recipes.addShapeless(<compactstorage:sextuple_backpack>,
 [<compactstorage:quintuple_backpack>, <compactstorage:quintuple_backpack>]);
