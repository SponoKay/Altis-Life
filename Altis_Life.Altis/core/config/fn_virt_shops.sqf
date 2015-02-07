/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Marché d'Altis",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","bouchons","storagesmall","storagebig"]]};
	case "wongs": {["Restaurant des Wongs",["turtlesoup","turtle"]]};
	case "coffee": {["Café du Patron",["coffee","donuts"]]};
	case "gang": {["Marché du gang", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "heroin": {["Dealer de drogues",["cocainep","heroinp","marijuana","meth"]]};
	case "oil": {["Vendeur de pétrole",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Poissonnier",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Vendeur de verre",["glass"]]};
	case "iron": {["Vendeur de fer",["iron_r","copper_r"]]};
	case "diamond": {["Joaillier",["diamond","diamondc"]]};
	case "salt": {["Vendeur de sel",["salt_r"]]};
	case "cop": {["Boutique Policier",["donuts","coffee","spikeStrip","barriere","water","rabbit","apple","redgull","fuelF","mauer","bouchons"]]};
	case "cement": {["Vendeur de ciment",["cement"]]};
	case "blackmarket": {["Marché noir",["cement","salt_r","diamondc","iron_r","copper_r","glass","oilp","apple","peach","lockpick","water","rabbit","redgull","tbacon","pickaxe","fuelF","goldbar"]]};
	case "rebmarket": {["Marché rebelle",["menotte","spikeStrip","water","rabbit","apple","peach","redgull","tbacon","lockpick","pickaxe","fuelF","bouchons"]]};
	case "mercomarket": {["Marché mercenaire",["menotte","spikeStrip","barriere","water","rabbit","apple","peach","redgull","tbacon","pickaxe","fuelF","bouchons"]]};
};