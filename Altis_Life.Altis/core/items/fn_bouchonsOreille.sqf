/*
	File: fn_bouchonsOreille.sqf
	Author: CryLegend
	
	Description:
	Réduit le son ambient
*/
0.5 fadeSound 0.1;
life_action_bouchonsOreille = player addAction["<t color='#F29F00'>Enlever les bouchons</t>",{0.5 fadeSound 1; [true,"bouchons",1] call life_fnc_handleInv; player removeAction life_action_bouchonsOreille;},nil,999];
