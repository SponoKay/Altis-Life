#include <macro.h>
/*
	File: fn_vehicleListCfg.sqf
	Modif Nonoxs for GameWave
	
	Description:
	Vendeurs Véhicules
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
/*
****************************
***********CIVILS***********
****************************	
*/
// ********************
// ******* Kart *******
// ********************
	case "kart_shop":
	{
		if(__GETC__(life_donator) == 0) then
		{
			_return =
			[
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
			];
		};			
		if(__GETC__(life_donator) == 1) then
		{
			_return =
			[
			["C_Kart_01_Blu_F",12750],
			["C_Kart_01_Fuel_F",12750],
			["C_Kart_01_Red_F",12750],
			["C_Kart_01_Vrana_F",12750]
			];
		};			
		if(__GETC__(life_donator) > 1) then
		{
			_return =
			[
			["C_Kart_01_Blu_F",10500],
			["C_Kart_01_Fuel_F",10500],
			["C_Kart_01_Red_F",10500],
			["C_Kart_01_Vrana_F",10500]
			];
		};					
	};	
// ********************
// ******* CARS *******
// ********************
	case "civ_car":
	{
		if(__GETC__(life_donator) == 0) then	
		{
			_return =
			[
				["B_Quadbike_01_F",5000],
				["C_Hatchback_01_F",15000],
				["C_Hatchback_01_sport_F",125000],
				["C_Offroad_01_F",25000],
				["C_SUV_01_F",35000],
				["C_Van_01_transport_F",90000]
			];
			
			if(license_civ_dep) then
				{
				_return set[count _return, ["C_Offroad_01_F",35000]]; // service truck		
				};
			if(license_civ_taxi) then
				{
				_return set[count _return, ["C_SUV_01_F",35002]]; // taxi		
				_return set[count _return, ["C_Offroad_01_F",25001]]; // taxi pickup
				};
		};	
		
		if(__GETC__(life_donator) == 1) then	
		{
			_return =
			[
				["B_Quadbike_01_F",4250],
				["C_Hatchback_01_F",12750],
				["C_Hatchback_01_sport_F",50000],
				["C_Offroad_01_F",21250],
				["C_SUV_01_F",29750],
				["C_Van_01_transport_F",76500]
			];
			
			if(license_civ_dep) then
				{
				_return set[count _return, ["C_Offroad_01_F",29750]]; // service truck		
				};
			if(license_civ_taxi) then
				{
				_return set[count _return, ["C_SUV_01_F",29752]]; // taxi		
				_return set[count _return, ["C_Offroad_01_F",21251]]; // taxi pickup
				};
		};	
		
		if(__GETC__(life_donator) > 1) then	
		{
			_return =
			[
				["B_Quadbike_01_F",3500],
				["C_Hatchback_01_F",10500],
				["C_Hatchback_01_sport_F",42500],
				["C_Offroad_01_F",17500],
				["C_SUV_01_F",24500],
				["C_Van_01_transport_F",63000]
			];
			
			
			if(license_civ_dep) then
				{
				_return set[count _return, ["C_Offroad_01_F",24500]]; // service truck		
				};
			if(license_civ_taxi) then
				{
				_return set[count _return, ["C_SUV_01_F",24502]]; // taxi		
				_return set[count _return, ["C_Offroad_01_F",17501]]; // taxi pickup
				};
		};				
	};	
	
// ********************
// ********************	
// ****** Trunck ******
// ********************
	case "civ_truck":
	{
		if(__GETC__(life_donator) == 0) then
		{
			_return =
			[
				["C_Van_01_box_F",110000],
				["I_Truck_02_transport_F",200000],
				["I_Truck_02_covered_F",250000],
				["B_Truck_01_transport_F",530000],
				["B_Truck_01_box_F",780000],
				["O_Truck_03_device_F",780000],
				["I_Truck_02_box_F",50000] //Camion Pegasus
			];	
		};

		if(__GETC__(life_donator) == 1) then
		{
			_return =
			[
				["C_Van_01_box_F",93500],
				["C_Van_01_Fuel_F",60000],
				["I_Truck_02_transport_F",170000],
				["I_Truck_02_covered_F",212500],
				["B_Truck_01_transport_F",450500],
				["B_Truck_01_box_F",663000],
				["O_Truck_03_device_F",663000],
				["I_Truck_02_box_F",50000] //Camion Pegasus
			];	
		};
		
		if(__GETC__(life_donator) >1) then
		{
			_return =
			[
				["C_Van_01_box_F",77000],
				["C_Van_01_Fuel_F",50000],
				["I_Truck_02_transport_F",140000],
				["I_Truck_02_covered_F",175000],
				["B_Truck_01_transport_F",371000],
				["B_Truck_01_box_F",546000],
				["O_Truck_03_device_F",546000],
				["I_Truck_02_box_F",50000] //Camion Pegasus
			];	
		};
	};

// ********************
	
	case "civ_Pegasus_1":
	{
		_return =
		[
			["I_Truck_02_box_F",50000] //Camion Pegasus
		];	
	};
// ********************
// *******  AIR *******
// ********************	
	case "civ_air":
	{
		if(__GETC__(life_donator) == 0) then
		{
			_return =
			[
				["B_Heli_Light_01_F",750000],
				["C_Heli_Light_01_civil_F",650000],
				["O_Heli_Light_02_unarmed_F",1000000]
			];	
		};

		if(__GETC__(life_donator) == 1) then
		{
			_return =
			[
				["B_Heli_Light_01_F",637500],
				["C_Heli_Light_01_civil_F",537500],
				["O_Heli_Light_02_unarmed_F",850000],
				["I_Heli_Transport_02_F",1500000]				
			];	
		};
		
		if(__GETC__(life_donator) >1) then
		{
			_return =
			[
				["B_Heli_Light_01_F",525000],
				["C_Heli_Light_01_civil_F",425000],
				["O_Heli_Light_02_unarmed_F",700000],
				["I_Heli_Transport_02_F",1275000]				
			];
		};

	};

// ********************
// *******  MER *******
// ********************	
	case "civ_ship":
	{
		if(__GETC__(life_donator) == 0) then
		{
			_return =
			[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["I_G_Boat_Transport_01_F",15000]
			];
		};			
		if(__GETC__(life_donator) == 1) then
		{
			_return =
			[
			["C_Rubberboat",4250],
			["C_Boat_Civil_01_F",18700],
			["I_G_Boat_Transport_01_F",12750],
			["B_SDV_01_F",50000]
			];
		};			
		if(__GETC__(life_donator) > 1) then
		{
			_return =
			[
			["C_Rubberboat",3500],
			["C_Boat_Civil_01_F",15400],
			["I_G_Boat_Transport_01_F",10500],
			["B_SDV_01_F",42500]
			];
		};					
	};	

/*
****************************
**********REBELLES**********
****************************	
*/			
// ******* CARS *******

	case "reb_v":
	{
		if(__GETC__(life_donator) == 0) then
		{
			_return =
			[
				["B_Quadbike_01_F",5000],
				["C_SUV_01_F",35003],
				["O_MRAP_02_F",350000],
				["B_G_Offroad_01_F",35000],
				["B_G_Offroad_01_armed_F",750000],
				["B_Heli_Light_01_F",750000],
				["O_Heli_Light_02_unarmed_F",1000000],
				["I_Heli_light_03_unarmed_F",1500000],
				["O_Heli_Transport_04_covered_F",1000000],
				["O_Heli_Attack_02_F",3000000]
			];

		};	
		
		if(__GETC__(life_donator) == 1) then
		{
			_return =
			[
				["B_Quadbike_01_F",4250],
				["C_SUV_01_F",29753],
				["O_MRAP_02_F",297500],
				["B_G_Offroad_01_F",29750],
				["B_G_Offroad_01_armed_F",637500],
				["B_Heli_Light_01_F",637500],
				["O_Heli_Light_02_unarmed_F",850000],
				["I_Heli_Transport_02_F",1500000],
				["I_Heli_light_03_unarmed_F",1275000],
				["B_Heli_Light_01_armed_F",2000000],
				["O_Heli_Transport_04_covered_F",875000],
				["O_Heli_Attack_02_F",2750000]
			];

		};			
		
		if(__GETC__(life_donator) > 1) then
		{
			_return =
			[
				["B_Quadbike_01_F",3500],
				["C_SUV_01_F",24503],
				["O_MRAP_02_F",245000],
				["B_G_Offroad_01_F",24500],
				["B_G_Offroad_01_armed_F",525000],
				["B_Heli_Light_01_F",525000],
				["O_Heli_Light_02_unarmed_F",700000],
				["I_Heli_Transport_02_F",1275000],
				["I_Heli_light_03_unarmed_F",1050000],
				["B_Heli_Light_01_armed_F",1750000],
				["O_Heli_Transport_04_covered_F",825000],
				["O_Heli_Attack_02_F",2500000]
			];
					
		};		
	};

/*
****************************
**********MERCENAIRES**********
****************************	
*/			
// ******* CARS *******

	case "merco_v":
	{
		if(__GETC__(life_donator) == 0) then
		{
			_return =
			[
				["B_Quadbike_01_F",1700],
				["C_SUV_01_F",12000],
				["I_MRAP_03_F",116000],
				["B_G_Offroad_01_F",35000],
				["B_G_Offroad_01_armed_F",198000]
			];

		};	
		
		if(__GETC__(life_donator) == 1) then
		{
			_return =
			[
				["B_Quadbike_01_F",1500],
				["C_SUV_01_F",12000],
				["I_MRAP_03_F",98000],
				["B_G_Offroad_01_F",19750],
				["B_G_Offroad_01_armed_F",145000]
			];

		};			
		
		if(__GETC__(life_donator) > 1) then
		{
			_return =
			[
				["B_Quadbike_01_F",1500],
				["C_SUV_01_F",8000],
				["I_MRAP_03_F",81000],
				["B_G_Offroad_01_F",8200],
				["B_G_Offroad_01_armed_F",109000]
			];
					
		};		
	};
			
// ******* AIR *******

	case "merco_air":
	{
		if(__GETC__(life_donator) == 0) then
		{
			_return =
			[
				["B_Heli_Light_01_F",150000],
				["O_Heli_Light_02_unarmed_F",320000],
				["I_Heli_light_03_unarmed_F",430000]
			];	
		};

		if(__GETC__(life_donator) == 1) then
		{
			_return =
			[
				["B_Heli_Light_01_F",120000],
				["O_Heli_Light_02_unarmed_F",290000],
				["I_Heli_light_03_unarmed_F",390000],
				["O_Heli_Light_02_F",720000]			
			];
		};
		
		if(__GETC__(life_donator) > 1) then
		{
			_return =
			[
				["B_Heli_Light_01_F",98000],
				["O_Heli_Light_02_unarmed_F",258000],
				["I_Heli_light_03_unarmed_F",352000],
				["O_Heli_Light_02_F",630000]				
			];
		};

	};

/*
****************************
***********POLICE***********
****************************	
*/	
// ******* CARS *******
	
	case "cop_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["C_Offroad_01_F",30000],
			["C_SUV_01_F",30000]
		];
			if(__GETC__(life_coplevel) > 1) then //lvl 2 - Brigadier/Sergent -

			{
				_return set[count _return,["C_Hatchback_01_sport_F",50000]];	
			};
				
				if(__GETC__(life_coplevel) > 3) then //lvl 4 - Adjudant/Adjudant-chef -
				{
					_return set[count _return,["B_MRAP_01_F",150000]];	
				};

					
					if(__GETC__(life_coplevel) > 4) then //lvl 5 - Major/Aspirant -
					{
						_return set[count _return,["B_G_Offroad_01_armed_F",250000]];
					};
					
					if(__GETC__(life_coplevel) > 5) then //lvl 6 - Major/Aspirant -
					{
						_return set[count _return,["I_MRAP_03_F",150000]];
					};

		if(__GETC__(life_donator) > 1) then
		{
		_return =
		[
			["B_Quadbike_01_F",3500],
			["C_Offroad_01_F",17500],
			["C_SUV_01_F",24500]
		];
			if(__GETC__(life_coplevel) > 1) then //lvl 2 - Brigadier/Sergent -

			{
				_return set[count _return,["C_Hatchback_01_sport_F",42500]];	
			};
				
				if(__GETC__(life_coplevel) > 3) then //lvl 3 - Adjudant/Adjudant-chef -
				{
					_return set[count _return,["B_MRAP_01_F",100000]];
				};

					
					if(__GETC__(life_coplevel) > 4) then //lvl 4 - Major/Aspirant -
					{
						_return set[count _return,["B_G_Offroad_01_armed_F",200000]];	
					};
					
					if(__GETC__(life_coplevel) > 4) then //lvl 4 - Major/Aspirant -
					{
						_return set[count _return,["I_MRAP_03_F",100000]];
					};
		};
		
	};
	
// ********************
// *******  AIR *******
// ********************	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then //lvl 2 - Brigadier/Sergent 
		{
			_return set[count _return,["B_Heli_Light_01_F",100000]];	
		};

		if(__GETC__(life_coplevel) > 2) then //lvl 3
		{
			_return set[count _return,["O_Heli_Light_02_unarmed_F",200000]];
		};

		if(__GETC__(life_coplevel) > 3) then //lvl 4
		{
			_return set[count _return,["I_Heli_light_03_unarmed_F",250000]];
		};

		if(__GETC__(life_coplevel) > 4) then //lvl 5
		{
			_return set[count _return,["B_Heli_Transport_01_F",1500000]];	
		};
		
		if(__GETC__(life_coplevel) > 5) then //lvl 6
		{
			_return set[count _return,["B_Heli_Light_01_armed_F",1000000]];
			_return set[count _return,["B_Heli_Transport_03_unarmed_F",1250000]];
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,["B_Heli_Attack_01_F",1500000]];
		};
	};

// ********************
// *******  MER *******
// ********************	
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",2000]
		];
		
		if(__GETC__(life_coplevel) > 1) then //lvl 2 + Hors-Bord Police
		{
			_return set[count _return,["C_Boat_Civil_01_police_F",30000]];	
		};
		
		if(__GETC__(life_coplevel) > 6) then //lvl 7 + Sous-Marin+ Bateau Armé
		{
			_return set[count _return,["B_SDV_01_F",50000]];
			_return set[count _return,["B_Boat_Armed_01_minigun_F",50000]];	
		};
	};
	
// *********************	
// ********Medecin******
// *********************

	case "medecin_car":
	{
		_return set[count _return,["C_SUV_01_F",25000]];
		_return set[count _return, ["C_Van_01_box_F",100000]];
		
		/*if(license_civ_air) then
			{
				_return set[count _return,["",]]
			};*/
	};



/*	
**************************
**********Donator*********
**************************
*/	
	case "donator":
	{	
		if(__GETC__(life_donator) > 0) then
		{
			_return =
			[
				["B_Quadbike_01_F",3500],
				["C_Hatchback_01_F",10500],
				["C_Hatchback_01_sport_F",42500],
				["C_Offroad_01_F",17500],
				["C_SUV_01_F",24500],
				["C_Van_01_transport_F",63000]
			];
					if(license_civ_truck) then
					{
						_return set[count _return, ["C_Van_01_box_F",77000]];
						_return set[count _return, ["C_Van_01_Fuel_F",50000]];
						_return set[count _return, ["I_Truck_02_transport_F",140000]];
						_return set[count _return, ["I_Truck_02_covered_F",175000]];
						_return set[count _return, ["B_Truck_01_transport_F",371000]];
						_return set[count _return, ["B_Truck_01_box_F",546000]];
					};
					
						if(license_civ_rebel) then
						{
						_return set[count _return, ["C_SUV_01_F",24503]];
						_return set[count _return, ["B_G_Offroad_01_F",24500]];
						_return set[count _return, ["B_G_Offroad_01_armed_F",525000]];
						_return set[count _return, ["O_MRAP_02_F",245000]];
						};
						
					if(license_civ_air) then
					{
						_return set[count _return, ["B_Heli_Light_01_F",525000]]; // littlebird
						_return set[count _return, ["O_Heli_Light_02_unarmed_F",700000]]; // orca
						_return set[count _return, ["I_Heli_Transport_02_F",1275000]]; // mohak
							
							if(license_civ_rebel) then
							{
								_return set[count _return, ["I_Heli_light_03_unarmed_F",1050000]]; //hellcat
								_return set[count _return, ["O_Heli_Light_02_F",2000000]]; // orca armé
							};						
					};
							if(license_civ_dep) then
									{
									_return set[count _return, ["C_Offroad_01_F",24500]]; // dep	
									};
							if(license_civ_taxi) then
									{
									_return set[count _return, ["C_SUV_01_F",24502]]; // taxi		
									_return set[count _return, ["C_Offroad_01_F",17501]]; // taxi pickup
									};
		};					

	};
};

_return;
