/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt bleu",250],
		["U_C_Poloshirt_burgundy","Poloshirt pourpre",275],
		["U_C_Poloshirt_redwhite","Poloshirt rouge et blanc",150],
		["U_C_Poloshirt_salmon","Poloshirt Saumon",175],
		["U_C_Poloshirt_stripped","Poloshirt � rayure",125],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolore",350],
		["U_C_Poor_2","Habits Made in China",250],
		["U_Competitor","Pilote",650],
		["U_IG_Guerilla2_2","tee shirt verte � rayure",650],
		["U_IG_Guerilla3_1","Veste brune",735],
		["U_IG_Guerilla2_3","Le randonneur",1200],
		["U_BG_Guerilla2_1","Polo Bleu",1200],
		["U_C_HunterBody_grn","Le chasseur",1500],
		["U_C_WorkerCoveralls","Le garagiste",2500],
		["U_OrestesBody","Le surfer",1100],
		["U_NikosBody","Chemise",2100],
		["U_C_Journalist","Costume de journaliste",3100],
		["U_NikosAgedBody","Costume Cravate",5100],
		["U_C_Scientist","Medecin",3000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Bandanna Gris",150],
			["H_Bandanna_khk","Bandanna vert",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","La fedora",225],
			["H_Hat_grey","Chapeau",225],
			["H_Hat_blue","Chapeau Bleu",225],
			["H_StrawHat_dark","Chapeau Marron",225],
			["H_Hat_tan","Chapeau Tan",225],
			["H_Hat_checker","Chapeau Dammier",225],
			["H_Cap_press","Chapeau Journaliste",225],
			["H_BandMask_blk","Chapeau et bandanna",300],
			["H_Bandanna_cbr",nil,165],
			["H_Booniehat_tan",nil,425],
			["H_Hat_brown",nil,276],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150]
		];
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