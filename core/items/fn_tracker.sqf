/*
	TrackerLucel
	POIRE
*/
private["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_dice","_badDistance","_markers","_uid","_name","_pid","_unit","_index"];
_curTarget = cursorTarget;
_pid = getPlayerUID player;
_unit = player;
_name = name _unit;

life_interrupted = false;
if(life_action_inUse) exitWith {};
if(isNull _curTarget) exitWith {}; //Bad type
_distance = ((boundingBox _curTarget select 1) select 0) + 2;
if(player distance _curTarget > _distance) exitWith {}; //Too far
_isVehicle = if((_curTarget isKindOf "LandVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
//if(_isVehicle && _curTarget in life_vehicles) exitWith {hint "Ce véhicule est déja sous surveillance..."};

//More error checks
if(!_isVehicle && !isPlayer _curTarget) exitWith {};
if(!_isVehicle && !(_curTarget getVariable["restrained",false])) exitWith {};

_title = format["Mise en place du traceur sur %1",getText(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "displayName")];
life_action_inUse = true; //Lock out other actions


//Setup the progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.1;
//_cP = 0.01;

while {true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.25;
	_cP = _cP + 0.1;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};
	if((player getVariable["restrained",false])) exitWith {};
	if(player distance _curTarget > _distance) exitWith {_badDistance = true;};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(!isNil "_badDistance") exitWith {titleText["Vous êtes trop loin de la cible","PLAIN"]; life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText["Action annulé","PLAIN"]; life_action_inUse = false;};

//[] spawn TON_fnc_vehPos;

//_curTarget setVariable["vehicle_info_tracker",[[_pid,_name]],true];
//[[_curTarget, _pid],"TON_fnc_vehPos",_curTarget,false] spawn Life_fnc_MP;
//[[_vid,_pid,(getMarkerPos life_garage_sp),_unit,_price],"TON_fnc_vehPos",false,false] spawn life_fnc_MP;

//nul = [this] execvm 'marker.sqf';veh = [this, 30, 60, 0, FALSE, FALSE,"nul = [this] execvm 'marker.sqf'"] execVM "vehicle.sqf";

//_veh = [_curTarget, 30, 60, 0];
//diag_log format ["TRACKER01 || _curTarget: %1 _unit :%2", _curTarget, _unit];

//_owners = _curTarget getVariable "vehicle_info_tracker";
if (isNull _curTarget ) exitWith {};
//_owners = _curTarget getVariable "vehicle_info_tracker";
//_index = [_pid,_owners] call TON_fnc_index;
//if(_index == -1) then 
//{
	_owners = _curTarget getVariable ["vehicle_info_tracker",[]];
	if([_pid,name player] in _owners) then {
	systemChat format["Traceur déja installé. Vous avez déja placé un traceur sur ce véhicule."];
	hint parseText format["<t size='3'><t color='#00FF00'>Traceur déja installé</t></t> <br/><t size='1.5'>Vous avez déja placé un traceur sur ce véhicule.</t>"];
	}else{	
    _owners pushBack [_pid,player getVariable["realname",name player]];
	_curTarget setVariable["vehicle_info_tracker",_owners,true];
	systemChat format["Traceur installé. Consultez votre carte."];
	hint parseText format["<t size='3'><t color='#00FF00'>Traceur installé</t></t> <br/><t size='1.5'>Consultez votre carte.</t>"];
	_curTarget setVariable["vehicle_info_tracker",_owners,true];
	if(!([false,"trackerlucel",1] call life_fnc_handleInv)) exitWith {life_action_inUse = false;};
	life_vehicles_tracked pushBack _curTarget;
	life_action_inUse = false;
	 };
life_action_inUse = false;
//};


//_curTarget setVariable["vehicle_info_tracker",[[_pid,_name]],true]; 


//[[_curTarget,_unit],"life_fnc_createMarkerTracker",_curTarget,false] spawn life_fnc_MP;
/*
_markers = [];
titleText["Le traceur est désormais installer, consultez la carte pour connaitre l'emplacement du véhicule mis sous surveillance.","PLAIN"];
	{
		_marker = createMarkerLocal [_playerName, _pos];
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorBlue";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", name _x];
		_markers pushBack [_marker,_x];
		
	} foreach (units group player);
	//_dice = random(100);
	//if(_dice < 15) then {
        //life_vehicles pushBack _curTarget; //action pour donner les clés
	//};
*/