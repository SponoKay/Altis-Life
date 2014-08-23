/* 
	licensesShop
*/
// addAction args: title, filename, (arguments, priority, showWindow, hideOnUse, shortcut, condition, positionInModel, radius, radiusView, showIn3D, available, textDefault, textToolTip)
_this allowDamage false;  
_this enableSimulation false; 
//Driver
_this addAction[format["<t color='#00ffff'>Achat: %1</t>  <t color='#AAF200'>(%2€)</t>",["license_civ_driver"] call life_fnc_varToStr,[(["driver"] call life_fnc_licensePrice)] call life_fnc_numberText],
life_fnc_buyLicense,"driver",0,false,false,"",' !license_civ_driver && playerSide == civilian '];
//Boat
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€)</t>",["license_civ_boat"] call life_fnc_varToStr,[(["boat"] call life_fnc_licensePrice)] call life_fnc_numberText],
life_fnc_buyLicense,"boat",0,false,false,"",' !license_civ_boat && playerSide == civilian '];
//Air
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€)</t>",["license_civ_air"] call life_fnc_varToStr,[(["pilot"] call life_fnc_licensePrice)] call life_fnc_numberText],
  life_fnc_buyLicense,"pilot",0,false,false,"",' !license_civ_air && playerSide == civilian '];
//Truck
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€)</t>",["license_civ_truck"] call life_fnc_varToStr,[(["truck"] call life_fnc_licensePrice)] call life_fnc_numberText],
  life_fnc_buyLicense,"truck",0,false,false,"",' !license_civ_truck && playerSide == civilian '];
//House
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€))</t>",["license_civ_home"] call life_fnc_varToStr,[(["home"] call life_fnc_licensePrice)]
 call life_fnc_numberText],life_fnc_buyLicense,"home",0,false,false,"",' !license_civ_home && playerSide == civilian '];
 
 
 //METIER
 //Taxi
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€))</t>",["license_civ_taxi"] call life_fnc_varToStr,[(["taxi"] call life_fnc_licensePrice)]
 call life_fnc_numberText],life_fnc_buyLicense,"taxi",0,false,false,"",' !license_civ_taxi && !license_civ_rebel && playerSide == civilian '];
 //medic
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€))</t>",["license_civ_medic"] call life_fnc_varToStr,[(["medic"] call life_fnc_licensePrice)]
 call life_fnc_numberText],life_fnc_buyLicense,"medic",0,false,false,"",' !license_civ_medic && !license_civ_rebel && playerSide == civilian '];
//Dep  
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€)</t>",["license_civ_dep"] call life_fnc_varToStr,[(["dep"] call life_fnc_licensePrice)] call life_fnc_numberText],
  life_fnc_buyLicense,"dep",0,false,false,"",' !license_civ_dep && !license_civ_rebel && playerSide == civilian '];
  
 
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

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_taxi"] call life_fnc_varToStr,[(["taxi"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"taxi",0,false,false,"",' license_civ_taxi && playerSide == civilian '];

_this addAction[format["<t color='#AAF200'>Vendre: </t> <t color='#00ffff'>%1</t>",["license_civ_medic"] call life_fnc_varToStr,[(["medic"] call life_fnc_licensePrice)]call life_fnc_numberText],
life_fnc_sellLicense,"medic",0,false,false,"",' license_civ_medic && playerSide == civilian '];
