[] execVM "admintools\loop.sqf";

[] execVM "Anticheat.sqf";

[] execVM "IgiLoad\IgiLoadInit.sqf";

[] execVM "zlt_fastrope.sqf";

[] execVM "weather\DynamicWeatherEffects.sqf";

[] execVM "module_cleanup\init.sqf";

call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";

[
	60, // seconds to delete dead bodies (0 means don't delete) 
	5*60, // seconds to delete dead vehicles (0 means don't delete)
	2*60, // seconds to delete dropped weapons (0 means don't delete)
	10*60, // seconds to deleted planted explosives (0 means don't delete)
	2*60 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM "repetitive_cleanup.sqf";