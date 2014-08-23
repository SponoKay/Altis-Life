/* 
	CarshopLucel
*/
removeallWeapons _this; 
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#00aeef'>Héliport Police</t>",
life_fnc_vehicleShopMenu,["cop_air",west,["cop_air_4"]
,"cop","Héliport Police"]];

_this addAction["<t color='#FF9900'>Garage</t>",
{  [[getPlayerUID player,playerSide,"Air",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Air";
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,"Recherches des véhicules...."];
life_garage_sp = "cop_air_4";  },"",0,false,false,"",'playerSide == WEST'];
_this addAction["<t color='#FF9900'>Rentrer au garage</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store && playerSide == WEST'];