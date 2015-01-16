#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(__GETC__(life_coplevel) == 0) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};

player setVariable["rank",(__GETC__(life_coplevel)),true];

_illegalMarkers =
["turtle_1","turtle_1_1","turtle_2","turtle_3","turtle_1_name","turtle_1_name_1","turtle_1_name_2","turtle_1_name_3",
"Zone_Illegale_1","Zone_Illegale_2","Zone_Illegale_3","illegal_name_1","illegal_name_2","illegal_name_3",
"marche_noir_1","marche_noir_2","marche_noir_3","weed_1","weed_area_1","weed_2","weed_area_2","weed_process_1","weed_process_2","cocaine_1",
"weed_area_1","cocaine_2","weed_area_2","cocaine_process_1","heroin_1","heroin_area_1","heroin_process_1","meth_1","meth_area_1","meth_2","meth_area_2","meth_process_1"];

{
	_x setMarkerAlphaLocal 0;
} forEach _illegalMarkers;

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.