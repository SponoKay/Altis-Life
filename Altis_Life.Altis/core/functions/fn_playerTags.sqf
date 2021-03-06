#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];

_units = _units - [player];

{
	private["_text"];
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x])
			&& {!isNil {_x getVariable "realname"}} 
			&& headgear _x != "H_ShemagOpen_tan" 
			&& headgear _x != "H_Shemag_olive" 
			&& headgear _x != "H_ShemagOpen_khk" 
			&& uniform _x != "U_O_GhillieSuit" 
			&& uniform _x != "U_B_GhillieSuit" 
			&& headgear _x != "H_Shemag_tan" 
			&& goggles _x != "G_Balaclava_blk" 
			&& goggles _x != "G_Balaclava_combat" 
			&& goggles _x != "G_Balaclava_lowprofile" 
			&& goggles _x != "G_Balaclava_oli" 
			&& goggles _x != "G_Bandanna_aviator" 
			&& goggles _x != "G_Bandanna_sport" 
			&& goggles _x != "G_Bandanna_shades") then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < 15}) then {
			_text = switch (true) do {
				case (_x in (units grpPlayer) && playerSide == civilian): {format["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];};
				case (!isNil {(_x getVariable "rank")}): {format["<img image='%1' size='1'></img> %2<br/><t size='0.8' color='#0266C8'>%3</t>",
					switch ((_x getVariable "rank")) do {
						case 2: {"textures\grades\police\Gardien de la Paix.jpg"};
						case 3: {"textures\grades\police\Brigadier.jpg"};
						case 4: {"textures\grades\police\Brigadier Chef.jpg"};
						case 5: {"textures\grades\police\Major.jpg"};
						case 6: {"textures\grades\police\Lieutenant.jpg"};
						case 7: {"textures\grades\police\Capitaine.jpg"};
						case 8: {"textures\grades\police\Commandant.jpg"};
						case 9: {"textures\grades\police\Colonel.jpg"};
						case 10: {"textures\grades\police\General.jpg"};
						default {"textures\grades\police\Recrue.jpg"};
					},_x getVariable ["realname",name _x],
					switch ((_x getVariable "rank")) do {
						case 2: {"Gardien de la Paix"};
						case 3: {"Brigadier"};
						case 4: {"Brigadier Chef"};
						case 5: {"Major"};
						case 6: {"Lieutenant"};
						case 7: {"Capitaine"};
						case 8: {"Commandant"};
						case 9: {"Colonel"};
						case 10: {"Général"};
						default {"Recrue"};
					}]};
				case (_x getVariable "medecin"): {format["<t color='#02A001'><img image='\a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1<br/><t size='0.8' color='#99FF99'>Médecin</t>",_x getVariable ["realname",name _x]]};
				case (_x getVariable "mercenaire"): {format["<t color='#FF3333'><img image='\a3\ui_f\data\gui\cfg\CommunicationMenu\defend_ca.paa' size='1.5'></img></t> %1<br/><t size='0.8' color='#99FF99'>Mercenaire</t>",_x getVariable ["realname",name _x]]};
				default {
					if(!isNil {(group _x) getVariable "gang_name"}) then {
						format["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
					} else {
						_x getVariable ["realname",name _x];
					};
				};
			};
			
			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;