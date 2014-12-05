waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198032371812", "76561198141737451", "76561198093139365"]) then {
	sleep 30;
	player addaction [("<t color=""#0074E8"">" + ("Admin Menu") +"</t>"),"addons\admintools\AdminToolsMain.sqf","",5,false,true,"",""];
};