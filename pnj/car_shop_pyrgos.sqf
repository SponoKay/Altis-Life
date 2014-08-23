/* 
	CarshopLucel
*/
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#AAF200'>Concessionnaire Automobile</t>",
life_fnc_vehicleShopMenu,["civ_car",civilian,["civ_car_2"]
,"civ","Concessionnaire Automobile"]];

_this addAction["<t color='#FF9900'>Garage</t>",
{  [[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Car";
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,"Recherches des véhicules...."];
life_garage_sp = "civ_car_2";  }];
_this addAction["<t color='#FF9900'>Rentrer au garage</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store'];
_this setVariable["realname", "Concessionnaire Automobile"];