/* 
	_null=this execVM "pnj\DAB.sqf";
*/

_this enableSimulation false; 
_this allowDamage false;  
_this addAction["<t color='#ADFF2F'>Distributeur</t>",life_fnc_atmMenu,"",0,FALSE,FALSE,"",' vehicle player == player && player distance _target < 4 '];
_this addAction["<t color='#f6d359'>Assurance Bancaire (1,000€)</t>",{if(R6cuXKTCWDZFxfbfdATm > 1000) then {life_has_insurance = true; R6cuXKTCWDZFxfbfdATm = R6cuXKTCWDZFxfbfdATm - 1000};},"",0,false,false,"",'!life_has_insurance'];
