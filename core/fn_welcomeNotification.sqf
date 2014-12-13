/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["<t size='1.5' color='#FFA500'>Bienvenue à toi %1 sur le serveur d'AltisLife-France.com !</t>",profileName] hintC
[
	"Une touche d'intéraction utilisable avec la plupart des objets du jeu est à votre disposition (par défaut touche ""Windows"")",
	"Allez dans Configuration -> Commandes -> Commandes personnalisées et modifiez la touche Action 10 si vous le souhaitez",
	"Avec cette touche, vous pouvez:",
	"Ramasser de l'argent",
	"Pêcher",
	"Intéragir avec les joueurs (pour les policiers)",
	"Intéragir avec les véhicules (pour réparer et retourner votre véhicule par exemple)",
	"",
	"Si vous n'arrivez pas à rammaser une pile d'argent par exemple, utilisez la touche ~ et utilisez la touche d'intéraction quand le nom de l'item apparaît.",
	"",
	"Notre TeamSpeak: <t color='#AAF200'>ts.altislife-france.com</t>",
	"Notre Site: <t color='#AAF200'>www.altislife-france.com</t>",
	"",
	"Bon jeu sur notre serveur!"
];
	