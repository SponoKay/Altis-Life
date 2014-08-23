/* 
	CarshopLucel
*/
removeallweapons _this;
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#00aeef'>Boutique pour Policier</t>",life_fnc_virt_menu,"cop"];
_this addAction["<t color='#AAF200'>Magasin de Tenue</t>",life_fnc_clothingMenu,"cop"];
_this addAction["<t color='#EA0000'>Magasin d'Armes</t>",life_fnc_weaponShopMenu,"cop_Armes"];
_this addAction["<t color='#A85400'>Magasin Accessoires Armes</t>",life_fnc_weaponShopMenu,"cop_equip_Armes"];
_this addAction["<t color='#B7BD00'>Magasin Divers</t>",life_fnc_weaponShopMenu,"cop_divers"];
_this addAction["<t color='#AAF200'>Magasin de Tenue Civil</t>",life_fnc_clothingMenu,"copciv"];
_this addAction["Licence de pilotage (15,000€)",life_fnc_buyLicense,"cair",0,false,false,"",' !license_cop_air && playerSide == west '];
_this addAction["Licence de Garde de Cote (8,000€)",life_fnc_buyLicense,"cg",0,false,false,"",' !license_cop_cg && playerSide == west '];
_this addAction["<t color='#ADFF2F'>Distributeur</t>",life_fnc_atmMenu]; 
_this addAction["<t color='#f6d359'>Assurance Bancaire (1,000€)</t>",{if(life_atmcash > 1000) then {life_has_insurance = true; life_atmcash = life_atmcash - 1000};},"",0,false,false,"",'!life_has_insurance'];