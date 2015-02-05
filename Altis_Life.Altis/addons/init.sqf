[] execVM "addons\Anticheat.sqf";

[] execVM "addons\IgiLoad\IgiLoadInit.sqf";

[] execVM "addons\fpsFix\vehicleManager.sqf";

[] execVM "addons\zlt_fastrope.sqf";

[] execVM "addons\weather\DynamicWeatherEffects.sqf";

[] execVM "addons\module_cleanup\init.sqf";

[] execVM "addons\FAR_revive\FAR_revive_init.sqf";

[
	60, // seconds to delete dead bodies (0 means don't delete) 
	5*60, // seconds to delete dead vehicles (0 means don't delete)
	2*60, // seconds to delete dropped weapons (0 means don't delete)
	10*60, // seconds to deleted planted explosives (0 means don't delete)
	2*60 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM "addons\repetitive_cleanup.sqf";