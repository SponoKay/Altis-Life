enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.7";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "admintools\loop.sqf";
//[] execVM "AdminMenu.sqf";
[] execVM "Anticheat.sqf";
[] execVM "KRON_Strings.sqf";
0 = execVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "zlt_fastrope.sqf";
[
	60, // seconds to delete dead bodies (0 means don't delete) 
	5*60, // seconds to delete dead vehicles (0 means don't delete)
	2*60, // seconds to delete dropped weapons (0 means don't delete)
	10*60, // seconds to deleted planted explosives (0 means don't delete)
	0 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM 'repetitive_cleanup.sqf';
call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};