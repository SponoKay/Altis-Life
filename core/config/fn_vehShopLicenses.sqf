/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.
	
	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.

switch (life_veh_shop select 0) do
{
	case "kart_shop": {_ret = true;};
	case "civ_car": {_ret = license_civ_driver;};
	case "civ_ship": {_ret = license_civ_boat;};
	case "civ_air": {_ret = license_civ_air;};
	case "cop_air": {_ret = license_cop_air;};
	case "donator": {_ret = true;};
	case "civ_truck":	{_ret = license_civ_truck;};
	case "civ_Pegasus_1":	{_ret = license_civ_truck;};
	case "civ_servt_1": {_ret = license_civ_driver;};
	case "reb_v": {_ret = license_civ_rebel;};
	case "air_reb": {_ret = license_civ_air;};
	case "cop_car": {_ret = true;};
	case "fed_car": {_ret = true;};
	case "fed_air": {_ret = true;};
	case "cop_ship": {_ret = true;};
	case "merco_v": {_ret = license_civ_mercenaire;};
	case "merco_air": {_ret = license_civ_mercenaire;};
};

_ret;