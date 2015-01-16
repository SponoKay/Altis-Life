/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(hBf0MznDHQm7X5DFFSmy > 0) then
{
	[[getPlayerUID _robber,_robber getVariable["realname",name _robber],"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[1,format[localize "STR_NOTF_Robbed",_robber getVariable["realname",name _robber],profileName,[hBf0MznDHQm7X5DFFSmy] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	_money = hBf0MznDHQm7X5DFFSmy;
	hBf0MznDHQm7X5DFFSmy = 0;
	[] call SOCK_fnc_updateRequest;
	sleep 3;
	[[_money],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
}
	else
{
	[[2,format[localize "STR_NOTF_RobFail",profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
};