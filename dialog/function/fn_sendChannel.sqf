/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Ermöglicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if (life_cash <= 50000 ) exitWith { systemChat "Vous avez besoin de 50000€ pour faire passer votre message!"; };
if (playerSide != civilian ) exitWith { systemChat "Vous devez être un civil!"; };
life_cash = life_cash - 50000;

_message = ctrlText 9001;


[[2,format ["%1 a envoyé le message suivant à tous les téléspectateurs de Altis TV: %2",name player,_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;