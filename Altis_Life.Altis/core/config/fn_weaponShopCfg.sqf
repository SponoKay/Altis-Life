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
							["hgun_P07_snds_F","Tazer",2000],
							["SMG_02_F","Sting 9 mm",6200],
							["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
							["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
							["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
							["16Rnd_9x21_Mag",nil,50],
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
							["SMG_02_F","Sting 9 mm",6200],
							["arifle_MXC_F","MXC 6.5 mm",7000],
							["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
							["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
							["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
							["16Rnd_9x21_Mag",nil,50],
							["11Rnd_45ACP_Mag",nil,70],
							["30Rnd_9x21_Mag",nil,60],
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
							["SMG_02_F","Sting 9 mm",6200],
							["arifle_MXC_F","MXC 6.5 mm",7000],
							["arifle_Mk20_F","Mk20C 5.56 mm",5000],
							["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
							["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
							["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
							["16Rnd_9x21_Mag",nil,50],
							["30Rnd_9x21_Mag",nil,60],
							["11Rnd_45ACP_Mag",nil,70],
							["30Rnd_65x39_caseless_mag",nil,100],
							["30Rnd_556x45_Stanag",nil,100]
						]
					];
				};

				case (__GETC__(life_coplevel) == 4) :
				{
					["Armurerie",
						[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_Pistol_heavy_01_MRD_F",nil,2000],
							["SMG_02_F","Sting 9 mm",6200],
							["arifle_MXC_F","MXC 6.5 mm",7000],
							["arifle_Mk20_F","Mk20C 5.56 mm",5000],
							["arifle_MXM_F","MXM 6.5 mm",5000],
							["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
							["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
							["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
							["16Rnd_9x21_Mag",nil,50],
							["30Rnd_9x21_Mag",nil,60],
							["11Rnd_45ACP_Mag",nil,70],
							["30Rnd_556x45_Stanag",nil,100],
							["30Rnd_65x39_caseless_mag",nil,100]
						]
					];
				};
				
				case (__GETC__(life_coplevel) == 5) :
				{
					["Armurerie",
						[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_Pistol_heavy_01_MRD_F",nil,2000],
							["SMG_02_F","Sting 9 mm",6200],
							["arifle_Mk20_F","Mk20C 5.56 mm",5000],
							["arifle_MXC_F","MXC 6.5 mm",7000],
							["srifle_LRR_LRPS_F","M320 LRR .408",50000],
							["LMG_Mk200_F","Mk200 6.5 mm",10000],
							["srifle_EBR_F","Mk18 ABR 7.62 mm",10000],
							["arifle_MXM_F","MXM 6.5 mm",5000],
							["arifle_Katiba_F","Katiba 6.5 mm",5000],
							["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",2000],
							["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",50],
							["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",50],
							["16Rnd_9x21_Mag",nil,50],
							["30Rnd_9x21_Mag",nil,60],
							["11Rnd_45ACP_Mag",nil,70],
							["30Rnd_556x45_Stanag",nil,100],
							["30Rnd_65x39_caseless_mag",nil,100],
							["30Rnd_556x45_Stanag",nil,100],
							["20Rnd_762x51_Mag",nil,100],
							["30Rnd_65x39_caseless_green",nil,100],
							["7Rnd_408_Mag",nil,100],
							["200Rnd_65x39_cased_Box",nil,100]
						]
					];
				};
				
				case (__GETC__(life_coplevel) > 4) :
				{
					["Armurerie",
						[
							["hgun_P07_snds_F","Stun Pistol",2000],
							["hgun_Pistol_heavy_01_MRD_F",nil,2000],
							["hgun_PDW2000_F","PDW2000 9 mm",6200],
							["SMG_02_F","Sting 9 mm",6200],
							["arifle_Mk20_F","Mk20C 5.56 mm",5000],
							["arifle_MXC_F","MXC 6.5 mm",7000],
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
				
				case (__GETC__(life_coplevel) > 3) :
				{
					["Accessoires Armes",
						[
							["muzzle_snds_L","Silencieux 9 mm ",450],
							["muzzle_snds_M","Silencieux 5.56 mm",350],
							["muzzle_snds_H","Silencieux 6.5 mm",380],
							["muzzle_snds_B","Silencieux 7.62 mm",400],
							["muzzle_snds_H_MG","Silencieux 6.5 mm pour Mk200",400],
							["optic_Aco_smg",nil,2000],
							["optic_Arco",nil,2000],
							["optic_ACO_grn",nil,2000],
							["optic_Holosight",nil,2000],
							["optic_MRCO",nil,2000],
							["optic_DMS",nil,2000],
							["optic_NVS",nil,2000],
							["optic_SOS",nil,2000],
							["optic_LRPS",nil,2000],
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
				
				case (__GETC__(life_coplevel) > 3) :
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
				["Armes Rebelle & Donateur",
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
				["Armes Rebelle",
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

	case "merco":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Tu es Policier, tu n'as rien a faire avec moi"};
			case (!license_civ_mercenaire): {"Tu n'es pas un combattant mercenaire!"};
			case (__GETC__(life_donator) >= 1):
			{
				["Armes Mercenaire & Donateur",
					[
						["hgun_Pistol_heavy_02_F","Zubr .45",4250],
						["hgun_Pistol_heavy_01_F",nil,4250],
						["arifle_TRG20_F",nil,7000],
						["arifle_SDAR_F",nil,8500],
						["arifle_MXM_Black_F","Mk20C 5.56 mm",10000],
						["arifle_MX_SW_Black_F",nil,30000],
						["srifle_DMR_01_F",nil,22000],
						["srifle_EBR_ACO_F",nil,22000],
						["LMG_Mk200_F","Mk200 6.5 mm",35000],
						["LMG_Zafir_F","Zafir 7.62 mm",60000],
						["arifle_Mk20_F","Mk20C 5.56 mm",8500],
						["srifle_LRR_camo_F","M320 LRR .408",80000],
						["srifle_GM6_camo_F","GM6 Lynx 12.7 mm",50000],
						["launch_NLAW_F",nil,130000],
						["optic_DMS",nil,560],
						["optic_LRPS",nil,560],
						["optic_MRCO",nil,560],
						["optic_ACO_grn",nil,1000],
						["optic_Holosight",nil,1000],
						["optic_SOS",nil,560],
						["optic_NVS",nil,2500],
						["optic_Arco",nil,560],
						["optic_Yorris",nil,560],
						["optic_Aco_smg",nil,660],
						["optic_ACO_grn_smg",nil,660],
						["optic_MRD",nil,830],
						["optic_Hamr",nil,1000],
						["acc_flashlight",nil,280],
						["Rangefinder",nil,2200],
						["6Rnd_45ACP_Cylinder",nil,70],
						["30Rnd_9x21_Mag",nil,140],
						["20Rnd_556x45_UW_mag",nil,140],
						["30Rnd_65x39_caseless_mag",nil,140],
						["10Rnd_762x51_Mag",nil,85],
						["20Rnd_762x51_Mag",nil,140],
						["100Rnd_65x39_caseless_mag",nil,140],
						["200Rnd_65x39_cased_Box",nil,475],
						["150Rnd_762x51_Box",nil,475],
						["7Rnd_408_Mag",nil,260],
						["5Rnd_127x108_Mag",nil,230],
						["NLAW_F",nil,60000],
						["11Rnd_45ACP_Mag",nil,28],
						["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",660],
						["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",16],
						["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",16],
						["V_Rangemaster_belt",nil,700]
					]
				];
			};
			default
			{
				["Armes Mercenaire",
					[
						["hgun_Pistol_heavy_02_F","Zubr .45",5000],
						["arifle_TRG20_F",nil,8300],
						["arifle_SDAR_F",nil,10000],
						["arifle_MXM_Black_F","Mk20C 5.56 mm",13000],
						["arifle_MX_SW_Black_F",nil,50000],
						["srifle_DMR_01_F",nil,26000],
						["srifle_EBR_ACO_F",nil,26000],
						["LMG_Mk200_F","Mk200 6.5 mm",42000],
						["LMG_Zafir_F","Zafir 7.62 mm",60000],
						["srifle_LRR_camo_F","M320 LRR .408",110000],
						["launch_NLAW_F",nil,160000],
						["optic_DMS",nil,660],
						["optic_LRPS",nil,660],
						["optic_MRCO",nil,660],
						["optic_ACO_grn",nil,1100],
						["optic_Holosight",nil,1200],
						["optic_SOS",nil,660],
						["optic_NVS",nil,2500],
						["optic_Arco",nil,660],
						["optic_Yorris",nil,660],
						["optic_Hamr",nil,1200],
						["acc_flashlight",nil,330],
						["Rangefinder",nil,2700],
						["6Rnd_45ACP_Cylinder",nil,80],
						["30Rnd_9x21_Mag",nil,170],
						["20Rnd_556x45_UW_mag",nil,170],
						["100Rnd_65x39_caseless_mag",nil,170],
						["10Rnd_762x51_Mag",nil,100],
						["20Rnd_762x51_Mag",nil,160],
						["30Rnd_65x39_caseless_mag",nil,160],
						["200Rnd_65x39_cased_Box",nil,500],
						["150Rnd_762x51_Box",nil,500],
						["7Rnd_408_Mag",nil,330],
						["NLAW_F",nil,100000],
						["hgun_Pistol_Signal_F","Pistolet de dÃ©tresse",660],
						["6Rnd_GreenSignal_F","FusÃ©e Ã©clairante Verte",16],
						["6Rnd_RedSignal_F","FusÃ©e Ã©clairante Rouge",16],
						["V_Rangemaster_belt",nil,830]
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
				["Magasin d'armes légales",
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
									["Armurerie de gang rebelle",
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
						["Armurerie de gang rebelle",
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
				["Armurerie de gang civil",
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
				["Marché Noir",
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
	
	case "genstore":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0):
			{
				["Magasin général",
					[
					["Binocular",nil,150],
					["ItemMap",nil,50],
					["ItemGPS",nil,1250],
					["ItemRadio",nil,200],
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
				["Magasin général",
					[
					["Binocular",nil,125],
					["ItemMap",nil,40],
					["ItemGPS",nil,1250],
					["ItemRadio",nil,150],
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
				["Magasin général",
					[
					["Binocular",nil,100],
					["ItemMap",nil,35],
					["ItemGPS",nil,1250],
					["ItemRadio",nil,100],
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
	
	case "medstore":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0):
			{
				["Magasin médecin",
					[
					["Binocular",nil,150],
					["ItemMap",nil,50],
					["ItemGPS",nil,1250],
					["ItemRadio",nil,200],
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
				["Magasin médecin",
					[
					["Binocular",nil,125],
					["ItemMap",nil,40],
					["ItemGPS",nil,1250],
					["ItemRadio",nil,150],
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
				["Magasin médecin",
					[
					["Binocular",nil,100],
					["ItemMap",nil,35],
					["ItemGPS",nil,1250],
					["ItemRadio",nil,100],
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
