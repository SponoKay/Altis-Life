	/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Kart_01_Blu_F": {5}; // Kart
	case "C_Kart_01_Fuel_F": {5}; // Kart
	case "C_Kart_01_Red_F": {5}; // Kart
	case "C_Kart_01_Vrana_F": {5}; // Kart

	case "B_Quadbike_01_F": {30}; // Quad
	case "C_Hatchback_01_F": {70}; // Voiture Hayon
	case "C_Hatchback_01_sport_F": {70}; // Voiture Hayon Sport	
	case "C_Offroad_01_F": {95}; //Pickup
	case "C_SUV_01_F": {85}; // SUV 
	
	case "C_Van_01_transport_F": {200}; // Camionnette
	case "C_Van_01_box_F": {250}; // Camionnette couvert 
	case "C_Van_01_Fuel_F": {10}; // Camion Citerne
	
	case "I_Truck_02_transport_F": {285}; // Zamak 
	case "I_Truck_02_covered_F": {340}; // Zamak Couvert	
	case "I_Truck_02_box_F": {10}; // Camion Pegasus 
	
	case "B_Truck_01_transport_F": {575}; // HEMTT 
	case "B_Truck_01_box_F": {750}; // HEMTT Couvert
	
	case "O_Truck_03_device_F": {375}; //Tempest
	
	case "B_G_Offroad_01_F": {110}; //Pickup rebelle
	case "B_G_Offroad_01_armed_F": {90}; //Pickup Armé
	case "O_MRAP_02_F": {60}; // Ifrit
	
	case "B_MRAP_01_F": {65}; // Hunter
	case "B_MRAP_01_hmg_F": {65}; // Hunter Armé	
	case "I_MRAP_03_F": {60}; // Strider
	
	case "B_Heli_Light_01_F": {30}; //MH-9 Hummingbird
	case "O_Heli_Light_02_unarmed_F": {70}; // Po-30 Orca
	case "I_Heli_Transport_02_F": {125}; // Mohawk
	case "I_Heli_light_03_unarmed_F": {40}; //Hellcat
    case "B_Heli_Transport_01_F": {40}; //Ghost Hawk
	case "B_Heli_Attack_01_F": {60};// Blackfoot
	case "O_Heli_Attack_02_F": {60};// Kajman

	
	case "C_Rubberboat": {90}; // Petit bateau
	case "I_G_Boat_Transport_01_F": {150}; //Canot d'Assaut
	case "C_Boat_Civil_01_F": {200}; // Bateau Civil

	case "B_Boat_Transport_01_F": {90}; //Petit Bateau
	case "C_Boat_Civil_01_police_F": {200}; // Bateau Police
	case "B_Boat_Armed_01_minigun_F": {150}; // Bateau arme
	case "B_SDV_01_F": {30}; // Sous-Marin
	
	case "Land_CargoBox_V1_F": {5000};
	
	case "Box_IND_Grenades_F": {375};
	case "B_supplyCrate_F": {750};
	
	
	default {-1};
};