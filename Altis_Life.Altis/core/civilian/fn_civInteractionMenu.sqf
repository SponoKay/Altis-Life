/*
	File: fn_civInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various civ actions towards another player.
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7"];
if(!dialog) then {
	createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
		
if(!isPlayer _curTarget) exitWith {closeDialog 0;}; //Bad side check?

if(!(_curTarget getVariable "restrained")) exitWith {
	closeDialog 0;
};

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
life_pInact_curTarget = _curTarget;

//Set Unrestrain Button
_Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";

//Set Escort Button
if((_curTarget getVariable["Escorting",false])) then {
	_Btn2 ctrlSetText localize "STR_pInAct_StopEscort";
	_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_civInteractionMenu;";
} else {
	_Btn2 ctrlSetText localize "STR_pInAct_Escort";
	_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
};

_Btn3 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";

_Btn4 ctrlSetText "Crocheter menottes";
_Btn4 buttonSetAction "[] spawn life_fnc_lockpick; closeDialog 0;";

_Btn5 ctrlSetText "Saisir carte/GPS";
_Btn5 buttonSetAction "[] call life_fnc_takeMap; closeDialog 0;";

if (!("ItemGPS" in (items life_pInact_curTarget + assignedItems life_pInact_curTarget)) && !("ItemMap" in (items life_pInact_curTarget + assignedItems life_pInact_curTarget))) then {
	_Btn5 ctrlEnable false;
};

_Btn6 ctrlSetText "Saisir téléphone";
_Btn6 buttonSetAction "[] call life_fnc_takePhone; closeDialog 0;";

if (!("ItemRadio" in (items life_pInact_curTarget + assignedItems life_pInact_curTarget))) then {
	_Btn6 ctrlEnable false;
};

_Btn7 ctrlSetText "Saisir cagoule";
_Btn7 buttonSetAction "[] call life_fnc_takeCagoule; closeDialog 0;";

if (headgear life_pInact_curTarget == "H_Shemag_olive"
	|| headgear life_pInact_curTarget == "H_ShemagOpen_khk"
	|| headgear life_pInact_curTarget == "H_Shemag_tan"
	|| headgear life_pInact_curTarget == "H_ShemagOpen_tan"
	|| goggles life_pInact_curTarget == "G_Balaclava_blk"
	|| goggles life_pInact_curTarget == "G_Balaclava_combat"
	|| goggles life_pInact_curTarget == "G_Balaclava_oli"
	|| goggles life_pInact_curTarget == "G_Bandanna_aviator"
	|| goggles life_pInact_curTarget == "G_Bandanna_sport"
	|| goggles life_pInact_curTarget == "G_Bandanna_shades") then {
	_Btn7 ctrlEnable false;
};

_Btn8 ctrlSetText "Poser traceur";
_Btn8 buttonSetAction "[] call life_fnc_tracker;";

if (life_inv_tracker <= 0) then {
	_Btn8 ctrlEnable false;
};

if ((_curTarget getVariable "CopRestrain")) then {
	_Btn1 ctrlEnable false;
	_Btn2 ctrlEnable false;
	_Btn3 ctrlEnable false;
	_Btn5 ctrlEnable false;
	_Btn6 ctrlEnable false;
	_Btn7 ctrlEnable false;
	_Btn8 ctrlEnable false;
	if (life_inv_lockpick <= 0) then {
		_Btn4 ctrlEnable false;
	};
}
else {
	_Btn4 ctrlEnable false;
};