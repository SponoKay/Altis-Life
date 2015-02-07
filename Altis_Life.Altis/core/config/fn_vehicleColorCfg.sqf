/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["textures\vehicules\civil\C_Hatchback_01_F Coccinelle.jpg","civ"],
			["textures\vehicules\police\C_Hatchback_01_sport_F Gendarmerie.jpg","cop"],
			["textures\vehicules\civil\C_Hatchback_01_sport_F Vert Tribal.jpg","civ"],
			["textures\vehicules\civil\C_Hatchback_01_sport_F Orange Sport.jpg","civ"],
			["textures\vehicules\police\C_Hatchback_01_sport_F Police.jpg","cop"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["textures\vehicules\police\C_Offroad_01_F Police.jpg","cop"],
			["textures\vehicules\civil\C_Offroad_01_F Taxi.jpg","civ"],
			["textures\vehicules\civil\C_Offroad_01_F Depanneuse.jpg","civ"]
		];
	};
		
	case "B_G_Offroad_01_armed_F":
	{
		_ret = 
		[
			["\A3\soft_f_gamma\Offroad_01\Data\offroad_01_ext_ig01_co.paa","civ"], 
			["textures\vehicules\police\C_Offroad_01_F Police.jpg","cop"]
		];
	};
		
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["textures\vehicules\police\I_MRAP_03_F Police.jpg","cop"],
			["textures\vehicules\mercenaire\I_MRAP_03_F Mercenaire.jpg", "merco"]
		];
	};
		case "O_MRAP_02_F":
    {
        _ret = 
        [	
			["\A3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","reb","\A3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"], 
			["textures\vehicules\rebelle\O_MRAP_02_F Vert.jpg","reb","textures\vehicules\rebelle\O_MRAP_02_F Vert 2.jpg"]
        ];
    };
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\vehicules\civil\C_Hatchback_01_F Coccinelle.jpg","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\vehicules\police\C_SUV_01_F Police.jpg","cop"],
			["textures\vehicules\civil\C_SUV_01_F Taxi.jpg","civ"],
			["textures\vehicules\rebelle\C_SUV_01_F Rebelle.jpg","reb"],
			["textures\vehicules\civil\C_SUV_01_F Secouriste.jpg","med"],
			["textures\vehicules\police\C_SUV_01_F Gendarmerie.jpg","cop"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["textures\vehicules\civil\C_Van_01_box_F Secouriste.jpg","med","textures\vehicules\civil\C_Van_01_box_F Secouriste 2.jpg"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","civ"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"],
			["textures\vehicules\police\B_Quadbike_01_F Gendarmerie.jpg","cop"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["textures\vehicules\police\B_Heli_Light_01_F Police Blanc.jpg","cop"],
			["textures\vehicules\police\B_Heli_Light_01_F Police Bleu.jpg","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\vehicules\civil\B_Heli_Light_01_F Secouriste.jpg","med"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","merco"]
		];
	};
	
	case "B_Heli_Light_01_armed_F":
	{
		_ret = 
		[
			["textures\vehicules\police\B_Heli_Light_01_F Police Blanc.jpg","cop"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\vehicules\police\B_Heli_Light_01_F Police Bleu.jpg","cop"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\vehicules\civil\O_Heli_Light_02_unarmed_F Secouriste.jpg","med"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["textures\vehicules\police\B_MRAP_01_F GIGN.jpg","cop","textures\vehicules\police\B_MRAP_01_F GIGN Noir 2.jpg"],
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","cop"],
			["textures\vehicules\police\B_MRAP_01_F Noir.jpg","cop","textures\vehicules\police\B_MRAP_01_F GIGN Noir 2.jpg"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_box_F":
	{
		_ret = 
		[
			["textures\vehicules\civil\I_Truck_02_box_F Pegasus.jpg","cop","textures\vehicules\civil\I_Truck_02_box_F Pegasus 2.jpg"]
		];
	};	
	
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	/*case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};*/	
	
	case "I_Heli_light_03_unarmed_F":
	{
		_ret = 
		[

			["textures\vehicules\rebelle\I_Heli_light_03_unarmed_F Desert.jpg","cop"],
			["textures\vehicules\police\I_Heli_light_03_unarmed_F Police.jpg","cop"],
			["textures\vehicules\police\I_Heli_light_03_unarmed_F Noir Police.jpg","cop"],
			["textures\vehicules\police\I_Heli_light_03_unarmed_F Gris.jpg","cop"]
		];
	};
};

_ret;