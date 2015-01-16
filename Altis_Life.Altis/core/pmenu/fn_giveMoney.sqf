/*
	File: fn_giveMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected amount of money to the selected player.
*/
private["_unit","_amount"];
_amount = ctrlText 2018;
ctrlShow[2001,false];
if((lbCurSel 2022) == -1) exitWith {hint "Personne sélectionné!";ctrlShow[2001,true];};
_unit = lbData [2022,lbCurSel 2022];
_unit = call compile format["%1",_unit];
if(isNil "_unit") exitWith {ctrlShow[2001,true];};
if(_unit == player) exitWith {ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};

//A series of checks *ugh*
if(!life_use_atm) exitWith {hint "Vous avez récemment braquer la banque, merci d'attendre.";ctrlShow[2001,true];};
if(!([_amount] call TON_fnc_isnumber)) exitWith {hint "Merci d'entrer un nombre.";ctrlShow[2001,true];};
if(parseNumber(_amount) <= 0) exitWith {hint "Merci d'entrer un montant supérieur à 0.";ctrlShow[2001,true];};
if(parseNumber(_amount) > hBf0MznDHQm7X5DFFSmy) exitWith {hint "Vous n'avez pas assez d'argent!";ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "Le joueur sélectionné est trop loin.";};
if(headgear _unit != "H_ShemagOpen_tan" 
  && headgear _unit != "H_Shemag_olive" 
  && headgear _unit != "H_ShemagOpen_khk" 
  && uniform _unit != "U_O_GhillieSuit" 
  && uniform _unit != "U_B_GhillieSuit" 
  && headgear _unit != "H_Shemag_tan" 
  && goggles _unit != "G_Balaclava_blk" 
  && goggles _unit != "G_Balaclava_combat" 
  && goggles _unit != "G_Balaclava_lowprofile" 
  && goggles _unit != "G_Balaclava_oli" 
  && goggles _unit != "G_Bandanna_aviator" 
  && goggles _unit != "G_Bandanna_sport" 
  && goggles _unit != "G_Bandanna_shades") then {
	hint format[" $%1 to %2",[(parseNumber(_amount))] call life_fnc_numberText,_unit getVariable["realname",name _unit]];
}
else {
	hint format["Vous avez donné %1€ à un inconnu",[(parseNumber(_amount))] call life_fnc_numberText];
};
hBf0MznDHQm7X5DFFSmy = hBf0MznDHQm7X5DFFSmy - (parseNumber(_amount));
[] call SOCK_fnc_updateRequest;
[[_unit,_amount,player],"life_fnc_receiveMoney",_unit,false] spawn life_fnc_MP;
[] call life_fnc_p_updateMenu;

ctrlShow[2001,true];