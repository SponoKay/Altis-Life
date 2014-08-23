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
	case "market": {["Marche Altis",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","storagesmall","storagebig"]]};
	case "wongs": {["Restaurant des Wongs",["turtlesoup","turtle"]]};
	case "coffee": {["Café du Patron",["coffee","donuts"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "heroin": {["Dealer de drogues",["cocainep","heroinp","marijuana","meth"]]};
	case "oil": {["Trader de Petrole",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Marche au Poisson",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Oliver de Garglass",["glass"]]};
	case "iron": {["Vendeur de fer",["iron_r","copper_r"]]};
	case "diamond": {["Joaillier",["diamond","diamondc"]]};
	case "salt": {["Vendeur de sel",["salt_r"]]};
	case "cop": {["Boutique Policier",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","mauer"]]};
	case "cement": {["Vendeur de ciment",["cement"]]};
	case "blackmarket": {["Marche noir",["cement","salt_r","diamondc","iron_r","copper_r","glass","oilp","apple","peach","lockpick","water","rabbit","redgull","tbacon","pickaxe","fuelF"]]};
	case "rebmarket": {["Marche Rebelle",["menotte","spikeStrip","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach"]]};
};