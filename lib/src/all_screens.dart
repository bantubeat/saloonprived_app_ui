import 'package:flutter/material.dart' show Widget;
import 'package:saloonprived_app/src/screens/profile_creation_category/profile_creation_category_screen.dart';

import 'package:saloonprived_app/src/screens/_dashboard/buy_access_user_dashboard_screen/buy_access_user_dashboard_screen.dart';
import 'package:saloonprived_app/src/screens/_dashboard/promote_user_dashboard_screen.dart';
import 'package:saloonprived_app/src/screens/_rooms/opend_post_saloon_free_and_paid_screen/video_full_screen.dart';
import 'package:saloonprived_app/src/screens/_settings/settings_notification_screen.dart';
import 'package:saloonprived_app/src/screens/notification_screen/notification_screen.dart';

import 'package:saloonprived_app/src/screens/profilcreation_fan_creator_agreements_screen/profilcreation_fan_creator_agreements_screen.dart';
import 'package:saloonprived_app/src/screens/profilcreation_generalconditions_screen/profilcreation_generalconditions_screen.dart';

import 'package:saloonprived_app/src/screens/_activity/current_access_user_subscription_activity_screen/current_access_user_subscription_activity_screen.dart';

import 'package:saloonprived_app/src/screens/_rooms/paid_connected_user_saloon_config_price_screen/paid_connected_user_saloon_config_price_screen.dart';

import 'screens/_chats/messages_settings_screen/messages_settings_screen.dart';
import 'screens/_publish_video/publish_video_image_camera_screen/publish_video_image_camera_screen.dart';
import 'screens/_publish_video/publish_video_image_camera_screen/visualized_media_screen.dart';

import 'package:saloonprived_app/src/screens/settings_copyright_screen/settings_copyright_screen.dart';

import 'screens/_activity/expired_access_user_subscription_activity_screen/expired_access_user_subscription_activity_screen.dart';

import 'screens/_activity/blocked_user_activity_screen/blocked_user_activity_screen.dart';

import 'screens/_chats/messages_and_conversations_list_screen/messages_and_conversations_list_screen.dart';

import 'screens/_activity/fans_activity_screen/fans_activity_screen.dart';

import 'screens/_activity/principal_activity_screen/principal_activity_screen.dart';

import 'screens/_dashboard/access_price_user_dashboard_screen/access_price_user_dashboard_screen.dart';

import 'screens/_rooms/free_connected_user_saloon_screen/free_connected_user_saloon_screen.dart';

import 'screens/_rooms/opend_post_saloon_free_and_paid_screen/opend_post_saloon_free_and_paid_screen.dart';
import 'screens/_rooms/paid_connected_user_saloon_of_5_content_free/paid_connected_user_saloon_of_5_content_free_screen.dart';
import 'screens/_rooms/paid_connected_user_saloon_unverify_kyc_screen/paid_connected_user_saloon_unverify_kyc_screen.dart';

import 'screens/_rooms/paid_connected_user_saloon_no_access_screen/paid_connected_user_saloon_no_access_screen.dart';

import 'screens/_rooms/paid_connected_user_saloon_no_config_price_screen.dart';
import 'screens/_rooms/paid_connected_user_saloon_no_followers_screen/paid_connected_user_saloon_no_followers_screen.dart';
import 'screens/_rooms/paid_connected_user_saloon_with_followers_screen/paid_connected_user_saloon_with_followers_screen.dart';
import 'screens/_rooms/paid_saloon_buy_access_screen/paid_saloon_buy_access_screen.dart';

import 'screens/_sallon_for_you/saloon_for_you_have_subcription/saloon_for_you_have_subcription_screen.dart';

import 'screens/_settings/virtual_item_settings_screen.dart';
import 'screens/_settings/settings_main_screen/settings_main_screen.dart';

import 'screens/_settings/settings_restriction_screen.dart';

import 'screens/_settings/settings_unsubscribe_screen.dart';
import 'screens/_settings/general_condition_screen.dart';

import 'screens/edit_user_profile_personal_info_screen/edit_user_profile_personal_info_screen.dart';

import 'screens/discover_lounge/discover_lounge_non_adults_creators_screen/discover_lounge_non_adults_creators_screen.dart';

import 'screens/sallon_for_you/saloon_for_you_no_subcription_screen.dart';
import 'screens/profile_create_user_profile_screen/profile_create_user_profile_screen.dart';
import 'screens/profile_creation/profile_creation_screen.dart';
import 'screens/_auth/login_screen.dart';
import 'screens/_auth/register_screen.dart';
import 'package:saloonprived_app/src/screens/_create_profile/create_profile_restriction_page_screen.dart';
import 'screens/search/search_screen/search_screen.dart';
import 'screens/welcome_screen/welcome_screen.dart';

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

  'profile_creation_category_screen.dart': () =>
      const ProfileCreationCategoryScreen(),

  'profilcreation_generalconditions_screen.dart': () =>
      const ProfilcreationGeneralconditionScreen(),
  'profilcreation_fan_creator_agreements_screen.dart': () =>
      const ProfilCreationFanCreatorAgreementScreen(),

  'saloon_for_you_have_subcription_screen.dart': () =>
      const SaloonForYouHaveSubcriptionScreen(),
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
  'profile_creation_screen.dart': () => const ProfileCreationScreen(),

  'create_profile_restriction_page_screen.dart': () =>
      CreateProfileRestrictionPageScreen(),

  'discover_lounge_non_adults_creators_screen.dart': () =>
      DiscoverLoungeNonAdultsCreatorsScreen(),
  // Ajoutez d'autres chemins de fichiers ici

  'search_screen.dart': () => const SearchScreen(),
  'paid_connected_user_saloon_unverify_kyc_screen.dart': () =>
      const PaidConnectedUserSaloonUnverifyKycScreen(),
  'paid_connected_user_saloon_no_config_price_screen.dart': () =>
      const PaidConnectedUserSaloonNoConfigPriceScreen(),
  'publish_video_image_camera_screen.dart': () =>
      const PublishVideoImageCameraScreen(
        camera: [],
      ),
  'visualized_media_screen.dart': () => const VisualizedMediaScreen(
        isMedia: false,
        file: null,
        isImage: true,
      ),
  'edit_user_profile_personal_info_screen.dart': () =>
      const EditUserProfilePersonalInfoScreen(),

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
  'paid_connected_user_saloon_with_followers_screen.dart': () =>
      const PaidConnectedUserSaloonWithFollowersScreen(),
  'paid_connected_user_saloon_no_access_screen.dart': () =>
      const PaidConnectedUserSaloonNoAccessScreen(),
  'opend_post_saloon_free_and_paid_screen.dart': () =>
      const OpendPostSaloonFreeAndPaidScreen(),
  'video_full_screen.dart': () => const VideoFullScreen(),

  'messages_and_conversations_list_screen.dart': () =>
      const MessagesAndConversationsListScreen(),

  'paid_saloon_buy_access_screen.dart': () => const PaidSaloonBuyAccessScreen(),

  'fans_activity_screen.dart': () => const FansActivityScreen(),

  'principal_activity_screen.dart': () => const PrincipalActivityScreen(),

  'settings_main_screen.dart': () => const SettingsMainScreen(),

  'settings_restriction_screen.dart': () => const SettingsRestrictionScreen(),
  'settings_notification_screen.dart': () => const SettingsNotificationScreen(),

  'settings_unsubscribe_screen.dart': () => const SettingsUnsubscribeScreen(),

  'general_condition_screen.dart': () => const GeneralConditionScreen(),

  'settings_copyright_screen.dart': () => const SettingsCopyrightScreen(),
  'virtual_item_settings_screen.dart': () => const VirtualItemSettingsScreen(),
  'notification_screen.dart': () => const NotificationsScreen(),

  'messages_settings_screen.dart': () => const MessagesSettingsScreen(),
  'paid_connected_user_saloon_of_5_content_free_screen.dart': () =>
      const PaidConnectedUserSaloonOf5ContentFree(),
};

// Ajoutez d'autres chemins de fichiers ici
