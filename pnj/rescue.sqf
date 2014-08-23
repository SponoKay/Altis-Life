/* 
	_null=this execVM "pnj\rescue.sqf";
	init="_null=this execVM ""pnj\rescue.sqf"";";
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false;  

_this addAction["<t color='#AAF200'>Téléportation</t>",
{
[] call life_fnc_spawnMenu;
		waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
		waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

}];