/* 
	CarshopLucel
*/
removeallWeapons _this; 
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#00aeef'>Port de Police</t>",
life_fnc_vehicleShopMenu,["cop_ship",west,["cop_ship_1"]
,"cop","Port de Police"]];

_this addAction["<t color='#FF9900'>Garage</t>",
{  [[getPlayerUID player,playerSide,"Ship",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Ship";
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,"Recherches des bateaux...."];
life_garage_sp = "cop_ship_1";  },"",0,false,false,"",'playerSide == WEST'];
_this addAction["<t color='#FF9900'>Rentrer au port</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store && playerSide == WEST'];