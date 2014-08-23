/* 
	GarageLucel
	_null=this execVM "pnj\meth_process.sqf";
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false; 

_this addAction["<t color='#FF9900'>Préparation Méthamphétamine</t>",life_fnc_processAction,"meth",0,false,false,"",' life_inv_phos > 0 && life_inv_soude > 0 && !life_is_processing'];
_this addAction[format["<t color='#00ffff'>%1</t> <t color='#AAF200'> (%2€) </t>",["license_civ_meth"] call life_fnc_varToStr,[(["meth"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"meth",0,false,false,"",' !license_civ_meth && playerSide == civilian '];