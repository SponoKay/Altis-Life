/* 
	GarageLucel
	_null=this execVM "pnj\weed_process.sqf";
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false; 

_this addAction["<t color='#FF9900'>Traitement de cannabis</t>",life_fnc_processAction,"marijuana",0,false,false,"",' life_inv_cannabis > 0 && !life_is_processing'];
_this addAction[format["<t color='#00ffff'>%1</t> <t color='#AAF200'> (%2€) </t>",["license_civ_marijuana"] call life_fnc_varToStr,[(["marijuana"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"marijuana",0,false,false,"",' !license_civ_marijuana && playerSide == civilian '];
