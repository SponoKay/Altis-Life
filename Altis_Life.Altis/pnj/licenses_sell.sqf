/* 
	licensesShop
*/
// addAction args: title, filename, (arguments, priority, showWindow, hideOnUse, shortcut, condition, positionInModel, radius, radiusView, showIn3D, available, textDefault, textToolTip)
_this allowDamage false;  
_this enableSimulation false; 
removeAllWeapons _this;
_this adduniform "U_NikosAgedBody";

//Driver
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_driver"] call life_fnc_varToStr,[(["driver"] call life_fnc_licensePrice)] call life_fnc_numberText],
life_fnc_sellLicense,"driver",0,false,false,"",' license_civ_driver && playerSide == civilian '];
//Boat
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_boat"] call life_fnc_varToStr,[(["boat"] call life_fnc_licensePrice)] call life_fnc_numberText],
life_fnc_sellLicense,"boat",0,false,false,"",' license_civ_boat && playerSide == civilian '];
//Air
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_air"] call life_fnc_varToStr,[(["pilot"] call life_fnc_licensePrice)] call life_fnc_numberText],
  life_fnc_sellLicense,"pilot",0,false,false,"",' license_civ_air && playerSide == civilian '];
//Truck
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_truck"] call life_fnc_varToStr,[(["truck"] call life_fnc_licensePrice)] call life_fnc_numberText],
  life_fnc_sellLicense,"truck",0,false,false,"",' license_civ_truck && playerSide == civilian '];
//Dep  
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_dep"] call life_fnc_varToStr,[(["dep"] call life_fnc_licensePrice)] call life_fnc_numberText],
  life_fnc_sellLicense,"dep",0,false,false,"",' license_civ_dep && playerSide == civilian '];
//House
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_home"] call life_fnc_varToStr,[(["home"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"home",0,false,false,"",' license_civ_home && playerSide == civilian '];
//Taxi
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_taxi"] call life_fnc_varToStr,[(["taxi"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"taxi",0,false,false,"",' license_civ_taxi && playerSide == civilian '];
//Merdic
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_medic"] call life_fnc_varToStr,[(["medic"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"medic",0,false,false,"",' license_civ_medic && playerSide == civilian '];


//Ressources

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_oil"] call life_fnc_varToStr,[(["oil"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"oil",0,false,false,"",' license_civ_oil && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_houblon"] call life_fnc_varToStr,[(["houblon"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"houblon",0,false,false,"",' license_civ_houblon && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_diamond"] call life_fnc_varToStr,[(["diamond"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"diamond",0,false,false,"",' license_civ_diamond && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_salt"] call life_fnc_varToStr,[(["salt"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"salt",0,false,false,"",' license_civ_salt && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_sand"] call life_fnc_varToStr,[(["sand"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"sand",0,false,false,"",' license_civ_sand && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_iron"] call life_fnc_varToStr,[(["iron"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"iron",0,false,false,"",' license_civ_iron && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_copper"] call life_fnc_varToStr,[(["copper"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"copper",0,false,false,"",' license_civ_copper && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_cement"] call life_fnc_varToStr,[(["cement"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"cement",0,false,false,"",' license_civ_cement && playerSide == civilian '];


//
// Illegal
//
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_heroin"] call life_fnc_varToStr,[(["heroin"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"heroin",0,false,false,"",' license_civ_heroin && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_marijuana"] call life_fnc_varToStr,[(["marijuana"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"marijuana",0,false,false,"",' license_civ_marijuana && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_coke"] call life_fnc_varToStr,[(["cocaine"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"cocaine",0,false,false,"",' license_civ_coke && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_meth"] call life_fnc_varToStr,[(["meth"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"meth",0,false,false,"",' license_civ_meth && playerSide == civilian '];
//
//REB
//
_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_rebel"] call life_fnc_varToStr,[(["rebel"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"rebel",0,false,false,"",' license_civ_rebel && playerSide == civilian '];



