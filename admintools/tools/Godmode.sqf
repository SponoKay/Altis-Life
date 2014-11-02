if (isNil "demiGOD") then
{
	demiGOD = 0;
};

if (demiGOD == 0) then
{
	demiGOD = 1;
    cutText ["Godmode activated(cheateur bou !). (No Recoil, No Grass, No reload)", "PLAIN"];
	player addEventHandler ["handleDamage", {false}];
	player allowDamage false;
	player setUnitRecoilCoefficient 0;
	player addEventHandler ["Fired", { (_this select 0) setVehicleAmmo 1 }];
}

else
{
	demiGOD = 0;
    cutText ["Godmode Deactivated. (No Recoil, No Grass, No reload)", "PLAIN"];
	player allowDamage true;
	player removeAllEventHandlers "handleDamage";
	player removeAllEventHandlers "Fired";
	player setUnitRecoilCoefficient 1;
};