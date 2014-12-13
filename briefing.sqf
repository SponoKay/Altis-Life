waitUntil {!isNull player && player == player};
if(player diarySubjectExists "infos") exitwith{};

player createDiarySubject ["infos","Informations sur le serveur"];
player createDiarySubject ["changelog","Journal des modifications"];
player createDiarySubject ["touches","Touches"];

	player createDiaryRecord ["infos",
		[
			"",
				"
				<br/>
				Notre TeamSpeak: <t color='#AAF200'>ts.altislife-france.com</t><br/>
				Notre Site: <t color='#AAF200'>www.altislife-france.com</t><br/>
				<br/>
				Si vous n'arrivez pas à rammaser une pile d'argent par exemple, utilisez la touche ~ et utilisez la touche d'intéraction quand le nom de l'item apparaît.<br/>
				Pour connaître les touches spécifiques à Altis Life et au serveur, allez dans la catégorie touches.
				"
		]
	];

	player createDiaryRecord ["changelog",
		[
			"13/12/2014",
				"
				Menu d'interaction joueur (menotté)
				Correction bug spawn de véhicules police
				"
		]
	];

	player createDiaryRecord ["touches",
		[
			"<t color='#436EEE'>Police: </t>",
				"
				F: Activer la sirène<br/>
				MAJ Gauche + L: Activer le gyrophare (lumière)<br/>
				MAJ Gauche + R: Menotter
				"
		]
	];

	player createDiaryRecord ["touches",
		[
			"<t color='#6EEE43'>Tous: </t>",
				"
				Y: Ouvrir le menu Joueur<br/>
				U: Verouiller et dévérouilller un véhicule et/ou une maison<br/>
				T: Ouvrir l'inventaire d'un véhicule<br/>
				MAJ Gauche + G: Assomer (peut voler argent, et menotter si menottes dans l'inventaire)<br/>
				<br/>
				Une touche d'intéraction utilisable avec la plupart des objets du jeu est à votre disposition (par défaut touche ""Windows"")<br/>
				Allez dans Configuration -> Commandes -> Commandes personnalisées et modifiez la touche Action 10 si vous le souhaitez<br/>
				Avec cette touche, vous pouvez:<br/>
				Ramasser de l'argent,<br/>
				Pêcher,<br/>
				Intéragir avec les joueurs (pour les policiers),<br/>
				Intéragir avec les véhicules (pour réparer et retourner votre véhicule par exemple),<br/>
				...
				"
		]
	];