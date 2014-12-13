/* 
	CarshopLucel
*/
removeAllWeapons _this;
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#AAF200'>Concessionnaire Rebelle</t>",
life_fnc_vehicleShopMenu,["merco_v",civilian,["merco_v_1","merco_v_1_1"]
,"reb","Concessionnaire Rebelle"],0,false,false,"",'license_civ_mercenaire'];

_this addAction["<t color='#FF9900'>Garage</t>",
{  [[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Car";
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,"Recherche des véhicules...."];
life_garage_sp = "merco_v_1";  },"",0,false,false,"",'license_civ_mercenaire'];

_this addAction["<t color='#FF9900'>Rentrer au garage</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store && license_civ_mercenaire'];
_this setVariable["realname", "Concessionnaire Rebelle"];