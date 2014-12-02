/*
	File: fn_updateClothing.sqf
	Author: Cry
	
	Description:
	Met à jour les skins custom
*/

if (license_civ_medecin && {uniform player == "U_C_Scientist"}) then {
	player setObjectTextureGlobal [0,"texture\skins\civil\U_C_Scientist Medecin.jpg"];
};

if (playerSide == west && {uniform player == "U_Rangemaster"}) then {
	if (license_cop_swat) then {
		player setObjectTextureGlobal [0,"textures\skins\police\U_Rangemaster SWAT.paa"];
	}
	else {
		player setObjectTextureGlobal [0,"textures\skins\police\U_Rangemaster Police.paa"];
	};
};