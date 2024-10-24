import 'package:flutter/material.dart' show Widget;
import 'package:saloonprived_app/src/screens/_dashboard/buy_access_user_dashboard_screen/buy_access_user_dashboard_screen.dart';
import 'package:saloonprived_app/src/screens/_dashboard/promote_user_dashboard_screen.dart';

import 'package:saloonprived_app/src/screens/profilcreation_fan_creator_agreements_screen/profilcreation_fan_creator_agreements_screen.dart';
import 'package:saloonprived_app/src/screens/profilcreation_generalconditions_screen/profilcreation_generalconditions_screen.dart';

import 'package:saloonprived_app/src/screens/_activity/current_access_user_subscription_activity_screen/current_access_user_subscription_activity_screen.dart';

import 'package:saloonprived_app/src/screens/_rooms/paid_connected_user_saloon_config_price_screen/paid_connected_user_saloon_config_price_screen.dart';

import 'screens/_activity/expired_access_user_subscription_activity_screen/expired_access_user_subscription_activity_screen.dart';

import 'screens/_activity/blocked_user_activity_screen/blocked_user_activity_screen.dart';

import 'screens/_dashboard/access_price_user_dashboard_screen/access_price_user_dashboard_screen.dart';

import 'screens/_rooms/free_connected_user_saloon_screen/free_connected_user_saloon_screen.dart';
import 'screens/_rooms/paid_connected_user_saloon_no_access_screen/paid_connected_user_saloon_no_access_screen.dart';
import 'screens/_rooms/paid_connected_user_saloon_no_config_price_screen.dart';
import 'screens/_rooms/paid_connected_user_saloon_no_followers_screen/paid_connected_user_saloon_no_followers_screen.dart';
import 'screens/_sallon_for_you/saloon_for_you_have_subcription/saloon_for_you_have_subcription_screen.dart';
import 'screens/discover_lounge/discover_lounge_non_adults_creators_screen/discover_lounge_non_adults_creators_screen.dart';
import 'screens/sallon_for_you/saloon_for_you_no_subcription_screen.dart';
import 'screens/profile_create_user_profile_screen/profile_create_user_profile_screen.dart';
import 'screens/_auth/login_screen.dart';
import 'screens/_auth/register_screen.dart';
import 'package:saloonprived_app/src/screens/_create_profile/create_profile_restriction_page_screen.dart';

import 'screens/search/search_screen/search_screen.dart';

import 'screens/welcome_screen/welcome_screen.dart';
import 'screens/notification_screen/notification_screen.dart';

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
  'profilcreation_generalconditions_screen.dart': () =>
      const ProfilcreationGeneralconditionScreen(),
  'profilcreation_fan_creator_agreements_screen.dart': () =>
      const ProfilCreationFanCreatorAgreementScreen(),
  'saloon_for_you_have_subcription_screen.dart': () =>
      const SaloonForYouHaveSubcriptionScreen(),
  'notification_screen.dart': () => const NotificationsScreen(),
  'login_screen.dart': () => const LoginScreen(),
  'register_screen.dart': () => const RegisterScreen(),
  'saloon_for_you_no_subcription_screen.dart': () =>
      const SaloonForYouNoSubcriptionScreen(),
  'profile_create_user_profile_screen.dart': () =>
      const ProfileCreateUserProfileScreen(),
  'free_connected_user_saloon_screen.dart': () =>
      const FreeConnectedUserSaloonScreen(),
  'paid_connected_user_saloon_config_price_screen.dart': () =>
      const PaidConnectedUserSaloonConfigPriceScreen(),

  'create_profile_restriction_page_screen.dart': () =>
      CreateProfileRestrictionPageScreen(),
  'discover_lounge_non_adults_creators_screen.dart': () =>
      DiscoverLoungeNonAdultsCreatorsScreen(),
  // Ajoutez d'autres chemins de fichiers ici

  'search_screen.dart': () => const SearchScreen(),
  'paid_connected_user_saloon_no_config_price_screen.dart': () =>
      const PaidConnectedUserSaloonNoConfigPriceScreen(),
  'paid_connected_user_saloon_no_followers_screen.dart': () =>
      const PaidConnectedUserSaloonNoFollowersScreen(),
  'promote_user_dashboard_screen.dart': () =>
      const PromoteUserDashboardScreen(),
  'buy_access_user_dashboard_screen.dart': () =>
      const BuyAccessUserDashboardScreen(),

  'expired_access_user_subscription_activity_screen.dart': () =>
      const ExpiredAccessUserSubscriptionActivityScreen(),
  'current_access_user_subscription_activity_screen.dart': () =>
      const CurrentAccessUserSubscriptionActivityScreen(),
  'blocked_user_activity_screen.dart': () => const BlockedUserActivityScreen(),
  'access_price_user_dashboard_screen.dart': () =>
      const AccessPriceUserDashboardScreen(),
  'paid_connected_user_saloon_no_access_screen.dart': () =>
      const PaidConnectedUserSaloonNoAccessScreen(),
};

// Ajoutez d'autres chemins de fichiers ici
