/*
LUCEL WAS HERE altislife.fr
*/
private["_markers","_trackerList","_index","_owners","_str","_pid","_trackerID","_pos","_i","_marker","_owners"];
_markers = [];
_trackerList = [];
_pid = getPlayerUID player;
_i = 0; 
if(count life_vehicles_tracked == 0) exitWith{};
//diag_log format["life_vehicles_tracked %1",life_vehicles_tracked];
sleep 0.5;
if(visibleMap) then {

    {
	_owners = _x getVariable ["vehicle_info_tracker",[]];
	//diag_log format ["VisibleMap |  _owners %1", _owners];
	//if((_owners select 0) select 0 == _pid) then 
	if([_pid,name player] in _owners) then 
		{
		_trackerList pushBack _x;
		}
	} foreach life_vehicles_tracked;
	//Création du markerdufion

	{
		_i = _i + 1;
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorYellow";
		_marker setMarkerTypeLocal "n_armor";
		_marker setMarkerTextLocal format["Traceur - %1",_i];
		_markers pushBack [_marker,_x];
		
	} foreach _trackerList;
	//diag_log format["_trackerList %1",_trackerList];

	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _markers;

	if(!visibleMap) exitWith {};
	sleep 0.02;
	};
	
	{deleteMarkerLocal (_x select 0);} foreach _markers;
	_markers = [];
	_trackerList = [];
};