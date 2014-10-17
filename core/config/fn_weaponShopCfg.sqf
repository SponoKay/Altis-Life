#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description: Vendeurs d'armes.
	Modifié par Nonoxs pour Gamewave.
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_Armes":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
				
				case (__GETC__(life_coplevel) == 1) :
				{
					["Armurerie",
						[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_Pistol_heavy_01_MRD_F",nil,2000],
							["hgun_PDW2000_F","PDW2000 9 mm",6200],
							["SMG_02_F","Sting 9 mm",6200],
							["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
							["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
							["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
							["16Rnd_9x21_Mag",nil,50],
							["11Rnd_45ACP_Mag",nil,70],
							["30Rnd_9x21_Mag",nil,60]
						]
					];
				};

				case (__GETC__(life_coplevel) == 2) :
				{
					["Armurerie",
						[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_Pistol_heavy_01_MRD_F",nil,2000],
							["hgun_PDW2000_F","PDW2000 9 mm",6200],
							["SMG_02_F","Sting 9 mm",6200],
							["arifle_Mk20_F","Mk20C 5.56 mm",5000],
							["arifle_MXC_F","MXC 6.5 mm",5000],
							["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
							["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
							["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
							["16Rnd_9x21_Mag",nil,50],
							["11Rnd_45ACP_Mag",nil,70],
							["30Rnd_9x21_Mag",nil,60],
							["30Rnd_556x45_Stanag",nil,100],
							["30Rnd_65x39_caseless_mag",nil,100]
						]
					];
				};

				case (__GETC__(life_coplevel) == 3) :
				{
					["Armurerie",
						[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_Pistol_heavy_01_MRD_F",nil,2000],
							["hgun_PDW2000_F","PDW2000 9 mm",6200],
							["SMG_02_F","Sting 9 mm",6200],
							["arifle_Mk20_F","Mk20C 5.56 mm",5000],
							["arifle_MXC_F","MXC 6.5 mm",5000],
							["srifle_LRR_LRPS_F","M320 LRR .408",50000],
							["LMG_Mk200_F","Mk200 6.5 mm",10000],
							["srifle_EBR_F","Mk18 ABR 7.62 mm",10000],
							["arifle_MXM_F","MXM 6.5 mm",5000],
							["arifle_Katiba_F","Katiba 6.5 mm",5000],
							["launch_Titan_short_F",nil,100000],
							["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
							["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
							["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
							["16Rnd_9x21_Mag",nil,50],
							["11Rnd_45ACP_Mag",nil,70],
							["30Rnd_9x21_Mag",nil,60],
							["30Rnd_556x45_Stanag",nil,100],
							["20Rnd_762x51_Mag",nil,100],
							["30Rnd_65x39_caseless_mag",nil,100],
							["30Rnd_65x39_caseless_green",nil,100],
							["7Rnd_408_Mag",nil,100],
							["200Rnd_65x39_cased_Box",nil,100],
							["Titan_AP",nil,75000]
						]
					];
				};				
				
				case (__GETC__(life_coplevel) > 3) :
				{
					["Armurerie",
						[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_Pistol_heavy_01_MRD_F",nil,2000],
							["hgun_PDW2000_F","PDW2000 9 mm",6200],
							["SMG_02_F","Sting 9 mm",6200],
							["arifle_Mk20_F","Mk20C 5.56 mm",5000],
							["arifle_MXC_F","MXC 6.5 mm",5000],
							["srifle_LRR_LRPS_F","M320 LRR .408",50000],
							["LMG_Mk200_F","Mk200 6.5 mm",10000],
							["srifle_EBR_F","Mk18 ABR 7.62 mm",10000],
							["arifle_MXM_F","MXM 6.5 mm",5000],
							["arifle_Katiba_F","Katiba 6.5 mm",5000],
							["srifle_GM6_SOS_F","GM6 Lynx 12.7 mm",35000],
							["LMG_Zafir_F","Zafir 7.62 mm",10000],
							["launch_Titan_short_F",nil,100000],
							["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
							["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
							["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
							["16Rnd_9x21_Mag",nil,50],
							["11Rnd_45ACP_Mag",nil,70],
							["30Rnd_9x21_Mag",nil,60],
							["30Rnd_556x45_Stanag",nil,100],
							["30Rnd_65x39_caseless_mag",nil,100],
							["20Rnd_762x51_Mag",nil,100],
							["30Rnd_65x39_caseless_green",nil,100],
							["7Rnd_408_Mag",nil,100],
							["200Rnd_65x39_cased_Box",nil,100],
							["150Rnd_762x51_Box",nil,100],
							["5Rnd_127x108_Mag",nil,100],
							["Titan_AP",nil,75000]
						]
					];
				};				
		};
	};

	case "cop_equip_Armes":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
				case (__GETC__(life_coplevel) == 1) :
				{
					["Accessoires Armes",
						[
							["muzzle_snds_L","Silencieux 9 mm ",450],
							["optic_Aco_smg",nil,2000],
							["optic_Arco",nil,2000]
						]
					];
				};

				case (__GETC__(life_coplevel) == 2) :
				{
					["Accessoires Armes",
						[
							["muzzle_snds_L","Silencieux 9 mm ",450],
							["muzzle_snds_M","Silencieux 5.56 mm",350],
							["muzzle_snds_H","Silencieux 6.5 mm",380],
							["optic_Aco_smg",nil,2000],
							["optic_Arco",nil,2000],
							["optic_ACO_grn",nil,2000],
							["optic_Holosight",nil,2000],
							["optic_MRCO",nil,2000],
							["optic_DMS",nil,2000],
							["acc_pointer_IR",nil,2000],
							["acc_flashlight",nil,1000]
						]
					];
				};

				case (__GETC__(life_coplevel) == 3) :
				{
					["Accessoires Armes",
						[
							["muzzle_snds_L","Silencieux 9 mm ",450],
							["muzzle_snds_M","Silencieux 5.56 mm",350],
							["muzzle_snds_H","Silencieux 6.5 mm",380],
							["muzzle_snds_B","Silencieux 7.62 mm",400],
							["optic_Aco_smg",nil,2000],
							["optic_Arco",nil,2000],
							["optic_ACO_grn",nil,2000],
							["optic_Holosight",nil,2000],
							["optic_MRCO",nil,2000],
							["optic_DMS",nil,2000],
							["optic_NVS",nil,2000],
							["optic_SOS",nil,2000],
							["acc_pointer_IR",nil,2000],
							["acc_flashlight",nil,1000]
						]
					];
				};				
				
				case (__GETC__(life_coplevel) > 3) :
				{
					["Accessoires Armes",
						[
							["muzzle_snds_L","Silencieux 9 mm ",450],
							["muzzle_snds_M","Silencieux 5.56 mm",350],
							["muzzle_snds_H","Silencieux 6.5 mm",380],
							["muzzle_snds_B","Silencieux 7.62 mm",400],
							["optic_Aco_smg",nil,2000],
							["optic_Arco",nil,2000],
							["optic_ACO_grn",nil,2000],
							["optic_Holosight",nil,2000],
							["optic_MRCO",nil,2000],
							["optic_DMS",nil,2000],
							["optic_NVS",nil,2000],
							["optic_SOS",nil,2000],
							["optic_LRPS",nil,2000],
							["optic_Nightstalker",nil,3000],
							["acc_pointer_IR",nil,2000],
							["acc_flashlight",nil,1000]
						]
					];
				};				
			};
	};

	case "cop_divers":
	{
		switch(true) do
		{
			case (playerSide != west): {"Interdit aux civils !"};
				case (__GETC__(life_coplevel) < 3)  :
				{
					["Divers",
						[
							["ItemMap",nil,50],
							["ItemGPS",nil,1250],
							["Binocular",nil,150],
							["NVGoggles",nil,2500],
							["Rangefinder",nil,3400],
							["Chemlight_red",nil,300],
							["Chemlight_yellow",nil,300],
							["Chemlight_green",nil,300],
							["Chemlight_blue",nil,300],
							["ToolKit",nil,250],
							["FirstAidKit",nil,150],
							["Medikit",nil,2000]
							
						]
					];
				};
				
				case (__GETC__(life_coplevel) > 2) :
				{
					["Divers",
						[
							["ItemMap",nil,50],
							["ItemGPS",nil,1250],
							["Binocular",nil,150],
							["NVGoggles",nil,2500],
							["Rangefinder",nil,3400],
							["Chemlight_red",nil,300],
							["Chemlight_yellow",nil,300],
							["Chemlight_green",nil,300],
							["Chemlight_blue",nil,300],
							["MiniGrenade","Flashbang",500],
							["ToolKit",nil,250],
							["FirstAidKit",nil,150],
							["Medikit",nil,2000],
							["B_UavTerminal",nil,2000]
						]
					];
				};
			};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Tu es Policier, tu n'as rien a faire avec moi"};
			case (!license_civ_rebel): {"Tu n'as pas d'entrainement Rebelle!"};
			case (__GETC__(life_donator) >= 1):
						{
							["Magasin d'armes Rebelles & Donateur",
								[
									["hgun_Pistol_heavy_02_F","Zubr .45",12750],
									["hgun_Pistol_heavy_01_F",nil,12750],
									["arifle_TRG20_F",nil,21250],
									["arifle_SDAR_F",nil,25500],
									["arifle_Katiba_F",nil,42500],
									["srifle_DMR_01_F",nil,68000],
									["srifle_EBR_ACO_F",nil,68000],
									["LMG_Mk200_F","Mk200 6.5 mm",106250],
									["LMG_Zafir_F","Zafir 7.62 mm",170000],
									["arifle_Mk20_F","Mk20C 5.56 mm",25500],
									["srifle_LRR_camo_F","M320 LRR .408",250000],
									["srifle_GM6_camo_F","GM6 Lynx 12.7 mm",150000],
									["launch_RPG32_F",nil,400000],
									["optic_DMS",nil,1700],
									["optic_LRPS",nil,1700],
									["optic_MRCO",nil,1700],
									["optic_ACO_grn",nil,2975],
									["optic_Holosight",nil,3060],
									["optic_SOS",nil,1700],
									["optic_NVS",nil,7500],
									["optic_Arco",nil,1700],
									["optic_Yorris",nil,1700],
									["optic_Aco_smg",nil,2000],
									["optic_ACO_grn_smg",nil,2000],
									["optic_MRD",nil,2500],
									["optic_Hamr",nil,2975],
									["acc_flashlight",nil,850],
									["Rangefinder",nil,6800],
									["6Rnd_45ACP_Cylinder",nil,210],
									["30Rnd_9x21_Mag",nil,425],
									["20Rnd_556x45_UW_mag",nil,425],
									["30Rnd_556x45_Stanag",nil,425],
									["10Rnd_762x51_Mag",nil,255],
									["20Rnd_762x51_Mag",nil,425],
									["30Rnd_65x39_caseless_green",nil,425],
									["200Rnd_65x39_cased_Box",nil,1275],
									["150Rnd_762x51_Box",nil,1275],
									["7Rnd_408_Mag",nil,800],
									["5Rnd_127x108_Mag",nil,700],
									["RPG32_F",nil,200000],
									["11Rnd_45ACP_Mag",nil,85],
									["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
									["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
									["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
									["V_Rangemaster_belt",nil,2125]
								]
							];
						};
			default
			{
				["Magasin d'armes Rebelles",
					[
						["hgun_Pistol_heavy_02_F","Zubr .45",15000],
						["arifle_TRG20_F",nil,25000],
						["arifle_SDAR_F",nil,30000],
						["arifle_Katiba_F",nil,50000],
						["srifle_DMR_01_F",nil,80000],
						["srifle_EBR_ACO_F",nil,80000],
						["LMG_Mk200_F","Mk200 6.5 mm",125000],
						["LMG_Zafir_F","Zafir 7.62 mm",200000],
						["srifle_LRR_camo_F","M320 LRR .408",350000],
						["launch_RPG32_F",nil,500000],
						["optic_DMS",nil,2000],
						["optic_LRPS",nil,2000],
						["optic_MRCO",nil,2000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_SOS",nil,2000],
						["optic_NVS",nil,7500],
						["optic_Arco",nil,2000],
						["optic_Yorris",nil,2000],
						["optic_Hamr",nil,3500],
						["acc_flashlight",nil,1000],
						["Rangefinder",nil,8000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag",nil,500],
						["30Rnd_556x45_Stanag",nil,500],
						["10Rnd_762x51_Mag",nil,300],
						["20Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,500],
						["200Rnd_65x39_cased_Box",nil,1500],
						["150Rnd_762x51_Box",nil,1500],
						["7Rnd_408_Mag",nil,1000],
						["RPG32_F",nil,300000],
						["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
						["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
						["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
						["V_Rangemaster_belt",nil,2500]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Ce n'est pas un shop pour les Flics!"};
			case (!license_civ_gun): {"Il te faut le Permis port d'armes!"};
			default
			{
				["Magasin d'armes lÃ©gales",
					[
						["arifle_SDAR_F","Fusil de plongee",50000],
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,20000],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,100],
						["9Rnd_45ACP_Mag",nil,100],
						["16Rnd_9x21_Mag",nil,100],
						["30Rnd_9x21_Mag",nil,150],
						["30Rnd_556x45_Stanag",nil,500],
						["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
						["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
						["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50]
					]
				];
			};
		};
	};
		
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			
			case (license_civ_rebel):
			{
				switch(true) do 
				{
					case (__GETC__(life_donator) >= 1):
								{
									["Hideout Armament Rebelle",
										[
											["hgun_Pistol_heavy_02_F","Zubr .45",12750],
											["hgun_Pistol_heavy_01_F",nil,12750],
											["arifle_TRG20_F",nil,21250],
											["arifle_SDAR_F",nil,25500],
											["arifle_Katiba_F",nil,42500],
											["srifle_DMR_01_F",nil,68000],
											["srifle_EBR_ACO_F",nil,68000],
											["LMG_Mk200_F","Mk200 6.5 mm",106250],
											["LMG_Zafir_F","Zafir 7.62 mm",170000],
											["arifle_Mk20_F","Mk20C 5.56 mm",25500],
											["srifle_LRR_LRPS_F","M320 LRR .408",250000],
											["optic_DMS",nil,1700],
											["optic_LRPS",nil,1700],
											["optic_MRCO",nil,1700],
											["optic_ACO_grn",nil,2975],
											["optic_Holosight",nil,3060],
											["optic_SOS",nil,1700],
											["optic_Arco",nil,1700],
											["optic_Yorris",nil,1700],
											["optic_Aco_smg",nil,2000],
											["optic_ACO_grn_smg",nil,2000],
											["optic_MRD",nil,2500],
											["optic_Hamr",nil,2975],
											["acc_flashlight",nil,850],
											["Rangefinder",nil,6800],
											["6Rnd_45ACP_Cylinder",nil,210],
											["30Rnd_9x21_Mag",nil,425],
											["20Rnd_556x45_UW_mag",nil,425],
											["30Rnd_556x45_Stanag",nil,425],
											["10Rnd_762x51_Mag",nil,255],
											["20Rnd_762x51_Mag",nil,425],
											["30Rnd_65x39_caseless_green",nil,425],
											["200Rnd_65x39_cased_Box",nil,1275],
											["150Rnd_762x51_Box",nil,1275],
											["7Rnd_408_Mag",nil,800],
											["11Rnd_45ACP_Mag",nil,85],
											["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
											["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
											["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
											["V_Rangemaster_belt",nil,2125]
										]
									];
								};
					default
					{
						["Hideout Armament Rebelle",
							[
								["hgun_Pistol_heavy_02_F","Zubr .45",15000],
								["arifle_TRG20_F",nil,25000],
								["arifle_SDAR_F",nil,30000],
								["arifle_Katiba_F",nil,50000],
								["srifle_DMR_01_F",nil,80000],
								["srifle_EBR_ACO_F",nil,80000],
								["LMG_Mk200_F","Mk200 6.5 mm",125000],
								["LMG_Zafir_F","Zafir 7.62 mm",200000],
								["optic_DMS",nil,2000],
								["optic_LRPS",nil,2000],
								["optic_MRCO",nil,2000],
								["optic_ACO_grn",nil,3500],
								["optic_Holosight",nil,3600],
								["optic_SOS",nil,2000],
								["optic_Arco",nil,2000],
								["optic_Yorris",nil,2000],
								["optic_Hamr",nil,3500],
								["acc_flashlight",nil,1000],
								["Rangefinder",nil,8000],
								["6Rnd_45ACP_Cylinder",nil,250],
								["30Rnd_9x21_Mag",nil,500],
								["20Rnd_556x45_UW_mag",nil,500],
								["30Rnd_556x45_Stanag",nil,500],
								["10Rnd_762x51_Mag",nil,300],
								["20Rnd_762x51_Mag",nil,500],
								["30Rnd_65x39_caseless_green",nil,500],
								["200Rnd_65x39_cased_Box",nil,1500],
								["150Rnd_762x51_Box",nil,1500],
								["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
								["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
								["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
								["V_Rangemaster_belt",nil,2500]
							]
						];
					};
				};
			};
			default
			{
				["Hideout Armament Civil",
					[
						["arifle_Katiba_F",nil,50000],
						["arifle_SDAR_F",nil,30000],
						["hgun_Rook40_F",nil,11050],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,19550],
						["hgun_PDW2000_F",nil,24000],
						["optic_ACO_grn_smg",nil,4250],
						["optic_MRCO",nil,7500],
						["optic_ACO_grn",nil,7500],
						["V_Rangemaster_belt",nil,2000],
						["30Rnd_65x39_caseless_green",nil,500],
						["30Rnd_556x45_Stanag",nil,500],
						["16Rnd_9x21_Mag",nil,200],
						["9Rnd_45ACP_Mag",nil,200],
						["6Rnd_45ACP_Cylinder",nil,200],
						["30Rnd_9x21_Mag",nil,200],
						["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
						["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
						["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50]
					]
				];
			};
		};
	};
	
	case "gunblack":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Ce n'est pas un shop pour les Flics!"};
			default
			{
				["MarchÃ© Noir",
					[
						["arifle_Katiba_F",nil,60000],
						["arifle_SDAR_F",nil,30000],
						["hgun_Rook40_F",nil,11050],
						["hgun_Pistol_heavy_02_F",nil,25000],
						["hgun_ACPC2_F",nil,19550],
						["hgun_PDW2000_F",nil,34000],
						["optic_ACO_grn_smg",nil,4250],
						["optic_MRCO",nil,7500],
						["optic_ACO_grn",nil,7500],
						["V_Rangemaster_belt",nil,2000],
						["30Rnd_65x39_caseless_green",nil,500],
						["30Rnd_556x45_Stanag",nil,500],
						["16Rnd_9x21_Mag",nil,200],
						["9Rnd_45ACP_Mag",nil,200],
						["6Rnd_45ACP_Cylinder",nil,200],
						["30Rnd_9x21_Mag",nil,200]
					]
				];
			};
		};
	};

	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Tu n'as pas le droit !"};
			case (__GETC__(life_donator) == 1):
				{ switch(true) do
					{
						case (license_civ_rebel):	//Rebelle
						{
							["Donator Shop Rebelles",
								[
									["hgun_Pistol_heavy_02_F","Zubr .45",12750],
									["hgun_Pistol_heavy_01_F",nil,12750],
									["arifle_TRG20_F",nil,21250],
									["arifle_SDAR_F",nil,25500],
									["arifle_Katiba_F",nil,42500],
									["srifle_DMR_01_F",nil,68000],
									["srifle_EBR_ACO_F",nil,68000],
									["LMG_Mk200_F","Mk200 6.5 mm",106250],
									["LMG_Zafir_F","Zafir 7.62 mm",170000],
									["arifle_Mk20_F","Mk20C 5.56 mm",25500],
									["srifle_LRR_LRPS_F","M320 LRR .408",250000],
									["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
									["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
									["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
									["optic_DMS",nil,1700],
									["optic_LRPS",nil,1700],
									["optic_MRCO",nil,1700],
									["optic_ACO_grn",nil,2975],
									["optic_Holosight",nil,3060],
									["optic_SOS",nil,1700],
									["optic_Arco",nil,1700],
									["optic_Yorris",nil,1700],
									["optic_Aco_smg",nil,2000],
									["optic_ACO_grn_smg",nil,2000],
									["optic_MRD",nil,2500],
									["optic_Hamr",nil,2975],
									["acc_flashlight",nil,850],
									["Rangefinder",nil,6800],
									["6Rnd_45ACP_Cylinder",nil,210],
									["30Rnd_9x21_Mag",nil,425],
									["20Rnd_556x45_UW_mag",nil,425],
									["30Rnd_556x45_Stanag",nil,425],
									["10Rnd_762x51_Mag",nil,255],
									["20Rnd_762x51_Mag",nil,425],
									["30Rnd_65x39_caseless_green",nil,425],
									["200Rnd_65x39_cased_Box",nil,1275],
									["150Rnd_762x51_Box",nil,1275],
									["7Rnd_408_Mag",nil,800],
									["11Rnd_45ACP_Mag",nil,85],
									["V_Rangemaster_belt",nil,2125]
								]
							];
						};
						
						case (!license_civ_rebel):	//Civil
						{
							["Donator Shop Civils",
								[
									["arifle_SDAR_F","Fusil de plongee",42500],
									["hgun_Rook40_F",nil,5525],
									["hgun_Pistol_heavy_02_F",nil,17000],
									["hgun_Pistol_heavy_01_F",nil,12750],
									["hgun_ACPC2_F",nil,9775],
									["hgun_PDW2000_F",nil,17000],
									["arifle_Mk20_F","Mk20C 5.56 mm",42500],
									["srifle_LRR_LRPS_F","M320 LRR .408",300000],
									["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
									["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
									["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
									["optic_ACO_grn_smg",nil,2125],
									["optic_MRCO",nil,4000],
									["optic_LRPS",nil,2000],
									["optic_MRD",nil,3000],
									["V_Rangemaster_belt",nil,2125],
									["Rangefinder",nil,10000],
									["6Rnd_45ACP_Cylinder",nil,40],
									["9Rnd_45ACP_Mag",nil,38],
									["16Rnd_9x21_Mag",nil,20],
									["30Rnd_9x21_Mag",nil,60],
									["30Rnd_556x45_Stanag",nil,425],
									["7Rnd_408_Mag",nil,800],
									["11Rnd_45ACP_Mag",nil,85]
								]
							];				
						};	
					};
				};

			case (__GETC__(life_donator) > 1):
				{ switch(true) do
					{
						case (license_civ_rebel):	//Rebelle
						{
							["Donator Shop Rebelles",
								[
									["hgun_Pistol_heavy_02_F","Zubr .45",10500],
									["hgun_Pistol_heavy_01_F",nil,10500],
									["arifle_TRG20_F",nil,17500],
									["arifle_SDAR_F",nil,21000],
									["arifle_Katiba_F",nil,35000],
									["srifle_DMR_01_F",nil,56000],
									["srifle_EBR_ACO_F",nil,56000],
									["LMG_Mk200_F","Mk200 6.5 mm",87500],
									["LMG_Zafir_F","Zafir 7.62 mm",140000],
									["arifle_Mk20_F","Mk20C 5.56 mm",21000],
									["srifle_LRR_LRPS_F","M320 LRR .408",212500],
									["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
									["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
									["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
									["optic_DMS",nil,1400],
									["optic_LRPS",nil,1400],
									["optic_MRCO",nil,1400],
									["optic_ACO_grn",nil,2450],
									["optic_Holosight",nil,2520],
									["optic_SOS",nil,1400],
									["optic_Arco",nil,1400],
									["optic_Yorris",nil,1400],
									["optic_Aco_smg",nil,1700],
									["optic_ACO_grn_smg",nil,1700],
									["optic_MRD",nil,2125],
									["optic_Hamr",nil,2450],
									["acc_flashlight",nil,700],
									["Rangefinder",nil,5600],
									["6Rnd_45ACP_Cylinder",nil,175],
									["30Rnd_9x21_Mag",nil,350],
									["20Rnd_556x45_UW_mag",nil,350],
									["30Rnd_556x45_Stanag",nil,350],
									["10Rnd_762x51_Mag",nil,210],
									["20Rnd_762x51_Mag",nil,350],
									["30Rnd_65x39_caseless_green",nil,350],
									["200Rnd_65x39_cased_Box",nil,1050],
									["150Rnd_762x51_Box",nil,1050],
									["7Rnd_408_Mag",nil,680],
									["11Rnd_45ACP_Mag",nil,70],
									["V_Rangemaster_belt",nil,1750]
								]
							];
						};
						
						case (!license_civ_rebel):	//Civil
						{
							["Donator Shop Civils",
								[
									["arifle_SDAR_F","Fusil de plongee",35000],
									["hgun_Rook40_F",nil,4550],
									["hgun_Pistol_heavy_02_F",nil,14000],
									["hgun_Pistol_heavy_01_F",nil,10500],
									["hgun_ACPC2_F",nil,8050],
									["hgun_PDW2000_F",nil,14000],
									["arifle_Mk20_F","Mk20C 5.56 mm",35000],
									["srifle_LRR_LRPS_F","M320 LRR .408",255000],
									["optic_ACO_grn_smg",nil,1750],
									["optic_MRCO",nil,3400],
									["optic_LRPS",nil,1700],
									["optic_MRD",nil,2550],
									["V_Rangemaster_belt",nil,1750],
									["Rangefinder",nil,8500],
									["6Rnd_45ACP_Cylinder",nil,34],
									["9Rnd_45ACP_Mag",nil,30],
									["16Rnd_9x21_Mag",nil,17],
									["30Rnd_9x21_Mag",nil,50],
									["30Rnd_556x45_Stanag",nil,350],
									["7Rnd_408_Mag",nil,680],
									["11Rnd_45ACP_Mag",nil,70]
								]
							];				
						};	
					};
				};

			
		};
	};
	
	case "genstore":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0):
			{
				["Altis General Store",
					[
					["Binocular",nil,150],
					["ItemMap",nil,50],
					["ItemGPS",nil,1250],
					["ToolKit",nil,250],
					["FirstAidKit",nil,1500],
					["Medikit",nil,15000],
					["NVGoggles",nil,10000],
					["Chemlight_red",nil,300],
					["Chemlight_yellow",nil,300],
					["Chemlight_green",nil,300],
					["Chemlight_blue",nil,300]
					]
				];
			};		

			case (__GETC__(life_donator) == 1):
			{
				["Altis General Store",
					[
					["Binocular",nil,125],
					["ItemMap",nil,40],
					["ItemGPS",nil,1250],
					["ToolKit",nil,210],
					["FirstAidKit",nil,1275],
					["Medikit",nil,12750],
					["NVGoggles",nil,8500],
					["Chemlight_red",nil,250],
					["Chemlight_yellow",nil,250],
					["Chemlight_green",nil,250],
					["Chemlight_blue",nil,250]
					]
				];
			};			

			case (__GETC__(life_donator) > 1):
			{
				["Altis General Store",
					[
					["Binocular",nil,100],
					["ItemMap",nil,35],
					["ItemGPS",nil,1250],
					["ToolKit",nil,175],
					["FirstAidKit",nil,1050],
					["Medikit",nil,10500],
					["NVGoggles",nil,7000],
					["Chemlight_red",nil,200],
					["Chemlight_yellow",nil,200],
					["Chemlight_green",nil,200],
					["Chemlight_blue",nil,200]
					]
				];
			};			
		
		};
	};
};