/* 
	CarshopLucel
*/
// addAction args: title, filename, (arguments, priority, showWindow, hideOnUse, shortcut, condition, positionInModel, radius, radiusView, showIn3D, available, textDefault, textToolTip)
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#AAF200'>Concessionnaire Pegasus</t>",
life_fnc_vehicleShopMenu,["civ_Pegasus_1",civilian,["civ_Pegasus_1"]
,"civ","Concessionnaire Pegasus"],4];

_this addAction["<t color='#00ffff'>Mission: Livraison Colis</t>",life_fnc_getTRPMission,"Pegasus_airport",3,false,false,"",'    isNil "life_trp_point" && !life_delivery_in_progress '];  
_this addAction["<t color='#00ffff'>Réception Palettes</t>",life_fnc_PALFinish,"Pegasus_airport",2,false,false,"",'!isNil    "life_pal_point" && life_delivery_in_progress && life_pal_point == _target '];
 
 
_this addAction["<t color='#FF9900'>Garage</t>",
{  [[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Car";
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,"Recherches des véhicules...."];
life_garage_sp = "civ_Pegasus_1";  },1];
_this addAction["<t color='#FF9900'>Rentrer au garage</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store'];

