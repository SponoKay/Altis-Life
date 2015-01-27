/*
	File: fn_updateClothing.sqf
	Author: Cry
	
	Description:
	Met à jour les skins custom
*/

if (uniform player == "U_C_Scientist") then {
	player setObjectTextureGlobal [0,"textures\skins\civil\U_C_Scientist Secouriste.jpg"];
};

if (uniform player == "U_Rangemaster") then {
	player setObjectTextureGlobal [0,"textures\skins\police\U_Rangemaster Police.jpg"];
};

if (uniform player == "U_B_CombatUniform_mcam") then {
	player setObjectTextureGlobal [0,"textures\skins\police\U_B_CombatUniform_mcam RAID.jpg"];
};

if (backpack player == "B_Bergen_blk") then {
	(unitBackpack player) setObjectTextureGlobal[0,"textures\skins\police\B_Bergen_blk Police.jpg"];
};

if (backpack player == "B_TacticalPack_mcamo") then {
	(unitBackpack player) setObjectTextureGlobal[0,"textures\skins\civil\B_TacticalPack_mcamo Secouriste.jpg"];
};