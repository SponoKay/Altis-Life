if (life_sit) exitWith {hint "Vous êtes déjà assis!"};
_chair = _this select 0; 
_unit = _this select 1; 

MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
};

[[_unit, "HubSittingChairUC_idle1"], "MAC_fnc_switchMove"] spawn BIS_fnc_MP; 
_unit setpos [((getpos _chair select 0)+0), ((getpos _chair select 1)+0),((getpos _chair select 2) +0)];
_unit setDir ((getDir _chair) - 180); 
life_sit = true;
standup = _unit addaction ["<t color='#ffffff'>Se relever</t>","addons\standup.sqf"];
//_unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];