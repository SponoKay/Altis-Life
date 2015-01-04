/* 
	CarshopLucel
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false;  
_this addAction["<t color='#FF0000'>Marché mercenaire</t>",life_fnc_virt_menu,"mercomarket",90,false,false,"",' license_civ_mercenaire && playerSide == civilian'];
 this addAction["<t color='#32A832'>Magasin général</t>",life_fnc_weaponShopMenu,"genstore"];
_this addAction["<t color='#AAF200'>Magasin de vêtements</t>",life_fnc_clothingMenu,"merco",95,false,false,"",' license_civ_mercenaire && playerSide == civilian'];
_this addAction["<t color='#FF9900'>Armurerie mercenaire</t>",life_fnc_weaponShopMenu,"merco",100,false,false,"",' license_civ_mercenaire && playerSide == civilian'];
_this addAction["<t color='#ADFF2F'>Distributeur</t>",life_fnc_atmMenu,"",0,false,false,"",''];
_this addAction["<t color='#f6d359'>Assurance Bancaire (1000€)</t>",{if(R6cuXKTCWDZFxfbfdATm > 1000) then {life_has_insurance = true; R6cuXKTCWDZFxfbfdATm = R6cuXKTCWDZFxfbfdATm - 1000};},"",0,false,false,"",'!life_has_insurance'];

_this setVariable["realname", "Vendeur Mercenaire"];

