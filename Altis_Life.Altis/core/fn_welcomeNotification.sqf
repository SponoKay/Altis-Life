/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
"" hintC parseText format[
"<t size='1.5' color='#3344DD'>Bienvenue à toi %1 sur le serveur d'AltisLife-France.com !</t><br />
<img size='5' image='textures\autre\logo.paa'/><br />
Une touche d'intéraction utilisable avec la plupart des objets du jeu est à votre disposition (par défaut touche ""Windows"")<br />
Allez dans Configuration -> Commandes -> Commandes personnalisées et modifiez la touche Action 10 si vous le souhaitez<br />
Avec cette touche, vous pouvez:<br />
Ramasser de l'argent, pêcher, intéragir avec les joueurs (pour les policiers), intéragir avec les véhicules (pour réparer et retourner votre véhicule par exemple), ...
<br />
Si vous n'arrivez pas à rammaser une pile d'argent par exemple, utilisez la touche ~ et utilisez la touche d'intéraction quand le nom de l'item apparaît.<br />
<br />
Notre TeamSpeak: <t color='#AAF200'>ts.altislife-france.com</t><br />
Notre Site: <t color='#AAF200'>www.altislife-france.com</t><br />
<br />
Bon jeu sur notre serveur!"
, profileName];