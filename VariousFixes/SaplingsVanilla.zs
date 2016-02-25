// Script written by Usernm.
// Cyclic craft for vanilla saplings.

// Options
// Saplings output multiplayer
var mul = 4;

// Variables
var saplingOak = <minecraft:sapling>;
var saplingSpruce = <minecraft:sapling:1>;
var saplingBirch = <minecraft:sapling:2>;
var saplingJungle = <minecraft:sapling:3>;
var saplingAcacia = <minecraft:sapling:4>;
var saplingDarkOak = <minecraft:sapling:5>;



// Recipes
recipes.addShapeless(saplingOak*mul, [saplingDarkOak, saplingDarkOak, saplingDarkOak, saplingDarkOak]);
recipes.addShapeless(saplingSpruce*mul, [saplingOak, saplingOak, saplingOak, saplingOak]);
recipes.addShapeless(saplingBirch*mul, [saplingSpruce, saplingSpruce, saplingSpruce, saplingSpruce]);
recipes.addShapeless(saplingJungle*mul, [saplingBirch, saplingBirch, saplingBirch, saplingBirch]);
recipes.addShapeless(saplingAcacia*mul, [saplingJungle, saplingJungle, saplingJungle, saplingJungle]);
recipes.addShapeless(saplingDarkOak*mul, [saplingAcacia, saplingAcacia, saplingAcacia, saplingAcacia]);