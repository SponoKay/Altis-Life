/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
	Bidouiller par LECUL pour Altislife.fr
*/
private["_unit"];
_unit = cursorTarget;

if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if((_unit getVariable "Escorting")) exitWith {};
if(player == _unit) exitWith {};

if(side player == west) then {
_unit setVariable["CopRestrain",true,true];
_unit setVariable["restrained",true,true];
_unit setVariable["surrender",false,true];
_unit setVariable["robbedmap",false,true];
if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
[[0,format["%1 se fait menotter par %2", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
};

if (side player == civilian) then {
	if(life_inv_menotte < 1) exitWith {hint"Vous devez avoir une paire de menottes."};
	life_inv_menotte = life_inv_menotte - 1;
	_unit setVariable["CopRestrain",false,true];
	_unit setVariable["restrained",true,true];
	_unit setVariable["surrender",false,true];
	_unit setVariable["robbedmap",false,true];
	if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
	[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
};
