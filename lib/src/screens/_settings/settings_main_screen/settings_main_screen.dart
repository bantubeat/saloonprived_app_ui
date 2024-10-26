import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloonprived_app/generated/locale_keys.g.dart';
import 'package:saloonprived_app/src/config/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsMainScreen extends StatelessWidget {
  const SettingsMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.settings_main_screen_settings.tr(),
          style: GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 1,
            color: AppColors.myGray,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.settings_main_screen_content.tr(),
              style: GoogleFonts.interTextTheme().bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 0,
              color: AppColors.primary.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        LocaleKeys.settings_main_screen_notifications.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      onTap: () => launchUrl(
                        Uri.parse(
                          'https://saloonprived.bantubeat.com/creator',
                        ),
                      ),
                      title: Text(
                        LocaleKeys.settings_main_screen_creators_portal.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      title: Text(
                        LocaleKeys.settings_main_screen_promote.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.myGray600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      title: Text(
                        LocaleKeys.settings_main_screen_business.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.myGray600,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.settings_main_screen_account.tr(),
              style: GoogleFonts.interTextTheme().bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 0,
              color: AppColors.primary.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        LocaleKeys.settings_main_screen_logout.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      title: Text(
                        LocaleKeys.settings_main_screen_unsubscribe_saloonprived
                            .tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      title: Text(
                        LocaleKeys.settings_main_screen_restriction.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        LocaleKeys.settings_main_screen_block_adult_content
                            .tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.myGray600,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.settings_main_screen_help.tr(),
              style: GoogleFonts.interTextTheme().bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 0,
              color: AppColors.primary.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      onTap: () => launchUrl(
                        Uri.parse(
                          'https://legal.bantubeat.com/bantubeat/help-center?index=16',
                        ),
                      ),
                      title: Text(
                        LocaleKeys.settings_main_screen_security.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      title: Text(
                        LocaleKeys.settings_main_screen_help_page.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.myGray600,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              LocaleKeys.settings_main_screen_legal_mentions.tr(),
              style: GoogleFonts.interTextTheme().bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 0,
              color: AppColors.primary.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        LocaleKeys.settings_main_screen_terms_conditions.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      title: Text(
                        LocaleKeys.settings_main_screen_privacy_policy.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      title: Text(
                        LocaleKeys.settings_main_screen_cookie_policy.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      onTap: () => launchUrl(
                        Uri.parse(
                          'https://legal.bantubeat.com/bantubeat/help-center?index=9',
                        ),
                      ),
                      title: Text(
                        LocaleKeys.settings_main_screen_advertising.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      title: Text(
                        LocaleKeys.settings_main_screen_virtual_item_policy
                            .tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    ListTile(
                      minTileHeight: 0,
                      title: Text(
                        LocaleKeys.settings_main_screen_copyright_policy.tr(),
                        style:
                            GoogleFonts.interTextTheme().bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
