/*
	File: fn_repairTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName","_cpRate","_sfx","_sfxplay"];
_veh = cursorTarget;
_sfx = true;
_sfxplay = 0;
life_interrupted = false;
if(isNull _veh) exitwith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air")) then
{
	if("ToolKit" in (items player)) then
	{
		life_action_inUse = true;
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format["Réparation %1",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		
		if(license_civ_depanneur)then{
		_cpRate = 0.01 // 25 secondes
		}else{
		_cpRate = 0.005 // 50 secondes
		};


		while{true} do
		{
			if(animationState player != "InBaseMoves_repairVehicleKnl") then {
				[[player,"InBaseMoves_repairVehicleKnl"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player playMoveNow "InBaseMoves_repairVehicleKnl";
			};
			
			if((_sfx)) then {
				_vehicle say3D "repair";
				_sfx = false;
			};
				
			sleep 0.25;
			_sfxplay = _sfxplay + 1;
	
			if(_sfxplay >= 138)then{
				_sfx = true;
				_sfxplay = 0;
			};
			_cP = _cP + _cpRate;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		player playActionNow "stop";
		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
		if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};
		player removeItem "ToolKit";
		_veh setDamage (0);
		titleText[localize "STR_NOTF_RepairedVehicle","PLAIN"];
	};
};