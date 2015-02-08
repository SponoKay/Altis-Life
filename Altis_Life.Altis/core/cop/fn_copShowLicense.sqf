/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Deathblade
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Vous n'êtes pas un flic !";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

switch ( _coplevel ) do
{
	case 1: { _rang = "Recrue"; };
	case 2: { _rang = "Gardien de la paix"; };
	case 3: { _rang = "Brigadier"; };
	case 4: { _rang = "Brigadier Chef"; };
	case 5: { _rang = "Major"; };
	case 6: { _rang = "Lieutenant"; };
	case 7: { _rang = "Capitaine"; };
	case 8: { _rang = "Commandant"};
	case 9: { _rang = "Colonel"};
	case 10: { _rang = "General"};
	default {_rank =  "Erreur";};
};

_message = format["<img size='10' color='#FFFFFF' image='icons\insigne.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Policier d'Altis</t>", name player, _rang];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
