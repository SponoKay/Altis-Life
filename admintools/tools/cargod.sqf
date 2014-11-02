if (isNil "Cargod") then
{
	Cargod = 0;
};

if (Cargod == 0) then
{
	Cargod = 1;
	cutText ["Cargod activer", "PLAIN DOWN"];
	while {alive ( vehicle player )} do 
		{
			vehicle player setfuel 1;
			vehicle player setvehicleammo 1;
			vehicle player setdammage 0;
			sleep 0.001;
		}
}

else
{
	Cargod = 0;
    cutText ["Cargod Desactiver.", "PLAIN DOWN"];
	vehicle player setfuel 1;
	vehicle player setvehicleammo 1;
	vehicle player setdammage 1;
};