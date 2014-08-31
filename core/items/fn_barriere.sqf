/*
	File: fn_barriere.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	cree la barriere et la place
*/
private["_position","_barriere"];
_barriere = "RoadBarrier_F" createVehicle [0,0,0];
_barriere attachTo[player,[0,5.5,0]];
_barriere setDir 90;
_barriere setVariable["item",true];
_barriere setVariable["idleTime",time,true];

life_barriere = _barriere;
waitUntil {isNull life_barriere};

if(isNull _barriere) exitWith {life_barriere = ObjNull;};
_barriere setPos [(getPos _barriere select 0),(getPos _barriere select 1),0];
_barriere setDamage 1;
