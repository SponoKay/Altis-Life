waitUntil {!isNull player && player == player};
if(player diarySubjectExists "infos") exitwith{};

player createDiarySubject ["infos","Informations utiles"];
player createDiarySubject ["touches","Touches"];

	player createDiaryRecord ["infos",
		[
			"",
				"
				<br />
				Notre TeamSpeak: <font color='#AAF200'>ts.altislife-france.com</font><br />
				Notre Site: <font color='#AAF200'><a href='http://www.altislife.france.com'>www.altislife-france.com</a></font><br />
				<br />
				Pour connaître les touches spécifiques à Altis Life et au serveur, allez dans la catégorie touches.
				"
		]
	];

	player createDiaryRecord ["touches",
		[
			"Police",
				"
				<font color='#436EEE'>Touches disponible pour la police</font><br />
				F: Activer la sirène<br />
				MAJ Gauche + L: Activer le gyrophare (lumière)<br />
				MAJ Gauche + R: Menotter
				"
		]
	];

	player createDiaryRecord ["touches",
		[
			"Tous",
				"
				<font color='#6EEE43'>Touches disponibles pour tous les joueurs</font><br />
				Y: Ouvrir le menu Joueur<br />
				U: Verouiller et dévérouilller un véhicule et/ou une maison<br />
				T: Ouvrir l'inventaire d'un véhicule<br />
				MAJ Gauche + F: Mettre les mains sur la tête<br />
				<br />
				<font color='#6EEE43'>Si vous avez une arme</font><br />
				MAJ Gauche + G: Assomer (peut voler argent, et attacher si menottes dans l'inventaire)<br />
				MAJ Gauche + H: Ranger arme<br />
				<br />
				Une touche d'intéraction utilisable avec la plupart des objets du jeu est à votre disposition (par défaut touche ""Windows"")<br />
				Allez dans Configuration -> Commandes -> Commandes personnalisées et modifiez la touche Action 10 si vous le souhaitez<br />
				Avec cette touche, vous pouvez:<br />
				Ramasser de l'argent,<br />
				Pêcher,<br />
				Intéragir avec les joueurs (pour les policiers),<br />
				Intéragir avec les véhicules (pour réparer et retourner votre véhicule par exemple),<br />
				...<br />
				Si vous n'arrivez pas à rammaser une pile d'argent par exemple, utilisez la touche ~ et utilisez la touche d'intéraction + T quand le nom de l'item apparaît.
				"
		]
	];