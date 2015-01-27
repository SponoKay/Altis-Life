if (isNil "demiGOD") then {
	demiGOD = 0;
};

if (demiGOD == 0) then {
	demiGOD = 1;
    cutText ["Mode invincible activé (pas de dégâts et munitions illimitées)", "PLAIN"];
	damageGodEvent = player addEventHandler ["handleDamage", {false}];
	player allowDamage false;
	firedGodEvent = player addEventHandler ["Fired", { (_this select 0) setVehicleAmmo 1 }];
}
else {
	demiGOD = 0;
    cutText ["Mode invincible désactivé", "PLAIN"];
	player allowDamage true;
	player removeEventHandler ["handleDamage", damageGodEvent];
	player removeEventHandler ["Fired", firedGodEvent];
};