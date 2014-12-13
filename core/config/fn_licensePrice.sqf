/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {5000}; //Boating license cost
	case "pilot": {100000}; //Pilot/air license cost
	case "gun": {30000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "oil": {20000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {150000}; //Heroin processing license cost
	case "marijuana": {50000}; //Marijuana processing license cost
	case "medmarijuana": {50000}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {1000000}; //Rebel license cost
	case "truck": {25000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {10000};
	case "cocaine": {100000};
	case "sand": {10000};
	case "iron": {15000};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "home": {100000};
	case "meth": {200000};
	case "medecin": {300000};
	case "depanneur": {100000};
	case "taxi": {200000};
	case "mercenaire": {0};
};