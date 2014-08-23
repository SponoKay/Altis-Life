/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep","_isUnconscious"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;
_isUnconscious = _unit getVariable "FAR_isUnconscious";

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_projectile in ["B_9x21_Ball"] && _curWep in ["hgun_P07_snds_F"]) then {
			//if(side _source == west && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = 15;
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = 0;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle) then {
							if (_isQuad) then {
								player action ["Eject",vehicle player];
								[_unit,_source] spawn life_fnc_tazed;
							};
						} else {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			//};
			
			//Temp fix for super tasers on cops.
			/*if(playerSide == west && side _source == west) then {
				_damage = false;
			};*/
		};
	};
};

// Flashbang
if (_projectile in ["mini_Grenade"]) then {
	_damage = 0;
	[_projectile] spawn life_fnc_handleFlashbang;
};

if (alive _unit && _damage >= 1 && _isUnconscious == 0 && _part !="") then 
{	
		diag_log format ["FAR condition Unit alive: %1, damage:%2, isUnconscious: %3, isHit: %4", alive _unit, _damage, _isUnconscious, _part];
		
		_unit setDamage 0;
		_unit allowDamage false;
		_damage = 0;

		[_unit, _source] spawn FAR_Player_Unconscious;
	
	if(side _source != west && alive _source && _source != _unit) then
	{
		if(vehicle _source isKindOf "LandVehicle") then
		{
			if(alive _source) then
			{
				[[getPlayerUID _source,name _source,"187V"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			};
		}
		else
		{
			[[getPlayerUID _source,name _source,"187"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		};
	};
};

[] call life_fnc_hudUpdate;
_damage;