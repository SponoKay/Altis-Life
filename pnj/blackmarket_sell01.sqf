/* 
	GarageLucel
	_null=this execVM "pnj\blackmarket_sell01.sqf";
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#FF0000'>Vente de véhicule volé</t>",life_fnc_chopShopMenu,"chop_shop_3",0,false,false,"","!license_civ_mercenaire"];
_this addAction["<t color='#FF9900'>Rentrer au garage</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store && !license_civ_mercenaire'];;

_this addAction["<t color='#FF9900'>Garage</t>",
{  [[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Car";
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,"Recherches des véhicules...."];
life_garage_sp = "chop_shop_3";  }];