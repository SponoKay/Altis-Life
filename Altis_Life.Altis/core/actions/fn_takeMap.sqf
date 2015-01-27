/*
fn_takeMap.sqf
think & tweak bylecul
altislife.fr
*/

private["_unit"];
_unit = cursorTarget;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};

sleep 1;

if ("ItemMap" in (items _unit + assignedItems _unit)) then {
	[[2,format["Quelqu'un vient de te prendre ta carte!", name _unit, name player]],"life_fnc_broadcast",_unit,false] spawn life_fnc_MP;
	titleText[format["Vous avez pris la carte de cette personne"],"PLAIN"];
	_unit unassignItem "ItemMap";
	_unit removeItem "ItemMap";
	player addItem "ItemMap";
};

sleep 1;

if ("ItemGPS" in (items _unit + assignedItems _unit)) then {
	[[2,format["Quelqu'un vient de te prendre ton GPS!", name _unit, name player]],"life_fnc_broadcast",_unit,false] spawn life_fnc_MP;
	titleText[format["Vous avez pris le GPS de cette personne"],"PLAIN"];
	_unit unassignItem "ItemGPS";
	_unit removeItem "ItemGPS";
	player addItem "ItemGPS";
};