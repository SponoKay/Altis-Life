/* 
	Kartshop by lecul
*/
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#AAF200'>Concessionnaire Kart</t>",
life_fnc_vehicleShopMenu,["kart_shop",civilian,["kart_shop","kart_shop_1"]
,"civ","Concessionnaire Kart"]];

_this addAction["<t color='#AAF200'>Boutique Pilote</t>",life_fnc_clothingMenu,"kart"];

_this addAction["<t color='#FF9900'>Garage Kart</t>",  
{   [[getPlayerUID player,playerSide,"Kart",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Kart";
createDialog "Life_impound_menu"; 
disableSerialization;   ctrlSetText[2802,"Recherche des véhicules"];
life_garage_sp = "kart_shop_1";  }];

_this addAction["<t color='#FF9900'>Rentrer au garage</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store'];