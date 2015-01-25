/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for medic Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Medic Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Scientist","Medecin",3000]
		];
	};
	
	//Hats
	case 1:
	{
		[];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr","Sac à Dos 44 Slots",2500],
			["B_FieldPack_ocamo","Sac à Dos 49 Slots",3000],
			["B_TacticalPack_oli","Sac à Dos 54 Slots",3500],
			["B_Kitbag_mcamo","Sac à Dos 59 Slots",4500],
			["B_Bergen_sgg","Sac à Dos 59 Slots",4500],
			["B_Kitbag_cbr","Sac à Dos 59 Slots",4500],
			["B_Carryall_oli","Sac à Dos 64 Slots",5000],
			["B_Carryall_khk","Sac à Dos 64 Slots",5000]
		];
	};
};