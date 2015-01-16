/* 
	_null=this execVM "pnj\gang_process_2.sqf";
	init="_null=this execVM ""pnj\gang_process_2.sqf"";";
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false;  
_this addAction["<t color='#AAF200'>Traitement de cannabis</t>",life_fnc_processAction,"marijuana",0,false,false,"",' _b = nearestBuilding (getPosATL player);
life_inv_cannabis > 0 && !life_is_processing && !isNil {_b getVariable "gangOwner"} && {(_b getVariable "gangOwner") == (group player)} && playerSide == civilian ']; 
_this addAction["<t color='#AAF200'>Traitement de la coca</t>",life_fnc_processAction,"cocaine",0,false,false,"",' _b = nearestBuilding (getPosATL player);
life_inv_coke > 0 && !life_is_processing && !isNil {_b getVariable "gangOwner"} && {(_b getVariable "gangOwner") == (group player)} && playerSide == civilian ']; 
_this addAction["<t color='#AAF200'>Traitement du pavot</t>",life_fnc_processAction,"heroin",0,false,false,"",' _b = nearestBuilding (getPosATL player);
life_inv_heroinu > 0 && !life_is_processing && !isNil {_b getVariable "gangOwner"} && {(_b getVariable "gangOwner") == (group player)} && playerSide == civilian ']; 
_this addAction["<t color='#FF9900'>Préparation Méthamphétamine</t>",life_fnc_processAction,"meth",0,false,false,"",' _b = nearestBuilding (getPosATL player);
life_inv_phosphore > 0 && life_inv_soude > 0 && !life_is_processing && !isNil {_b getVariable "gangOwner"} && {(_b getVariable "gangOwner") == (group player)} && playerSide == civilian ']; 