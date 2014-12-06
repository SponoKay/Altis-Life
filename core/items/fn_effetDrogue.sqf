/*
	File: fn_effetDrogue.sqf
	Author: CryLegend
	
	Description:
	Effets drogue (configurable)
*/
private["_item"];
closeDialog 0;

_item = _this select 0;

_duration = switch (_item) do {
	case "marijuana": {
		30
	};
	case "cocainep": {
		45
	};
	case "meth": {
		50
	};
	case "heroinp": {
		60
	};
	default {
		30
	};
};

hint "La drogue fait effet!";
sleep 3;

"chromAberration" ppEffectEnable true; // Liste des effets activés
"radialBlur" ppEffectEnable true;
enableCamShake true;

for "_i" from 1 to _duration do // "_duration" secondes d'effets
{
    "chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

"chromAberration" ppEffectAdjust [0,0,true]; // Fin des effets
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;