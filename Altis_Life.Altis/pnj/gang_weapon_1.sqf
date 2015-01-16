/* 
	_null=this execVM "pnj\gang_weapon_1.sqf";
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false;  

_this addAction["<t color='#FF9900'>Armurerie de gang</t>",life_fnc_weaponShopMenu,"gang",0,false,false,"",' _b = nearestBuilding (getPosATL player);
!isNil {_b getVariable "gangOwner"} && {(_b getVariable "gangOwner") == (group player)} && playerSide == civilian '];