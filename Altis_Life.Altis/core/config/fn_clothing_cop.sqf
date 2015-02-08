#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin Police"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Tenue de police",25]];
		_ret set[count _ret,["U_B_Wetsuit",nil,5000]];
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Tenue du RAID",350]];
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["U_B_GhillieSuit",nil,550]];
			_ret set[count _ret,["U_B_SpecopsUniform_sgg",nil,550]];
		};
		
	};
	
	//Hats
	case 1:
	{
	
		_ret set[count _ret,["H_Cap_police",nil,120]];
	
		if(__GETC__(life_coplevel) > 1) then
		{	
			_ret set[count _ret,["H_HelmetB_plain_mcamo",nil,75]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_PilotHelmetFighter_B","Masque a gaz",500]];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,100]];
			_ret set[count _ret,["H_HelmetIA_net",nil,100]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,100]];
		};
		
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret set[count _ret,["H_Beret_Colonel",nil,100]];
		};
	};
	
	//Glasses
	case 2:
	{
			_ret set[count _ret,["G_Diving",nil,75]];
			_ret set[count _ret,["G_Shades_Black",nil,75]];
			_ret set[count _ret,["G_Shades_Blue",nil,75]];
			_ret set[count _ret,["G_Sport_Blackred",nil,75]];
			_ret set[count _ret,["G_Sport_Checkered",nil,75]];
			_ret set[count _ret,["G_Sport_Blackyellow",nil,75]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,75]];
			_ret set[count _ret,["G_Aviator",nil,75]];
			_ret set[count _ret,["G_Squares",nil,75]];
			_ret set[count _ret,["G_Lowprofile",nil,75]];
			_ret set[count _ret,["G_Combat",nil,75]];

		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["G_Balaclava_blk",nil,75]];
		};
	};
	
	//Vest
	case 3:
	{	
		_ret set[count _ret,["V_TacVest_blk_POLICE",nil,800]];		
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		_ret set[count _ret,["V_RebreatherB",nil,5000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
			_ret set[count _ret,["V_Chestrig_blk",nil,1500]];
			_ret set[count _ret,["V_TacVestIR_blk",nil,1500]];
			_ret set[count _ret,["V_BandollierB_blk",nil,1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_Bergen_blk","Sac de police",800]];
		if(__GETC__(life_coplevel) > 4) then
		{
		_ret set[count _ret,["B_Carryall_cbr",nil,800]];
		_ret set[count _ret,["B_Carryall_oucamo",nil,800]];
		_ret set[count _ret,["B_UAV_01_backpack_F",nil,800]];
		};
	};
};

_ret;