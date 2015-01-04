/* 
	CarshopLucel
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false;  
_this addAction["<t color='#FF0000'>Marché rebelle</t>",life_fnc_virt_menu,"rebmarket",90,false,false,"",' license_civ_rebel && playerSide == civilian'];
_this addAction["<t color='#AAF200'>Magasin de vêtements</t>",life_fnc_clothingMenu,"reb",95,false,false,"",' license_civ_rebel && playerSide == civilian'];
_this addAction["<t color='#FF9900'>Armurerie rebelle</t>",life_fnc_weaponShopMenu,"rebel",100,false,false,"",' license_civ_rebel && playerSide == civilian'];
_this addAction["<t color='#ADFF2F'>Distributeur</t>",life_fnc_atmMenu,"",0,false,false,"",''];
_this addAction["<t color='#f6d359'>Assurance Bancaire (1000€)</t>",{if(R6cuXKTCWDZFxfbfdATm > 1000) then {life_has_insurance = true; R6cuXKTCWDZFxfbfdATm = R6cuXKTCWDZFxfbfdATm - 1000};},"",0,false,false,"",'!life_has_insurance'];

_this addAction[format["%1 (%2€)",["license_civ_rebel"] call life_fnc_varToStr,[(["rebel"] call life_fnc_licensePrice)] call life_fnc_numberText],life_fnc_buyLicense,"rebel",0,false,false,"",' !license_civ_rebel && playerSide == civilian '];
_this setVariable["realname", "Vendeur Rebelle"];

