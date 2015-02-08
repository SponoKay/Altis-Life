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

life_action_barriere = player addAction["Placer la barrière",{if(!isNull life_barriere) then {detach life_barriere; life_barriere = ObjNull;};},"",999,false,false,"",'!isNull life_barriere'];

life_barriere = _barriere;
waitUntil {isNull life_barriere};
if(!isNil "life_action_barriere") then {player removeAction life_action_barriere;};

if(isNull _barriere) exitWith {life_barriere = ObjNull;};
_barriere setPos [(getPos _barriere select 0),(getPos _barriere select 1),0];
_barriere setDamage 2;
life_action_barrierePackup = player addAction["Reprendre la barrière",life_fnc_packupBarriere,"",0,false,false,"",
		' _barriere = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barriere" && !isNil {(_barriere getVariable "item")}'];