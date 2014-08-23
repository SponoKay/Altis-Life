/*
	File: fn_vehicleColorMen.sqf
	Author: For Gamewave
	
*/
private["_vehicle","_lvmg","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_lvmg = "";

switch (_vehicle) do
{
	case "C_Kart_01_Blu_F": //Type Bleu
	{
		switch (_index) do
		{

			default {_lvmg = "Kart : BluKing" };
		};
	};
	case "C_Kart_01_Fuel_F": //Type Kart
	{
		switch (_index) do
		{

			default {_lvmg = "Kart : Fuel" };
		};
	};
	case "C_Kart_01_Vrana_F": //Type Kart
	{
		switch (_index) do
		{

			default {_lvmg = "Kart : Vrana" };
		};
	};	
	
	case "C_Kart_01_Red_F": //Type Kart
	{
		switch (_index) do
		{

			default {_lvmg = "Kart : RedStone" };
		};
	};	
	
	case "B_Quadbike_01_F": //Type Quad
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Quad : Brun"};
			case 1: {_lvmg = "Quad : Camo"};
			case 2: {_lvmg = "Quad : Noir"};
			case 3: {_lvmg = "Quad : Bleu"};
			case 4: {_lvmg = "Quad : Rouge"};
			case 5: {_lvmg = "Quad : Blanc"};
			case 6: {_lvmg = "Quad : Vert Camo"};
			case 7: {_lvmg = "Quad : Camo Hunter"};
			case 8: {_lvmg = "Quad : Camo"};
			case 9: {_lvmg = "Quad : Police"};
			default {_lvmg = "Quad" };
		};
	};	
	case "C_Hatchback_01_F": //Type Hatchback
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Hatchback : Beige";};
			case 1: {_lvmg = "Hatchback : Vert";};
			case 2: {_lvmg = "Hatchback : Bleu";};
			case 3: {_lvmg = "Hatchback : Bleu nuit";};
			case 4: {_lvmg = "Hatchback : Jaune";};
			case 5: {_lvmg = "Hatchback : Blanc"};
			case 6: {_lvmg = "Hatchback : Gris"};
			case 7: {_lvmg = "Hatchback : Noir"};
			case 8: {_lvmg = "Hatchback : La Coccinelle"};
			default {_lvmg = "Hatchback" };
		};
	};
	case "C_Hatchback_01_sport_F": //Type Voiture Hayon S 
	{
		switch(_index) do
		{
			case 0: {_lvmg = "Hatchback S : Rouge"};
			case 1: {_lvmg = "Hatchback S : Bleu Nuit"};
			case 2: {_lvmg = "Hatchback S : Orange"};
			case 3: {_lvmg = "Hatchback S : Noir et Blanc"};
			case 4: {_lvmg = "Hatchback S : Tan"};
			case 5: {_lvmg = "Hatchback S : Vert"};
			case 6: {_lvmg = "Hatchback S : La Coccinelle"};
			case 7: {_lvmg = "Hatchback S : Police"};
			case 8: {_lvmg = "Hatchback S : Vert Tribal"};
			case 9: {_lvmg = "Hatchback S : Orange Sport"};
			default {_lvmg = "Hatchback S" };
		};
	};
	case "C_Offroad_01_F": //Type Pick-Up
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Pick-Up : Rouge";};
			case 1: {_lvmg = "Pick-Up : Jaune";};
			case 2: {_lvmg = "Pick-Up : Blanc";};
			case 3: {_lvmg = "Pick-Up : Bleu";};
			case 4: {_lvmg = "Pick-Up : Pourpre";};
			case 5: {_lvmg = "Pick-Up : Bleu et Blanc"};
			case 6: {_lvmg = "Pick-Up : Noir"};
			case 7: {_lvmg = "Pick-Up : Police"};
			case 8: {_lvmg = "Pick-Up : Taxi"};
			case 9: {_lvmg = "Pick-Up : Depanneuse"};
			default {_lvmg = "Pick-Up" };
		};
	};
	case "C_SUV_01_F": //Type SUV
	{
		switch (_index) do
		{
			case 0: {_lvmg = "SUV : Rouge pourpre";};
			case 1: {_lvmg = "SUV : Noir";};
			case 2: {_lvmg = "SUV : Argent";};
			case 3: {_lvmg = "SUV : Orange";};
			case 4: {_lvmg = "SUV : Police";};
			case 5: {_lvmg = "SUV : Taxi";};
			case 6: {_lvmg = "SUV : Rebelle";};
			case 7: {_lvmg = "SUV : Secouriste";};
			default {_lvmg = "SUV" };
		};
	};
	case "C_Van_01_transport_F": //Type Camion-Benne
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Camion-Benne : Blanc"};
			case 1: {_lvmg = "Camion-Benne : Rouge"};
			default {_lvmg = "Camion-Benne" };
		};
	};
	case "C_Van_01_box_F": //Type Fourgon
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Fourgon : Blanc"};
			case 1: {_lvmg = "Fourgon : Rouge"};
			default {_lvmg = "Fourgon" };
		};
	};
	case "C_Van_01_Fuel_F": //Type Camion Citerne
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Camion Citerne : Blanc"};
			case 1: {_lvmg = "Camion Citerne : Rouge"};
			default {_lvmg = "Camion Citerne" };
		};
	};
	case "I_Truck_02_transport_F": //Type Zamak Transporteur
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Zamak Transport : Orange"};
			case 1: {_lvmg = "Zamak Transport : Noir"};
			default {_lvmg = "Zamak Transport" };
		};
	};
	case "I_Truck_02_covered_F": //Type Zamak Transporteur Couvert
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Zamak Transport Couvert : Orange"};
			case 1: {_lvmg = "Zamak Transport Couvert : Noir"};
			default {_lvmg = "Zamak Transport Couvert" };
		};
	};
	case "I_Truck_02_box_F": //Type Zamak Ammo
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Camion Pegasus"};
			default {_lvmg = "Camion Pegasus" };
		};
	};
	case "B_Truck_01_transport_F": //Type HEMTT Transport
	{
		switch (_index) do
		{
			default {_lvmg = "HEMTT Transport" };
		};
	};
	case "B_Truck_01_box_F": //Type HEMTT Cargaison
	{
		switch (_index) do
		{
			default {_lvmg = "HEMTT Cargaison" };
		};
	};	
	case "O_Truck_03_device_F": //Type Tempest
	{
		switch (_index) do
		{
			default {_lvmg = "Tempest" };
		};
	};

	// Hélicos

	case "B_Heli_Light_01_F": //Type MH-9 "Hummingbird"
	{
		switch (_index) do
		{
			case 0: {_lvmg = "MH-9 : Sheriff"};
			case 1: {_lvmg = "MH-9 : Noir"};
			case 2: {_lvmg = "MH-9 : Bleu Clair"};
			case 3: {_lvmg = "MH-9 : Rouge Clair"};
			case 4: {_lvmg = "MH-9 : Vert Camo"};
			case 5: {_lvmg = "MH-9 : Bleu Clair"};
			case 6: {_lvmg = "MH-9 : Elliptical"};
			case 7: {_lvmg = "MH-9 : Furious"};
			case 8: {_lvmg = "MH-9 : Jeans Blue"};
			case 9: {_lvmg = "MH-9 : Speedy Redline"};
			case 10: {_lvmg = "MH-9 : Sunset"};
			case 11: {_lvmg = "MH-9 : Vrana"};
			case 12: {_lvmg = "MH-9 : Waves Blue"};
			case 13: {_lvmg = "MH-9: Rebel Digital"};
			case 14: {_lvmg = "MH-9: Secouriste"};
			default {_lvmg = "MH-9" };
		};
	};
	case "B_Heli_Transport_01_F": //Type Ghost Hawk
	{
		switch (_index) do
		{
			default {_lvmg = "Ghost Hawk" };
		};
	};
	case "B_Heli_Attack_01_F": //Type Blackfoot
	{
		switch (_index) do
		{
			default {_lvmg = "Blackfoot" };
		};
	};
	case "O_Heli_Light_02_unarmed_F": //Type Orca
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Orca : Noir"};
			case 1: {_lvmg = "Orca : Blanc et Bleu"};
			case 2: {_lvmg = "Orca : Camo Vert"};
			case 3: {_lvmg = "Orca : Camo desert"};
			case 4: {_lvmg = "Orca : Secouriste"};
			default {_lvmg = "Orca" };
		};
	};
	case "I_Heli_Transport_02_F": //Type Mohawk
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Mohawk : Ion"};
			case 1: {_lvmg = "Mohawk : Dahoman"};
			default {_lvmg = "Mohawk" };
		};
	};
	case "I_Heli_light_03_unarmed_F": //Type Hellcat
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Hellcat : Rebelle"};
			case 1: {_lvmg = "Hellcat : Police"};
			case 2: {_lvmg = "Hellcat : Police Noir"};
			default {_lvmg = "Hellcat" };
		};
	};

	// Blindés

	case "B_G_Offroad_01_F": //Type Pick-Up
	{
		switch (_index) do
		{
			default {_lvmg = "Pick-Up Rebelle" };
		};
	};
	case "B_G_Offroad_01_armed_F": //Type Pick-Up Armé
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Pick-Up Armé : Rebelle";};
			case 1: {_lvmg = "Pick-Up Armé : Police";};
			default {_lvmg = "Pick-Up Armé" };
		};
	};
	case "O_MRAP_02_F": //Type Ifrit
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Ifrit : Classique";};
			case 1: {_lvmg = "Ifrit : Camo vert";};
			default {_lvmg = "Ifrit" };
		};
	};
	case "B_MRAP_01_F": //Type Hunter
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Hunter : Police"};
			case 1: {_lvmg = "Hunter"};
			case 2: {_lvmg = "Hunter : Noir"};
			case 3: {_lvmg = "Hunter : Police Noir"};
			default {_lvmg = "Hunter" };
		};
	};
	case "B_MRAP_01_hmg_F": //Type Hunter Armé
	{
		switch (_index) do
		{
			default {_lvmg = "Hunter HMG" };
		};
	};
	case "I_MRAP_03_F": //Type Strider
	{
		switch (_index) do
		{
			case 0: {_lvmg = "Strider : Police"};
			default {_lvmg = "Strider" };
		};
	};
	
	// Bateaux
	
	case "C_Rubberboat": //Type Canot de sauvetage
	{
		switch (_index) do
		{
			default {_lvmg = "Canot de sauvetage" };
		};
	};
	case "C_Boat_Civil_01_F": //Type Hors-bord
	{
		switch (_index) do
		{
			default {_lvmg = "Hors-bord" };
		};
	};
	case "I_G_Boat_Transport_01_F": //Type Canot d'Assaut
	{
		switch (_index) do
		{
			default {_lvmg = "Canot d'Assaut" };
		};
	};


	case "B_Boat_Transport_01_F": //Type Canot d'Assaut
	{
		switch (_index) do
		{
			default {_lvmg = "Canot d'Assaut"};
		};
	};
	case "C_Boat_Civil_01_police_F": //Type Hors-bord
	{
		switch (_index) do
		{
			default {_lvmg = "Hors-bord Police"};
		};
	};
	case "B_Boat_Armed_01_minigun_F": //Type Bateau d'assaut Minigun
	{
		switch (_index) do
		{
			default {_lvmg = "Bateau d'assaut Minigun"};
		};
	};
	case "B_SDV_01_F": //Type Sous-marin
	{
		switch (_index) do
		{
			default {_lvmg = "Sous-marin" };
		};
	};
};

_lvmg;	