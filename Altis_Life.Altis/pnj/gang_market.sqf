/* 
	_null=this execVM "pnj\gang_market.sqf";
*/

_this enableSimulation false; 
_this allowDamage false;  
_this addAction["<t color='#AAF200'>Ravitaillement</t>",life_fnc_virt_menu,"gang",0,false,false,"",' _b = nearestBuilding (getPosATL player); !isNil {_b getVariable "gangOwner"} && {(_b getVariable "gangOwner") == (group player)} '];