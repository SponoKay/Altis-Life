/*
	File: fn_clothing_medecin.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for medic Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vêtements médicaux"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Scientist","Tenue de secouriste",3000]
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
		[];
	};
	
	//Vest
	case 3:
	{
		[];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_TacticalPack_mcamo","Sac à dos tactique (Médecin)",4500]
		];
	};
};