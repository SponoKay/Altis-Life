/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Blanc";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Pourpre";};
			case 5: {_color = "Bleu et Blanc"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Police"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Depanneuse"};
		};
	};
	//Dep
	case "Depanneur" : 
	{
		switch (_index) do
		{
			case 0: {_color = "Depanneuse";};
		};
	};
	case "I_MRAP_03_F" : 
	{
		switch (_index) do
		{
			case 0: {_color = "Police";};
			case 1: {_color = "Mercenaire";};
		};
	};
	case "O_MRAP_02_F" : 
	{
		switch (_index) do
		{
			case 0: {_color = "Classique";};
			case 1: {_color = "Vert";};
		};
	};
	case "B_G_Offroad_01_armed_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rebelle";};
			case 1: {_color = "Police";};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Vert";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Bleu nuit";};
			case 4: {_color = "Jaune";};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Gris"};
			case 7: {_color = "Noir"};
			case 8: {_color = "Coccinelle"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rouge"};
			case 1: {_color = "Bleu Nuit"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Noir et Blanc"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Vert"};
			case 6: {_color = "Coccinelle"};
			case 7: {_color = "Gendarmerie"};
			case 8: {_color = "Vert Tribal"};
			case 9: {_color = "Orange Sport"};
			case 10: {_color = "Police"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge pourpre";};
			case 1: {_color = "Noir";};
			case 2: {_color = "Argent";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Police";};
			case 5: {_color = "Taxi";};
			case 6: {_color = "Rebelle";};
			case 7: {_color = "Secouriste";};
			case 8: {_color = "Gendarmerie";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Secouriste";};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brun"};
			case 1: {_color = "Camo"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Bleu"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Vert Camo"};
			case 7: {_color = "Camo Hunter"};
			case 8: {_color = "Camo"};
			case 9: {_color = "Police"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police Blanc"};
			case 1: {_color = "Police Bleu"};
			case 2: {_color = "Bleu Clair"};
			case 3: {_color = "Rouge Clair"};
			case 4: {_color = "Vert Camo"};
			case 5: {_color = "Bleu Clair"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Secouriste";};
			case 15: {_color = "Noir"};
		};
	};
	
	case "B_Heli_Light_01_armed_F" : 
	{
		switch (_index) do
		{
			case 0: {_color = "Police Blanc";};
			case 1: {_color = "Rebel Digital"};
			case 2: {_color = "Police Bleu";};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Blanc et Bleu"};
			case 2: {_color = "Camo Vert"};
			case 3: {_color = "Camo desert"};
			case 4: {_color = "Secouriste"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "GIGN"};
			case 1: {_color = "Classique"};
			case 2: {_color = "Noir"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};

	case "I_Truck_02_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Pegasus"};

		};
	};
	
	case "O_Truck_03_device_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Tempest"};

		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	/*case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};*/
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};	
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
		
			case 0: {_color = "Desert"};
			case 1: {_color = "Police"};
			case 2: {_color = "Noir Police"};
			case 3: {_color = "Gris"};
		};
	};
};

_color;