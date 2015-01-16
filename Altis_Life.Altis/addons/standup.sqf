MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
};

[[player, ""], "MAC_fnc_switchMove"] spawn BIS_fnc_MP; 
player removeaction standup;
life_sit = false;