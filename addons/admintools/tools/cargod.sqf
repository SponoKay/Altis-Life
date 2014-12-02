if (isnil "cargod" ) then {cargod=0};
if (Cargod==0) then
{
	cutText [format["CarGod On"], "PLAIN DOWN"];
	hint format["CarGod On"];
	cargod = 1;
	cargodl = true;

	while {cargodl} do
	{
		if ((vehicle player isKindOf "LandVehicle") || (vehicle player isKindOf "Air") || (vehicle player isKindOf "Ship")) then 
		{
			if ((fuel (vehicle player)) < 0.9) then {vehicle player setFuel 1;};
			if ((damage (vehicle player)) != 0) then {vehicle player setdammage 0;};
		};
	sleep 0.01;
	};
}
else
{
	cutText [format["CarGod Off"], "PLAIN DOWN"];
	hint format["CarGod Off"];
	cargodl = false;
	cargod = 0;
};
};
