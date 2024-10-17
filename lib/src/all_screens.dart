import 'package:flutter/material.dart' show Widget;
import 'screens/welcome_screen/welcome_screen.dart';
import 'screens/notification_screen/notification_screen.dart';
import 'screens/living_room_discover/attention_page_screen.dart';
/// Le test unitaire va chercher toute les pages du dossier screens pour se
/// rassurer qu'il s'affiche sans erreur, seulement pour chaque fichier,
/// le tester automatique aura besion de savoir comment instancier la classe
/// qui s'y trouve, c'est pour ça que cette Map existe, pour faire le lien entre
/// chaque nom de fichier et une fonction qui retourne une instance de la classe
/// dans ce fichier.
///
/// Ce n'est valable QUE pour les SCREENS, les composants n'ont pas besion d'être ici
final Map<String, Widget Function()> allScreens = {
  'welcome_screen.dart': () => const WelcomeScreen(),
	'notification_screen.dart': () => const NotificationsScreen(),
	'attention_page_screen.dart': () => const AttentionPageScreen(),

  // Ajoutez d'autres chemins de fichiers ici
};
