/* 
	CarshopLucel
*/
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#AAF200'>Port de Pyrgos</t>",
life_fnc_vehicleShopMenu,["civ_ship",civilian,["civ_ship_3"]
,"civ","Port de Pyrgos"]];

_this addAction["<t color='#FF9900'>Garage</t>",
{  [[getPlayerUID player,playerSide,"Ship",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Ship";
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,"Recherches des bateaux...."];
life_garage_sp = "civ_ship_3";  }];
_this addAction["<t color='#FF9900'>Rentrer au port</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store'];