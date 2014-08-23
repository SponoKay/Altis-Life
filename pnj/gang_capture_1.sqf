/* 
	_null=this execVM "pnj\gang_capture_1.sqf";
*/

_this enableSimulation false; 
_this allowDamage false;  
_this addAction ["<t color='#FF9900'>Zone de capture</t>",life_fnc_captureHideout,"",0,false,false,"",' playerSide == civilian && !isNil {(group player) getVariable "gang_owner"}'];
