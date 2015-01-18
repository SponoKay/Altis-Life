/*
	File: fn_updateClothing.sqf
	Author: Cry
	
	Description:
	Met à jour les skins custom
*/

if (license_civ_medecin && {uniform player == "U_C_Scientist"}) then {
		player setObjectTextureGlobal [0,"textures\skins\civil\U_C_Scientist Medecin.jpg"];
};

if (playerSide == west && {uniform player == "U_Rangemaster"}) then {
		player setObjectTextureGlobal [0,"textures\skins\police\U_Rangemaster Police.jpg"];
};

if (playerSide == west && {uniform player == "U_B_CombatUniform_mcam"}) then {
		player setObjectTextureGlobal [0,"textures\skins\police\U_B_CombatUniform_mcam RAID.jpg"];
};