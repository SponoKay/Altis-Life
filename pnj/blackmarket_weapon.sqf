/* 
	GarageLucel
	_null=this execVM "pnj\blackmarket_weapon.sqf";
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#FF0000'>Armurerie ill√©gal</t>",life_fnc_weaponShopMenu,"gunblack",0,false,false,"",'playerSide == civilian && !license_civ_mercenaire'];

/* 
_this addAction[format["<t color='#00ffff'>%1</t>  <t color='#AAF200'>(%2Ä)</t>",
["license_civ_gun"] call life_fnc_varToStr,[(["gun"] call life_fnc_licensePrice)] call life_fnc_numberText],
life_fnc_buyLicense,"gun",0,false,false,"",
' !license_civ_gun && playerSide == civilian '];
*/