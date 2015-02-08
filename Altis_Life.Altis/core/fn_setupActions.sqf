/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
	{
		//entrer dans un vehicule meme verouillé
		life_actions = life_actions + [player addAction["Monter en conducteur dans le véhicule verouillé",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Monter en passager dans le véhicule verouillé",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']]; 
		life_actions = life_actions + [player addAction["Descendre",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		
		//Place barriere
		/*life_actions = life_actions + [player addAction["Placer la barrière",{if(!isNull life_barriere) then {detach life_barriere; life_barriere = ObjNull;};},"",999,false,false,"",'!isNull life_barriere']];
		
		//Reprendre des barriere
		life_actions = life_actions + [player addAction["Reprendre la barrière",life_fnc_packupBarriere,"",0,false,false,"",
		' _barriere = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barriere" && !isNil {(_barriere getVariable "item")}']];
		life_actions = life_actions + [player addAction["Reprendre la barrière",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "barriere" && (player distance cursorTarget) < 3 ']];
		*/
		
		//Insigne de police
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer insigne de police</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget ']];
	};
	case civilian:
	{
		//Restrain Actions
		life_actions = [player addAction["<t color='#FF0000'>Attacher</t>",life_fnc_restrainAction,cursorTarget,9999999,false,false,"",'(
		(animationState cursorTarget) == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" 
		|| (animationState cursorTarget) == "Incapacitated" 
		|| (animationState cursorTarget) == "AwopPercMstpSgthWrflDnon_End2") 
		&& (currentWeapon player != "") 
		&& !(player getVariable "restrained") 
		&& cursorTarget isKindOf "Man" 
		&& (isPlayer cursorTarget) 
		&& alive cursorTarget 
		&& cursorTarget distance player < 3 
		&& !(cursorTarget getVariable "Escorting") 
		&& !(cursorTarget getVariable "restrained") 
		&& speed cursorTarget < 1 
		&& life_inv_menotte > 0']];
		
		//Rob person
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Voler de l'argent</t>",life_fnc_robAction,"",0,false,false,"",'
		((animationState cursorTarget) == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"
		|| (animationState cursorTarget) == "Incapacitated" 
		|| (animationState cursorTarget) == "AwopPercMstpSgthWrflDnon_End2" ) 
		&& (currentWeapon player != "") 
		&& !isNull cursorTarget && player distance cursorTarget < 3 
		&& isPlayer cursorTarget 
		//&& !(cursorTarget getVariable "CopRestrain") 
		&& !(cursorTarget getVariable["robbed",FALSE])']];
		
		//Saisir la carte
		/*life_actions = life_actions + [player addAction["<t color='#00FFFF'>Saisir Carte</t>",{cursorTarget removeItem "ItemMap";},"",9999999,false,false,"",'
		!isNull cursorTarget 
		&& cursorTarget isKindOf "Man"
		&& (isPlayer cursorTarget)
		&& player distance cursorTarget < 3.5 
		&& !(cursorTarget getVariable "CopRestrain")
		&& !(player getVariable "restrained") 
		&& (cursorTarget getVariable "restrained") 
		&& !(cursorTarget getVariable "Escorting")
		&& !(cursorTarget getVariable["robbedmap",FALSE])
		']];*/

		
		//Unrest Action
		/*life_actions = life_actions + [player addAction["<t color='#AAF200'>Détacher</t>",{[cursorTarget] call life_fnc_unrestrain},"",9999999,false,false,"",' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && player distance cursorTarget < 3.5 
		&& !(cursorTarget getVariable "CopRestrain") && !(player getVariable "restrained") && (cursorTarget getVariable "restrained") && !(cursorTarget getVariable "Escorting")']];*/

		//Escort
		/*life_actions = life_actions + [player addAction["<t color='#FF9900'>Escorter</t>",[{cursorTarget] call life_fnc_escortAction},"",9999999,false,false,"",' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "CopRestrain") && !(player getVariable "restrained") && (cursorTarget getVariable "restrained") && !(cursorTarget getVariable "Escorting")']];
		life_actions = life_actions + [player addAction["<t color='#FF9900'>Arrêter éscorte</t>",{{cursorTarget] call life_fnc_stopEscorting},_unit,9999999,false,false,"",' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && player distance cursorTarget < 3.5 && (cursorTarget getVariable "Escorting")']];*/

		//Crochetage
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Crochetage</t>",life_fnc_lockpick,"",9999999,false,false,"",' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && player distance cursorTarget < 3.5 
		&& !(cursorTarget getVariable "CopRestrain") && (cursorTarget getVariable "restrained") && !(cursorTarget getVariable "Escorting") && life_inv_lockpick > 0']];
		
		//Drop fishing net
		life_actions = [player addAction["<t color='#AAF200'>Jeter du filet pour pecher</t>",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		
		//Put in car	
		/*life_actions = life_actions + [player addAction["<t color='#FF9900'>Mettre dans le vehicule</t>",life_fnc_putInCar,_unit,9999999,false,false,"",' !isNull cursorTarget 
		&& (player distance cursorTarget) < 6  
		&& speed cursorTarget < 2 
		&& (cursorTarget isKindOf "Car" 
		|| cursorTarget isKindOf "Air" 
		|| cursorTarget isKindOf "Ship")
		&& player getVariable "Escorting"
		']];*/
		
		//Pull out of car
		life_actions = life_actions + [player addAction["<t color='#FF9900'>Sortir du vehicule</t>",life_fnc_pulloutAction,cursorTarget,9999999,false,false,"",'!isNull cursorTarget 
		&& (player distance cursorTarget) < 4 
		&& (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) 
		&& currentWeapon player != "" 
		&& (locked cursorTarget == 0) 
		&& (count crew cursorTarget) > 0 
		&& speed cursorTarget < 2 
		&& (cursorTarget isKindOf "Car" 
		|| cursorTarget isKindOf "Air" 
		|| cursorTarget isKindOf "Ship")
		']];
		
		//Gathers Diamonds
		life_actions = life_actions + [player addAction["<t color='#AAF200'>Recolter du diamant</t>",life_fnc_gatherDiamond,"",1000,false,false,"",'
		!life_action_inUse && ((player distance (getMarkerPos "diamond_1") < 150)) && (vehicle player == player) && (life_carryWeight + (["diamond"] call life_fnc_itemWeight)) <= life_maxWeight ']];

		//Gathers Salt 
		life_actions = life_actions + [player addAction["<t color='#AAF200'>Recolter du sel</t>",life_fnc_gatherSalt,"",1000,false,false,"",'
		!life_action_inUse && ((player distance (getMarkerPos "salt_1") < 150)) && (vehicle player == player) && (life_carryWeight + (["salt"] call life_fnc_itemWeight)) <= life_maxWeight ']];

		//Gathers Copper
		life_actions = life_actions + [player addAction["<t color='#AAF200'>Recolter du cuivre</t>",life_fnc_gatherCopper,"",1000,false,false,"",'
		!life_action_inUse && ((player distance (getMarkerPos "lead_1") < 150) OR (player distance (getMarkerPos "lead_2") < 150)) && (vehicle player == player) && (life_carryWeight + (["copperore"] call life_fnc_itemWeight)) <= life_maxWeight ']];

		//Gathers Iron
		life_actions = life_actions + [player addAction["<t color='#AAF200'>Recolter du fer</t>",life_fnc_gatherIron,"",1000,false,false,"",'
		!life_action_inUse && ((player distance (getMarkerPos "iron_1") < 150)) && (vehicle player == player) && (life_carryWeight + (["ironore"] call life_fnc_itemWeight)) <= life_maxWeight ']];

		//Gathers Sand 
		life_actions = life_actions + [player addAction["<t color='#AAF200'>Ramasser du sable</t>",life_fnc_gatherSand,"",1000,false,false,"",'
		!life_action_inUse && ((player distance (getMarkerPos "sand_1") < 150)) && (vehicle player == player) && (life_carryWeight + (["sand"] call life_fnc_itemWeight)) <= life_maxWeight ']];

		//Gathers Rock
		life_actions = life_actions + [player addAction["<t color='#AAF200'>Casser des cailloux</t>",life_fnc_gatherRock,"",1000,false,false,"",'
		!life_action_inUse && ((player distance (getMarkerPos "rock_1") < 150)) && (vehicle player == player) && (life_inv_pickaxe > 0) && (life_carryWeight + (["rock"] call life_fnc_itemWeight)) <= life_maxWeight ']];

		//Gather Oil
		life_actions = life_actions + [player addAction["<t color='#AAF200'>Recolter du pétrole</t>",life_fnc_gatherOil,"",1000,false,false,"",'
		!life_action_inUse && ((player distance (getMarkerPos "oil_1") < 150) OR (player distance (getMarkerPos "oil_2") < 150) OR (player distance (getMarkerPos "oil_3") < 150)) && (vehicle player == player) && (life_inv_pickaxe > 0) && (life_carryWeight + (["oil"] call life_fnc_itemWeight)) <= life_maxWeight ']];
	   		
		//Gather Phosphore
		life_actions = life_actions + [player addAction["<t color='#AAF200'>Recolter du phosphore</t>",life_fnc_gatherPhos,"",1000,false,false,"",'
		!life_action_inUse && ((player distance (getMarkerPos "meth_1") < 150)) && (vehicle player == player) && (life_inv_pickaxe > 0) && (life_carryWeight + (["phos"] call life_fnc_itemWeight)) <= life_maxWeight ']];
	   
		//Depanneur : Mettre en fourriere
		life_actions = life_actions + [player addAction["<t color='#00ffff'>Mettre en fourrière</t>",life_fnc_impoundAction,"",99,false,false,"",' 
		(typeOf (vehicle player) == "C_Offroad_01_F")
        && vehicle player != player		
		&& ((vehicle player animationPhase "HideServices") == 0) 
		&& ((vehicle player) in life_vehicles) 
		&& license_civ_dep 
		&& (speed vehicle player) < 1 
		&& !isNull cursorTarget
		&& ((cursorTarget isKindOf "Car") OR (cursorTarget isKindOf "Air") OR (cursorTarget isKindOf "Ship")) 	
		']];
		//Depanneur : Reparer
		life_actions = life_actions + [player addAction["<t color='#00ffff'>Dépanner le vehicule</t>",life_fnc_serviceTruck,"",99,false,false,"",' 
		(typeOf (vehicle player) == "C_Offroad_01_F") 
		&& ((vehicle player animationPhase "HideServices") == 0) 
		&& ((vehicle player) in life_vehicles) 
		&& license_civ_dep 
		&& (speed vehicle player) < 1
		&& !isNull cursorTarget
		&& ((cursorTarget isKindOf "Car") OR (cursorTarget isKindOf "Air") OR (cursorTarget isKindOf "Ship"))
		&& (damage cursorTarget) > 0.01 
		']];


	};
};