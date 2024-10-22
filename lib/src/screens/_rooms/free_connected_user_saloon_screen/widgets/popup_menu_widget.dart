import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:saloonprived_app/src/resources/app_assets.dart';

class PopupMenuWidget extends StatelessWidget {
  final BuildContext context;

  const PopupMenuWidget({required this.context, super.key});

  void showCustomMenu() {
    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(100, 50, 0, 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      items: [
        PopupMenuItem(
          value: 'creator',
          child: ListTile(
            leading: const Icon(Icons.account_box_outlined),
            title: Text(
              LocaleKeys.popup_menu_widget_creator.tr(),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        PopupMenuItem(
          value: 'editProfile',
          child: ListTile(
            leading: const Icon(Icons.person_outlined),
            title: Text(
              LocaleKeys.popup_menu_widget_edit_profile.tr(),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        PopupMenuItem(
          value: 'goLive',
          child: ListTile(
            leading: const Icon(Icons.videocam),
            title: Text(
              LocaleKeys.popup_menu_widget_go_live.tr(),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        PopupMenuItem(
          value: 'balance',
          child: ListTile(
            leading: ClipOval(
              child: Image.asset(AppAssets.imagesPourb),
            ),
            title: Text(
              LocaleKeys.popup_menu_widget_balance.tr(),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        PopupMenuItem(
          value: 'darkMode',
          child: ListTile(
            leading: const Icon(Icons.dark_mode),
            title: Text(
              LocaleKeys.popup_menu_widget_dark_mode.tr(),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            trailing: Transform.scale(
              scale: 0.5,
              child: Switch(
                activeColor: AppColors.primary,
                // inactiveTrackColor: ,
                value: false,
                onChanged: (_) {},
              ),
            ),
          ),
        ),
        PopupMenuItem(
          value: 'activites',
          child: ListTile(
            leading: const Icon(Icons.person_search_outlined),
            title: Text(
              LocaleKeys.popup_menu_widget_activity.tr(),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        PopupMenuItem(
          value: 'settings',
          child: ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              LocaleKeys.popup_menu_widget_settings.tr(),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const PopupMenuItem(
          child: Divider(
            color: Color.fromRGBO(186, 185, 185, 1),
          ),
        ),
        PopupMenuItem(
          value: 'logout',
          child: ListTile(
            leading: const Icon(Icons.logout),
            title: Text(
              LocaleKeys.popup_menu_widget_logout.tr(),
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) {
        _handleMenuSelection(value);
      }
    });
  }

  void _handleMenuSelection(String value) {
    switch (value) {
      case 'creator':
        debugPrint('Devenir créateur clicked');
        break;
      case 'editProfile':
        debugPrint('Editer mon profil clicked');
        break;
      case 'goLive':
        debugPrint('Démarrer un direct clicked');
        break;
      case 'balance':
        debugPrint('Mon solde bzc clicked');
        break;
      case 'darkMode':
        debugPrint('Mode sombre clicked');
        break;
      case 'settings':
        debugPrint('Paramètres clicked');
        break;
      case 'logout':
        debugPrint('Déconnexion clicked');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: showCustomMenu,
      child: const Icon(
        Icons.more_vert_outlined,
        size: 16,
        color: Colors.white,
      ),
    );
  }
}
