/* 
	CarshopLucel
*/
removeallWeapons _this; 
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#AAF200'>Héliport Rebelle</t>",
life_fnc_vehicleShopMenu,["civ_air",civilian,["air_reb_1"]
,"civ","Héliport Rebelle"],0,false,false,"",'license_civ_rebel'];

_this addAction["<t color='#FF9900'>Garage</t>",
{  [[getPlayerUID player,playerSide,"Air",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Air";
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,"Recherches des véhicules...."];
life_garage_sp = "air_reb_1";  },"",0,false,false,"",'license_civ_rebel'];
_this addAction["<t color='#FF9900'>Rentrer au garage</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store && license_civ_rebel'];
_this setVariable["realname", "Héliport Rebelle"];