// Script written by Usernm.
// Cyclic craft for ExtraBiomes saplings.

// Options
// Saplings output multiplayer
var mul = 1;

// Variables
var saplingUmberAutumn = <ExtrabiomesXL:saplings_1>;
var saplingGoldenrodAutumn = <ExtrabiomesXL:saplings_1:1>;
var saplingVermillionAutumn = <ExtrabiomesXL:saplings_1:2>;
var saplingCitrineAutumn = <ExtrabiomesXL:saplings_1:3>;
var saplingFir = <ExtrabiomesXL:saplings_1:4>;
var saplingRedwood = <ExtrabiomesXL:saplings_1:5>;
var saplingAcacia = <ExtrabiomesXL:saplings_1:6>;
var saplingCypress = <ExtrabiomesXL:saplings_1:7>;
var saplingCypressBald = <ExtrabiomesXL:saplings_2>;
var saplingMapleJapanese = <ExtrabiomesXL:saplings_2:1>;
var saplingMapleJapaneseShrub = <ExtrabiomesXL:saplings_2:2>;
var saplingEucalyptusRainbow = <ExtrabiomesXL:saplings_2:3>;
var saplingsakura = <ExtrabiomesXL:saplings_2:4>;



// Recipes
recipes.addShapeless(saplingUmberAutumn*mul, [saplingsakura, saplingsakura, saplingsakura, saplingsakura]);
recipes.addShapeless(saplingGoldenrodAutumn*mul, [saplingUmberAutumn, saplingUmberAutumn, saplingUmberAutumn, saplingUmberAutumn]);
recipes.addShapeless(saplingVermillionAutumn*mul, [saplingGoldenrodAutumn, saplingGoldenrodAutumn, saplingGoldenrodAutumn, saplingGoldenrodAutumn]);
recipes.addShapeless(saplingCitrineAutumn*mul, [saplingVermillionAutumn, saplingVermillionAutumn, saplingVermillionAutumn, saplingVermillionAutumn]);
recipes.addShapeless(saplingFir*mul, [saplingCitrineAutumn, saplingCitrineAutumn, saplingCitrineAutumn, saplingCitrineAutumn]);
recipes.addShapeless(saplingRedwood*mul, [saplingFir, saplingFir, saplingFir, saplingFir]);
recipes.addShapeless(saplingAcacia*mul, [saplingRedwood, saplingRedwood, saplingRedwood, saplingRedwood]);
recipes.addShapeless(saplingCypress*mul, [saplingAcacia, saplingAcacia, saplingAcacia, saplingAcacia]);
recipes.addShapeless(saplingCypressBald*mul, [saplingCypress, saplingCypress, saplingCypress, saplingCypress]);
recipes.addShapeless(saplingMapleJapanese*mul, [saplingCypressBald, saplingCypressBald, saplingCypressBald, saplingCypressBald]);
recipes.addShapeless(saplingMapleJapaneseShrub*mul, [saplingMapleJapanese, saplingMapleJapanese, saplingMapleJapanese, saplingMapleJapanese]);
recipes.addShapeless(saplingEucalyptusRainbow*mul, [saplingMapleJapaneseShrub, saplingMapleJapaneseShrub, saplingMapleJapaneseShrub, saplingMapleJapaneseShrub]);
recipes.addShapeless(saplingsakura*mul, [saplingEucalyptusRainbow, saplingEucalyptusRainbow, saplingEucalyptusRainbow, saplingEucalyptusRainbow]);
